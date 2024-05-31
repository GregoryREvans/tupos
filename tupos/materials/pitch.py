import abjad
import evans
from abjadext import rmakers


#duplicate to avoid circular import
def return_parent(arg):
    parent = abjad.get.parentage(arg).parent
    return parent
###


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
        self.steer_by = steer_by
        self.counter = None
        self.pitches = [starting_pitch]
        if self.steer_by == "next pitch":
            self.counter = 0
        else:
            self.counter = None
        if self.steer_by == "next pitch":
            self._pitch_from_interval_groups_by_next_pitch(
                self.intervals
            )
        elif self.steer_by == "final pitch":
            self._pitch_from_interval_groups_by_final_pitch(
                self.intervals
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
        if self.steer_by == "next pitch":
            self._pitch_from_interval_groups_by_next_pitch(
                intervals=arg,
            )
        else:
            self._pitch_from_interval_groups_by_final_pitch(
                intervals=arg,
            )
        self.intervals += arg
        # print(self.pitches)

    def __contains__(self, argument):
        test_value = argument in self.pitches
        return test_value

    def _pitch_from_interval_groups_by_next_pitch(
        self,
        intervals,
    ):
        for interval in intervals:
            if isinstance(interval, list):
                temp = type(self)(
                    intervals=interval,
                    starting_pitch=self.pitches[self.counter],
                    steer_by="final pitch",
                )
                if len(self.pitches) == 1:
                    self.pitches = temp.pitches
                else:
                    self.pitches.extend(temp)
                self.counter += 1
            else:
                self.pitches.append(self.pitches[self.counter] + interval)
                self.counter += 1

    def _pitch_from_interval_groups_by_final_pitch( # fix this....what is wrong...........
        self,
        intervals,
    ):
        for interval in intervals:
            if isinstance(interval, list):
                temp = type(self)(
                    intervals=interval,
                    starting_pitch=self.pitches[-1],
                    steer_by="final pitch",
                )
                if len(self.pitches) == 1:
                    self.pitches = temp.pitches
                else:
                    self.pitches.extend(temp[1:])
            else:
                self.pitches.append(self.pitches[-1] + interval)


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

# raise Exception(segment_1_pitches)
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

# segment 3
pattern_1 = abjad.index(
    abjad.math.cumulative_sums(inverted_intervals + reversed_intervals)[1:],
    abjad.math.cumulative_sums(inverted_intervals + reversed_intervals)[-1] + 1,
)

pattern_2 = abjad.index(
    abjad.math.cumulative_sums(intervals)[1:],
    abjad.math.cumulative_sums(intervals)[-1] + 1,
)

pattern_3 = abjad.index(
    abjad.math.cumulative_sums(cell_sizes)[1:],
    abjad.math.cumulative_sums(cell_sizes)[-1] + 1,
)

pattern_union = pattern_1 | pattern_2 | pattern_3
rest_pattern = ~pattern_union

pattern_1_pitches = [_ + 24 for _ in row]
pattern_2_pitches = [_ + 12 for _ in inverted_row + reversed_row]
pattern_3_pitches = [_ for _ in evans.Sequence(row).transpose(2)]

def layered_pitch_applicator(ties, pitches, pattern):
    cyc_pitches = evans.CyclicList(pitches, forget=False)
    ties = abjad.select.logical_ties(ties, pitched=True, grace=False)
    gotten_ties = abjad.select.get(ties, pattern)
    for tie in gotten_ties:
        tie_pitch = cyc_pitches(r=1)[0]
        for leaf in tie:
            annotation = abjad.get.annotation(leaf, "pitched by applicator")
            if annotation is None:
                leaf.written_pitch = tie_pitch
                abjad.annotate(leaf, "pitched by applicator", True)
            else:
                if isinstance(leaf, abjad.Note):
                    chord_pitches = [leaf.written_pitch]
                    chord_pitches.append(tie_pitch)
                    constructed_chord = abjad.Chord(chord_pitches, leaf.written_duration)
                    indicators = abjad.get.indicators(leaf)
                    for indicator in indicators:
                        abjad.detach(indicator, leaf)
                        abjad.attach(indicator, constructed_chord)
                    abjad.annotate(constructed_chord, "pitched by applicator", True)
                    abjad.mutate.replace(leaf, constructed_chord)
                elif isinstance(leaf, abjad.Chord):
                    full_pitch_list = [_ for _ in leaf.written_pitches]
                    full_pitch_list.append(tie_pitch)
                    full_pitch_tuple = tuple(full_pitch_list)
                    leaf.written_pitches = full_pitch_tuple


def chord_to_graces(ties, directions=[abjad.UP, abjad.DOWN], stem_position=18, grace_location="after"):
    cyc_directions = evans.CyclicList(directions, forget=False)
    ties = abjad.select.logical_ties(ties, pitched=True, grace=False)
    chords = [tie for tie in ties if isinstance(tie[0], abjad.Chord)]
    for chord in chords:
        if cyc_directions(r=1)[0] == abjad.DOWN:
            pitches = chord[0].written_pitches
        else:
            pitches = chord[0].written_pitches[::-1]
        for i, chord_head in enumerate(chord):
            constructed_note = abjad.Note(pitches[0], chord_head.written_duration)
            if i == 0:
                grace_strings = [f"{abjad.lilypond(_)}16" for _ in pitches[-1:0:-1]]
                combined_string = " ".join(grace_strings)
                if grace_location == "before":
                    graces = evans.BeforeGraceContainer(components=combined_string, position=stem_position)
                    abjad.attach(graces, constructed_note)
                elif grace_location == "after":
                    graces = evans.AfterGraceContainer(components=combined_string, position=stem_position)
                    target = abjad.get.leaf(chord_head, -1)
                    abjad.attach(graces, target)
            indicators = abjad.get.indicators(chord_head)
            for indicator in indicators:
                abjad.detach(indicator, chord_head)
                abjad.attach(indicator, constructed_note)
            abjad.annotate(chord_head, "pitched by applicator", True)
            abjad.mutate.replace(chord_head, constructed_note)


# segment 4
# dense primary + secondary materials
segment_4_rest_groups = []
for i, group in enumerate(cell_sizes):
    if i < 3:
        if i % 2 == 0:
            segment_4_rest_groups.append(3 * group)
        else:
            segment_4_rest_groups.append(group)
    elif i < 3 + 4:
        if i % 2 == 0:
            segment_4_rest_groups.append(4 * group)
        else:
            segment_4_rest_groups.append(group)
    elif i < 3 + 4 + 5:
        if i % 2 == 0:
            segment_4_rest_groups.append(5 * group)
        else:
            segment_4_rest_groups.append(group)


segment_4_burble_pitches = CannibalizingPitchSequence(
    intervals=[
        inverted_intervals,
    ],
    starting_pitch=8,
    steer_by="next pitch",
)

segment_4_sums = abjad.math.cumulative_sums(get_intervals_from_pitches(segment_2_material_2_intervals_to_pitches.pitches))
segment_4_sums_pairs = abjad.sequence.nwise(segment_4_sums)
for i, pair in enumerate(segment_4_sums_pairs):
    intervals_ = get_intervals_from_pitches(segment_4_burble_pitches.pitches)[pair[0]:pair[1]]
    if i % 3 == 0 or i % 4 == 0:
        intervals_ = [0 - _ for _ in intervals_]
    segment_4_burble_pitches(
        [
            # add more but as subdivisions: maybe based on phrase groups
            intervals_,
        ]
    )

segment_4_burble_pitches = evans.Sequence(segment_4_burble_pitches).stutter(
    counts=cell_sizes,
    indices=abjad.math.cumulative_sums(get_intervals_from_pitches(segment_2_material_2_intervals_to_pitches.pitches))[1:],
    period=sum(abjad.math.cumulative_sums(get_intervals_from_pitches(segment_2_material_2_intervals_to_pitches.pitches)))+1,
    cyclic=True,
)

def segment_4_alternate_rester(arg, groups=segment_4_rest_groups): # insert long tones! by grouping groups by cell sizes
    sustain_pitches = evans.CyclicList(evans.Sequence(inverted_row).transpose(3).items, forget=False)
    burble_pitches = evans.CyclicList(segment_4_burble_pitches, forget=False)
    ties = abjad.select.logical_ties(arg, pitched=True) # long tones are of length of row intervals
    partitioned_ties = abjad.select.partition_by_counts(ties, groups, cyclic=True, overhang=True)
    toggles = []
    for i, group in enumerate(partitioned_ties):
        if i % 2 == 0:
            toggles.append("group")
        else:
            toggles.append("rest")
    revised_toggles = []
    cyc_intervals = evans.CyclicList(segment_1_pitch_intervals, forget=False)
    cyc_groups = evans.CyclicList(segment_4_rest_groups, forget=False)
    partitioned_toggles = abjad.sequence.partition_by_counts(toggles, [(_ % 5) + 2 for _ in segment_1_pitch_intervals], cyclic=True, overhang=True)
    for toggle_partition in partitioned_toggles:
        revised_toggles.extend(toggle_partition)
        revised_toggles.extend(cyc_intervals(r=1))
    tuple_pairs = []
    for toggle in revised_toggles:
        if toggle == "group" or toggle == "rest":
            tuple_pairs.append((toggle, cyc_groups(r=1)[0]))
        else:
            tuple_pairs.append(("sustain", toggle))
    final_partitions = abjad.select.partition_by_counts(ties, [pair[1] for pair in tuple_pairs], cyclic=True, overhang=True)
    for partition, toggle in zip(final_partitions, tuple_pairs):
        if toggle[0] == "sustain":
            leaves = abjad.select.leaves(partition)
            contiguities = abjad.select.group_by_contiguity(leaves)
            for contiguity in contiguities:
                abjad.tie(contiguity)
                sustain_tie_pitch = sustain_pitches(r=1)[0]
                for leaf in contiguity:
                    leaf.written_pitch = sustain_tie_pitch
                parent_groups = abjad.select.group_by(contiguity, return_parent)
                for parent_delimited_group in parent_groups:
                    abjad.mutate.fuse(parent_delimited_group)
        elif toggle[0] == "rest":
            for tie in partition:
                rmakers.force_rest(tie)
        else:
            for tie in abjad.select.logical_ties(partition):
                tie_pitch = burble_pitches(r=1)[0] % 12
                for leaf in tie:
                    leaf.written_pitch = tie_pitch

## sparse tertiary material
pattern_4 = abjad.index(
    abjad.math.cumulative_sums(inverted_intervals[::-1] + reversed_intervals[::-1])[1:],
    abjad.math.cumulative_sums(inverted_intervals[::-1] + reversed_intervals[::-1])[-1] + 1,
)

pattern_5 = abjad.index(
    abjad.math.cumulative_sums(intervals[::-1])[1:],
    abjad.math.cumulative_sums(intervals[::-1])[-1] + 1,
)

pattern_6 = abjad.index(
    abjad.math.cumulative_sums(cell_sizes[::-1])[1:],
    abjad.math.cumulative_sums(cell_sizes[::-1])[-1] + 1,
)

pattern_union_456 = pattern_4 | pattern_5 | pattern_6
rest_pattern_456 = ~pattern_union_456

pattern_4_pitches = [(_ / 2) + 24 + 3 for _ in row]
pattern_5_pitches = [(_ / 2) + 12 + 2 for _ in inverted_row + reversed_row]
pattern_6_pitches = [(_ / 2) + 1 for _ in evans.Sequence(row).transpose(2)]


def graft_post_sustains(arg, pattern, debug="False"):
    leaves = abjad.select.leaves(arg, grace=False)
    gotten_leaves = abjad.select.get(leaves, pattern)
    contiguities = abjad.select.group_by_contiguity(gotten_leaves)
    for i, contiguity in enumerate(contiguities):
        if 1 < len(contiguity):
            abjad.tie(contiguity)
        if i == 0:
            rmakers.force_rest(contiguity)
        previous_leaf = abjad.get.leaf(contiguity[0], -1)
        if isinstance(previous_leaf, abjad.Note):
            sustain_tie_pitch = previous_leaf.written_pitch
            for leaf in contiguity:
                leaf.written_pitch = sustain_tie_pitch
        elif isinstance(previous_leaf, abjad.Chord):
            sustain_tie_pitch = previous_leaf.written_pitches
            for leaf in contiguity:
                leaf.written_pitch = sustain_tie_pitch[0]
        parent_groups = abjad.select.group_by(contiguity, return_parent)
        for parent_delimited_group in parent_groups:
            previous_indicators = None
            final_indicators = None
            after_grace = None
            if previous_leaf is not None:
                if return_parent(parent_delimited_group[0]) is return_parent(previous_leaf):
                    parent_delimited_group = [previous_leaf] + parent_delimited_group
                    previous_indicators = abjad.get.indicators(previous_leaf)
                    for indicator in previous_indicators:
                        abjad.detach(indicator, previous_leaf)
                    final_indicators = abjad.get.indicators(parent_delimited_group[-1])
                    for indicator in final_indicators:
                        abjad.detach(indicator, parent_delimited_group[-1])
                    after_grace = abjad.get.after_grace_container(parent_delimited_group[-1])
                    abjad.detach(after_grace, parent_delimited_group[-1])
            fused = abjad.mutate.fuse(parent_delimited_group)
            if debug is True:
                for leaf in fused:
                    abjad.tweak(leaf.note_head, r"\tweak color #blue")
            if previous_indicators is not None:
                for indicator in previous_indicators:
                    abjad.attach(indicator, fused[0])
            if final_indicators is not None:
                for indicator in final_indicators:
                    abjad.attach(indicator, fused[-1])
            if after_grace is not None:
                abjad.attach(after_grace, fused[-1])
        if previous_leaf is not None:
            abjad.attach(abjad.Tie(), previous_leaf)


### segment 5
pattern_7 = abjad.index(
    abjad.math.cumulative_sums([_ % 12 for _ in inverted_intervals if _ != 0])[1:],
    abjad.math.cumulative_sums([_ % 12 for _ in inverted_intervals if _ != 0])[-1] + 1,
)

pattern_8 = abjad.index(
    abjad.math.cumulative_sums(reversed_intervals)[1:],
    abjad.math.cumulative_sums(reversed_intervals)[-1] + 1,
)

pattern_9 = abjad.index(
    abjad.math.cumulative_sums(intervals)[1:],
    abjad.math.cumulative_sums(intervals)[-1] + 1,
)

pattern_10 = abjad.index(
    abjad.math.cumulative_sums(folded_intervals)[1:],
    abjad.math.cumulative_sums(folded_intervals)[-1] + 1,
)

pattern_11 = abjad.index(
    abjad.math.cumulative_sums(cell_sizes)[1:],
    abjad.math.cumulative_sums(cell_sizes)[-1] + 1,
)

pattern_union_789te = pattern_7 | pattern_8 | pattern_9  | pattern_10  | pattern_11
rest_pattern_789te = ~pattern_union_789te

pattern_7_pitches = [(_ / 2) + 3 + 6 + 6 + 6 + 6 for _ in evans.Sequence(evans.Sequence(inverted_row) + evans.Sequence(row).reverse()).zipped_bifurcation()]

pattern_8_pitches = [_ + 3 + 6 + 6 + 6 for _ in evans.Sequence(evans.Sequence(reversed_row) + evans.Sequence([_ / 2 for _ in reversed_row] + [None, None, None]).reverse()).zipped_bifurcation().remove_none()]

pattern_9_pitches = [_ + 3 + 6 + 6 for _ in evans.Sequence(evans.Sequence([_ / 2 for _ in row]) + evans.Sequence(row + [None]).reverse()).zipped_bifurcation().remove_none()]

pattern_10_pitches = [_ + 3 + 6 for _ in evans.Sequence(evans.Sequence(inverted_row) + evans.Sequence([_ / 2 for _ in inverted_row]).reverse()).zipped_bifurcation()]

pattern_11_pitches = [(_ / 2) + 3 + 12 for _ in evans.Sequence(row)]


def extra_grace_encrustation(arg, transpositions=[0, 1], stem_position=18):
    cyc_transpositions = evans.CyclicList(transpositions, forget=False)
    cyc_pitches = evans.CyclicList([_ % 12 for _ in built_materials], forget=False)
    grace_sizes = evans.CyclicList([_ for _ in row if _ != 0], forget=False)
    ties = abjad.select.logical_ties(arg, pitched=True, grace=False)
    filtered_ties = [tie for tie in ties if abjad.get.after_grace_container(abjad.get.leaf(tie[0], -1)) is None and not isinstance(abjad.get.parentage(abjad.get.leaf(tie[0], -1)).parent, evans.AfterGraceContainer)]
    gotten_ties = abjad.select.get(filtered_ties, abjad.index(abjad.math.cumulative_sums(cell_sizes)[1:], abjad.math.cumulative_sums(cell_sizes)[-1] + 1))
    for tie in gotten_ties:
        target = abjad.get.leaf(tie[0], -1)
        if target is not None:
            grace_count = grace_sizes(r=1)[0]
            transposition = cyc_transpositions(r=1)[0]
            grace_leaves = [abjad.Note(cyc_pitches(r=1)[0] + transposition, abjad.Duration(1, 16)) for _ in range(grace_count)]
            graces = evans.AfterGraceContainer(components=grace_leaves, position=stem_position)
            abjad.attach(graces, target)
            abjad.attach(abjad.StartSlur(), graces[0])
            abjad.attach(abjad.StopSlur(), tie[0])
