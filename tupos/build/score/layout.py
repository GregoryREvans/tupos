import pathlib

import evans

import tupos

breaks = evans.Breaks(
    evans.Page(
        evans.System(measures=4, lbsd=(55, "(7)"), x_offset=4),
        evans.System(measures=4, lbsd=(55 + 23, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(55 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=4, lbsd=(55 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=4, lbsd=(55 + 23 + 23 + 23 + 23, "(7)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=5, lbsd=(8, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 23, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 23 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=5, lbsd=(8 + 23 + 23 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(
            measures=5, lbsd=(8 + 23 + 23 + 23 + 23 + 23 + 23, "(7)"), x_offset=4
        ),
    ),
    evans.Page(
        evans.System(measures=9, lbsd=(8, "(7)"), x_offset=4),
        evans.System(measures=7, lbsd=(8 + 23, "(7)"), x_offset=4),
        evans.System(measures=7, lbsd=(8 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=6, lbsd=(8 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=7, lbsd=(8 + 23 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(measures=7, lbsd=(8 + 23 + 23 + 23 + 23 + 23, "(7)"), x_offset=4),
        evans.System(
            measures=7, lbsd=(8 + 23 + 23 + 23 + 23 + 23 + 23, "(7)"), x_offset=4
        ),
    ),
    evans.Page(
        evans.System(measures=7, lbsd=(8, "(7)"), x_offset=4),
        evans.System(measures=6, lbsd=(8 + 26, "(7)"), x_offset=4),
        evans.System(measures=6, lbsd=(8 + 26 + 26, "(7)"), x_offset=4),
        evans.System(measures=6, lbsd=(8 + 26 + 26 + 26, "(7)"), x_offset=4),
        evans.System(measures=6, lbsd=(8 + 26 + 26 + 26 + 26, "(7)"), x_offset=4),
        evans.System(measures=3, lbsd=(8 + 26 + 26 + 26 + 26 + 26, "(7)"), x_offset=4),
    ),
    time_signatures=tupos.all_signatures,
    default_spacing=(1, 50),  # 35
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
