\version "2.18.2"



global = {
  \key es \major
  \time 4/4
}

#(set-global-staff-size 18)



soprano = \relative c'' {
  \global
  bes4. as8 g4 f | es f g es | f8 g as f g4. f8 | es4 d es2 |
  bes'4. as8 g4 f | es f g es | f8 g as f g4. f8 | es4 d es2 |
  f4. g8 as4 f | g4. as8 bes4 f | g8 a bes4 c8 d es4 | d c bes2 |
  bes4. as8 g4 f | es f g es | c'8 c c c bes4. as8 | g4 f es2   
}

alto = \relative c'' {
  \global
  g4. f8 es4 d | c d es es | d8 es f d es4. c8 | bes4 bes bes2 |
  g'4. f8 es4 d | c d es es | d8 es f d es4. c8 | bes4 bes bes2 |
  d4. es8 f4 d | es4. es8 es4 d | es8 es f4 g8 f es4 | f4 f8( es) d2 |
  g4. f8 es4 d | c d es es | es8 es es es es4. f8 | es4 d es2
}

tenor = \relative c' {
  \global
  bes4. bes8 bes4 bes | g  bes bes g | bes8 bes bes bes bes4 as | g f g2 |
  bes4. bes8 bes4 bes | g  bes bes g | bes8 bes bes bes bes4 as | g f g2 |
  bes4. bes8 bes4 bes | bes4. bes8 bes4 bes | bes8 bes bes4 bes8 bes c4 | bes a bes2 |
  bes4. bes8 bes4 bes | g bes bes g | as8 as as as bes4. c8 | bes4 as g2
}

bass = \relative c {
  \global
  es4. d8 es4 bes | c bes es es | bes8 bes bes bes es4 as, | bes bes es2 |
  es4. d8 es4 bes | c bes es es | bes8 bes bes bes es4 as, | bes bes es2 |
  bes4. bes8 d4 bes | es4. f8 g4 bes | es,8 es d4 es8 d c4 | f f bes,2 |
  es4. d8 es4 bes | c bes es es | as,8 as as as g4. as8 | bes4 bes es2
}



choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Staff = "tb" \with {
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
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