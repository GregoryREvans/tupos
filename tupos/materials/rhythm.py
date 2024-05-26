import abjad
import evans
from abjadext import rmakers

##
## Motions
##

# numeric_subdivisions
def numeric_subdivisions(
    integers, preprocessor=None, rewrite=None, treat_tuplets=True, subdivided=False
):
    subdivided_even_numbered_divisions = {
        1: "(1 (1))",
        2: "(1 (1 1))",
        3: "(1 (1 1 1))",
        4: "(1 ((1 (1 1)) (1 (1 1))))",
        5: "(1 (1 1 1 1 1))",
        6: "(1 ((1 (1 1 1)) (1 (1 1 1))))",
        7: "(1 (1 1 1 1 1 1 1))",
        8: "(1 ((1 (1 1 1 1)) (1 (1 1 1 1))))",
        9: "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
        10: "(1 (1 1 1 1 1 1 1 1 1 1))",
        11: "(1 (1 1 1 1 1 1 1 1 1 1 1))",
    }
    even_numbered_divisions = {
        1: "(1 (1))",
        2: "(1 (1 1))",
        3: "(1 (1 1 1))",
        4: "(1 (1 1 1 1))",
        5: "(1 (1 1 1 1 1))",
        6: "(1 (1 1 1 1 1 1))",
        7: "(1 (1 1 1 1 1 1 1))",
        8: "(1 (1 1 1 1 1 1 1 1))",
        9: "(1 (1 1 1 1 1 1 1 1 1))",
        10: "(1 (1 1 1 1 1 1 1 1 1 1))",
        11: "(1 (1 1 1 1 1 1 1 1 1 1 1))",
    }
    if subdivided is True:
        rtms = [subdivided_even_numbered_divisions[_] for _ in integers]
    else:
        rtms = [even_numbered_divisions[_] for _ in integers]
    maker = evans.make_rtm(
        rtms,
        preprocessor=preprocessor,
        rewrite=rewrite,
        treat_tuplets=treat_tuplets,
    )
    return maker
