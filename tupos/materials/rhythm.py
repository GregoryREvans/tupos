import abjad
import evans
from abjadext import rmakers

##
## Motions
##

# numeric_subdivisions
def numeric_subdivisions(
    integers, preprocessor=None, rewrite=None, treat_tuplets=True, subdivided=False, weighted=None, intercept_irregular_meters=False,
):
    temp = []
    for integer in integers:
        if integer == 0:
            continue
        else:
            temp.append(integer)
    integers = temp
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
        12: "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
        14: "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1))))",
        16: "(1 ((1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1))))",
        18: "(1 ((1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1)) (1 (1 1 1))))",
        20: "(1 ((1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1))))",
        22: "(1 ((1 (1 1 1 1 1)) (1 (1 1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1)) (1 (1 1 1 1))))",
    }
    subdivided_right_weighted_numbered_divisions = {
        1: "(1 (1))",
        2: "(1 (1 1))",
        3: "(1 (1 (1 (1 1))))",
        4: "(1 ((1 (1)) (1 (1 1 1))))",
        5: "(1 (1 1 (1 (1 1 1))))",
        6: "(1 ((3 (1 1 1)) (1 (1 1 1))))",
        7: "(1 (1 1 1 (1 (1 1 1 1))))",
        8: "(1 ((1 (1 1 1)) (1 (1 1 1 1 1))))",
        9: "(1 ((3 (1 1)) (2 (1 1 1 1)) (1 (1 1 1))))",
        10: "(1 (1 1 1 1 (2 (1 1 1 1 1 1))))",
        11: "(1 ((3 (1 1 1 1)) (2 (1 1 1 1)) (1 (1 1 1))))",
    }
    subdivided_left_weighted_numbered_divisions = {
        1: "(1 (1))",
        2: "(1 (1 1))",
        3: "(1 ((1 (1 1)) 1))",
        4: "(1 ((1 (1 1 1)) (1 (1))))",
        5: "(1 ((1 (1 1 1)) 1 1))",
        6: "(1 ((1 (1 1 1)) (2 (1 1 1))))",
        7: "(1 ((1 (1 1 1)) (1 (1 1)) 1 1))",
        8: "(1 ((1 (1 1 1 1 1)) (1 (1 1 1))))",
        9: "(1 ((1 (1 1)) (2 (1 1 1 1)) (3 (1 1 1))))",
        10: "(1 ((2 (1 1 1 1 1 1)) 1 1 1 1))",
        11: "(1 ((1 (1 1 1 1)) (2 (1 1 1 1)) (3 (1 1 1))))",
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
        if weighted is None:
            rtms = [subdivided_even_numbered_divisions[_] for _ in integers]
        elif weighted == "right":
            rtms = [subdivided_right_weighted_numbered_divisions[_] for _ in integers]
        elif weighted == "left":
            rtms = [subdivided_left_weighted_numbered_divisions[_] for _ in integers]
    else:
        rtms = [even_numbered_divisions[_] for _ in integers]
    maker = evans.make_rtm(
        rtms,
        preprocessor=preprocessor,
        rewrite=rewrite,
        treat_tuplets=treat_tuplets,
        intercept_irregular_meters=intercept_irregular_meters,
    )
    return maker
