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
    fermata_measures=tupos.fermata_measures_05,
    commands=[
        evans.MusicCommand(
            ("piccolo voice", (0, 27)),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals,
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False, # ? Probably need to modify tuplet treating to accomodate nested values.
                subdivided=False, # ?
                intercept_irregular_meters=True,
            ),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_7_pitches, tupos.pattern_7),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_8_pitches, tupos.pattern_8),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_9_pitches, tupos.pattern_9),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_10_pitches, tupos.pattern_10),
            lambda _: tupos.layered_pitch_applicator(_, tupos.pattern_11_pitches, tupos.pattern_11),
            lambda _: tupos.chord_to_graces(_, directions=[
                abjad.UP, abjad.UP, abjad.DOWN, abjad.UP, abjad.DOWN,
                abjad.DOWN, abjad.DOWN, abjad.UP, abjad.DOWN, abjad.UP,
                ], stem_position=14),
            tupos.slur_after_graces,
            # tupos.tenuto_stammers,
            # lambda _: [abjad.slur(x) for x in abjad.select.get(abjad.select.leaves(_), tupos.rest_pattern)],
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.graft_post_sustains(_, tupos.rest_pattern_789te, debug=False),
            evans.select_measures([_ for _ in range(27)]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.extra_grace_encrustation(_, transpositions=[0, 4, 8, 12, 16, 20, 24, 24], stem_position=14),
            lambda _: _,
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
            evans.TranspositionHandler([12]),
            lambda _: [abjad.select.leaves(_, pitched=True)[-1]],
        ),
        evans.attach(
            "Global Context",
            tupos.met,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
            ),
            lambda _: abjad.select.leaf(_, -2),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r'\bar "|."', site="after"),
            lambda _: abjad.select.leaf(_, -2),
        ),
        evans.attach(
            "piccolo voice",
            abjad.Markup(r"\colophon"),
            lambda _: abjad.select.leaf(_, -3),
            direction=abjad.DOWN,
        ),
    ],
    score_template=tupos.score,
    transpose_from_sounding_pitch=False,
    time_signatures=tupos.signatures_05,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="05",
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
