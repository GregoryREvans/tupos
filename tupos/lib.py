import copy
import random
from fractions import Fraction

import abjad
import baca
import evans
from abjadext import rmakers

# lily met

met = abjad.MetronomeMark((1, 4), 80)

# markup met

mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 80)

# markup met

literal_mark = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)


##
met_70 = abjad.MetronomeMark((1, 4), 70)

# markup met

mark_70 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 70)

# markup met

literal_mark_70 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #11 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {mark_70.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

met_60 = abjad.MetronomeMark((1, 4), 60)

# markup met

mark_60 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 60)

# markup met

literal_mark_60 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {mark_60.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

###
###
###

def tenuto_stammers(arg):
    ties = abjad.select.logical_ties(arg, pitched=True, grace=False)
    pairs = abjad.sequence.nwise(ties, 2)
    for pair in pairs:
        if pair[0][0].written_pitch == pair[1][0].written_pitch:
            abjad.attach(abjad.Articulation("tenuto"), pair[1][0])


def clean_up_graces(arg):
    score = abjad.get.parentage(arg[0])[-1]
    global_context = score["Global Context"]
    measures = abjad.select.group_by_measure(arg)
    for i, measure in enumerate(measures):
        leaves = abjad.select.notes(measure)


##
##
##


def beam_groups_by_count(ties, counts, cyclic=True, overhang=True):
    ties = abjad.select.logical_ties(ties, pitched=True)
    groups = abjad.select.partition_by_counts(
        ties, counts, cyclic=cyclic, overhang=overhang
    )
    for group in groups:
        leaves = abjad.select.leaves(group)
        abjad.attach(
            abjad.Articulation("accent"),
            leaves[0],
        )

        def predicate(arg):
            return arg.written_duration < abjad.Duration(1, 4)

        filtered_leaves = abjad.select.filter(leaves, predicate=predicate)
        contiguous_groups = abjad.select.group_by_contiguity(filtered_leaves)
        for sub_group in contiguous_groups:
            if 1 < len(sub_group):
                abjad.beam(sub_group)


###


def return_parent(arg):
    parent = abjad.get.parentage(arg).parent
    return parent

def clean_up_rests(arg):
    rests = abjad.select.rests(arg, grace=False)
    groups = abjad.select.group_by_contiguity(rests)
    for group in groups:
        sub_groups = abjad.select.group_by(group, return_parent)
        for sub_group in sub_groups:
            abjad.mutate.fuse(sub_group)

###

def slur_after_graces(arg):
    graces = abjad.select.notes(arg, grace=True)
    groups = abjad.select.group_by_contiguity(graces)
    for group in groups:
        anchor_note = abjad.get.leaf(group[-1], 1)
        if anchor_note is not None:
            if abjad.get.annotation(group[0], "hidden grace") is True:
                abjad.attach(abjad.StartSlur(), group[1])
            else:
                abjad.attach(abjad.StartSlur(), group[0])
            abjad.attach(abjad.StopSlur(), anchor_note)

###

def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


def toggle_tuplet_prolation(selection):
    tuplet = selection[0]
    tuplet.toggle_prolation()
    tuplet.set_minimum_denominator(4)


start_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ":|."',
    ],
    site="after",
)


clef_whitespace = abjad.LilyPondLiteral(
    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
    site="absolute_before",
)

tremolo_handler = evans.ArticulationHandler(
    ["tremolo"],
)


# ANNOTATIONS
class MAS:
    def __init__(
        self,
        string,
        color,
        staff_padding,
    ):
        self.string = string
        self.color = color
        self.staff_padding = staff_padding

    def __call__(self, selections):
        first_leaf = selections.leaf(0)
        last_leaf = selections.leaves()[-1]
        start_indicator = abjad.StartTextSpan(
            left_text=rf'- \evans-text-spanner-left-text "{self.string}"',
            command=r"\evansStartTextSpanMaterialAnnotation",
            style="dashed-line-with-hook",
            right_padding=-1,
        )
        start = abjad.bundle(
            start_indicator,
            rf"- \tweak staff-padding #{self.staff_padding}",
            rf"- \ tweak color #{self.color}",
        )
        stop = abjad.StopTextSpan(
            command=r"\evansStopTextSpanMaterialAnnotation",
        )
        abjad.attach(start, first_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)
        abjad.attach(stop, last_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)


A = MAS(
    string="[A].",
    color="#(rgb-color 0.6 0.6 1)",
    staff_padding=5.5,
)


def A_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.6 0.6 1)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


B = MAS(
    string="[B].",
    color="#(rgb-color 0.961 0.961 0.406)",
    staff_padding=5.5,
)


def B_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.961 0.961 0.406)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


C = MAS(
    string="[C].",
    color="#(rgb-color 0.2 1 0.592)",
    staff_padding=5.5,
)


def C_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.2 1 0.592)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


D = MAS(
    string="[D].",
    color="#(rgb-color 1 0.2 0.2)",
    staff_padding=5.5,
)


def D_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 1 0.2 0.2)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


E = MAS(
    string="[E].",
    color="#(rgb-color 0.6 0.8 1)",
    staff_padding=5.5,
)


def E_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.6 0.8 1)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


def label_clock_time(selections):
    abjad.label.with_start_offsets(selections, clock_time=True)


hairpins = evans.CyclicList(["<", "<|", "<", "<", "<", "<", "<|", "<"], forget=False)


def swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        next_hairpin = hairpins(r=1)[0]
        hairpin_string = "p " + next_hairpin + " f"
        hairpin = baca.hairpin(hairpin_string)
        hairpin(pair)


_hairpins = evans.CyclicList(["<", "<|"], forget=False)


def cello_swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 != 0:
            abjad.attach(abjad.Dynamic("mf"), abjad.Selection(pair).leaf(0))
        else:
            next_hairpin = _hairpins(r=1)[0]
            hairpin_string = "p " + next_hairpin + " f"
            hairpin = baca.hairpin(hairpin_string)
            hairpin(pair)


def alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        # abjad.attach(abjad.Glissando(), pair[0][-1])
        abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def cello_alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 == 0:
            # abjad.attach(abjad.Glissando(), pair[0][-1])
            abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def trill_ties(selections):
    abjad.trill_spanner(selections, selector=lambda _: abjad.Selection(_).notes())


start_bis_trill_one = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \double-diamond-parenthesized-top-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

start_bis_trill_two = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \diamond-parenthesized-double-diamond-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

stop_bis_trill = abjad.StopTrillSpan()


multi_stac = evans.ArticulationHandler(
    articulation_list=[
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #3",
        "tongue #3",
    ],
    articulation_boolean_vector=[1],
    vector_forget=False,
    forget=False,
)


def triple_swell(selections):
    triples = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([3], cyclic=True, overhang=False)
    )
    for triple in triples:
        abjad.attach(abjad.Dynamic("mp"), triple[0][0])
        abjad.attach(abjad.StartHairpin("<"), triple[0][0])
        abjad.attach(abjad.Dynamic("f"), triple[1][0])
        abjad.attach(abjad.StartHairpin(">"), triple[1][0])
        abjad.attach(abjad.Dynamic("mp"), triple[2][-1])
        span = baca.text_spanner(  # WARNING: double check this interface
            "T. => P.",
            (abjad.tweak(5).staff_padding, 0),
            lilypond_id=1,
        )
        span(triple)
        abjad.trill_spanner(triple)


bah = evans.BowAngleHandler([0, 45, 0, -45, 70, -70, 0, 25, -25, 0, 60])


def angles(selections):
    for run in abjad.Selection(selections).runs():
        bah(run)


def bis_trill(selections):
    first_leaf = selections.leaf(0)
    last_leaf = selections.leaf(-1)
    abjad.attach(start_bis_trill_one, first_leaf)
    abjad.attach(stop_bis_trill, last_leaf)


def special_hairpin(selections):
    leaves = selections.leaves()
    abjad.attach(abjad.Dynamic("p"), leaves[0])
    abjad.attach(abjad.StartHairpin("<|"), leaves[0])
    abjad.attach(abjad.Dynamic("f"), leaves[1])
    abjad.attach(abjad.Dynamic("p"), leaves[2])
    abjad.attach(abjad.StartHairpin("<"), leaves[2])
    abjad.attach(abjad.Dynamic("ff"), leaves[3])
    abjad.attach(abjad.StartHairpin("--"), leaves[3])
    abjad.attach(abjad.StartHairpin(">"), leaves[4])
    abjad.attach(abjad.Dynamic("mf"), leaves[5])
    abjad.attach(abjad.StartHairpin("<|"), leaves[5])
    abjad.attach(abjad.Dynamic("f"), leaves[6])


def substitute_time_signatures(leaves, new_signatures):
    out = []
    for time_signature in new_signatures:
        new_skip = abjad.Skip(1, multiplier=(time_signature))
        abjad.attach(time_signature, new_skip, tag=abjad.Tag("scaling time signatures"))
        out.append(new_skip)
    abjad.mutate.replace(leaves, out)


def replace_sigs(new_sigs):
    return lambda _: substitute_time_signatures(_, new_sigs)


def add_fancy_glisses(indices=[0]):
    def returned_function(selections):
        ties = abjad.select.logical_ties(selections, grace=False)
        targets = abjad.select.get(ties, indices)
        final_targets = [abjad.select.leaf(_, -1) for _ in targets]
        for target in final_targets:
            abjad.attach(
                abjad.Glissando(),
                target,
            )
            abjad.attach(
                evans.make_fancy_gliss(3, 2, 4, 2, 1, right_padding=0.5),
                target,
            )

    return returned_function


def swells(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    leaves = [tie[0] for tie in ties]
    cyc_dynamics = evans.CyclicList(["p", "mf", "p", "f"], forget=False)
    cyc_hairpins = evans.CyclicList(["<", ">"], forget=False)
    for leaf in leaves:
        dynamic = abjad.Dynamic(cyc_dynamics(r=1)[0])
        abjad.attach(dynamic, leaf)
    for leaf in leaves[:-1]:
        hairpin = abjad.StartHairpin(cyc_hairpins(r=1)[0])
        abjad.attach(hairpin, leaf)


def swipe_stems(selections):
    literals = evans.CyclicList(
        [
            r"\swipeUpStemOn",
            r"\swipeDownStemOn",
        ],
        forget=False,
    )
    for leaf in abjad.select.leaves(selections, pitched=True):
        direction = literals(r=1)[0]
        literal = abjad.LilyPondLiteral(direction, site="before")
        abjad.attach(literal, leaf)

    last_leaf = abjad.select.leaf(selections, -1, pitched=True)
    abjad.attach(abjad.LilyPondLiteral(r"\stemOff", site="after"), last_leaf)


def subdivide(selections, cyclic_subdivisions=[2, 3, 4]):
    cyc_subdivisions = evans.CyclicList(cyclic_subdivisions, forget=False)
    ties = abjad.select.logical_ties(selections)
    for tie in ties:
        duration = abjad.get.duration(tie, preprolated=True)
        current_count = cyc_subdivisions(r=1)[0]
        if isinstance(current_count, int):
            nested_music = rmakers.tuplet(
                [duration], [(1 for _ in range(current_count))]
            )
        else:
            nested_music = rmakers.tuplet([duration], [current_count])
        # print(nested_music, "\n")
        container = abjad.Container()
        for component in nested_music:
            if isinstance(component, list):
                container.extend(component)
            else:
                container.append(component)
        command_target = abjad.select.tuplets(container)
        rmakers.trivialize(command_target)
        command_target = abjad.select.tuplets(container)
        rmakers.rewrite_dots(command_target)
        rmakers.extract_trivial(container)
        music = abjad.mutate.eject_contents(container)
        abjad.mutate.replace(tie, music)


def sustain(selections, tie_counts=[2, 3, 4], sustain_boolean_vector=[True]):
    cyc_boolean = evans.CyclicList(sustain_boolean_vector, forget=False)
    ties = abjad.select.logical_ties(selections)
    groups = abjad.select.partition_by_counts(
        ties, tie_counts, cyclic=True, overhang=True
    )
    for group in groups:
        current_bool = cyc_boolean(r=1)[0]
        if current_bool is True:
            abjad.tie(group)
            level = []
            current_parent = abjad.get.parentage(abjad.select.leaf(group, 0))[1]
            for leaf in abjad.select.leaves(group):
                if abjad.get.parentage(leaf)[1] == current_parent:
                    level.append(leaf)
                else:
                    abjad.mutate.fuse(level)
                    level = [leaf]
                    current_parent = abjad.get.parentage(leaf)[1]
            abjad.mutate.fuse(level)


def _make_subdivided_music(
    selections,
    subdivisions=[2, 3, 4],
    subsubdivisions=[2, 3, 4],
    subsubdivision_selector=lambda _: abjad.select.logical_ties(
        _
    ),  # use abjad.select.get in practice
    sustain_counts=[4, 3, 2],
    sustain_boolean_vector=[True],
    sustain_final_step=True,
):
    copied_selections = abjad.mutate.copy(selections)
    container = abjad.Container()
    for component in copied_selections:
        if isinstance(component, list):
            container.extend(component)
        else:
            container.append(component)
    ties = abjad.select.logical_ties(container)
    subdivide(ties, cyclic_subdivisions=subdivisions)
    if sustain_final_step is False:  # not working
        if sustain_counts is not None:
            ties = abjad.select.logical_ties(container)
            sustain(ties, sustain_counts, sustain_boolean_vector)
        if subsubdivisions is not None:  # WARNING: cannot use gotten ties
            ties = abjad.select.logical_ties(container)
            cyc_sub_sub_counts = evans.CyclicList(subsubdivisions, forget=False)
            total_splits = []
            for tie in ties:
                prolated_duration = abjad.get.duration(tie)
                current_count = cyc_sub_sub_counts(r=1)[0]
                duration_components = [
                    prolated_duration / current_count for _ in range(current_count)
                ]
                total_splits.extend(duration_components)
            abjad.mutate.split(ties, duration_components)
    if sustain_final_step is True:
        if subsubdivisions is not None:
            ties = abjad.select.logical_ties(container)
            gotten_ties = subsubdivision_selector(ties)
            subdivide(gotten_ties, cyclic_subdivisions=subsubdivisions)
            if sustain_counts is not None:
                ties = abjad.select.logical_ties(container)
                sustain(ties, sustain_counts, sustain_boolean_vector)
    # command_target = abjad.select.tuplets(container)
    # rmakers.trivialize(command_target)
    command_target = abjad.select.tuplets(container)
    rmakers.rewrite_sustained(command_target)
    rmakers.extract_trivial(container)
    music = abjad.mutate.eject_contents(container)
    abjad.mutate.replace(selections, music)


def dynamics_by_tie_counts(dyn_list, counts):
    cyc_dyns = evans.CyclicList(dyn_list, forget=False)
    def helper_function(components):
        ties = abjad.select.logical_ties(components)
        partitions = abjad.select.partition_by_counts(ties, counts, cyclic=True, overhang=True)
        for partition in partitions:
            current_dyn = cyc_dyns(r=1)[0]
            split_dyns = current_dyn.split()
            if not split_dyns[0].isalpha():
                split_dyns = ["niente"] + split_dyns
            if not split_dyns[-1].isalpha():
                split_dyns = split_dyns + ["niente"]
            leaves = abjad.select.leaves(partition)
            if split_dyns[0] != "niente":
                abjad.attach(abjad.Dynamic(split_dyns[0]), leaves[0])
            abjad.attach(abjad.StartHairpin(split_dyns[1]), leaves[0])
            if split_dyns[2] != "niente":
                abjad.attach(abjad.Dynamic(split_dyns[2]), leaves[-1])
            else:
                abjad.attach(abjad.StopHairpin(), leaves[-1]) # leak=True ?

    return helper_function


def trill_quarters(arg):
    ties = abjad.select.logical_ties(arg, pitched=True)
    larger_ties = [tie for tie in ties if abjad.Duration(1, 4) <= sum([note.written_duration for note in tie])]
    for tie in larger_ties:
        abjad.attach(abjad.StartTrillSpan(), tie[0])
        abjad.attach(abjad.StopTrillSpan(), abjad.get.leaf(tie[-1], 1))

    medium_ties = [tie for tie in ties if abjad.Duration(1, 8) == sum([note.written_duration for note in tie])]
    medium_groups = abjad.select.group_by_contiguity(medium_ties)
    for group in medium_groups:
        for i, tie in enumerate(group):
            if i == 0:
                abjad.attach(abjad.Articulation("accent"), tie[0])
            else:
                abjad.attach(abjad.Articulation("tenuto"), tie[0])


def run_dynamics(dyns):
    cyc_dyns = evans.CyclicList(dyns, forget=False)
    def helper_function(arg):
        runs = abjad.select.runs(arg, grace=False)
        for run in runs:
            dyn = cyc_dyns(r=1)[0]
            dyn = abjad.Dynamic(dyn)
            abjad.attach(dyn, run[0])

    return helper_function


def make_subdivided_music(
    subdivisions=[2, 3, 4],
    subsubdivisions=[2, 3, 4],
    subsubdivision_selector=lambda _: abjad.select.logical_ties(_),
    sustain_counts=[4, 3, 2],
    sustain_boolean_vector=[True],
    sustain_final_step=True,
):
    def returned_function(selections):
        _make_subdivided_music(
            selections,
            subdivisions=subdivisions,
            subsubdivisions=subsubdivisions,
            subsubdivision_selector=subsubdivision_selector,
            sustain_counts=sustain_counts,
            sustain_boolean_vector=sustain_boolean_vector,
            sustain_final_step=sustain_final_step,
        )

    return returned_function


def swipe_stems(selections):
    literals = evans.CyclicList(
        [
            r"\swipeUpStemOn",
            r"\swipeDownStemOn",
        ],
        forget=False,
    )
    for leaf in abjad.select.leaves(selections, pitched=True):
        direction = literals(r=1)[0]
        literal = abjad.LilyPondLiteral(direction, site="before")
        abjad.attach(literal, leaf)

    last_leaf = abjad.select.leaf(selections, -1, pitched=True)
    abjad.attach(abjad.LilyPondLiteral(r"\stemOff", site="after"), last_leaf)


def circle_stems(selections, alternate=False):
    literals = evans.CyclicList(
        [
            r"""\markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee88 }""",
            r"""\markup {\fontsize #1 \override #'(font-name . "ekmelos") \char ##xee89 }""",
        ],
        forget=False,
    )
    if alternate is True:
        for leaf in abjad.select.leaves(selections, pitched=True):
            direction = literals(r=1)[0]
            literal = abjad.Markup(direction)
            abjad.attach(literal, leaf, direction=abjad.DOWN)
    else:
        direction = literals(r=1)[0]
        for leaf in abjad.select.leaves(selections, pitched=True):
            literal = abjad.Markup(direction)
            abjad.attach(literal, leaf, direction=abjad.DOWN)


def select_outer_tuplets(selections):
    tuplets = [_ for _ in selections if isinstance(_, abjad.Tuplet)]
    return tuplets


def components_to_score_markup_string(components):
    assert all(isinstance(_, abjad.Component) for _ in components), repr(components)
    components = copy.deepcopy(components)
    staff = abjad.Staff(components, name="Rhythmic_Staff")
    staff.lilypond_type = "RhythmicStaff"
    staff.remove_commands.append("Time_signature_engraver")
    staff.remove_commands.append("Staff_symbol_engraver")
    abjad.override(staff).Stem.direction = abjad.UP
    abjad.override(staff).Stem.length = 5
    abjad.override(staff).TupletBracket.bracket_visibility = True
    abjad.override(staff).TupletBracket.direction = abjad.UP
    abjad.override(staff).TupletBracket.minimum_length = 4
    abjad.override(staff).TupletBracket.padding = 1.25
    abjad.override(staff).TupletBracket.shorten_pair = "#'(-1 . -1.5)"
    scheme = "#ly:spanner::set-spacing-rods"
    abjad.override(staff).TupletBracket.springs_and_rods = scheme
    abjad.override(staff).TupletNumber.font_size = 0
    scheme = "#tuplet-number::calc-fraction-text"
    abjad.override(staff).TupletNumber.text = scheme
    abjad.setting(staff).tupletFullLength = True
    layout_block = abjad.Block("layout")
    layout_block.items.append("indent = 0")
    layout_block.items.append("ragged-right = ##t")
    score = abjad.Score([staff], name="Score")
    abjad.override(score).SpacingSpanner.spacing_increment = 0.5
    abjad.setting(score).proportionalNotationDuration = False
    indent = 4 * " "
    strings = [r"\score", indent + "{"]
    strings.extend([2 * indent + _ for _ in abjad.lilypond(score).split("\n")])
    strings.extend([2 * indent + _ for _ in abjad.lilypond(layout_block).split("\n")])
    strings.append(indent + "}")
    string = "\n".join(strings)
    return string


def annotate_tuplet_durations(selections):
    # tuplets = [_ for _ in selections if isinstance(_, abjad.Tuplet)]
    counter = 0
    for tuplet in abjad.select.tuplets(selections):
        counter += 1
        duration_ = abjad.get.duration(tuplet, preprolated=True)
        components = abjad.makers.make_leaves([0], [duration_])
        # if all(isinstance(_, abjad.Note) for _ in components):
        #     durations = [abjad.get.duration(_) for _ in components]
        #     strings = [_.lilypond_duration_string for _ in durations]
        #     string = " ~ ".join(strings)
        #     string = rf"\rhythm {{ {string} }}"
        # else:
        #     string = components_to_score_markup_string(components)
        string = components_to_score_markup_string(components)
        string = rf"\addNote \markup \parenthesize {{ \scale #'(0.5 . 0.5) {string} }}"
        # string = rf"\addNote \markup {counter}"
        literal = abjad.LilyPondLiteral(string, site="absolute_before")
        # abjad.override(tuplet).TupletNumber.text = string
        # print(f"{counter}: {tuplet.multiplier}")
        abjad.attach(
            literal, tuplet
        )  # find specific tuplets that force fraction and replace with 1/1 and leaf multipliers


def force_accidentals(selections):
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        start_leaf = tie[0]
        head = start_leaf.note_head
        head.is_forced = True


def add_ipa_text(selections, seed=1, vowels_only=False):
    ties = abjad.select.logical_ties(selections, pitched=True)
    random.seed(seed)
    random_bool = [True, False]
    vowels = [
        "a",
        "ɶ",
        "ä",
        "ɑ",
        "ɒ",
        "æ",
        "ɐ",
        "ɛ",
        "œ",
        "ɜ",
        "ɞ",
        "ʌ",
        "ɔ",
        "ə",
        "e",
        "ø",
        "ɘ",
        "ɵ",
        "ɤ",
        "o",
        "ɪ",
        "ʏ",
        "ʊ",
        "i",
        "y",
        "ɨ",
        "ʉ",
        "ɯ",
        "u",
    ]
    plosives = [
        "p",
        "b",
        "t",
        "d",
        "k",
        "ɡ",
        "ʔ",
    ]
    affricative = [
        "ts",
        "dz",
        "t̠ʃ",
        "d̠ʒ",
        "pɸ",
        "bβ",
        "p̪f",
    ]
    fricative = [
        "s",
        "z",
        "ʃ",
        "ʒ",
        "ɸ",
        "β",
        "f",
        "v",
        "ɬ",
        "ɮ",
        "ꞎ",
    ]
    consonants = [plosives, affricative, fricative]
    for tie in ties:
        starts_with_consonant = random.choice(random_bool)
        ends_with_consonant = random.choice(random_bool)
        constructed_string = ""
        if vowels_only is False:
            if starts_with_consonant:
                constructed_string += random.choice(random.choice(consonants))
        constructed_string += random.choice(vowels)
        if vowels_only is False:
            if ends_with_consonant:
                constructed_string += random.choice(random.choice(consonants))
        markup = abjad.Markup(rf'\markup "{constructed_string}"')
        abjad.attach(markup, tie[0], direction=abjad.DOWN)


def random_bis_fingering(selections, max_finger=2, seed=1, color=r"safe-blue"):
    previous_finger = None
    fingerings = [_ + 1 for _ in range(max_finger - 1)]
    random.seed(seed)
    for tie in abjad.select.logical_ties(selections, pitched=True):
        head = tie[0]
        finger = random.choice(fingerings)
        while finger == previous_finger:
            finger = random.choice(fingerings)
        previous_finger = finger
        # indicator = abjad.ColorFingering(finger)
        indicator = abjad.Markup(
            rf"\markup {{ \override #'(circle-padding . 0.3) \circle \number {finger} }}"
        )
        bundle = abjad.bundle(
            indicator,
            rf"- \tweak color #{color}",
            r"- \tweak font-size #-5.5",
        )
        abjad.attach(bundle, head, direction=abjad.DOWN)


def trill_pitches_followed_by_run(source, trill_length_before_run):
    trill_pitches = [source[:2] for _ in range(trill_length_before_run)]
    trill_pitches = abjad.sequence.flatten(trill_pitches)
    trill_figure = trill_pitches[: trill_length_before_run + 1]
    run_pitches = source[2:]
    final_construction = trill_figure + run_pitches
    return final_construction


def cutaway(selections):
    rests = abjad.select.rests(selections)
    inverse_runs = abjad.select.group_by_contiguity(rests)
    for run in inverse_runs:
        start_literal = abjad.LilyPondLiteral(
            [
                r"\stopStaff",
                r"\override Staff.Rest.transparent =  ##t",
                r"\override Staff.Dots.transparent =  ##t",
                r"\override Staff.Clef.transparent =  ##t",
                r"\override Staff.TimeSignature.transparent =  ##t",
                r"\override Staff.TupletBracket.transparent =  ##t",
                r"\override Staff.TupletNumber.transparent =  ##t",
            ],
            site="before",
        )
        start_literal_barline = abjad.LilyPondLiteral(
            r"\override Staff.BarLine.transparent = ##t",
            site="after",
        )
        stop_literal = abjad.LilyPondLiteral(
            [
                r"\startStaff",
                r"\revert Staff.Rest.transparent",
                r"\revert Staff.Dots.transparent",
                r"\revert Staff.BarLine.transparent",
                r"\revert Staff.Clef.transparent",
                r"\revert Staff.TimeSignature.transparent",
                r"\revert Staff.TupletBracket.transparent",
                r"\revert Staff.TupletNumber.transparent",
            ],
            site="after",
        )
        abjad.attach(start_literal, run[0])
        abjad.attach(start_literal_barline, run[0])
        abjad.attach(stop_literal, run[-1])


def equals(a, b):
    return a == b


def does_not_equal(a, b):
    return a != b


def less_than(a, b):
    return a < b


def less_than_or_equal_to(a, b):
    return a <= b


def greater_than(a, b):
    return a > b


def greater_than_or_equal_to(a, b):
    return a >= b


def get_ties_relative_to_threshold(
    selections, predicate=greater_than_or_equal_to, threshold=(1, 8), pitched=True
):
    threshold = abjad.Duration(threshold)
    out = []
    ties = abjad.select.logical_ties(selections, pitched=pitched, grace=False)
    for tie in ties:
        total_written_duration = sum([_.written_duration for _ in tie])
        assert abjad.get.duration(tie, preprolated=True) == total_written_duration
        if predicate(total_written_duration, threshold):
            out.append(tie)
    return out


def multi_trills(
    selections,
    predicate=greater_than_or_equal_to,
    threshold=(1, 8),
    intervals=[[1], [0.5, 1], [0.5, 1, 1.5]],
    extra_padding=[5],
    with_notes=False,
):
    cyc_padding = evans.CyclicList(extra_padding, forget=False)
    cyc_intervals = evans.CyclicList(intervals, forget=False)
    if with_notes is False:
        for tie in get_ties_relative_to_threshold(
            selections, predicate=predicate, threshold=threshold, pitched=True
        ):
            padding = cyc_padding(r=1)[0]
            interval_sub_group = [
                abjad.NumberedInterval(_) for _ in cyc_intervals(r=1)[0]
            ]
            reference_pitch = tie[0].written_pitch
            trill_pitches = [
                interval.transpose(reference_pitch).name
                for interval in interval_sub_group
            ]
            evans.make_multi_trill(
                tie,
                *trill_pitches,
                notehead_styles=[None],
                after_spacing="1/16",
                extra_padding=padding,
            )
    elif with_notes is True:
        for note in abjad.select.notes(selections):
            padding = cyc_padding(r=1)[0]
            interval_sub_group = [
                abjad.NumberedInterval(_) for _ in cyc_intervals(r=1)[0]
            ]
            reference_pitch = note.written_pitch
            trill_pitches = [
                interval.transpose(reference_pitch).name
                for interval in interval_sub_group
            ]
            evans.make_multi_trill(
                note,
                *trill_pitches,
                notehead_styles=[None],
                after_spacing="1/16",
                extra_padding=padding,
                with_notes=True,
            )


def obgc(
    selections,
    counts=[2, 3, 2, 4, 3, 5],
    grace_duration=(1, 50),
    default_beam_position=5,
    beam_position_list=None,
):
    cyc_counts = evans.CyclicList(counts, forget=False)
    notes = abjad.select.notes(selections)
    compiled_positions = [default_beam_position for _ in range(len(notes))]
    for pair in beam_position_list:
        compiled_positions[pair[0]] = pair[1]
    cyc_positions = evans.CyclicList(compiled_positions, forget=False)
    for i, note in enumerate(notes):
        beam_position = cyc_positions(r=1)[0]
        divisions = [abjad.Duration((1, 8)) for _ in range(cyc_counts(r=1)[0])]
        leaves = rmakers.note(divisions)
        leaves = abjad.sequence.flatten(leaves)
        for leaf in leaves:
            leaf.written_pitch = note.written_pitch
        start_literal = abjad.LilyPondLiteral(
            [
                r"\override Beam.beam-thickness = 0.5",
                rf"\once \override Beam.positions = #'({beam_position} . {beam_position})",
                r"\start-ob-multi-grace",
                # r"[",
                r"_(",
            ],
            site="before",
        )
        stop_literal = abjad.LilyPondLiteral(
            [
                # r"]",
                r")",
                r"\revert Beam.beam-thickness",
                r"\stop-ob-multi-grace",
            ],
            site="after",
        )
        abjad.attach(start_literal, leaves[0])
        abjad.attach(stop_literal, leaves[-1])
        abjad.on_beat_grace_container(
            leaves,
            [note],
            leaf_duration=grace_duration,
            do_not_slash=True,
            do_not_slur=True,
            font_size=-4,
        )


def frullato(selections):
    for note in abjad.select.notes(selections):
        start_literal = abjad.LilyPondLiteral(
            r"\irregularStemOn",
            site="absolute_before",
        )
        stop_literal = abjad.LilyPondLiteral(
            r"\stemOff",
            site="absolute_after",
        )
        abjad.attach(start_literal, note)
        abjad.attach(stop_literal, note)


numerals = [
    "१",
    "२",
    "३",
    "४",
    "५",
    "६",
]
