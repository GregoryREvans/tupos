import pathlib
import random

import abjad
import baca
import evans
import numpy as np
from abjadext import rmakers

import tupos

pitches = evans.PitchHandler(tupos.segment_1_pitches)

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
            ("piccolo voice", (0, 12)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[0:12],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=True, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
            ),
            pitches,
        ),
        evans.MusicCommand(
            ("piccolo voice", (12, 16)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[12:16],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=True, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
            ),
            pitches,
        ),
        evans.MusicCommand(
            ("piccolo voice", (16, 22)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[16:22],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=True, # ?
                weighted="right",
            ),
            pitches,
        ),
        evans.MusicCommand(
            ("piccolo voice", (22, 28)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[22:28],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=True, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
            ),
            pitches,
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
                _, abjad.PitchRange("[F4, F5)"), toggle=abjad.UP
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
        # evans.call(
        #     "piccolo voice",
        #     lambda _: print(f"# of notes: {len(abjad.select.logical_ties(_, pitched=True))}"),
        #     selector=lambda _: _,
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
