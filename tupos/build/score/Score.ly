\version "2.23.81"
\language "english" %! LilyPondFile

\include "abjad.ily"
\include "../score_stylesheet.ily"                                      %! LilyPondFile
%{ \include "abjad.ily" %! LilyPondFile %}

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
    <<
        { \include "layout.ly" }
    	{
            \include "01.ly"
            \include "02.ly"
            \include "03.ly"
            \include "04.ly"
            \include "05.ly"
    	}
    >>
%{ \midi{} %}
}
