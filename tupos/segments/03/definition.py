import pathlib
import random

import abjad
import baca
import evans
import numpy as np
from abjadext import rmakers

import tupos


maker = evans.SegmentMaker( # do some work to shift grace notes at the start of tuplets *before* the tuplet.
    instruments=tupos.instruments, # also move time signatures in front of graces at the beginning of measure (and remove from global context)
    names=[
        '"Piccolo"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=False,
    fermata_measures=tupos.fermata_measures_03,
    commands=[
        evans.MusicCommand(
            ("piccolo voice", (0, 28)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals,
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
                intercept_irregular_meters=True,
            ),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_1_pitches, tupos.pattern_1),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_2_pitches, tupos.pattern_2),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_3_pitches, tupos.pattern_3),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.get(abjad.select.logical_ties(_, pitched=True, grace=False), tupos.rest_pattern)],
            lambda _: tupos.clean_up_rests(_),
            lambda _: tupos.chord_to_graces(_, directions=[
                abjad.UP, abjad.UP, abjad.DOWN, abjad.UP, abjad.DOWN,
                abjad.DOWN, abjad.DOWN, abjad.UP, abjad.DOWN, abjad.UP,
                ], stem_position=11.5),
            tupos.slur_after_graces,
            tupos.tenuto_stammers,
        ),
        evans.MusicCommand(
            ("piccolo voice", 12),
            evans.note(),
            lambda _: rmakers.force_rest(_),
        ),
        evans.call(
            "piccolo voice",
            lambda _: evans.long_beam(
                _, beam_rests=False, beam_lone_notes=False, direction=None,
            ),
            lambda _: _,
        ),
        evans.call(
            "piccolo voice",
            tupos.trill_quarters,
            lambda _: _,
        ),
        evans.call(
            "piccolo voice",
            tupos.run_dynamics(["pp", "p", "mf", "p", "ppp", "mf", "f", "fff", "mp", "pp", "f", "p", "fff", "mf", "mp", "f", "ppp", "f", "mf", "mp", "mf", "pp", "mf", "f", "fff", "ff", "f", "ppp", "ff"]),
            lambda _: _,
        ),
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
        # evans.call(
        #     "piccolo voice",
        #     evans.annotate_leaves,
        #     lambda _: _,
        # ),
        #####
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8.5", site="before"),
            lambda _: abjad.select.leaf(_, 20),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8.5", site="before"),
            lambda _: abjad.select.leaf(_, 23),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8.5", site="before"),
            lambda _: abjad.select.leaf(_, 25),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 3", site="before"),
            lambda _: abjad.select.leaf(_, 102),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 7", site="before"),
            lambda _: abjad.select.leaf(_, 121),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 7", site="before"),
            lambda _: abjad.select.leaf(_, 123),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 7", site="before"),
            lambda _: abjad.select.leaf(_, 127),
        ),
        ##
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 155),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 157),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 159),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 162),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 167),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 169),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 173),
        ),
        evans.attach(
            "piccolo voice",
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.staff-padding = 8", site="before"),
            lambda _: abjad.select.leaf(_, 175),
        ),
    ],
    score_template=tupos.score,
    transpose_from_sounding_pitch=False,
    time_signatures=tupos.signatures_03,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="03",
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
