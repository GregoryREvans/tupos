import pathlib
import random

import abjad
import baca
import evans
import numpy as np
from abjadext import rmakers

import tupos

# integers = [_ + 1 for _ in [
#     4, 1, 7, 2, 7, 6, 1, 6, 5, 7, 5, 3, 6, 3, 4, 5, 4, 2, 3, 2, 1, # numbers backward
#     3, 2, 4, 4, 3, 6, 6, 3, 5, 7, 5, 6, # up/down patterns
#     3, 5, 6, 2, 7, 1, 4, # no repetitions from reverse *in* reverse
# ]][:27]
# print(integers)
# integers.reverse()
# print(integers)

maker = evans.SegmentMaker(
    instruments=tupos.instruments,
    names=[
        '"Piccolo"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=False,
    fermata_measures=tupos.fermata_measures_01,
    commands=[
        evans.MusicCommand(
            ("piccolo voice", (0, 28)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals,
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
            ),
            # lambda _: print(f"# of notes: {len(abjad.select.logical_ties(_, pitched=True))}"),
            evans.PitchHandler(tupos.segment_1_pitches),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.ascend_leaves_in_range(_, abjad.PitchRange("[G4, G6)")),
            evans.select_measures([_ for _ in range(20)]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_ascending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([_ for _ in range(20)]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.descend_leaves_in_range(_, abjad.PitchRange("[C5, C7)")),
            evans.select_measures([_ for _ in range(20, 22)]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_descending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([_ for _ in range(20, 22)]),
        ),
        ###########
        evans.call(
            "piccolo voice",
            lambda _: tupos.ascend_and_descend_in_range(
                _, abjad.PitchRange("[C3, C5)"), toggle=abjad.UP
            ),
            evans.select_measures([_ for _ in range(22, 26)]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_a_d_group_lengths_from_ties(_, toggle=abjad.UP),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([_ for _ in range(22, 26)]),
        ),
        ###########
        evans.call(
            "piccolo voice",
            lambda _: tupos.descend_leaves_in_range(_, abjad.PitchRange("[C5, C7)")),
            evans.select_measures([_ for _ in range(26, 28)]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_descending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([_ for _ in range(26, 28)]),
        ),
        #
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.beam_score_without_splitting,
        #     lambda _: abjad.select.components(_, abjad.Score),
        # ),
        evans.attach(
            "Global Context",
            tupos.literal_mark,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            tupos.met,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=tupos.score,
    transpose_from_sounding_pitch=False,
    time_signatures=tupos.signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="01",
    current_directory=pathlib.Path(__file__).parent,
    cutaway="invisible",
    beam_pattern="meter",
    beam_rests=True,
    barline="|.",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    with_layout=True,
    mm_rests=False,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
    color_out_of_range=False,
)

maker.build_segment()
