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
                \time 2/5
                \mark \markup \bold {  }
                s1 * 2/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/5
                s1 * 4/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/20
                s1 * 7/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 11/24
                s1 * 11/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/5
                s1 * 3/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/6
                s1 * 2/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 5/16
                s1 * 5/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 16/24
                s1 * 2/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/6
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/10
                s1 * 1/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/12
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/10
                s1 * 1/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/10
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/10
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/10
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/12
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/24
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                \time 4/8
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/20
                s1 * 9/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/20
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 10/24
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 8/20
                s1 * 2/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/10
                s1 * 3/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 6/16
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 8/20
                s1 * 2/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/10
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/24
                s1 * 3/8

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
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 1]
                                    r16

                                    r16

                                    r16

                                    gqf''16
                                    [

                                    eqs'''8.
                                    ~

                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    \afterGrace
                                    eqs''16
                                    ]
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        c''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        gqf''16
                                        ]
                                        \stop-multi-grace

                                    }


                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 2]
                                        \afterGrace
                                        f'''2.
                                        )
                                        ~
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
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


                                        gqf'''4
                                        )

                                        \afterGrace
                                        bqf'4
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
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


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/9
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 3]
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        \afterGrace
                                        bf''16
                                        )
                                        [
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            d'16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            bf'16

                                            ef'16

                                            c'16

                                            b'16

                                            cs'16

                                            g'16
                                            ]
                                            \stop-multi-grace

                                        }


                                        gqf'''16
                                        )

                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \afterGrace
                                        eqs'''8
                                        ]
                                        ~
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            e''16
                                            [

                                            e''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        fqs''4
                                        )
                                        ~

                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        \afterGrace
                                        f''16
                                        [
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
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


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 4]
                                    \afterGrace
                                    eqs''8
                                    )
                                    ~
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        fs''16
                                        [

                                        fs''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    cqs''16
                                    )

                                    e'''8
                                    ~

                                    ef''8.
                                    ~

                                    af''16

                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    \afterGrace
                                    g'''8
                                    ]
                                    ~
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        fqs'''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        b''16

                                        fs''16
                                        ]
                                        \stop-multi-grace

                                    }


                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 5]
                                        \afterGrace
                                        b'1
                                        )
                                        ~
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            g''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            aqf''16
                                            ]
                                            \stop-multi-grace

                                        }


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 6]
                                        \afterGrace
                                        fs'''4
                                        )
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            a'16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            bf'16

                                            cs''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        bf'2.
                                        )
                                        ~

                                        \afterGrace
                                        e''2
                                        ~
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            dqf'''16
                                            [

                                            dqf'''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 7]
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                b''16
                                )
                                [
                                ~

                                gqs''32

                                fqs'''16.
                                ~

                                \afterGrace
                                d''32
                                {

                                    \start-single-grace
                                    \once \override Accidental.transparent = ##t
                                    \once \override Beam.positions = #'(14 . 14)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    bqs'16
                                    [

                                    bqs'!16
                                    ]
                                    (
                                    \stop-single-grace

                                }


                                eqf''16
                                )
                                ~

                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 3
                                \afterGrace
                                ef''32
                                ]
                                {

                                    \start-single-grace
                                    \once \override Accidental.transparent = ##t
                                    \once \override Beam.positions = #'(14 . 14)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    fqs''16
                                    [

                                    fqs''!16
                                    ]
                                    \stop-single-grace

                                }


                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 8]
                                    \afterGrace
                                    ef'''1
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 9]
                                        c'''4
                                        )

                                        fs'''4

                                        \afterGrace
                                        gqf''4
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            d'''16
                                            [

                                            d'''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 10]
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 3
                                        \afterGrace
                                        f''16.
                                        )
                                        [
                                        ~
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            eqs''16
                                            [

                                            eqs''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        f'''16
                                        )
                                        ~

                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        \afterGrace
                                        c''16
                                        ]
                                        ~
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            bqs''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            g''16
                                            ]
                                            \stop-multi-grace

                                        }


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 11]
                                        \afterGrace
                                        g''2
                                        )
                                        ~
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            f'''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            e'''16

                                            fs''16

                                            fqs''16
                                            ]
                                            \stop-multi-grace

                                        }


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 12]
                                    cs''4
                                    )
                                    ~

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 13]
                                \afterGrace
                                cs''4.
                                {

                                    \start-multi-grace
                                    \once \override Beam.positions = #'(14 . 14)
                                    c''16
                                    [
                                    (

                                    \once \override Flag.stencil = ##f
                                    e''16

                                    fs''16

                                    bf'16

                                    f''16

                                    af'16

                                    a'16

                                    g''16
                                    ]
                                    \stop-multi-grace

                                }


                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                \afterGrace
                                fs'''8
                                )
                                [
                                {

                                    \start-single-grace
                                    \once \override Accidental.transparent = ##t
                                    \once \override Beam.positions = #'(14 . 14)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    f''16
                                    [

                                    f''!16
                                    ]
                                    \stop-single-grace

                                }


                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 14]
                                    \afterGrace
                                    b'8.
                                    ~
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        fs''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        a''16
                                        ]
                                        \stop-multi-grace

                                    }


                                    cqs'''8.
                                    )
                                    ~

                                    af'''16

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    \afterGrace
                                    ef''8
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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


                                    ef''8
                                    )

                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    \afterGrace
                                    ef'''8
                                    ]
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 16]
                                    ef'''2
                                    )

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 17]
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    af''32
                                    [

                                    \afterGrace
                                    d''32
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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


                                    \afterGrace
                                    aqf''8
                                    )
                                    ~
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        ef''16
                                        [

                                        ef''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    aqs''16
                                    )
                                    ~

                                    e''32

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    af'''32
                                    ]
                                    ~

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 18]
                                    \afterGrace
                                    af'''4
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        f''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        g''16

                                        fs''16

                                        ef''16

                                        af''16
                                        ]
                                        \stop-multi-grace

                                    }


                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    gqs''8
                                    )

                                    a'4
                                    ~

                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    \afterGrace
                                    aqf'''8
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/8
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 19]
                                        \afterGrace
                                        eqf''4
                                        )
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            af''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            af'''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        aqf'''4
                                        )
                                        ~

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/11
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 20]
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 3
                                        \afterGrace
                                        aqf'''32
                                        [
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            dqs'''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            cs'''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        gqf''8
                                        )
                                        ~

                                        gqf''32

                                        \afterGrace
                                        eqs''32
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            a''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            aqf''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        dqs''16
                                        )
                                        ~

                                        g''32

                                        \afterGrace
                                        g'''32
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            af''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            g''16

                                            ef'''16

                                            af''16
                                            ]
                                            \stop-multi-grace

                                        }


                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/9
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 21]
                                        fqs''8.
                                        )
                                        ~

                                        f''8
                                        ~

                                        \afterGrace
                                        f''16
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            d'''16
                                            [

                                            d'''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        \afterGrace
                                        a''16
                                        )
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            e''16
                                            [

                                            e''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        \afterGrace
                                        c'''16
                                        )
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            e'''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            fs''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        cs''16
                                        )
                                        ~

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 22]
                                        \afterGrace
                                        cs''8
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
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


                                        bqf''8
                                        )

                                        ef''8

                                        \afterGrace
                                        bf'8
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            a''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            af''16

                                            bf''16

                                            e'''16

                                            d'''16

                                            ef'''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        eqf'''8
                                        )
                                        ]

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 23]
                                        \afterGrace
                                        af''4.
                                        ~
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            gqs''16
                                            [

                                            gqs''!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        \afterGrace
                                        g'''4.
                                        )
                                        ~
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(14 . 14)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            aqs'16
                                            [

                                            aqs'!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \afterGrace
                                        aqf''8
                                        )
                                        [
                                        {

                                            \start-multi-grace
                                            \once \override Beam.positions = #'(14 . 14)
                                            gqs'''16
                                            [
                                            (

                                            \once \override Flag.stencil = ##f
                                            d'''16
                                            ]
                                            \stop-multi-grace

                                        }


                                        c'''8
                                        )
                                        ~

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 12/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 24]
                                    c'''8

                                    gqs'''16.
                                    )
                                    ~

                                    \afterGrace
                                    fs''32
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        b''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        gqs''16
                                        ]
                                        \stop-multi-grace

                                    }


                                    eqf''16
                                    )
                                    ~

                                    \afterGrace
                                    eqf''32
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        eqf'''16
                                        [

                                        eqf'''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 25]
                                    \afterGrace
                                    dqf''8
                                    )
                                    ~
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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


                                    \afterGrace
                                    e''16
                                    )
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        bf'''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        f'''16

                                        a'''16

                                        c'''16

                                        af'''16

                                        cs'''16

                                        b'''16

                                        bf'''16

                                        c'''16

                                        fs'''16
                                        ]
                                        \stop-multi-grace

                                    }


                                    eqs'''16
                                    )

                                    \afterGrace
                                    gqf'''16
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
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


                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    gqf''8.
                                    )
                                    ]
                                    ~

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 26]
                                    \afterGrace
                                    eqs''4.
                                    ~
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(14 . 14)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        f'''16
                                        [

                                        f'''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    gqf''8
                                    )
                                    [

                                    \afterGrace
                                    bqf'8
                                    {

                                        \start-multi-grace
                                        \once \override Beam.positions = #'(14 . 14)
                                        cs'''16
                                        [
                                        (

                                        \once \override Flag.stencil = ##f
                                        d'''16

                                        f'''16

                                        c'''16

                                        g'''16

                                        a'''16

                                        cs'''16

                                        af'''16

                                        b'''16

                                        c'''16

                                        f'''16
                                        ]
                                        \stop-multi-grace

                                    }


                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 27]
                                    g''16
                                    )

                                    gqf'''16

                                    fqs''8.
                                    ~

                                    f''8
                                    ~

                                    eqs'''16

                                    e'''16
                                    ]

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