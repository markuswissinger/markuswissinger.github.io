\version "2.18.2"



global = {
  \key bes \major
  \time 2/4
  \partial 8
  
}

#(set-global-staff-size 18)

toene = \absolute {
  \global
  g g' d' d'
}

soprano = \relative c' {
  \global
  f8 | bes16( a) bes( c) d8  d | bes4 f8 f | f8. d'16 c( bes) a( g) |
  f16.( es32 d8) r8 f | bes16( a) bes( c) d8  d | bes4 f8. d'16 | c8. d16 c16( bes) a( g) |
  f8. a32 g32 f8 r8 | bes4 d | f d | r2 |
  r4 r8 f, | a a a a | bes4 f8 bes | a a a a |
  bes4. bes8 | g8 g g bes | bes4 f8 f | f f c' a |
  bes4. bes8 | a16( g) g8 g16( bes) a( c) | bes4 f8 f | f f c' a |
  bes4 r | d8 bes16 d f4 | d8 bes16 d f4 | d8 bes16 bes bes8 d | 
  c2 | d8 bes16 d f4 | d8 bes16 d f4 | d8 bes16 bes bes8 bes | bes2 |
}

alto = \relative c' {
  \global
  r8 | d d d r | d d d r | f8. bes16 a( g) f( es) |
}

tenor = \relative c'' {
  \global
 
 
}

bass = \relative c' {
  \global
 
}



choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Staff = "t" \with {
    instrumentName = \markup \center-column { "Tenor" }
  } <<
    \new Voice = "tenor" { \voiceOne \tenor }
  >>
  \new Staff = "b" \with {
    instrumentName = \markup \center-column { "Bass" }
  } <<
    \clef bass
    \new Voice = "bass" { \voiceTwo \bass }
  >>
>>

miditempo = 100

\score {
  <<
    \choirPart
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  <<
    \choirPart
  >>
  \midi {
    \tempo 4=\miditempo
  }
}

\book {
  \bookOutputSuffix "Toene"
  \score {
    <<
      \new Staff
      \new Voice {
        \toene
      }
    >>
    \midi { \tempo 4 = \miditempo }
  }
}

\book {
  \bookOutputSuffix "Sopran"
  \score {
    \unfoldRepeats
    <<
      \new Staff
      \new Voice {
        \soprano
      }
    >>
    \midi { \tempo 4 = \miditempo }
  }
}

\book {
  \bookOutputSuffix "Alt"
  \score {
    \unfoldRepeats
    <<
      \new Staff
      \new Voice {
        \alto
      }
    >>
    \midi { \tempo 4 = \miditempo }
  }
}

\book {
  \bookOutputSuffix "Tenor"
  \score {
    \unfoldRepeats
    <<
      \new Staff
      \new Voice {
        \tenor
      }
    >>
    \midi { \tempo 4 = \miditempo }
  }
}

\book {
  \bookOutputSuffix "Bass"
  \score {
    \unfoldRepeats
    <<
      \new Staff
      \new Voice {
        \bass
      }
    >>
    \midi { \tempo 4 = \miditempo }
  }
}