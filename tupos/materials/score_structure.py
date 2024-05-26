import abjad
import evans

import tupos

score = evans.make_score_template(tupos.instruments, [1])
# raise Exception(abjad.lilypond(score))
# score = abjad.Score(
#     [
#         abjad.Staff(name="Global Context", lilypond_type="TimeSignatureContext"),
#         abjad.StaffGroup(
#             [
#                 abjad.StaffGroup(
#                     [
#                         abjad.Staff([abjad.Voice(name="alto flute 1 voice", lilypond_type="VanishingVoice")], name="alto flute 1 staff", lilypond_type="VanishingStaff"),
#                         abjad.Staff([abjad.Voice(name="alto flute 2 voice", lilypond_type="VanishingVoice")], name="alto flute 2 staff", lilypond_type="VanishingStaff"), # just regular staff and voice?
#                         abjad.Staff([abjad.Voice(name="alto flute 3 voice", lilypond_type="VanishingVoice")], name="alto flute 3 staff", lilypond_type="VanishingStaff"),
#                     ],
#                     name="sub group 1",
#                     lilypond_type="GrandStaff",
#                 ),
#                 abjad.Staff(
#                     [
#                         abjad.Voice(name="voice voice")
#                     ],
#                     name="voice staff",
#                     lilypond_type="RhythmicStaff",
#                 ),
#             ],
#             name="Staff Group"
#         ),
#     ],
#     name="Score",
# )
