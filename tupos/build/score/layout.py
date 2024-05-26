import pathlib

import evans

import tupos

breaks = evans.Breaks(
    evans.Page(  # segment 01
        # evans.System(measures=0, lbsd=(8, "(0)"), x_offset=2), # lbsd was lbsd=(10, "(16)") with signature context
        evans.System(
            measures=4, lbsd=(15 + 33, "(7)"), x_offset=2
        ),  # lbsd=(10 + 50, "(24 16)")
        evans.System(
            measures=4, lbsd=(15 + 33 + 38, "(2 12)"), x_offset=2
        ),  # lbsd=(10 + 50 + 50, "(25.5 16)")
        evans.System(
            measures=4, lbsd=(15 + 33 + 38 + 33, "(19 12)"), x_offset=2
        ),  # lbsd=(10, "(19 16)")
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(9, "(5 12)"), x_offset=2),
        evans.System(measures=4, lbsd=(16 + 43, "(12 12)"), x_offset=2),
        evans.System(measures=4, lbsd=(5 + 56 + 50, "(8)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(8, "(1 19 19)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 60, "(1)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 32 + 40 + 20, "(8 17 25)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(8, "(15)"), x_offset=2),
        evans.System(measures=5, lbsd=(8 + 45, "(17 12)"), x_offset=2),
        evans.System(measures=6, lbsd=(8 + 45 + 50, "(15 13)"), x_offset=2),
    ),
    evans.Page(  # segment 02
        evans.System(measures=3, lbsd=(8 - 2, "(3)"), x_offset=2),  # this
        evans.System(
            measures=5, lbsd=(8 + 35, "(13 18)"), x_offset=2
        ),  # and this were switched for weird cutaway bug
        evans.System(measures=4, lbsd=(8 + 50 + 55, "(7 18)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(8, "(7)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 35, "(7)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 35 + 35, "(7)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 35 + 35 + 35, "(12)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=4, lbsd=(8, "(14)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 48, "(1)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 48 + 35, "(14)"), x_offset=2),
        evans.System(measures=4, lbsd=(8 + 48 + 35 + 41, "(14)"), x_offset=2),
    ),
    evans.Page(  # segment 03
        evans.System(measures=5, lbsd=(8 - 2, "(7 20)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50, "(7 20)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50 + 55, "(19 13)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8 - 2, "(19)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50, "(19)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50 + 55, "(19)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8 - 2, "(7 11)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50, "(19)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50 + 55, "(19)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8 - 2, "(19 11)"), x_offset=4),
        evans.System(measures=4, lbsd=(8 + 50, "(7 11)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50 + 55, "(7)"), x_offset=4),  # segment 04
    ),
    evans.Page(  # segment 04
        # evans.System(measures=5, lbsd=(8 - 2, "(7)"), x_offset=4),
        # evans.System(measures=5, lbsd=(8 + 30, "(9 15)"), x_offset=4),
        # evans.System(measures=5, lbsd=(8 + 30 + 45, "(7)"), x_offset=4),
        # evans.System(measures=5, lbsd=(8 + 30 + 45 + 33, "(9 15 15)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 - 2, "(9 15)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 50 + 50, "(9 15 15)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8 - 2, "(9 15 15)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 70, "(9 15 15 15 15)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8 - 2, "(10)"), x_offset=4),
        evans.System(measures=3, lbsd=(8 + 30, "(9)"), x_offset=4),
        evans.System(measures=2, lbsd=(8 + 30 + 30, "(9)"), x_offset=4),
        evans.System(
            measures=5, lbsd=(8 + 30 + 30 + 30, "(9 17 17 17 17)"), x_offset=4
        ),
    ),
    evans.Page(  # segment 05
        evans.System(measures=5, lbsd=(6, "(7)"), x_offset=2),
        evans.System(measures=5, lbsd=(6 + 35, "(7)"), x_offset=2),
        evans.System(measures=2, lbsd=(6 + 35 + 40, "(7)"), x_offset=2),
        evans.System(measures=3, lbsd=(6 + 35 + 40 + 45, "(7)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8 - 2, "(7)"), x_offset=2),
        evans.System(measures=5, lbsd=(8 + 45, "(7)"), x_offset=2),
        evans.System(measures=5, lbsd=(8 + 45 + 45, "(7)"), x_offset=2),
        evans.System(measures=2, lbsd=(8 + 45 + 45 + 45, "(7)"), x_offset=2),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(8 - 2, "(7)"), x_offset=2),
        evans.System(measures=3, lbsd=(8 + 45, "(11)"), x_offset=2),
    ),
    time_signatures=tupos.all_signatures,
    default_spacing=(1, 75),  # 35
    spacing=[
        # (9, (1, 90)),
        # (43, (1, 90)),
        # (46, (1, 90)),
        # (47, (1, 90)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
