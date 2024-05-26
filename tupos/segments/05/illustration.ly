  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "abjad.ily"
\include "../../build/segment_stylesheet.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<

        \context Score = "Score"
        <<
      { \include "layout.ly" }
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=70
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/6
                \mark \markup \bold {  }
                s1 * 1/6

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/6
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/24
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 10/32
                s1 * 5/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/6
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/20
                s1 * 1/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 15/32
                s1 * 15/32

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                \time 1/8
                s1 * 1/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/12
                s1 * 1/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 4/16
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/12
                s1 * 1/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/12
                s1 * 1/6

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 3/16
                s1 * 3/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/10
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/24
                s1 * 5/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/24
                s1 * 7/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/20
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/10
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                \time 8/32
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/24
                s1 * 7/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/12
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                \time 9/32
                s1 * 9/32

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 8/24
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                \once \override MultiMeasureRest.transparent = ##t
                \once \override Score.TimeSignature.transparent = ##t
                \time 1/4
                s1 * 1/8

                \once \override Rest.transparent = ##t
                r1 * 1/8
                ^ \markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"
                \bar "|."

            }

            \tag #'group1
            {

                \context StaffGroup = "Staff Group"
                <<

                    \tag #'voice1
                    {

                        \context Staff = "piccolo staff"
                        {

                            \context Voice = "piccolo voice"
                            {

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 1]
                                    r4

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 3]
                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 4]
                                r4

                                r16

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 5]
                                    r2

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 6]
                                r4.

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 7]
                                    r4

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 8]
                                r4...

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 9]
                                r8

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 10]
                                    r8

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 11]
                                r4

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 12]
                                    r8

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 13]
                                    r2

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 14]
                                    r2

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    r4

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 16]
                                r8.

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 17]
                                    r4.

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 18]
                                    r4

                                    r16

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 19]
                                    r4..

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 20]
                                r4

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 21]
                                    r2

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 22]
                                    r4.

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 23]
                                r4

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 24]
                                    r4..

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 25]
                                    r2

                                    r8

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 26]
                                r4

                                r32

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 27]
                                    r2

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 28]
                                \once \override MultiMeasureRest.transparent = ##t
                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                R1 * 1/4
                                _ \colophon
                                \stopStaff \startStaff

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}