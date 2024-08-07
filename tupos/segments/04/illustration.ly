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
                \tempo 4=60
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
                      \abjad-metronome-mark-markup #2 #0 #1 #"60"
                  }
                }

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
                  %! scaling time signatures
                \time 8/32
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 29]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 1/6
                s1 * 1/6

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 30]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/24
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 31]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/6
                s1 * 1/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 32]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/20
                s1 * 1/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 33]
                  %! scaling time signatures
                \time 1/8
                s1 * 1/8

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
                                    af'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \p
                                    [
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    c'32

                                    g'32

                                    bf'32

                                    b'32
                                    )

                                    b'32

                                    b'32

                                    a'32

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 2]
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    ef'8
                                    - \accent
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.hairpin()
                                    \pp
                                    ]

                                    r2

                                }

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 3]
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    f'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \p
                                    [
                                    (
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<

                                    e'32
                                    )

                                    e'32

                                    e'32

                                    e'32

                                    cs'32
                                    (

                                    fs'32

                                    d'32

                                    c'32

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 10/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 4]
                                    af'32

                                    cs'32
                                    )

                                    bf'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.hairpin()
                                    \mp
                                    ]

                                    r8.

                                    bf'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \mf
                                    [
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    bf'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.hairpin()
                                    \ppp
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 5]
                                    r4.

                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    fqs'8
                                    - \accent
                                    \mf

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 3/4
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 6]
                                    bf'4
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \pp
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \<
                                    \startTrillSpan

                                    a'4
                                    \stopTrillSpan
                                    \startTrillSpan

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 7]
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        g'16
                                        \stopTrillSpan
                                        [
                                        (

                                        f'16

                                        b'16

                                        cs'16

                                        c'16

                                        bf'16
                                        )

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 3/4
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 8]
                                    bf'16

                                    bf'16

                                    bf'16

                                    bf'16

                                    bf'16

                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    g'16
                                    ]

                                    fs'4
                                    ~
                                    \startTrillSpan

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 9]
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                fs'8
                                [
                                ~

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 10]
                                        fs'8.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \p

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 11]
                                    eqf''32
                                    \pp
                                    \stopTrillSpan
                                    ]

                                    r16

                                    eqf'32
                                    \mf
                                    [

                                    gqf'''32
                                    ]

                                    \afterGrace
                                    r16
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(12.5 . 12.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        fqs''16
                                        [

                                        fqs''!16
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
                                        % [piccolo voice measure 12]
                                        fs'16
                                        \mp
                                        )

                                        r16

                                        eqs'''16
                                        \mf

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 13]
                                        r8.

                                        c'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        af'16
                                        )

                                        af'16

                                        af'16

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 14]
                                    af'8
                                    - \accent

                                    fs'8
                                    - \tenuto
                                    (

                                    d'8
                                    - \tenuto

                                    g'8
                                    - \tenuto
                                    )

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    g'8
                                    - \tenuto

                                    g'8
                                    - \tenuto

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 3/4
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 16]
                                    e'16

                                    e'16

                                    bf'8
                                    ~
                                    \startTrillSpan

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 17]
                                        bf'8.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \pp
                                        ]

                                        r8.
                                        \stopTrillSpan

                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        e'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 18]
                                    ef''4
                                    \f
                                    ~
                                    \startTrillSpan

                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    ef''16
                                    [

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 19]
                                        b'8
                                        - \accent
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \mf
                                        \stopTrillSpan
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        b'8
                                        - \tenuto

                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        b'8
                                        - \tenuto
                                        ]

                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 20]
                                \afterGrace
                                c'4
                                  %! SPANNER_STOP
                                  %! baca.PiecewiseCommand._call(3)
                                  %! baca.hairpin()
                                \ppp
                                \startTrillSpan
                                {

                                    \start-single-grace
                                    \once \override Accidental.transparent = ##t
                                    \once \override Beam.positions = #'(12.5 . 12.5)
                                    \once \override Beam.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override NoteHead.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \tweak X-extent #'(0 . 0)
                                    eqs''16
                                    \stopTrillSpan
                                    [

                                    eqs''!16
                                    ]
                                    \stop-single-grace

                                }


                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 21]
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        eqs'16
                                        \mp

                                        r8

                                        e'16
                                        \mf

                                        r16

                                        f'16
                                        \p

                                        r16

                                        g'''16
                                        \pp

                                        \afterGrace
                                        r8
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(12.5 . 12.5)
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

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 22]
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        f''8
                                        - \accent
                                        \mp
                                        )

                                        r4

                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        g'8
                                        - \accent
                                        \mf

                                    }

                                }

                                \times 8/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 23]
                                    r16

                                    e''32
                                    \p

                                    \afterGrace
                                    r32
                                    {

                                        \start-single-grace
                                        \once \override Accidental.transparent = ##t
                                        \once \override Beam.positions = #'(12.5 . 12.5)
                                        \once \override Beam.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override NoteHead.transparent = ##t
                                        \once \override Stem.stencil = ##f
                                        \tweak X-extent #'(0 . 0)
                                        fqs'''16
                                        [

                                        fqs'''!16
                                        ]
                                        (
                                        \stop-single-grace

                                    }


                                    g''32
                                    \mf
                                    )
                                    [

                                    gqs'32

                                    f'''32

                                    ef'32
                                    ]

                                    r16.

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 24]
                                        d'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        e'16

                                        bf'16

                                        af'16

                                        a'16
                                        )

                                        b'16

                                        a'16

                                        c'16

                                        g'16

                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        g'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \p
                                        ]

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
                                        % [piccolo voice measure 25]
                                        gqf'4
                                        \p
                                        \startTrillSpan

                                        fs'''4
                                        \stopTrillSpan
                                        \startTrillSpan

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 3/4
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 26]
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    r8
                                    \stopTrillSpan

                                    d''16
                                    \pp

                                    r16

                                    dqs'16
                                    \mf

                                    r16

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 27]
                                        r8.

                                        \afterGrace
                                        ef'''16
                                        \pp
                                        [
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(12.5 . 12.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            fqs'16
                                            [

                                            fqs'!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        af'''16
                                        )

                                        gqs''16
                                        ]

                                        \afterGrace
                                        r16
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(12.5 . 12.5)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            eqf'16
                                            [

                                            eqf'!16
                                            ]
                                            (
                                            \stop-single-grace

                                        }


                                        aqf'''16
                                        \mf
                                        )

                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 1
                                        \afterGrace
                                        r8
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(12.5 . 12.5)
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


                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 28]
                                fs''4
                                \mp
                                )
                                \startTrillSpan

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 29]
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        g'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        )
                                        \stopTrillSpan
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        g'16

                                        g'16

                                        b'16
                                        (

                                        ef'16

                                        cs'16

                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 30]
                                a'8
                                - \accent

                                d'8
                                - \tenuto

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 8/11
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 31]
                                        f'16
                                        )

                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        af'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \pp
                                        ]

                                        r4

                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        e'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        b'16

                                        cs'16
                                        )

                                        cs'16

                                        cs'16

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 8/9
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 32]
                                        cs'32

                                        c'32
                                        (

                                        bf'32

                                        af'32

                                        d'32

                                        e'32

                                        ef'32
                                        )

                                        ef'32

                                        ef'32

                                    }

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 33]
                                    ef'32

                                    cs'32

                                    ef'32

                                    c'32

                                    f'32
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.hairpin()
                                    \mp
                                    ]

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