import pathlib
import random

import abjad
import baca
import evans
import numpy as np
from abjadext import rmakers

import tupos

maker = evans.SegmentMaker(
    instruments=tupos.instruments,
    names=[
        '"Piccolo"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=False,
    fermata_measures=tupos.fermata_measures_04,
    commands=[
        evans.MusicCommand(
            ("piccolo voice", [0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 18, 19, 23, 28, 29, 30, 31, 32]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals,
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
                intercept_irregular_meters=True,
                # preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
            ),
            tupos.segment_4_alternate_rester,
            tupos.clean_up_rests,
            # lambda _: [rmakers.force_rest(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(abjad.math.cumulative_sums(tupos.cell_sizes)[1:], sum(abjad.math.cumulative_sums(tupos.cell_sizes))+1))],
        ),
        evans.MusicCommand(
            ("piccolo voice", [4, 10, 11, 17, 20, 21, 22, 24, 25, 26, 27]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[::-1],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
                intercept_irregular_meters=True,
            ),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_4_pitches, tupos.pattern_4),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_5_pitches, tupos.pattern_5),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_6_pitches, tupos.pattern_6),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.get(abjad.select.logical_ties(_, pitched=True, grace=False), tupos.rest_pattern_456)],
            lambda _: tupos.clean_up_rests(_),
            lambda _: tupos.chord_to_graces(_, directions=[
                abjad.DOWN, abjad.DOWN, abjad.UP, abjad.DOWN, abjad.UP,
                abjad.UP, abjad.UP, abjad.DOWN, abjad.UP, abjad.DOWN,
                ], stem_position=12.5),
            tupos.slur_after_graces,
            tupos.tenuto_stammers,
        ),
        evans.call(
            "piccolo voice",
            lambda _: evans.long_beam(
                _, beam_rests=False, beam_lone_notes=False, direction=None,
            ),
            lambda _: _,
        ),
        evans.attach(
            "Global Context",
            tupos.met,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=tupos.score,
    transpose_from_sounding_pitch=False,
    time_signatures=tupos.signatures_04,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="04",
    current_directory=pathlib.Path(__file__).parent,
    cutaway="invisible",
    beam_pattern="meter",
    beam_rests=True,
    beautify_tuplets=False,
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
