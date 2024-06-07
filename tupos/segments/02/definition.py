import pathlib
import random

import abjad
import baca
import evans
import numpy as np
from abjadext import rmakers

import tupos


main_handler = evans.PitchHandler(tupos.segment_2_pitches)
stutter_handler = evans.PitchHandler(tupos.segment_2_stutters)

maker = evans.SegmentMaker(
    instruments=tupos.instruments,
    names=[
        '"Piccolo"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=False,
    fermata_measures=tupos.fermata_measures_02,
    commands=[
        evans.MusicCommand(
            ("piccolo voice", [0, 1]),
            tupos.numeric_subdivisions(
                [(((_ % 4) + 1) * 4) + 6 for _ in [tupos.segment_1_pitch_intervals[-1], tupos.segment_1_pitch_intervals[-2]]],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                intercept_irregular_meters=True,
            ),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.logical_ties(_)],
            lambda _: [rmakers.force_note(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0)), tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0))[-1] + 1))],
            stutter_handler,
            evans.ArticulationHandler(["staccatissimo"]),
            lambda _: [abjad.beam(group) for group in abjad.select.group_by_pitch(_)],
            lambda _: baca.hairpin(abjad.select.notes(_), "ffff -- niente"),
        ),
        evans.MusicCommand(
            ("piccolo voice", [2, 3, 4, 5, 6]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[0:5],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                weighted="left",
                intercept_irregular_meters=True,
            ),
            main_handler,
            tupos.tenuto_stammers,
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.ascend_leaves_in_range(_, abjad.PitchRange("[G4, G6)")),
            evans.select_measures([2, 3, 4, 5, 6]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_ascending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([2, 3, 4, 5, 6]),
        ),
        evans.MusicCommand(
            ("piccolo voice", [7]),
            tupos.numeric_subdivisions(
                [(((_ % 4) + 1) * 4) + 6 for _ in [tupos.segment_1_pitch_intervals[-3]]],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                intercept_irregular_meters=True,
            ),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.logical_ties(_)],
            lambda _: [rmakers.force_note(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=sum(tupos.segment_1_pitch_intervals[::-3])*2)), tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0))[-1] + 1))],
            stutter_handler,
            evans.ArticulationHandler(["staccatissimo"]),
            lambda _: [abjad.beam(group) for group in abjad.select.group_by_pitch(_)],
            lambda _: baca.hairpin(abjad.select.notes(_), "ffff -- niente"),
        ),
        evans.MusicCommand(
            ("piccolo voice", [8, 9, 10]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[5:8],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=False,
                intercept_irregular_meters=True,
            ),
            main_handler,
            tupos.tenuto_stammers,
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.descend_leaves_in_range(_, abjad.PitchRange("[C5, C7)")),
            evans.select_measures([8, 9, 10]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_descending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([8, 9, 10]),
        ),
        evans.MusicCommand(
            ("piccolo voice", [11, 12]),
            tupos.numeric_subdivisions(
                [(((_ % 4) + 1) * 4) + 6 for _ in [tupos.segment_1_pitch_intervals[-4], tupos.segment_1_pitch_intervals[-5]]],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                intercept_irregular_meters=True,
            ),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.logical_ties(_)],
            lambda _: [rmakers.force_note(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=sum(tupos.segment_1_pitch_intervals[::-4])*2)), tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0))[-1] + 1))],
            stutter_handler,
            evans.ArticulationHandler(["staccatissimo"]),
            lambda _: [abjad.beam(group) for group in abjad.select.group_by_pitch(_)],
            lambda _: baca.hairpin(abjad.select.notes(_), "ffff -- niente"),
        ),
        evans.MusicCommand(
            ("piccolo voice", [13, 14]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[8:10],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=False,
                intercept_irregular_meters=True,
            ),
            main_handler,
            tupos.tenuto_stammers,
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.ascend_and_descend_in_range(
                _, abjad.PitchRange("[F4, F5)"), toggle=abjad.UP
            ),
            evans.select_measures([13, 14]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_a_d_group_lengths_from_ties(_, toggle=abjad.UP),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([13, 14]),
        ),
        evans.MusicCommand(
            ("piccolo voice", [15]),
            tupos.numeric_subdivisions(
                [(((_ % 4) + 1) * 4) + 6 for _ in [tupos.segment_1_pitch_intervals[-6]]],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                intercept_irregular_meters=True,
            ),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.logical_ties(_)],
            lambda _: [rmakers.force_note(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=sum(tupos.segment_1_pitch_intervals[::-6])*2)), tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0))[-1] + 1))],
            stutter_handler,
            evans.ArticulationHandler(["staccatissimo"]),
            lambda _: [abjad.beam(group) for group in abjad.select.group_by_pitch(_)],
            lambda _: baca.hairpin(abjad.select.notes(_), "ffff -- niente"),
        ),
        evans.MusicCommand(
            ("piccolo voice", [16, 17, 18, 19]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[10:14],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=False,
                intercept_irregular_meters=True,
            ),
            main_handler,
            tupos.tenuto_stammers,
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.descend_leaves_in_range(_, abjad.PitchRange("[C5, C7)")),
            evans.select_measures([16, 17, 18, 19]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_descending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([16, 17, 18, 19]),
        ),
        evans.MusicCommand(
            ("piccolo voice", [20, 21]),
            tupos.numeric_subdivisions(
                [(((_ % 4) + 1) * 4) + 6 for _ in [tupos.segment_1_pitch_intervals[-7], tupos.segment_1_pitch_intervals[-8]]],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                intercept_irregular_meters=True,
            ),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.logical_ties(_)],
            lambda _: [rmakers.force_note(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=sum(tupos.segment_1_pitch_intervals[::-7])*2)), tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0))[-1] + 1))],
            stutter_handler,
            evans.ArticulationHandler(["staccatissimo"]),
            lambda _: [abjad.beam(group) for group in abjad.select.group_by_pitch(_)],
            lambda _: baca.hairpin(_, "pppp < ffff -- ff -- mf < f --", pieces=lambda _: [run for run in abjad.select.runs(_) if 1 < len(run)]),
        ),
        evans.MusicCommand(
            ("piccolo voice", [22, 23, 24]),
            tupos.numeric_subdivisions(
                tupos.segment_1_pitch_intervals[14:17],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=False,
                intercept_irregular_meters=True,
            ),
            main_handler,
            tupos.tenuto_stammers,
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.ascend_leaves_in_range(_, abjad.PitchRange("[G4, G6)")),
            evans.select_measures([22, 23, 24]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: tupos.beam_groups_by_count(
                _,
                tupos.get_ascending_group_lengths_from_ties(_),
                cyclic=True,
                overhang=True,
            ),
            evans.select_measures([22, 23, 24]),
        ),
        evans.MusicCommand(
            ("piccolo voice", [25, 26, 27]),
            tupos.numeric_subdivisions(
                [(((_ % 4) + 1) * 4) + 6 for _ in [tupos.segment_1_pitch_intervals[-9], tupos.segment_1_pitch_intervals[-10], tupos.segment_1_pitch_intervals[-10]]],
                preprocessor=None,
                rewrite=None,
                treat_tuplets=False,
                subdivided=True,
                intercept_irregular_meters=True,
            ),
            lambda _: [rmakers.force_rest(x) for x in abjad.select.logical_ties(_)],
            lambda _: [rmakers.force_note(x) for x in abjad.select.get(abjad.select.logical_ties(_), abjad.index(tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=sum(tupos.segment_1_pitch_intervals[::-9])*2)), tupos.vector_to_indices(abjad.sequence.rotate(tupos.cell_size_construction, n=0))[-1] + 1))],
            stutter_handler,
            evans.ArticulationHandler(["staccatissimo"]),
            lambda _: [abjad.beam(group) for group in abjad.select.group_by_pitch(_)],
            lambda _: baca.hairpin(_, "pppp < ffff"),
        ),
        evans.attach(
            "Global Context",
            tupos.met,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=tupos.score,
    transpose_from_sounding_pitch=False,
    time_signatures=tupos.signatures_02,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="02",
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
