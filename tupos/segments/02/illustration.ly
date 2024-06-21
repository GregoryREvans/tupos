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
                \tempo 4=70
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 3/5
                \mark \markup \bold {  }
                s1 * 3/5
                ^ \markup {
                  \raise #11 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"70"
                  }
                }

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
                \time 3/6
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/10
                s1 * 3/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/10
                s1 * 3/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/10
                s1 * 7/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 10/24
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/20
                s1 * 9/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 7/16
                s1 * 7/16

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
                \time 3/10
                s1 * 3/10

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 17/32
                s1 * 17/32

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                \time 12/32
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/5
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/6
                s1 * 5/6

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
                \time 6/10
                s1 * 3/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 7/20
                s1 * 7/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                \time 11/32
                s1 * 11/32

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 10/20
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 10/24
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/20
                s1 * 9/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/10
                s1 * 2/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/12
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                \time 6/16
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 8/20
                s1 * 2/5

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

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 1]
                                        r16

                                        e'16
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \mp
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        - \tweak stencil #constante-hairpin
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        e'16
                                        - \staccatissimo

                                        e'16
                                        - \staccatissimo

                                        e'16
                                        - \staccatissimo

                                        e'16
                                        - \staccatissimo

                                        e'16
                                        - \staccatissimo
                                        ]

                                        r16

                                        af'''16
                                        - \staccatissimo
                                        [

                                        af'''16
                                        - \staccatissimo

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 4/5
                                    {

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piccolo voice measure 2]
                                            af'''16
                                            - \staccatissimo
                                            ]

                                            c'16
                                            - \staccatissimo
                                            [

                                            c'16
                                            - \staccatissimo

                                            c'16
                                            - \staccatissimo
                                            ]

                                            g''16
                                            - \staccatissimo

                                        }

                                        \times 4/5
                                        {

                                            r16

                                            r16

                                            g''16
                                            - \staccatissimo
                                            [

                                            g''16
                                            - \staccatissimo

                                            g''16
                                            - \staccatissimo

                                        }

                                        g''16
                                        - \staccatissimo
                                        ]

                                        d''16
                                        - \staccatissimo
                                        [

                                        d''16
                                        - \staccatissimo

                                        d''16
                                        - \staccatissimo
                                        ]

                                        r16

                                        r16

                                        f'16
                                        - \staccatissimo
                                        [

                                        f'16
                                        - \staccatissimo

                                        f'16
                                        - \staccatissimo

                                        f'16
                                        - \staccatissimo

                                        f'16
                                        - \staccatissimo

                                        f'16
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \!
                                        ]

                                    }

                                }

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 3]
                                    fs''16
                                    - \accent
                                    \f
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    d'''16

                                    g'''16
                                    \!
                                    ]

                                    e''16
                                    - \accent
                                    \ff
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    ef'''16
                                    \!
                                    ]

                                }

                                \times 2/3
                                {

                                    a'8
                                    - \accent
                                    \fff
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    g''8

                                    af''8

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 4]
                                        b''8

                                        ef'''8

                                        f'''8
                                        \!
                                        ]

                                    }

                                    a'4
                                    - \accent
                                    \mp
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    e''4

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 5]
                                    f''16
                                    [

                                    ef'''16
                                    \!
                                    ]

                                    a'16
                                    - \accent
                                    \mf
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    b'16

                                    af''16

                                    cs'''16
                                    \!
                                    ]

                                    a'8
                                    - \accent
                                    \p
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    af''8

                                    cs'''8
                                    \!
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 6]
                                    bf'32
                                    - \accent
                                    \mp
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    a''32

                                    b''32

                                    d'''32
                                    \!
                                    ]

                                    a'16
                                    - \accent
                                    \ff
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    cs''16

                                    c'''16

                                    d'''16
                                    \!
                                    ]

                                    af'8
                                    - \accent
                                    \mf
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    fs''8

                                    g''8
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/8
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 7]
                                        bf''2

                                        f'''2
                                        \!

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 8]
                                        af''32
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \fff
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        - \tweak stencil #constante-hairpin
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        af''32
                                        - \staccatissimo

                                        af''32
                                        - \staccatissimo

                                        af''32
                                        - \staccatissimo
                                        ]

                                        r32

                                    }

                                    \times 4/5
                                    {

                                        af''32
                                        - \staccatissimo
                                        [

                                        af''32
                                        - \staccatissimo
                                        ]

                                        a''32
                                        - \staccatissimo
                                        [

                                        a''32
                                        - \staccatissimo

                                        a''32
                                        - \staccatissimo

                                    }

                                    a''32
                                    - \staccatissimo

                                    a''32
                                    - \staccatissimo

                                    a''32
                                    - \staccatissimo
                                    ]

                                    bf'''32
                                    - \staccatissimo

                                    r32

                                    bf'''32
                                    - \staccatissimo
                                    [

                                    bf'''32
                                    - \staccatissimo

                                    bf'''32
                                    - \staccatissimo
                                    ]

                                    af''32
                                    - \staccatissimo
                                    [

                                    af''32
                                    - \staccatissimo

                                    af''32
                                    - \staccatissimo
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.hairpin()
                                    \!
                                    ]

                                    r32

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 9]
                                        a'''8
                                        - \accent
                                        \f
                                        [
                                        \<

                                        c'''8

                                        g''8
                                        ]

                                        b'''8
                                        - \accent
                                        [

                                        cs'''8

                                        d''8
                                        \fff

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 7/10
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 10]
                                    c''16
                                    \ff
                                    ]
                                    \>

                                    fs'''16
                                    - \accent
                                    [

                                    f'''16

                                    g''16
                                    \mp
                                    ]

                                    b'''16
                                    - \accent
                                    \fff
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    c'''16

                                    e''16
                                    ]

                                    b'''16
                                    - \accent
                                    [

                                    d'''16

                                    a''16
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 11]
                                    c''2
                                    ~

                                    c''8
                                    \!

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piccolo voice measure 12]
                                            fs'32
                                            - \staccatissimo
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mp
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            fs'32
                                            - \staccatissimo

                                            fs'32
                                            - \staccatissimo
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            r32

                                            c'32
                                            - \staccatissimo
                                            [

                                            c'32
                                            - \staccatissimo

                                        }

                                        \times 2/3
                                        {

                                            c'32
                                            - \staccatissimo

                                            c'32
                                            - \staccatissimo
                                            ]

                                            fs''32
                                            - \staccatissimo
                                            [

                                        }

                                        \times 2/3
                                        {

                                            fs''32
                                            - \staccatissimo

                                            fs''32
                                            - \staccatissimo
                                            ]

                                            r32

                                        }

                                        r32

                                        fs''32
                                        - \staccatissimo
                                        [

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 17/24
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 13]
                                        fs''16
                                        - \staccatissimo
                                        ]

                                        af'''16
                                        - \staccatissimo
                                        [

                                        af'''16
                                        - \staccatissimo

                                    }

                                    \times 2/3
                                    {

                                        af'''16
                                        - \staccatissimo
                                        ]

                                        bf'''16
                                        - \staccatissimo

                                        r16

                                    }

                                    \times 2/3
                                    {

                                        r16

                                        bf'''16
                                        - \staccatissimo
                                        [

                                        bf'''16
                                        - \staccatissimo
                                        ]

                                    }

                                    \times 2/3
                                    {

                                        a''16
                                        - \staccatissimo
                                        [

                                        a''16
                                        - \staccatissimo

                                        a''16
                                        - \staccatissimo
                                        ]

                                    }

                                    \times 2/3
                                    {

                                        af'''16
                                        - \staccatissimo
                                        [

                                        af'''16
                                        - \staccatissimo

                                        af'''16
                                        - \staccatissimo
                                        ]

                                    }

                                    \times 2/3
                                    {

                                        r16

                                        r16

                                        af'''16
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \ff

                                    }

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 14]
                                cs''8
                                - \accent
                                \mf
                                [
                                \<

                                ef''8

                                a''8

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    g''8

                                    af'8
                                    ]

                                    b'8
                                    - \accent
                                    [

                                    fs'8
                                    ]

                                    a'8
                                    - \accent
                                    [

                                    cs''8
                                    \ff

                                    c'''8
                                    \f
                                    \p
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 16]
                                    af'''8
                                    - \staccatissimo
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \ff
                                      %! SPANNER_START
                                      %! baca.PiecewiseCommand._call(2)
                                      %! baca.hairpin()
                                    \>

                                    f'''8
                                    - \staccatissimo

                                    r8

                                    r8

                                    f'''8
                                    - \staccatissimo
                                    [

                                    f'''8
                                    - \staccatissimo

                                    f'''8
                                    - \staccatissimo

                                    f'''8
                                    - \staccatissimo

                                    f'''8
                                    - \staccatissimo
                                    ]

                                    d'''8
                                    - \staccatissimo
                                      %! SPANNER_STOP
                                      %! baca.PiecewiseCommand._call(3)
                                      %! baca.hairpin()
                                    \mf

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 17]
                                        bf'''8
                                        - \accent
                                        \f
                                        [
                                        \>

                                        ef'''8

                                        b''8

                                        cs''8
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
                                        % [piccolo voice measure 18]
                                        g'''2
                                        - \accent

                                        d'''2

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/8
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 19]
                                        ef''8

                                        fs'''8
                                        - \accent
                                        [

                                        cs'''8

                                        fs''8

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 20]
                                    ef''8

                                    d''8
                                    \mp
                                    ]

                                    g'''8
                                    - \accent
                                    \pp
                                    [
                                    \<

                                    cs'''8

                                    b''8

                                    e''8

                                    cs''8
                                    \mf
                                    ]

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 11/10
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 21]
                                        d'''64
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \fff
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        r64

                                        r64

                                        d'''64
                                        - \staccatissimo

                                        g''64
                                        - \staccatissimo
                                        [

                                    }

                                    \times 4/5
                                    {

                                        g''64
                                        - \staccatissimo

                                        g''64
                                        - \staccatissimo
                                        ]

                                        c'64
                                        - \staccatissimo
                                        [

                                        c'64
                                        - \staccatissimo

                                        c'64
                                        - \staccatissimo
                                        ]

                                    }

                                    r64

                                    r64

                                    c'64
                                    - \staccatissimo
                                    [

                                    c'64
                                    - \staccatissimo
                                    ]

                                    af'64
                                    - \staccatissimo
                                    [

                                    af'64
                                    - \staccatissimo

                                    af'64
                                    - \staccatissimo

                                    af'64
                                    - \staccatissimo

                                    af'64
                                    - \staccatissimo
                                    ]

                                    r64

                                    e'64
                                    - \staccatissimo
                                    [

                                    e'64
                                    - \staccatissimo

                                }

                                \times 2/3
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 22]
                                        e'16
                                        - \staccatissimo
                                        ]

                                        af''16
                                        - \staccatissimo
                                        [

                                        af''16
                                        - \staccatissimo

                                    }

                                    \times 2/3
                                    {

                                        af''16
                                        - \staccatissimo
                                        ]

                                        cs''16
                                        - \staccatissimo
                                        [

                                        cs''16
                                        - \staccatissimo
                                        ]

                                    }

                                    \times 2/3
                                    {

                                        r16

                                        cs''16
                                        - \staccatissimo
                                        [

                                        cs''16
                                        - \staccatissimo

                                    }

                                    \times 2/3
                                    {

                                        cs''16
                                        - \staccatissimo

                                        cs''16
                                        - \staccatissimo
                                        ]

                                        e'16
                                        - \staccatissimo
                                        [

                                    }

                                    \times 2/3
                                    {

                                        e'16
                                        - \staccatissimo

                                        e'16
                                        - \staccatissimo

                                        e'16
                                        - \staccatissimo
                                        ]

                                    }

                                    \times 2/3
                                    {

                                        ef''16
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.hairpin()
                                        \pp

                                        r16

                                        r16

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 23]
                                        c''4
                                        - \accent
                                        \ff
                                        \>

                                        f''4

                                        b''4

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 24]
                                    a'2
                                    - \accent
                                    ~

                                    a'16
                                    [

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 4/5
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 25]
                                        d''16

                                        b''16
                                        ]

                                        bf'16
                                        - \accent
                                        [

                                        ef''16

                                        a''16

                                        g'''16
                                        ]

                                        c''16
                                        - \accent
                                        [

                                        a''16
                                        ]

                                        af'16
                                        - \accent
                                        [

                                        cs''16
                                        \p
                                        ]

                                    }

                                }

                                \times 2/3
                                {

                                    \times 2/3
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 26]
                                        ef''16
                                        - \staccatissimo
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \ffff
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        ef''16
                                        - \staccatissimo

                                        ef''16
                                        - \staccatissimo

                                    }

                                    \times 2/3
                                    {

                                        ef''16
                                        - \staccatissimo
                                        ]

                                        r16

                                        ef''16
                                        - \staccatissimo

                                    }

                                    \times 2/3
                                    {

                                        b''16
                                        - \staccatissimo
                                        [

                                        b''16
                                        - \staccatissimo

                                        b''16
                                        - \staccatissimo

                                    }

                                    \times 2/3
                                    {

                                        b''16
                                        - \staccatissimo

                                        b''16
                                        - \staccatissimo
                                        ]

                                        cs''16
                                        - \staccatissimo
                                        [

                                    }

                                    \times 2/3
                                    {

                                        cs''16
                                        - \staccatissimo

                                        cs''16
                                        - \staccatissimo
                                        ]

                                        r16

                                    }

                                    \times 2/3
                                    {

                                        cs''16
                                        - \staccatissimo

                                        fs'16
                                        - \staccatissimo
                                        [

                                        fs'16
                                        - \staccatissimo

                                    }

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 27]
                                    fs'32
                                    - \staccatissimo

                                    fs'32
                                    - \staccatissimo

                                    fs'32
                                    - \staccatissimo
                                    ]

                                }

                                \times 2/3
                                {

                                    r32

                                    fs'32
                                    - \staccatissimo

                                    c'''32
                                    - \staccatissimo
                                    [

                                }

                                \times 2/3
                                {

                                    c'''32
                                    - \staccatissimo

                                    c'''32
                                    - \staccatissimo

                                    c'''32
                                    - \staccatissimo

                                }

                                \times 2/3
                                {

                                    c'''32
                                    - \staccatissimo

                                    c'''32
                                    - \staccatissimo
                                    ]

                                    r32

                                }

                                \times 2/3
                                {

                                    r32

                                    a'32
                                    - \staccatissimo
                                    [

                                    a'32
                                    - \staccatissimo

                                }

                                \times 2/3
                                {

                                    a'32
                                    - \staccatissimo

                                    a'32
                                    - \staccatissimo

                                    a'32
                                    - \staccatissimo

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 2/3
                                    {

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [piccolo voice measure 28]
                                            a'16
                                            - \staccatissimo
                                            ]

                                            g''16
                                            - \staccatissimo

                                            r16

                                        }

                                        \times 2/3
                                        {

                                            r16

                                            g''16
                                            - \staccatissimo
                                            [

                                            g''16
                                            - \staccatissimo

                                        }

                                        \times 2/3
                                        {

                                            g''16
                                            - \staccatissimo

                                            g''16
                                            - \staccatissimo
                                            ]

                                            fs''16
                                            - \staccatissimo

                                        }

                                        \times 2/3
                                        {

                                            r16

                                            r16

                                            fs''16
                                            - \staccatissimo
                                            [

                                        }

                                        \times 2/3
                                        {

                                            fs''16
                                            - \staccatissimo

                                            fs''16
                                            - \staccatissimo

                                            fs''16
                                            - \staccatissimo
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            g'16
                                            - \staccatissimo
                                            [

                                            g'16
                                            - \staccatissimo

                                            g'16
                                            - \staccatissimo
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(3)
                                              %! baca.hairpin()
                                            \pppp
                                            ]

                                        }

                                    }

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