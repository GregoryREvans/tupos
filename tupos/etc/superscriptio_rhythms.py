import abjad
import evans
from abjadext import rmakers


def make_lilypond_file(leaves, pairs):
    time_signatures = [abjad.TimeSignature(_) for _ in pairs]
    lilypond_file = rmakers.example(leaves, time_signatures)
    # raise Exception(abjad.lilypond(lilypond_file))
    voice = lilypond_file["Staff"]
    rmakers.beam(voice)
    return lilypond_file


ts_numerators = [
    1,
    1,
    3,
    3,
    1,
    1,
    2,
    1,
    1,
    2,
    1,
    3,
    1,
    3,
    7,
    2,
]
ts_denominators = [8, 10, 32, 20, 12, 16, 10, 32, 10, 12, 8, 32, 48, 16, 16, 10]

rhythm_integer_sequence = [9, 3, 4, 5, 4, 2, 4, 1, 2, 5, 3, 2, 1, 7, 10, 10]

sigs = [_ for _ in zip(ts_numerators, ts_denominators)]

# tups = [(1 for x in range(y)) for y in rhythm_integer_sequence]
# maker = evans.tuplet(tups)
#
# leaves = maker(sigs)
#
# lilypond_file = make_lilypond_file(leaves, sigs)
# abjad.show(lilypond_file)


# rtms = [
#     "(1 ((1 (1 1 1)) (1 (1 1 1)) (1(1 1 1))))",
#     "(1 ((1 (1 1 1 1)) (1 (1 1 1 1))))",
#     "(1 (1 1 1 1 1 1 1))",
#     "(1 ((1 (1 1 1)) (1 (1 1 1))))",
#     "(1 (1 1 1 1 1))",
#     "(1 ((1 (1 1)) (1 (1 1))))",
#     "(1 (1 1 1))",
#     "(1 (1 1))",
#     "(1 (1))",
# ]

# rtms = [
#     "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
#     "(1 (1 1 1))",
#     "(1 ((1 (1 1)) (1 (1 1))))",
#     "(1 (1 1 1 1 1))",
#     "(1 ((1 (1 1)) (1 (1 1))))",
#     "(1 (1 1))",
#     "(1 ((1 (1 1)) (1 (1 1))))",
#     "(1 (1))",
#     "(1 (1 1))",
#     "(1 (1 1 1 1 1))",
#     "(1 (1 1 1))",
#     "(1 (1 1))",
#     "(1 (1))",
#     "(1 (1 1 1 1 1 1 1))",
#     "(1 ((1 (1 1 1 1 1)) (1 (1 1 1 1 1))))",
#     "(1 ((1 (1 1 1 1 1)) (1 (1 1 1 1 1))))",
# ]
#
# maker = evans.make_rtm(
#     rtms,
#     preprocessor=None,
#     rewrite=None,
#     treat_tuplets=False,
# )
#
# leaves = maker(sigs)
#
# lilypond_file = make_lilypond_file(leaves, sigs)
# abjad.show(lilypond_file)

leaning_rtms = [
    "(1 ((3 (1 1 1)) (2 (1 1 1)) (1 (1 1 1))))",
    "(1 (1 (1 (1 1))))",
    "(1 ((3 (1 1)) (1 (1 1))))",
    "(1 (1 (1 (1 1 (1 (1 1))))))",
    "(1 ((2 (1 1)) (1 (1 1))))",
    "(1 (1 1))",
    "(1 ((1 (1 1)) (4 (1 1))))",
    "(1 (1))",
    "(1 (1 1))",
    "(1 (1 1 (1 (1 1 1))))",
    "(1 (1 1 1))",
    "(1 (1 1))",
    "(1 (1))",
    "(1 (1 1 1 (1 (1 (1 (1 1 1))))))",
    "(1 ((2 (1 1 1 1 1)) (1 (1 1 1 1 1))))",
    "(1 ((1 (1 1 1 1 1)) (3 (1 1 1 1 1))))",
]

maker = evans.make_rtm(
    leaning_rtms,
    preprocessor=None,
    rewrite=None,
    treat_tuplets=False,
)

leaves = maker(sigs)

lilypond_file = make_lilypond_file(leaves, sigs)
abjad.show(lilypond_file)
