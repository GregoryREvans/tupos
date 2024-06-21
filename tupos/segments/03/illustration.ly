  %! abjad.LilyPondFile._get_format_pieces()
\version "2.25.16"
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
                \tempo 4=80
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/6
                \mark \markup \bold {  }
                s1 * 1/6
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"80"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/24
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/6
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/20
                s1 * 1/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 1/8
                s1 * 1/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 4/16
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/12
                s1 * 1/6

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/10
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/24
                s1 * 7/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 8/32
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/12
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 8/24
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                \time 8/32
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 9/32
                s1 * 9/32

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/24
                s1 * 7/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/10
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/20
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/24
                s1 * 5/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                \time 3/16
                s1 * 3/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/12
                s1 * 1/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/12
                s1 * 1/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                \time 15/32
                s1 * 15/32

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                \time 10/32
                s1 * 5/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/6
                s1 * 1/2

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
                                    r16.

                                    a'32
                                    \pp
                                    [

                                    g'''32
                                    ]

                                    r16

                                    f'32
                                    \p
                                    [

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 2]
                                    ef''16
                                    ]

                                    \afterGrace
                                    r8
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        bf'16
                                        [

                                        bf'!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    ef'''16
                                    \mf
                                    )

                                    r16

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 8/9
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 3]
                                        g''16
                                        \p
                                        [

                                        af'''16

                                        f'''16
                                        ]

                                        r16

                                        g'16
                                        \ppp

                                        r8.

                                        fs'16
                                        \mf
                                        [

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 8/11
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 4]
                                        d''32
                                        ]

                                        r32

                                        \once \override DynamicLineSpanner.staff-padding = 8.5
                                        af'32
                                        \f
                                        [

                                        e'''32
                                        ]

                                        r32

                                        \once \override DynamicLineSpanner.staff-padding = 8.5
                                        d'32
                                        \fff

                                        r16

                                        \once \override DynamicLineSpanner.staff-padding = 8.5
                                        c''32
                                        \mp
                                        [

                                        fs'''32
                                        ]

                                        \afterGrace
                                        r32
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            f''16
                                            [

                                            f''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 5]
                                c'''16
                                \pp
                                )

                                \afterGrace
                                r16
                                {

                                    \start-single-grace
                                    \once \override Accidental.transparent = ##t
                                    \once \override Beam.positions = #'(11.5 . 11.5)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    fs''16
                                    [

                                    fs''!16
                                    ]
                                    \stop-single-grace

                                }


                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 6]
                                    cs''16
                                    \f

                                    r8.

                                    e'16
                                    \p

                                    r16

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 7]
                                        e''16
                                        \fff

                                        r16

                                        b'16
                                        \mf
                                        [

                                        bf'''16
                                        ]

                                        r8.

                                        ef'16
                                        \mp

                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        r8

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 8]
                                    bf''4
                                    \f
                                    \startTrillSpan

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 9]
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    c''8
                                    - \accent
                                    \stopTrillSpan
                                    [

                                    b'''8
                                    - \tenuto

                                    a'8
                                    - \tenuto

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 10]
                                    b''16
                                    ]

                                    \afterGrace
                                    r8
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        f'16
                                        [

                                        f'!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    d'''16
                                    \ppp
                                    )

                                    \afterGrace
                                    r8.
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        af''16
                                        [

                                        af''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 11]
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    bf'8
                                    - \accent
                                    \f
                                    )

                                    \afterGrace
                                    r4.
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        a'''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        cs''16
                                        ]
                                        \stop-multi-grace

                                    }


                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 12]
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                g'8
                                - \accent
                                \mf
                                )

                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                r8

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 13]
                                    r2

                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    r8

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 14]
                                        fs'16
                                        \mp

                                        r16

                                        \afterGrace
                                        cs'''16
                                        \mf
                                        [
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            a''16
                                            [

                                            a''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        af'16
                                        )
                                        ]

                                        \afterGrace
                                        r8.
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            d'16
                                            [

                                            d'!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                    }

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    g'''8
                                    - \accent
                                    \pp
                                    )
                                    [

                                    af''8
                                    - \tenuto
                                    ]

                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    r8

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 16]
                                r4

                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 3
                                r32

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 17]
                                        c''16
                                        \mf

                                        r16

                                        cs''16
                                        \f

                                        r8

                                        ef'''16
                                        \fff
                                        [

                                        e''16
                                        ]

                                        r16

                                        e'16
                                        \ff

                                        r16

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 18]
                                    r8

                                    b'16
                                    \f

                                    \afterGrace
                                    r8.
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        af'''16
                                        [

                                        af'''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 19]
                                ef'8
                                - \accent
                                \ppp
                                )
                                [

                                a''8
                                - \tenuto

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/11
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 20]
                                        \afterGrace
                                        f'''32
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            a'16
                                            [

                                            a'!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        fs''32
                                        )
                                        ]

                                        \afterGrace
                                        r8
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            f'16
                                            [

                                            f'!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        \once \override DynamicLineSpanner.staff-padding = 3
                                        e'''32
                                        \ff
                                        )
                                        [

                                        f''32
                                        ]

                                        r32

                                        bf'32
                                        \pp

                                        r32

                                    }

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 21]
                                    g'32
                                    \p

                                    \afterGrace
                                    r8
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        fs'16
                                        [

                                        fs'!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    \afterGrace
                                    fs'''32
                                    \mf
                                    )
                                    [
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        c'''16
                                        [

                                        c'''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    g''32
                                    )

                                    cs''32

                                    af'32

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 22]
                                        bf'''8
                                        - \accent

                                        b''8
                                        - \tenuto

                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        d'8
                                        - \tenuto
                                        ]

                                        r4

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 23]
                                    \once \override DynamicLineSpanner.staff-padding = 7
                                    \set stemLeftBeamCount = 4
                                    \set stemRightBeamCount = 4
                                    c''64
                                    \p

                                    r64

                                    \once \override DynamicLineSpanner.staff-padding = 7
                                    b'''64
                                    \ppp
                                    [

                                    c''64
                                    ]

                                    \afterGrace
                                    r32
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        cs''16
                                        [

                                        \once \override DynamicLineSpanner.staff-padding = 7
                                        cs''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    d'''64
                                    \mf
                                    )
                                    [

                                    ef''64
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 8/11
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 24]
                                        r32.

                                        a'''64
                                        \f
                                        [

                                        e'64
                                        ]

                                        \afterGrace
                                        r32.
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            bf''16
                                            [

                                            bf''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        b'64
                                        \fff
                                        )

                                        \afterGrace
                                        r64
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(11.5 . 11.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            cs'''16
                                            [

                                            cs'''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        ef'64
                                        \mp
                                        )

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 15/16
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 25]
                                    \afterGrace
                                    r8
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        g'''16
                                        [

                                        g'''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    d''16
                                    \pp
                                    )
                                    [

                                    ef'''16
                                    ]

                                    r16

                                    a'16
                                    \f

                                    r8

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 26]
                                    f'16
                                    \p

                                    r8

                                    ef''16
                                    \fff

                                    \afterGrace
                                    r16
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        bf'16
                                        [

                                        bf'!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 10/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 27]
                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    af'''32
                                    \mf
                                    )

                                    r32

                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    g'32
                                    \mp

                                    r16

                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    fs'32
                                    \f
                                    [

                                    f'''32
                                    ]

                                    r32

                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    \afterGrace
                                    e'''32
                                    \ppp
                                    [
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        g''16
                                        [

                                        g''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                }

                                \times 8/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 28]
                                    af'16
                                    )
                                    ]

                                    r16

                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    d''16
                                    \f

                                    r16

                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    d'16
                                    \mf

                                    \afterGrace
                                    r8.
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(11.5 . 11.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        c''16
                                        [

                                        c''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    f''16
                                    \mp
                                    )

                                    r16

                                    \once \override DynamicLineSpanner.staff-padding = 8
                                    fs'''16
                                    \mf

                                }

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}