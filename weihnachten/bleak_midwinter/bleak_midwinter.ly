\version "2.18.2"



global = {
  \key f \major
  \time 4/4
}

#(set-global-staff-size 18)

toene = \absolute {
  \global
  f2
  c'2
  f'2
  a'2
}

soprano = \relative c'' {
  \global
  a4. bes8 c4 a | g4.~ g8 f4 r4 |  g4. a8 g4 d | g2. r4 | 
  a4. bes8 c4 a | g4.~ g8 f4 r4 | g a g4. f8 | f2. r4 |
  bes4. a8 bes4 c | d d a r | c a g f | e2. r4 | 
  a4. bes8 c4 a | g2 f4 r4 | g( a) g4.( f8) | f2.
}

alto = \relative c' {
  \global
  f4. f8 f4 c | d4. d8 d4 r | d4. d8 d4 c | bes2. r4 |
  c4. f8 f4 c | d4. d8 d4 r | f f e4. f8 | f2. r4 |
  f4. f8 f4 es | d d f r | f e d d | c2. r4 |
  c4. f8 f4 c | d2 d4 r | f2 e4. f8 | f2.
}

tenor = \relative c' {
  \global
  c4. c8 c4 f, | a4. a8 a4 r | g4. d8 d4 f | f2( e4) r |
  f4. c'8 c4 f, | a4. a8 a4 r | d d bes4. a8 | a2. r4 |
  bes4. c8 bes4 a | bes bes a r | f c' bes a | g2. r4 |
  f4. c'8 c4 f, | a2 a4 r | d2 bes4. a8 | a2.
}

bass = \relative c {
  \global
  f4. g8 a4 f | d4. d8 d4 r | bes4. c8 bes4 a | g2( c4) r4 |
  f4. g8 a4 f | d4. d8 d4 r | bes4 bes c4. f8 | f2. r4 |
  d4. f8 d4 c | bes bes d r | a a bes bes c2. r4 |
  f4. g8 a4 f | d2 d4 r | bes2 c4. f8 | f2.
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