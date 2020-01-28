\version "2.18.2"



global = {
  \key g \major
  \time 4/4
  
}

#(set-global-staff-size 18)

toene = \absolute {
  \global
  g g' d' d'
}

soprano = \relative c' {
  \global
  \repeat volta 2 { 
  r2 r4 r8 d | g g b b g4 d | r2 r4 r8 d | d d a'16( g) fis( e) d4 r
  }
  r2 r4 r8 d | g( fis) fis4. a8( c) fis, | a8( g) g2 d4 |
  g8( fis) fis4. a8( c) fis, | g g g16( fis) e( fis) g8 g b16( a) g( a) | b8 b d16( c) b( c) d4 r4 |
  d2( e) | e,4 e e g | g2 d4 d | d4. d8 a'4 fis |
  g8 r a r b r r4 | d2( e) | e,4 e e8( g) fis( a) | g2 d4 d |
  \repeat volta 2 {
    e4. a8 g( fis) e( d) | d' cis c b d cis c b |
  }
  e,4. a8 g( fis) e( d) | g r b r g r r4 |
  
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    r2 r4 r8 d | g g b b g4 d | r2 r4 r8 d | d d a'16( g) fis( e) d4 r
  }
  d8 d d d d d d d | d8 d d d d d d d | d8 d d d d d d d | 
  d8 d d d d d d d | d8 d d d d d d d | g g fis fis g4 r |
  b2( c) | c,4 c c e | d2 d4 d | d4. d8 c4 a |
  b8 r fis' r g r r4 | b2( c) | c,4 c c e | d2 d4 d |
  \repeat volta 2 {
    c2. c4 | b r r2 | 
  }
  c2. c4 | b8 r d r b r r4 |
   
}

tenor = \relative c'' {
  \global
  \repeat volta 2 {
  g4 r8 d g4 r8 d | g d g b d4 r | c4 r8 a c4 r8 a | c a fis a d,4 r |
  }
  b'8 b b b b b b b | c c c c c c c c | b b b b b b b b |
  c c c c c c c c | b b c c d d c b16 a | d8 d d d d4 r4 |
  r1 | g,4 g c c | b2 b4 g | fis4. fis8 fis4 d |
  d8 r d' r d r r4 | r1 | g,4 g c c b2 b4 g |
  \repeat volta 2 {
    a2. g8( fis) | g4 r4 r2 |
  }
  a2. g8( fis) | g r g r g r r4 | 
 
}

bass = \relative c' {
  \global
  \repeat volta 2 {
    g4 r8 d g4 r8 d | g d g b d4 r | c r8 a c4 r8 a | c a fis a d,4 r |
  }
  g8 g g g g g g g | g8 g g g g g g g | g8 g g g g g g g | 
  g8 g g g g g g g | g g a a b b fis fis | g g a a b4 r |
  r1 | c,4 c c c | g'2 g,4 b | d4. d8 d4 d |
  b8 r d r g r r4 | r1 | c,4 c c c | g'2 g,4 b |
  \repeat volta 2 { 
    c2 d | g,4 r r2 |
  }
  c2 d | g,8 r g r g r r4 |
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