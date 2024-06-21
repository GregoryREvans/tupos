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
        ),
        ####
        evans.call(
            "piccolo voice",
            lambda _: baca.hairpin(_, "mp -- niente", pieces=lambda _: abjad.select.group(abjad.select.notes(_))),
            evans.select_measures([0, 1]),
        ),
        evans.call(
            "piccolo voice",
            tupos.dynamics_by_tie_counts(
                [
                    "f --",
                    "ff --",
                    "fff --",
                    "mp --",
                    "mf --",
                    "p --",
                    "mp --",
                    "ff --",
                    "mf --",
                ],
                [3, 2, 6, 4, 4, 3, 4, 4, 5],
            ),
            evans.select_measures([2, 3, 4, 5, 6]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: baca.hairpin(_, "fff -- niente", pieces=lambda _: abjad.select.group(abjad.select.notes(_))),
            evans.select_measures([7]),
        ),
        evans.call(
            "piccolo voice",
            tupos.dynamics_by_tie_counts(
                [
                    "f < fff",
                    "ff > mp",
                    "fff --",
                    "mp > p",
                    "mf > p",
                    "p <| ff",
                    "mp < f",
                    "ff > p",
                    "mf > p",
                ],
                [_ * 2 for _ in [3, 2, 6, 4, 4, 3, 4, 4, 5]],
            ),
            evans.select_measures([8, 9, 10]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: baca.hairpin(_, "mp < ff", pieces=lambda _: abjad.select.group(abjad.select.notes(_))),
            evans.select_measures([11, 12]),
        ),
        evans.call(
            "piccolo voice",
            tupos.dynamics_by_tie_counts(
                [
                    "mf < ff",
                    "f > p",
                    "ff --",
                    "p > pp",
                    "mp > pp",
                    "pp <| f",
                    "p < mf",
                    "f > pp",
                    "mp > pp",
                ],
                [_ * 3 for _ in [3, 2, 6, 4, 4, 3, 4, 4, 5]],
            ),
            evans.select_measures([13, 14]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: baca.hairpin(_, "ff > mf", pieces=lambda _: abjad.select.group(abjad.select.notes(_))),
            evans.select_measures([15]),
        ),
        evans.call(
            "piccolo voice",
            tupos.dynamics_by_tie_counts(
                [
                    "f > mp",
                    "pp < mf",
                    "f --",
                    "ppp < pp",
                    "ppp < p",
                    "mf > ppp",
                    "mp > pp",
                    "ppp < mf",
                    "ppp < p",
                ],
                [_ * 4 for _ in [3, 2, 6, 4, 4, 3, 4, 4, 5]],
            ),
            evans.select_measures([16, 17, 18, 19]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: baca.hairpin(_, "fff > pp", pieces=lambda _: abjad.select.group(abjad.select.notes(_))),
            evans.select_measures([20, 21]),
        ),
        evans.call(
            "piccolo voice",
            tupos.dynamics_by_tie_counts(
                [
                    "ff > p",
                    "ppp < f",
                    "ff --",
                    "pppp < p",
                    "pppp < mp",
                    "f > pppp",
                    "mf > ppp",
                    "pppp < f",
                    "pppp < mp",
                ],
                [_ * 5 for _ in [3, 2, 6, 4, 4, 3, 4, 4, 5]],
            ),
            evans.select_measures([22, 23, 24]),
        ),
        evans.call(
            "piccolo voice",
            lambda _: baca.hairpin(_, "ffff > pppp", pieces=lambda _: abjad.select.group(abjad.select.notes(_))),
            evans.select_measures([25, 26, 27]),
        ),
        ####
        # evans.call(
        #     "piccolo voice",
        #     evans.annotate_leaves,
        #     lambda _: _,
        # ),
        evans.detach(
            "piccolo voice",
            abjad.StartHairpin(">"),
            lambda _: abjad.select.leaf(_, 148),
        ),
        ####
        evans.attach(
            "Global Context",
            tupos.literal_mark_70,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            tupos.met_70,
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
