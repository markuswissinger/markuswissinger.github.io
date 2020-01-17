\version "2.18.2"

global = {
  \key d \major
  \time 4/4
}


#(set-global-staff-size 18)

toene = \absolute {
  \global
 
}

soprano = \relative c' {
  \global
  r2 r4 r8 cis8 | cis4 r4 r4 r8 e8 |
  e2 r2 | r4 r8 a,8 a4 r8 fis'8 | fis2 e |
  \repeat volta 2 {
    \time 2/4 a,8. a16 a8. a16 | g'4 g | a,8 cis e g | fis4 fis |
    a,8 d fis a | g8. g16 g4 | fis8. d16 e8. fis16 | d8 r8 d4 |
  }
  \repeat volta 2 {
    b'4 b | d,8 d g b | a4 a | d,8 d fis a |
    g8. fis16 g8. fis16 | g8. e16 e4 | e8. fis16 g8. e16 | a4 fis8 r8 |
    g8. fis16 g8. fis16 | g8. e16 e4 | e8. fis16 g8. e16 | d4 r4 |
  }
  \repeat volta 2 {
    d8. e16 d8. e16 | d8. e16 d8. e16 | d8. e16 fis8. g16 |
    a8. b16 a4 | g8. a16 g4 | fis8. g16 fis4 | e8. fis16 e8. fis16 |
  }
  \alternative {
    { d8. d16 d8. d16 | }
    { d8 r8 d8 r8 | }
  }
  \repeat volta 2 {
    a8. a16 a8. a16 | g'4 g | a,8 cis e g | fis4 fis |
    a,8 d fis a | g8. g16 g4 | fis8. d16 e8. fis16 | d8 r8 d4 |
  }
  \repeat volta 2 {
    b'4 b | d,8 d g b | a4 a | d,8 d fis a |
    g8. fis16 g8. fis16 | g8. e16 e4 | e8. fis16 g8. e16 | a4 fis8 r8 |
    g8. fis16 g8. fis16 | g8. e16 e4 | e8. fis16 g8. e16 | 
  }
  \alternative {
    { d4 r4 | }
    { 
      d4 d8. fis16 | a2~ | a4 d,8. fis16 | a2~ | a4 d,8. fis16 | a2~ | a4 a8. a16 |
      a4 a | a a | \time 4/4 d r r2 | r d,4.d8 | d2  g2 | fis1( | e1) | d2 r | 
    }
  } 
}

alto = \relative c'' {
  \global
  
    
}

tenor = \relative c' {
  \global
 
}

bass = \relative c {
  \global
 
}



choirPart = \new ChoirStaff <<
  \new Staff = "s" \with {
    instrumentName = \markup \center-column { "Sopran" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
  >>
  \new Staff = "a" \with {
    instrumentName = \markup \center-column { "Alt" }
  } <<
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

miditempo = 110

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