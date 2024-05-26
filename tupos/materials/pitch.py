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
        # raise Exception(len(new_pitches))
        # self.pitches.extend(new_pitches)
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
                        pitches.extend(temp)
                    counter += 1
            else:
                if counter is None:
                    pitches.append(pitches[-1] + interval)
                else:
                    pitches.append(pitches[counter] + interval)
                    counter += 1
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
)  # TAKE THE TIME TO MAKE MOTIVES MATCH PHRASE SIZES
slices = interval_slices_from_leaf_counts(
    [
        3,
        4,
        4,
        6,
        4,
        3,
        3,
        3,
        5,
        4,
        2,
        6,
        4,
        5,
        2,
        4,
        4,
        3,
        4,
        4,
        4,
        3,
        4,
        5,
        5,
        4,
        4,
        3,
        3,
        5,
        4,
        3,
        2,
        5,
        4,
        3,
        5,
        4,
        2,
        3,
        2,
        2,
        2,
        5,
        3,
        4,
        3,
        6,
        2,
    ]
)

for pair in slices:
    built_materials(
        [
            # add more but as subdivisions: maybe based on phrase groups
            abjad.sequence.flatten(built_materials.intervals, depth=-1)[
                pair[0] : pair[1]
            ],
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


def ascend_leaves_in_range(leaves, pitch_range):
    ties = abjad.select.logical_ties(leaves, pitched=True)

    def transpose_immediately_above_pitch(tie, reference):
        arg = tie[0].written_pitch
        if reference < abjad.NamedPitch(arg):
            while reference < abjad.NamedPitch(arg):
                arg = abjad.NamedPitch(arg).transpose(-12).number
            arg = abjad.NamedPitch(arg).transpose(+12).number
        elif abjad.NamedPitch(arg) < reference:
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(+12).number
        for leaf in tie:
            leaf.written_pitch = arg
        return arg

    start = pitch_range.start_pitch
    stop = pitch_range.stop_pitch
    out = []
    for tie in ties:
        if len(out) == 0:
            out.append(transpose_immediately_above_pitch(tie, start))
        else:
            transposed_pitch = transpose_immediately_above_pitch(tie, out[-1])
            if stop < abjad.NamedPitch(transposed_pitch):
                out.append(transpose_immediately_above_pitch(tie, start))
            else:
                out.append(transposed_pitch)


def descend_leaves_in_range(leaves, pitch_range):
    ties = abjad.select.logical_ties(leaves, pitched=True)

    def transpose_immediately_below_pitch(tie, reference):
        arg = tie[0].written_pitch
        if abjad.NamedPitch(arg) < reference:
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(+12).number
            arg = abjad.NamedPitch(arg).transpose(-12).number
        elif reference < abjad.NamedPitch(arg):
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(-12).number
        for leaf in tie:
            leaf.written_pitch = arg
        return arg

    stop = pitch_range.start_pitch
    start = pitch_range.stop_pitch
    out = []
    for tie in ties:
        if len(out) == 0:
            out.append(transpose_immediately_below_pitch(tie, start))
        else:
            transposed_pitch = transpose_immediately_below_pitch(tie, out[-1])
            if abjad.NamedPitch(transposed_pitch) < stop:
                out.append(transpose_immediately_below_pitch(tie, start))
            else:
                out.append(transposed_pitch)
    return out


def ascend_and_descend_in_range(leaves, pitch_range, toggle=abjad.UP):
    ties = abjad.select.logical_ties(leaves, pitched=True)

    def transpose_immediately_above_pitch(tie, reference):
        arg = tie[0].written_pitch
        if reference < abjad.NamedPitch(arg):
            while reference < abjad.NamedPitch(arg):
                arg = abjad.NamedPitch(arg).transpose(-12).number
            arg = abjad.NamedPitch(arg).transpose(+12).number
        elif abjad.NamedPitch(arg) < reference:
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(+12).number
        for leaf in tie:
            leaf.written_pitch = arg
        return arg

    def transpose_immediately_below_pitch(tie, reference):
        arg = tie[0].written_pitch
        if abjad.NamedPitch(arg) < reference:
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(+12).number
            arg = abjad.NamedPitch(arg).transpose(-12).number
        elif reference < abjad.NamedPitch(arg):
            while abjad.NamedPitch(arg) < reference:
                arg = abjad.NamedPitch(arg).transpose(-12).number
        for leaf in tie:
            leaf.written_pitch = arg
        return arg

    stop = pitch_range.start_pitch
    start = pitch_range.stop_pitch
    out = []
    for tie in ties:
        if toggle == abjad.UP:
            if len(out) == 0:
                out.append(transpose_immediately_above_pitch(tie, start))
            else:
                transposed_pitch = transpose_immediately_above_pitch(tie, out[-1])
                if stop < abjad.NamedPitch(transposed_pitch):
                    out.append(transpose_immediately_below_pitch(tie, stop))
                    toggle = abjad.DOWN
                else:
                    out.append(transposed_pitch)
        elif toggle == abjad.DOWN:
            for tie in ties:
                if len(out) == 0:
                    out.append(transpose_immediately_below_pitch(tie, stop))
                else:
                    transposed_pitch = transpose_immediately_below_pitch(tie, out[-1])
                    if abjad.NamedPitch(transposed_pitch) < start:
                        out.append(transpose_immediately_above_pitch(tie, start))
                        toggle = abjad.UP
                    else:
                        out.append(transposed_pitch)
        else:
            raise Exception(
                f"ERROR! toggle must be abjad.UP or abjad.DOWN not {toggle}"
            )
    return out
