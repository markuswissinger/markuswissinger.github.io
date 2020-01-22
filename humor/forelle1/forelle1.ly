\version "2.18.2"



global = {
  \key bes \major
  \time 2/4
  \partial 8
}

#(set-global-staff-size 18)

toene = \absolute {
  \global
  f' f' f' f
}

soprano = \relative c' {
  \global
     f8 | bes bes d d | bes4 f8 f | f8. f16 c'16( bes) a( g) |
     f4 r8 f8 | bes bes d d | bes4 f8 bes | a g16( a) bes8 e, |
     f4 r8 f8 | a a bes16( a) g( a) | bes4 f8 bes | a8 a a16( es') c( a) |
     bes4. bes8 | g g g bes | bes4 f8 f | f8. f16 c'8 a | bes4. bes8 |
     a16( g) g8 g16( bes) a( c) | bes4 f8 f | f8. f16 c'8 a | bes4.
}

alto = \relative c' {
  \global
   f8 | d d f f | f4 d8 d | es8. es16  c8 es |
   es4 r8 f8 | d d f f | f4 d8 f | f f e c |
   c4 r8 f8 | es es es es | d4 d8 f | es es f es |
   d4. d8 | es es es g | f4 f8 f | c8. c16 es8 es | d4. d8 |
   es8 es es g | f4 f8 f c8. c16 es8 es | d4.
}

tenor = \relative c' {
  \global
  f8 | f f bes bes | d4 bes8 bes | c8. c16 a8 a |
  c4 r8 f, | f f bes bes | d4 bes8 d | c8 c g bes |
  a4 r8 f8 | c' c c c | bes4 bes8 d | c c c a16( c) |
  bes4. bes8 | bes bes bes bes | d4 d8 bes | a8. a16 a8 c | bes4. bes8 |
  bes8 bes bes bes | d4 d8 bes | a8. a16 a8 c | bes4.
}

bass = \relative c {
  \global
  f8 | bes, bes bes bes | bes'4 bes 8 bes | f8. f16 f8 f |
  f4 r8 f | bes, bes bes bes | bes'4 bes8 bes | c c, c c | 
  f4 r8 f | f f f f | bes,4 bes8 bes | f' f f f |
  bes,4. bes8 | es es es es | bes4 bes8 d | f8. f16 f8 f | bes,4. bes8 |
  es8 es es es | bes4 bes8 d | f8. f16 f8 f | bes,4.
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
    <<
      \new Staff
      \new Voice {
        \bass
      }
    >>
    \midi { \tempo 4 = \miditempo }
  }
}