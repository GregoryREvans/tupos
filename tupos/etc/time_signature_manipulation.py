import itertools

import abjad
import evans

# assume tempo is 56

available_dens = [4, 5, 6, 8, 10, 12, 16, 20, 24, 32]

nums = [
    2,
    2,
    2,
    3,
    2,
    3,
    5,
    9,
    9,
    5,
    4,
    6,
    17,
    11,
    3,
    1,
    2,
    5,
    10,
    6,
    7,
    7,
    7,
    2,
    12,
    10,
    7,
    1,
]
assert len(nums) == 28

dens = [
    4,
    4,
    5,
    8,
    6,
    8,
    8,
    20,
    16,
    12,
    10,
    8,
    32,
    24,
    4,
    5,
    8,
    6,
    16,
    16,
    10,
    16,
    12,
    8,
    20,
    24,
    16,
    8,
]
assert len(dens) == 28

pairs = [_ for _ in zip(nums, dens)]

# SEGMENT 1
segment_1_sigs = [abjad.TimeSignature(_) for _ in pairs]

# SEGMENT 2
front_half = pairs[:15]
back_half = pairs[15:]
folded_back = [_ for _ in evans.Sequence(back_half).zipped_bifurcation(reversed=True)]
rejoined_halves = front_half + folded_back
manipulated_pairs = []

for pair in rejoined_halves:
    new_num = pair[0] + 1
    if pair[1] == 32:
        new_den = 32
    else:
        new_den = available_dens[available_dens.index(pair[1]) + 1]
    manipulated_pairs.append((new_num, new_den))

segment_2_sigs = [abjad.TimeSignature(_) for _ in manipulated_pairs]
assert len(segment_2_sigs) == len(segment_1_sigs)

# SEGMENT 3
folded_pairs = [
    _ for _ in evans.Sequence(manipulated_pairs).zipped_bifurcation(reversed=True)
]

manipulated_pairs = []

for pair in folded_pairs:
    new_num = pair[0] + 1
    if pair[1] == 4:
        new_den = 4
    else:
        new_den = available_dens[available_dens.index(pair[1]) - 1]
    manipulated_pairs.append((new_num, new_den))

segment_3_sigs = [abjad.TimeSignature(_) for _ in manipulated_pairs]
assert len(segment_3_sigs) == len(segment_1_sigs)

# SEGMENT 4
folded_pairs = [
    _ for _ in evans.Sequence(manipulated_pairs).zipped_bifurcation(reversed=True)
]
segment_4_sigs = [abjad.TimeSignature(_) for _ in folded_pairs]
assert len(segment_4_sigs) == len(segment_1_sigs)

# SEGMENT 5
front_half = folded_pairs[:15]
back_half = folded_pairs[15:]
folded_back = [_ for _ in evans.Sequence(back_half).zipped_bifurcation(reversed=True)]
rejoined_halves = front_half + folded_back
segment_5_sigs = [abjad.TimeSignature(_) for _ in folded_pairs]
assert len(segment_5_sigs) == len(segment_1_sigs)
#
# print(segment_1_sigs)
# print("")
# print(segment_2_sigs)
# print("")
# print(segment_3_sigs)
# print("")
# print(segment_4_sigs)
# print("")
# print(segment_5_sigs)
# print("")

all_sigs = (
    segment_1_sigs + segment_2_sigs + segment_3_sigs + segment_4_sigs + segment_5_sigs
)
dur = sum([abjad.Duration(_) for _ in all_sigs])
print(dur)
# change tempo to 65 to accomodate larger measures
