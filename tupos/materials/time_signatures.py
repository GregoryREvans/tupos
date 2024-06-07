import abjad
import evans


# segment 4 last 5 grafted on June 6

available_dens = [4, 5, 6, 8, 10, 12, 16, 20, 24, 32]

nums = [
    2,
    3,
    2,
    5,
    4,
    5,
    6,
    9,
    8,
    6,
    4,
    2,
    16,
    11,
    4,
    4,
    5,
    4,
    9,
    8,
    5,
    7,
    5,
    3,
    9,
    10,
    6,
    2,
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
signatures_01 = [abjad.TimeSignature(_) for _ in pairs]

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

signatures_02 = [abjad.TimeSignature(_) for _ in manipulated_pairs]
assert len(signatures_02) == len(signatures_01)

# SEGMENT 3
folded_pairs = [
    _ for _ in evans.Sequence(manipulated_pairs).zipped_bifurcation(reversed=True)
]

manipulated_pairs = []

for pair in folded_pairs:
    new_num = pair[0] - 2
    if pair[1] == 32:
        new_den = 32
    else:
        new_den = available_dens[available_dens.index(pair[1]) + 1]
    manipulated_pairs.append((new_num, new_den))

signatures_03 = [abjad.TimeSignature(_) for _ in manipulated_pairs]
assert len(signatures_03) == len(signatures_01)

# SEGMENT 4
folded_pairs = [
    _ for _ in evans.Sequence(manipulated_pairs).zipped_bifurcation(reversed=True)
]
signatures_04 = [abjad.TimeSignature(_) for _ in folded_pairs] + signatures_03[:5]
assert len(signatures_04) == len(signatures_01) + 5

# SEGMENT 5
manipulated_pairs = []

for pair in folded_pairs:
    new_num = pair[0] + 1
    if pair[1] == 4:
        new_den = 4
    else:
        new_den = available_dens[available_dens.index(pair[1]) - 1]
    manipulated_pairs.append((new_num, new_den))

front_half = manipulated_pairs[:15]
back_half = manipulated_pairs[15:]
folded_back = [_ for _ in evans.Sequence(back_half).zipped_bifurcation(reversed=True)]
rejoined_halves = front_half + folded_back
signatures_05 = [abjad.TimeSignature(_) for _ in rejoined_halves]
assert len(signatures_05) == len(signatures_01)

# all_sigs = (
#     signatures_01 + signatures_02 + signatures_03 + signatures_04 + signatures_05
# )
# dur = sum([abjad.Duration(_) for _ in all_sigs])
# print(dur)


##
## 01 ##
##

# signatures_01 = [
#     abjad.TimeSignature((2, 4)),
#     abjad.TimeSignature((2, 4)),
#     abjad.TimeSignature((2, 5)),
#     abjad.TimeSignature((3, 8)),
#     abjad.TimeSignature((2, 6)),
#     abjad.TimeSignature((3, 8)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((9, 20)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((5, 12)),
#     abjad.TimeSignature((4, 10)),
#     abjad.TimeSignature((6, 8)),
#     abjad.TimeSignature((17, 32)),
#     abjad.TimeSignature((11, 24)),
#     abjad.TimeSignature((3, 4)),
#     abjad.TimeSignature((1, 5)),
#     abjad.TimeSignature((2, 8)),
#     abjad.TimeSignature((5, 6)),
#     abjad.TimeSignature((10, 16)),
#     abjad.TimeSignature((6, 16)),
#     abjad.TimeSignature((7, 10)),
#     abjad.TimeSignature((7, 16)),
#     abjad.TimeSignature((7, 12)),
#     abjad.TimeSignature((2, 8)),
#     abjad.TimeSignature((12, 20)),
#     abjad.TimeSignature((10, 24)),
#     abjad.TimeSignature((7, 16)),
#     abjad.TimeSignature((1, 8)),
# ]

signatures_01.append(abjad.TimeSignature((1, 8)))  # for ending skip

fermata_measures_01 = []

reduced_signatures_01 = evans.reduce_fermata_measures(
    signatures_01, fermata_measures_01
)


##
## 02 ##
##

# signatures_02 = [
#     abjad.TimeSignature((3, 5)),
#     abjad.TimeSignature((3, 5)),
#     abjad.TimeSignature((3, 6)),
#     abjad.TimeSignature((4, 10)),
#     abjad.TimeSignature((3, 8)),
#     abjad.TimeSignature((4, 10)),
#     abjad.TimeSignature((6, 10)),
#     abjad.TimeSignature((10, 24)),
#     abjad.TimeSignature((10, 20)),
#     abjad.TimeSignature((6, 16)),
#     abjad.TimeSignature((5, 12)),
#     abjad.TimeSignature((7, 10)),
#     abjad.TimeSignature((18, 32)),
#     abjad.TimeSignature((12, 32)),
#     abjad.TimeSignature((4, 5)),
#     abjad.TimeSignature((2, 6)),
#     abjad.TimeSignature((2, 10)),
#     abjad.TimeSignature((3, 10)),
#     abjad.TimeSignature((8, 20)),
#     abjad.TimeSignature((6, 8)),
#     abjad.TimeSignature((11, 32)),
#     abjad.TimeSignature((11, 20)),
#     abjad.TimeSignature((13, 24)),
#     abjad.TimeSignature((7, 20)),
#     abjad.TimeSignature((3, 10)),
#     abjad.TimeSignature((8, 12)),
#     abjad.TimeSignature((8, 16)),
#     abjad.TimeSignature((8, 20)),
# ]

signatures_02.append(abjad.TimeSignature((1, 8)))  # for ending skip

fermata_measures_02 = []

reduced_signatures_02 = evans.reduce_fermata_measures(
    signatures_02, fermata_measures_02
)


##
## 03 ##
##

# signatures_03 = [
#     abjad.TimeSignature((4, 4)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((4, 4)),
#     abjad.TimeSignature((9, 12)),
#     abjad.TimeSignature((4, 5)),
#     abjad.TimeSignature((9, 10)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((4, 8)),
#     abjad.TimeSignature((4, 6)),
#     abjad.TimeSignature((8, 16)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((14, 20)),
#     abjad.TimeSignature((7, 8)),
#     abjad.TimeSignature((12, 16)),
#     abjad.TimeSignature((11, 20)),
#     abjad.TimeSignature((12, 24)),
#     abjad.TimeSignature((11, 16)),
#     abjad.TimeSignature((7, 6)),
#     abjad.TimeSignature((7, 12)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((6, 10)),
#     abjad.TimeSignature((4, 8)),
#     abjad.TimeSignature((8, 8)),
#     abjad.TimeSignature((3, 8)),
#     abjad.TimeSignature((19, 24)),
#     abjad.TimeSignature((3, 5)),
#     abjad.TimeSignature((13, 24)),
#     abjad.TimeSignature((5, 4)),
# ]

signatures_03.append(abjad.TimeSignature((1, 8)))  # for ending skip

fermata_measures_03 = []

reduced_signatures_03 = evans.reduce_fermata_measures(
    signatures_03, fermata_measures_03
)

##
## 04 ##
##

# signatures_04 = [
#     abjad.TimeSignature((4, 4)),
#     abjad.TimeSignature((5, 4)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((13, 24)),
#     abjad.TimeSignature((4, 4)),
#     abjad.TimeSignature((3, 5)),
#     abjad.TimeSignature((9, 12)),
#     abjad.TimeSignature((19, 24)),
#     abjad.TimeSignature((4, 5)),
#     abjad.TimeSignature((3, 8)),
#     abjad.TimeSignature((9, 10)),
#     abjad.TimeSignature((8, 8)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((4, 8)),
#     abjad.TimeSignature((4, 8)),
#     abjad.TimeSignature((6, 10)),
#     abjad.TimeSignature((4, 6)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((8, 16)),
#     abjad.TimeSignature((7, 12)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((7, 6)),
#     abjad.TimeSignature((14, 20)),
#     abjad.TimeSignature((11, 16)),
#     abjad.TimeSignature((7, 8)),
#     abjad.TimeSignature((12, 24)),
#     abjad.TimeSignature((12, 16)),
#     abjad.TimeSignature((11, 20)),
# ]

signatures_04.append(abjad.TimeSignature((1, 8)))  # for ending skip

fermata_measures_04 = []

reduced_signatures_04 = evans.reduce_fermata_measures(
    signatures_04, fermata_measures_04
)

##
## 05 ##
##

# signatures_05 = [
#     abjad.TimeSignature((4, 4)),
#     abjad.TimeSignature((5, 4)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((13, 24)),
#     abjad.TimeSignature((4, 4)),
#     abjad.TimeSignature((3, 5)),
#     abjad.TimeSignature((9, 12)),
#     abjad.TimeSignature((19, 24)),
#     abjad.TimeSignature((4, 5)),
#     abjad.TimeSignature((3, 8)),
#     abjad.TimeSignature((9, 10)),
#     abjad.TimeSignature((8, 8)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((4, 8)),
#     abjad.TimeSignature((4, 8)),
#     abjad.TimeSignature((6, 10)),
#     abjad.TimeSignature((4, 6)),
#     abjad.TimeSignature((9, 16)),
#     abjad.TimeSignature((8, 16)),
#     abjad.TimeSignature((7, 12)),
#     abjad.TimeSignature((5, 8)),
#     abjad.TimeSignature((7, 6)),
#     abjad.TimeSignature((14, 20)),
#     abjad.TimeSignature((11, 16)),
#     abjad.TimeSignature((7, 8)),
#     abjad.TimeSignature((12, 24)),
#     abjad.TimeSignature((12, 16)),
#     abjad.TimeSignature((11, 20)),
# ]

signatures_05.append(abjad.TimeSignature((1, 8)))  # for ending skip

fermata_measures_05 = [27]

reduced_signatures_05 = evans.reduce_fermata_measures(
    signatures_05, fermata_measures_05
)

###

assert len(reduced_signatures_01) == 28
assert len(reduced_signatures_02) == 28
assert len(reduced_signatures_03) == 28
assert len(reduced_signatures_04) == 28 + 5
assert len(reduced_signatures_05) == 28

##
## total ##
##

all_signatures = evans.join_time_signature_lists(
    [
        reduced_signatures_01,
        reduced_signatures_02,
        reduced_signatures_03,
        reduced_signatures_04,
        reduced_signatures_05,
    ]
)
