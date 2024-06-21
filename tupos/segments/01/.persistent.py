import abjad
info = {
    "Voice 1": [
        LilyPondLiteral(
            argument="\\stopStaff \\once \\override Staff.StaffSymbol.line-count = #0 \\startStaff",
            site="before",
            directed=False,
        ),
        LilyPondLiteral(
            argument="\\once \\override Rest.transparent = ##t",
            site="before",
            directed=False,
        ),
        Dynamic(
            name="f",
            command=None,
            format_hairpin_stop=False,
            hide=False,
            leak=False,
            name_is_textual=False,
            ordinal=2,
        ),
        StartHairpin(shape=">"),
    ]
}
