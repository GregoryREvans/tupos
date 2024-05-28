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
                                [

                                bf''16

                                ef'''16
                                ]

                                c''16
                                - \accent
                                [

                                b''16

                                cs'''16

                                g'''16
                                ]

                                f''16
                                - \accent
                                [

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 6/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 2]
                                    fs''8

                                    a''8

                                    e'''8
                                    ]

                                    af'8
                                    - \accent
                                    [

                                    bf'8

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 32/45
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 3]
                                    d''16

                                    a''16

                                    c'''16

                                    cs'''16
                                    ]

                                    b'16
                                    - \accent
                                    [

                                    f''16

                                    g''16

                                    fs'''16
                                    ]

                                    ef''16
                                    - \accent
                                    [

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 10/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 4]
                                    af''16

                                    e'''16
                                    ]

                                    ef''16
                                    - \accent
                                    [

                                    b''16

                                    e'''16
                                    ]

                                    cs''16
                                    - \accent
                                    [

                                    c'''16

                                    d'''16
                                    ]

                                    af'16
                                    - \accent
                                    [

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

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 6]
                                    a'8
                                    - \accent
                                    [

                                    c''8

                                    af''8

                                    cs'''8
                                    ]

                                    b'8
                                    - \accent
                                    [

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
                                    ]

                                    cs''16
                                    - \accent
                                    [

                                    d''16

                                    f''16

                                    c'''16

                                    g'''16
                                    ]

                                    a'16
                                    - \accent
                                    [

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

                                    b'4
                                    - \accent

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
                                    ]

                                    b'16
                                    - \accent
                                    [

                                    g''16

                                    a''16

                                    f'''16
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
                                    [

                                    e''8

                                    ef'''8

                                    f'''8
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 12]
                                af'8
                                - \accent
                                [

                                fs''8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [piccolo voice measure 13]
                                g''8

                                bf''8

                                f'''8

                                fs'''8
                                ]

                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak edge-height #'(0.7 . 0)
                                \times 22/21
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 14]
                                    d''16
                                    - \accent
                                    [

                                    a''16

                                    c'''16
                                    ]

                                    a'16
                                    - \accent
                                    [

                                    fs''16

                                    f'''16

                                    g'''16
                                    ]

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 15]
                                    c''2
                                    - \accent

                                    bf''2

                                    e'''2

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 16]
                                    fs'''1

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 17]
                                    f''8
                                    - \accent
                                    [

                                    cs'''8
                                    ]

                                    b'8
                                    - \accent
                                    [

                                    c''8

                                    \times 2/3
                                    {

                                        ef''16

                                        bf''16

                                        d'''16

                                        g'''16
                                        ]

                                        f''16
                                        - \accent
                                        [

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

                                    e''4
                                    - \accent

                                    \times 2/3
                                    {

                                        ef'''8
                                        [

                                        f'''8

                                        fs'''8
                                        ]

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 9/16
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 19]
                                    e''2
                                    - \accent

                                    bf''2

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

                                        b'8
                                        - \accent
                                        [

                                        ef''8

                                        cs'''8

                                    }

                                    d'''16

                                    f'''16
                                    ]

                                    c''16
                                    - \accent
                                    [

                                    e''16

                                    \times 2/3
                                    {

                                        d'''16
                                        ]

                                        bf'16
                                        - \accent
                                        [

                                        ef''16
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

                                        b'''4

                                    }

                                    cs'''16
                                    [

                                    g''16

                                    f''16
                                    ]

                                    fs'''16
                                    - \accent
                                    [

                                    \times 2/3
                                    {

                                        a''16

                                        e''16
                                        ]

                                        af'''16
                                        - \accent

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 7/12
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 22]
                                    bf''4

                                    d''4

                                    \times 2/3
                                    {

                                        a'''8
                                        - \accent
                                        [

                                        c'''8

                                        cs''8
                                        ]

                                    }

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak edge-height #'(0.7 . 0)
                                \times 5/6
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 23]
                                    b'16
                                    - \accent
                                    [

                                    f''16

                                    g''16

                                    fs''16

                                    ef''16

                                    af'16
                                    ]

                                    e''16
                                    - \accent
                                    [

                                    ef'''16

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
                                    ]

                                    d''32
                                    - \accent
                                    [

                                    af''32

                                    fs''32

                                    g'32
                                    ]

                                    bf'32
                                    - \accent
                                    [

                                    f'32
                                    ]

                                    a'32
                                    - \accent
                                    [

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak edge-height #'(0.7 . 0)
                                \times 9/10
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 25]
                                    c''16

                                    af''16

                                    cs''16

                                    b'16

                                    bf'16
                                    ]

                                    c''16
                                    - \accent
                                    [

                                    fs''16

                                    cs''16
                                    ]

                                }

                                \tweak edge-height #'(0.7 . 0)
                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 26]
                                    d''8
                                    - \accent
                                    [

                                    f''8

                                    c'''8

                                    g''8

                                    a'8
                                    ]

                                }

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 27]
                                    cs'''16
                                    - \accent
                                    [

                                    af''16
                                    ]

                                    b'''16
                                    - \accent
                                    [

                                    c'''16

                                    f''16
                                    ]

                                    b'''16
                                    - \accent
                                    [

                                    cs'''16

                                    c'''16

                                    fs''16
                                    ]

                                }

                                \times 8/11
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [piccolo voice measure 28]
                                    b'''32
                                    - \accent
                                    [

                                    g'''32

                                    a''32

                                    f''32
                                    ]

                                    bf'''32
                                    - \accent
                                    [

                                    e'''32

                                    ef'''32

                                    f''32
                                    ]

                                    af'''32
                                    - \accent
                                    [

                                    fs'''32

                                    g''32
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