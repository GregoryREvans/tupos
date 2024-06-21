        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=80
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2
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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 2/5
                s1 * 2/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/6
                s1 * 2/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 6/8
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/20
                s1 * 9/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                \time 8/16
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 6/12
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/10
                s1 * 2/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 2/8
                s1 * 1/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 16/32
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 11/24
                s1 * 11/24

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/5
                s1 * 4/5

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 4/6
                s1 * 2/3

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                \time 9/16
                s1 * 9/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                \time 8/16
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/10
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                \time 7/16
                s1 * 7/16

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 5/12
                s1 * 5/12

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 3/8
                s1 * 3/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 9/20
                s1 * 9/20

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                #(ly:expect-warning "strange time signature found")
                  %! scaling time signatures
                \time 10/24
                s1 * 5/12

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
                \time 2/8
                s1 * 1/4

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 1]
                                d''16
                                - \accent
                                \p
                                [
                                (
                                - \tweak stencil #constante-hairpin
                                \<

                                bf''16

                                ef'''16
                                \!
                                )
                                ]

                                c''16
                                - \accent
                                \mp
                                [
                                (
                                - \tweak stencil #constante-hairpin
                                \<

                                b''16

                                cs'''16

                                g'''16
                                \!
                                )
                                ]

                                f''16
                                - \accent
                                \mf
                                [
                                (
                                - \tweak stencil #constante-hairpin
                                \<

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 2]
                                    fs''8

                                    a''8

                                    e'''8
                                    \!
                                    )
                                    ]

                                    af'8
                                    - \accent
                                    \f
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    bf'8

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \times 8/9
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 3]
                                        d''16

                                        a''16

                                        c'''16

                                        cs'''16
                                        \!
                                        )
                                        ]

                                        b'16
                                        - \accent
                                        \mp
                                        [
                                        (
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        f''16

                                        g''16

                                        fs'''16
                                        \!
                                        )
                                        ]

                                        ef''16
                                        - \accent
                                        \pp
                                        [
                                        (
                                        - \tweak stencil #constante-hairpin
                                        \<

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 10/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 4]
                                    af''16

                                    e'''16
                                    \!
                                    )
                                    ]

                                    ef''16
                                    - \accent
                                    \p
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    b''16

                                    e'''16
                                    \!
                                    )
                                    ]

                                    cs''16
                                    - \accent
                                    \ff
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    c'''16

                                    d'''16
                                    \!
                                    )
                                    ]

                                    af'16
                                    - \accent
                                    \p
                                    [
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<

                                    fs''16

                                    g''16
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 5]
                                    bf''2

                                    f'''2
                                    \f
                                    )

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 6]
                                    a'8
                                    - \accent
                                    \p
                                    [
                                    (
                                    \<

                                    c''8

                                    af''8

                                    cs'''8
                                    \f
                                    )
                                    ]

                                    b'8
                                    - \accent
                                    \pp
                                    [
                                    (
                                    \<

                                    bf''8

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 7]
                                    c'''16

                                    fs'''16
                                    \f
                                    )
                                    ]

                                    cs''16
                                    - \accent
                                    \mp
                                    [
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<

                                    d''16

                                    f''16

                                    c'''16

                                    g'''16
                                    \ff
                                    )
                                    ]

                                    a'16
                                    - \accent
                                    \ppp
                                    [
                                    (
                                    \<

                                    cs''16

                                    af''16
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 8]
                                    b''2
                                    ~

                                    b''16

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 9]
                                    c'''4

                                    f'''4
                                    \ff
                                    )

                                    b'4
                                    - \accent
                                    \fff
                                    (
                                    \>

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 10]
                                    cs''16
                                    [

                                    c'''16

                                    fs'''16
                                    \f
                                    )
                                    ]

                                    b'16
                                    - \accent
                                    \fff
                                    [
                                    (
                                    \>

                                    g''16

                                    a''16

                                    f'''16
                                    \mp
                                    )
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 11]
                                    bf'8
                                    - \accent
                                    \fff
                                    [
                                    (
                                    \>

                                    e''8

                                    ef'''8

                                    f'''8
                                    \pp
                                    )
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 12]
                                af'8
                                - \accent
                                \f
                                [
                                (
                                \>

                                fs''8
                                )

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 13]
                                g''8
                                - \tenuto

                                bf''8
                                - \tenuto

                                f'''8
                                - \tenuto

                                fs'''8
                                - \tenuto
                                \ppp
                                ]

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/14
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 14]
                                        d''8
                                        - \accent
                                        \p
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        a''8
                                        - \tenuto

                                        c'''8
                                        - \tenuto
                                        \!
                                        ]

                                        a'8
                                        - \accent
                                        \p
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        fs''8
                                        - \tenuto

                                        f'''8
                                        - \tenuto

                                        g'''8
                                        - \tenuto
                                        \f
                                        ]

                                    }

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    c''2
                                    - \accent
                                    \fff
                                    \>

                                    bf''2
                                    - \tenuto

                                    e'''2
                                    - \tenuto

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 16]
                                    fs'''1
                                    - \tenuto
                                    \f

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 17]
                                    f''8
                                    - \accent
                                    \mp
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    cs'''8
                                    \!
                                    )
                                    ]

                                    b'8
                                    - \accent
                                    \p
                                    [
                                    (
                                    \<

                                    c''8

                                    \times 2/3
                                    {

                                        ef''16

                                        bf''16

                                        d'''16

                                        g'''16
                                        \f
                                        )
                                        ]

                                        f''16
                                        - \accent
                                        \fff
                                        [
                                        (
                                        \>

                                        c'''16
                                        ]

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 18]
                                    ef'''4

                                    g'''4
                                    \mp
                                    )

                                    e''4
                                    - \accent
                                    \mf
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    \times 2/3
                                    {

                                        ef'''8
                                        [

                                        f'''8

                                        fs'''8
                                        \!
                                        )
                                        ]

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 9/8
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 19]
                                    e''4
                                    - \accent
                                    \pp
                                    (
                                    \<

                                    bf''4

                                }

                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 20]
                                        c'''8
                                        \f
                                        )

                                        b'8
                                        - \accent
                                        \fff
                                        [
                                        (
                                        \>

                                        ef''8

                                        cs'''8

                                    }

                                    d'''16

                                    f'''16
                                    \pp
                                    )
                                    ]

                                    c''16
                                    - \accent
                                    \f
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    e''16

                                    \times 2/3
                                    {

                                        d'''16
                                        \!
                                        )
                                        ]

                                        bf'16
                                        - \accent
                                        \mp
                                        [
                                        (
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        ef''16
                                        \ff
                                        )
                                        ]

                                    }

                                }

                                \times 2/3
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 21]
                                        c''''4
                                        - \accent
                                        \f
                                        (
                                        \>

                                        b'''4

                                    }

                                    cs'''16
                                    [

                                    g''16

                                    f''16
                                    \ppp
                                    )
                                    ]

                                    fs'''16
                                    - \accent
                                    \p
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    \times 2/3
                                    {

                                        a''16

                                        e''16
                                        \!
                                        )
                                        ]

                                        af'''16
                                        - \accent
                                        \mp
                                        [
                                        (
                                        - \tweak stencil #constante-hairpin
                                        \<

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 7/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 22]
                                    bf''8

                                    d''8
                                    \!
                                    )
                                    ]

                                    \times 2/3
                                    {

                                        a'''16
                                        - \accent
                                        \mf
                                        [
                                        (
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        c'''16

                                        cs''16
                                        \!
                                        )
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
                                        % [piccolo voice measure 23]
                                        b'16
                                        - \accent
                                        \f
                                        [
                                        (
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        f''16

                                        g''16

                                        fs''16

                                        ef''16

                                        af'16
                                        \!
                                        )
                                        ]

                                        e''16
                                        - \accent
                                        \mp
                                        [
                                        (
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        ef'''16

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 12/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 24]
                                    b''32

                                    e''32

                                    cs''32

                                    c''32
                                    \!
                                    )
                                    ]

                                    d''32
                                    - \accent
                                    \pp
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    af''32

                                    fs''32

                                    g'32
                                    \!
                                    )
                                    ]

                                    bf'32
                                    - \accent
                                    \p
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                    f'32
                                    \!
                                    )
                                    ]

                                    a'32
                                    - \accent
                                    \ff
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/8
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [piccolo voice measure 25]
                                        c''16

                                        af''16

                                        cs''16

                                        b'16

                                        bf'16
                                        \!
                                        )
                                        ]

                                        c''16
                                        - \accent
                                        \p
                                        [
                                        (
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        fs''16

                                        cs''16
                                        \f
                                        )
                                        ]

                                    }

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 26]
                                    d''8
                                    - \accent
                                    \p
                                    [
                                    (
                                    \<

                                    f''8

                                    c'''8

                                    g''8

                                    a'8
                                    \f
                                    )
                                    ]

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 27]
                                    cs'''16
                                    - \accent
                                    \pp
                                    [
                                    (
                                    \<

                                    af''16
                                    \f
                                    )
                                    ]

                                    b'''16
                                    - \accent
                                    \mp
                                    [
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<

                                    c'''16

                                    f''16
                                    \ff
                                    )
                                    ]

                                    b'''16
                                    - \accent
                                    \ppp
                                    [
                                    (
                                    \<

                                    cs'''16

                                    c'''16

                                    fs''16
                                    \ff
                                    )
                                    ]

                                }

                                \times 8/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 28]
                                    b'''32
                                    - \accent
                                    \fff
                                    [
                                    (
                                    \>

                                    g'''32

                                    a''32

                                    f''32
                                    \f
                                    )
                                    ]

                                    bf'''32
                                    - \accent
                                    \fff
                                    [
                                    (
                                    \>

                                    e'''32

                                    ef'''32

                                    f''32
                                    \mp
                                    )
                                    ]

                                    af'''32
                                    - \accent
                                    \fff
                                    [
                                    (
                                    \>

                                    fs'''32

                                    g''32
                                    \pp
                                    )
                                    ]

                                }

                            }

                        }

                    }

                >>

            }

        >>
