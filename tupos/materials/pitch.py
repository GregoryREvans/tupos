import abjad
import evans


def get_intervals_from_pitches(pitches):
    stacked_row = evans.Sequence(pitches).stack_pitches()
    intervals = [_[1] - _[0] for _ in stacked_row.nwise(2)]
    return intervals


class CannibalizingPitchSequence:
    def __init__(
        self,
        intervals=[2],
        starting_pitch=0,
        steer_by="next pitch",
    ):
        self.intervals = intervals
        self.starting_pitch = starting_pitch
        self.steer_by = steer_by
        self.counter = None
        if self.steer_by == "next pitch":
            self.counter = 0
        self.pitches = self._pitch_from_interval_groups(
            self.intervals, self.starting_pitch, self.steer_by
        )

    def __getitem__(self, index):
        return self.pitches[index]

    def __setitem__(self, index, data):
        self.pitches[index] = data

    def __iter__(self):
        for item in self.pitches:
            yield item

    def __len__(self):
        return len(self.pitches)

    def __repr__(self):
        string = str(self)
        string = black.format_str(string, mode=black.mode.Mode())
        return string

    def __str__(self):
        output = "("
        for i, item in enumerate(self.pitches):
            output += f"{item}"
            if i != len(self.pitches) - 1:
                output += ", "
        output += ")"
        return output

    def __add__(self, argument):
        if isinstance(argument, CannibalizingPitchSequence):
            items = self.pitches + argument.pitches
        elif isinstance(argument, list):
            items = self.pitches + argument
        else:
            items = self.pitches + argument.items
        instance_of_object = type(self)()
        instance_of_object.pitches = items
        return instance_of_object

    def __call__(self, arg):
        new_pitches = self._pitch_from_interval_groups(
            intervals=arg,
            starting_pitch=self.starting_pitch,
            _steer_by=self.steer_by,
            user_counter=self.counter,
        )
        self.intervals += arg

    def __contains__(self, argument):
        test_value = argument in self.pitches
        return test_value

    def _pitch_from_interval_groups(
        self,
        intervals,
        starting_pitch,
        _steer_by,
        user_counter=None,
    ):
        counter = None
        if _steer_by == "next pitch":
            if user_counter is None:
                counter = 0
            else:
                counter = user_counter
        else:
            counter = -1
        if user_counter is None:
            pitches = [starting_pitch]
        else:
            pitches = self.pitches
        for interval in intervals:
            if isinstance(interval, list):
                if counter is None:
                    for interval_ in interval:
                        pitches.append(pitches[-1] + interval_)
                else:
                    temp = CannibalizingPitchSequence(
                        intervals=interval,
                        starting_pitch=pitches[counter],
                        steer_by="final pitch",
                    )
                    if len(pitches) == 1:
                        pitches = temp.pitches
                    else:
                        if _steer_by == "next pitch":
                            pitches.extend(temp)
                        else:
                            pitches.extend(temp[1:])
                    if counter != -1:
                        counter += 1
            else:
                if counter is None:
                    pitches.append(pitches[-1] + interval)
                else:
                    pitches.append(pitches[counter] + interval)
                    counter += 1
        self.counter = counter
        return pitches


### materials ###


def interval_slices_from_leaf_counts(counts):
    intervals = [count - 1 for count in counts]
    sums = abjad.math.cumulative_sums(intervals)
    pairs = [pair for pair in abjad.sequence.nwise(sums, 2)]
    return pairs


# Row-based materials divorced from steiner system (Gruppen tone row)
row = [
    7,
    3,
    8,
    5,
    4,
    6,
    0,
    10,
    11,
    2,
    9,
    1,
]  # don't ultimately worry about 12-note aggregate
intervals = get_intervals_from_pitches(row)

constructed_inversion = [7]

for interval in intervals:
    constructed_inversion.append(constructed_inversion[-1] - interval)

inverted_row = [
    _ for _ in evans.Sequence(constructed_inversion).transpose(-4).mod(12, indices=True)
]
inverted_intervals = get_intervals_from_pitches(inverted_row)

reversed_row = [
    _ for _ in evans.Sequence(row).reverse().transpose(7).mod(12, indices=True)
]
reversed_intervals = get_intervals_from_pitches(reversed_row)


# Segment 1
built_materials = CannibalizingPitchSequence(
    intervals=[
        intervals,
        get_intervals_from_pitches(inverted_row),
        get_intervals_from_pitches(reversed_row),
    ],
    starting_pitch=2,
    steer_by="next pitch",
)
# TAKE THE TIME TO MAKE MOTIVES MATCH PHRASE SIZES ... preserves interval between cells
# slices = interval_slices_from_leaf_counts(
#     [
#         3, 4, 4, 6, 4, 3, 3, 3, 5,
#         4, 3, 6, 4,
#         5, 3, 3, 3, 4,
#         4, 4, 4, 3,
#         4, 7, 4, 5, 4, 3,
#         5, 4, 4, 1, 6, 3, 4, 4, 4,
#         5, 5, 1, 3, 3, 3, 4, 5, 2,
#     ]
# )
#
# for pair in slices:
#     built_materials(
#         [
#             # add more but as subdivisions: maybe based on phrase groups
#             abjad.sequence.flatten(built_materials.intervals, depth=-1)[
#                 pair[0] : pair[1]
#             ],
#         ]
#     )

##### ATTEMPT 2 OF CELL CONSTRUCTION .... This way eliminates the interval between cells
cell_sizes = [
        3, 4, 4, 6, 4, 3, 3, 3, 5, # start new process here but still keep track of phrase sizes by beams
        4, 4, 5, 6,
        4, 4, 4, 6,
        3, 4, 4,
        2, 6, 4, 4, 3, 5, 3, 2,
        5, 3, 3, 3, 6, 6, 4, 2, 6,
        3, 5, 2, 3, 4, 4, 4, 3,
    ]

for i, cell in enumerate(cell_sizes[:9]):
    partitions = abjad.sequence.partition_by_counts(
        built_materials.pitches,
        cell_sizes[:9],
        cyclic=True,
        overhang=True,
    )
    relevant_partition = partitions[i]
    intervals_ = get_intervals_from_pitches(relevant_partition)
    built_materials(
        [
            # add more but as subdivisions: maybe based on phrase groups
            intervals_,
        ]
    )

expanding_pairs = [[0], [1, 3], [2, 5], [4, 8], [6, 11], [1+11], [2+11, 4+11], [3+11, 6+11], [5+11, 9+11], [7+11, 12+11]]
for i, pair in enumerate(expanding_pairs):
    if 1 < len(pair):
        if i % 2 == 0:
            gotten_intervals = get_intervals_from_pitches(built_materials.pitches)[pair[0]:pair[1]]
        else:
            gotten_intervals = [0 - _ for _ in get_intervals_from_pitches(built_materials.pitches)[pair[0]:pair[1]]]
        built_materials(
            [
                gotten_intervals,
            ]
        )
    else:
        if i % 2 == 0:
            gotten_interval = get_intervals_from_pitches(built_materials.pitches)[pair[0]]
        else:
            gotten_interval = 0 - get_intervals_from_pitches(built_materials.pitches)[pair[0]]
        built_materials(
            [
                gotten_interval,
            ]
        )

segment_1_pitches = evans.Sequence(built_materials.pitches).mod(12, indices=True)

segment_1_pitch_intervals = get_intervals_from_pitches(segment_1_pitches)

# materials based on steiner system

forward = [1, 2, 3, 2, 4, 5, 4, 3, 6, 3, 5, 7, 5, 6, 1, 6, 7, 2, 7, 1, 4]
forward_sums = [6, 11, 13, 15, 12, 15, 12]
forward_sum_intervals = [5, 2, 2, -3, 3, -3]

backward = [4, 1, 7, 2, 7, 6, 1, 6, 5, 7, 5, 3, 6, 3, 4, 5, 4, 2, 3, 2, 1]
backward_no_repetitions = [4, 1, 7, 2, 6, 5, 3]
backward_no_repetition_sums = [15, 6, 12, 11, 15, 32, 13]
backward_no_repetition_half_sums = [7.5, 3, 6, 5.5, 7.5, 6, 6.5]

up_down_patterns = [[3, 2, 4], [4, 3, 6], [6, 3, 5], [7, 5, 6]]
up_down_patterns_enchained = [3, 2, 4, 3, 6, 3, 5, 7, 5, 6]
un_down_sums = [9, 13, 14, 18]

leap_scale = [3, 4, 4, 6, 5, 5, 1]
step_scale = [3, 2, 4, 5, 4, 3, 6]

# voicing function

# MODIFY TO TRANSPOSE LEAVES INSTEAD OF SEQUENCE
def ascend_in_range(seq, pitch_range):
    def transpose_immediately_above_pitch(arg, reference):
        if reference < abjad.NamedPitch(arg):
            while reference < abjad.NamedPitch(arg):
                arg = abjad.NamedPitch(arg).transpose(-12).number
            arg = abjad.NamedPitch(arg).transpose(+12).number
        elif abjad.NamedPitch(arg) < reference:
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(+12).number
        return arg

    start = pitch_range.start_pitch
    stop = pitch_range.stop_pitch
    out = []
    for pitch in seq:
        if len(out) == 0:
            out.append(transpose_immediately_above_pitch(pitch, start))
        else:
            transposed_pitch = transpose_immediately_above_pitch(pitch, out[-1])
            if stop < abjad.NamedPitch(transposed_pitch):
                out.append(transpose_immediately_above_pitch(pitch, start))
            else:
                out.append(transposed_pitch)
    return out


def get_ascending_group_lengths_from_ties(leaves):
    ties = abjad.select.logical_ties(leaves, pitched=True)
    pitches = [tie[0].written_pitch for tie in ties]
    pairs = evans.Sequence(pitches).nwise(2)
    counts = []
    counter = 1
    for pair in pairs:
        if pair[0] <= pair[1]:
            counter += 1
        else:
            counts.append(counter)
            counter = 1
    counts.append(counter)
    assert sum(counts) == len(pitches)
    return counts


def descend_in_range(seq, pitch_range):
    def transpose_immediately_below_pitch(arg, reference):
        if abjad.NamedPitch(arg) < reference:
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(+12).number
            arg = abjad.NamedPitch(arg).transpose(-12).number
        elif reference < abjad.NamedPitch(arg):
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(-12).number
        return arg

    stop = pitch_range.start_pitch
    start = pitch_range.stop_pitch
    out = []
    for pitch in seq:
        if len(out) == 0:
            out.append(transpose_immediately_below_pitch(pitch, start))
        else:
            transposed_pitch = transpose_immediately_below_pitch(pitch, out[-1])
            if abjad.NamedPitch(transposed_pitch) < stop:
                out.append(transpose_immediately_below_pitch(pitch, start))
            else:
                out.append(transposed_pitch)
    return out


def get_descending_group_lengths_from_ties(leaves):
    ties = abjad.select.logical_ties(leaves, pitched=True)
    pitches = [tie[0].written_pitch for tie in ties]
    pairs = evans.Sequence(pitches).nwise(2)
    counts = []
    counter = 1
    for pair in pairs:
        if pair[1] <= pair[0]:
            counter += 1
        else:
            counts.append(counter)
            counter = 1
    counts.append(counter)
    assert sum(counts) == len(pitches)
    return counts


def get_a_d_group_lengths_from_ties(leaves, toggle=abjad.UP):
    toggled = False
    start_toggle = toggle
    ties = abjad.select.logical_ties(leaves, pitched=True)
    pitches = [tie[0].written_pitch for tie in ties]
    pairs = evans.Sequence(pitches).nwise(2)
    counts = []
    counter = 1
    for pair in pairs:
        if toggle == abjad.DOWN:
            if pair[1] <= pair[0]:
                counter += 1
            else:
                toggle = abjad.UP
                if toggle != start_toggle:
                    counter += 1
                else:
                    counts.append(counter)
                    counter = 1
        elif toggle == abjad.UP:
            if pair[0] <= pair[1]:
                counter += 1
            else:
                toggle = abjad.DOWN
                if toggle != start_toggle:
                    counter += 1
                else:
                    counts.append(counter)
                    counter = 1
        else:
            raise Exception("Toggle must be abjad.UP or abjad.DOWN")
    counts.append(counter)
    try:
        assert sum(counts) == len(pitches)
    except:
        raise Exception(f"sum counts: {sum(counts)} and # of pitches: {len(pitches)}")
    return counts


## leaves
def transpose_to_or_immediately_above_pitch(tie, reference):
    arg = tie[0].written_pitch
    if abjad.NamedPitch(arg) == reference:
        arg = arg
    elif reference < abjad.NamedPitch(arg):
        while reference < abjad.NamedPitch(arg):
            arg = abjad.NamedPitch(arg).transpose(-12).number
        if abjad.NamedPitch(arg) == reference:
            arg = arg
        else:
            arg = abjad.NamedPitch(arg).transpose(+12).number
    elif abjad.NamedPitch(arg) < reference:
        while abjad.NamedPitch(arg) < reference:
            arg = abjad.NamedPitch(arg).transpose(+12).number
    for leaf in tie:
        leaf.written_pitch = arg
    return arg

def transpose_to_or_immediately_below_pitch(tie, reference):
    arg = tie[0].written_pitch
    if abjad.NamedPitch(arg) == reference:
        arg = arg
    elif abjad.NamedPitch(arg) < reference:
        while abjad.NamedPitch(arg) < reference:
            arg = abjad.NamedPitch(arg).transpose(+12).number
        if abjad.NamedPitch(arg) == reference:
            arg = arg
        else:
            arg = abjad.NamedPitch(arg).transpose(-12).number
    elif reference < abjad.NamedPitch(arg):
        while abjad.NamedPitch(arg) < reference:
            arg = abjad.NamedPitch(arg).transpose(-12).number
    for leaf in tie:
        leaf.written_pitch = arg
    return arg

def ascend_leaves_in_range(leaves, pitch_range):
    ties = abjad.select.logical_ties(leaves, pitched=True)

    start = pitch_range.start_pitch
    stop = pitch_range.stop_pitch
    out = []
    for tie in ties:
        if len(out) == 0:
            out.append(transpose_to_or_immediately_above_pitch(tie, start))
        else:
            transposed_pitch = transpose_to_or_immediately_above_pitch(tie, out[-1])
            if stop < abjad.NamedPitch(transposed_pitch):
                out.append(transpose_to_or_immediately_above_pitch(tie, start))
            else:
                out.append(transposed_pitch)
    # return out


def descend_leaves_in_range(leaves, pitch_range):
    ties = abjad.select.logical_ties(leaves, pitched=True)

    stop = pitch_range.start_pitch
    start = pitch_range.stop_pitch
    out = []
    for tie in ties:
        if len(out) == 0:
            out.append(transpose_to_or_immediately_below_pitch(tie, start))
        else:
            transposed_pitch = transpose_to_or_immediately_below_pitch(tie, out[-1])
            if abjad.NamedPitch(transposed_pitch) < stop:
                out.append(transpose_to_or_immediately_below_pitch(tie, start))
            else:
                out.append(transposed_pitch)
    # return out


def ascend_and_descend_in_range(leaves, pitch_range, toggle=abjad.UP):
    ties = abjad.select.logical_ties(leaves, pitched=True)

    start = pitch_range.start_pitch
    stop = pitch_range.stop_pitch
    out = []
    for tie in ties:
        if toggle == abjad.UP:
            if len(out) == 0:
                out.append(transpose_to_or_immediately_above_pitch(tie, start))
            else:
                transposed_pitch = transpose_to_or_immediately_above_pitch(tie, out[-1])
                if stop < abjad.NamedPitch(transposed_pitch):
                    out.append(transpose_to_or_immediately_below_pitch(tie, stop))
                    toggle = abjad.DOWN
                else:
                    out.append(transposed_pitch)
        elif toggle == abjad.DOWN:
            if len(out) == 0:
                out.append(transpose_to_or_immediately_below_pitch(tie, stop))
            else:
                transposed_pitch = transpose_to_or_immediately_below_pitch(tie, out[-1])
                if abjad.NamedPitch(transposed_pitch) < start:
                    out.append(transpose_to_or_immediately_above_pitch(tie, start))
                    toggle = abjad.UP
                else:
                    out.append(transposed_pitch)
        else:
            raise Exception(
                f"ERROR! toggle must be abjad.UP or abjad.DOWN not {toggle}"
            )
    assert len(ties) == len(out)
    # return out


# Segment 2

row_intervals = intervals + intervals
folded_intervals = evans.Sequence(row_intervals).zipped_bifurcation()
row_intervals_2 = intervals + intervals + [None for _ in range(row_intervals[0] % 5)]
folded_intervals_2 = evans.Sequence(row_intervals_2).zipped_bifurcation()
row_intervals_3 = intervals + intervals + [None for _ in range(row_intervals[0] % 5)] + [None for _ in range(row_intervals[3] % 5)]
folded_intervals_3 = evans.Sequence(row_intervals_3).zipped_bifurcation()
row_intervals_4 = intervals + intervals + [None for _ in range(row_intervals[0] % 5)] + [None for _ in range(row_intervals[3] % 5)] + [None for _ in range(row_intervals[2] % 5)]
folded_intervals_4 = evans.Sequence(row_intervals_4).zipped_bifurcation()
pli_selon_pli = folded_intervals + folded_intervals_2 + folded_intervals_3 + folded_intervals_4


alternating_directions = []
for i, integer in enumerate(pli_selon_pli):
    if i % 2 == 0:
        alternating_directions.append(0 - integer)
    else:
        alternating_directions.append(integer)


segment_2_material_2_intervals_to_pitches = CannibalizingPitchSequence(
    intervals=[
        alternating_directions
    ],
    starting_pitch=4,
    steer_by="final pitch",
)

cycle = evans.CyclicList([0, 24, 0, 12, 12, 0, 12, 12, 24, 12, 0, 0, 12, 24, 24, 12, 24, 24, 24, 12, 0, 0, 0, 12, 12, 0, 12, 12, 12], forget=False)

segment_2_sequence_object = evans.Sequence(segment_2_material_2_intervals_to_pitches.pitches).mod(12, indices=True)
segment_2_sequence_object = segment_2_sequence_object.add_sequences(cycle(r=len(segment_2_sequence_object)))

segment_2_stutters = segment_2_sequence_object.stutter(
    counts=[(_ % 4) + 3 for _ in cell_sizes],
    indices=[0],
    period=1,
    cyclic=True,
)

cell_size_construction = []
for cell, rest in zip([_ + 3 for _ in cell_sizes], [(_ % 2) + 1 for _ in intervals + inverted_intervals + reversed_intervals]):
    cell_size_construction.extend([1 for _ in range(cell)])
    cell_size_construction.append(0 - rest)

def vector_to_indices(vector):
    cell_indices = []
    cell_counter = 0
    for integer in vector:
        cell_counter += abs(integer)
        if 0 < integer:
            cell_indices.append(cell_counter)
        else:
            continue
    return cell_indices


# segment 2 main materials
segment_2_cumulative_sums = abjad.math.cumulative_sums([5 for _ in range(6)])
segment_2_sums_pairs = abjad.sequence.nwise(segment_2_cumulative_sums, 2)
segment_2_gotten_intervals = [get_intervals_from_pitches(built_materials.pitches[pair[0]:pair[1]]) for pair in segment_2_sums_pairs]

segment_2_pitches = CannibalizingPitchSequence(
    intervals=segment_2_gotten_intervals,
    starting_pitch=6,
    steer_by="final pitch",
)

full_interval_sequence = get_intervals_from_pitches(built_materials.pitches)
segment_2_partitions = abjad.sequence.partition_by_counts(full_interval_sequence, cell_sizes[::-1], cyclic=True, overhang=True)

for i, partition in enumerate(segment_2_partitions[:12]):
    if (i % 3 == 0 or i % 5 == 0):
        partition = partition[::-1]
    if (i % 6 == 0 or i % 7 == 0):
        partition = [0 - integer for integer in partition]
    segment_2_pitches(
        [
            partition,
        ]
    )

partitioned_cells = abjad.sequence.partition_by_counts(cell_sizes, cell_sizes, cyclic=True, overhang=True)
warped_cells = []
for i, cell in enumerate(partitioned_cells):
    if (i % 3 == 0 or i % 5 == 0 or i % 7 == 0):
        warped_cells += cell[::-1]
    else:
        warped_cells += cell

segment_2_cumulative_sums_2 = abjad.math.cumulative_sums(warped_cells)
segment_2_sums_pairs_2 = [_ for _ in abjad.sequence.nwise(segment_2_cumulative_sums_2, 2)]
new_motives = [get_intervals_from_pitches(built_materials.pitches[pair[0]:pair[1]]) for pair in segment_2_sums_pairs_2[:18]]
for i, motive in enumerate(new_motives):
    if (i % 4 == 0 or i % 6 == 0):
        partition = partition[::-1]
    if (i % 7 == 0 or i % 10 == 0):
        partition = [0 - integer for integer in partition]
    segment_2_pitches(
        [
            partition,
        ]
    )

segment_2_pitches = evans.Sequence(segment_2_pitches).mod(12, indices=True)

# raise Exception(len(segment_2_pitches))
