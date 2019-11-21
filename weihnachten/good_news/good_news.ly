\version "2.18.2"



global = {
  \key a \major
  \time 4/4
  \partial 4
}

#(set-global-staff-size 18)



soprano = \relative c'' {
  \global
  cis4 | 
  cis2.~ cis8. cis16 | 
  cis8 cis b4 a8 a cis4 | 
  b2.~ b8. a16 | 
  cis8 cis b4 a8 a cis4 |
  cis2.~ cis8. cis16 | 
  cis8 cis b4 a8 a a b | 
  cis cis cis cis b b4 b8 | 
  a2.~ a8 r8 |
  
  r2 r8 a4 fis8 | 
  e4 fis e fis8 fis | 
  a a cis4 a2~ | 
  a1~ | a2. fis8 fis | e4 fis e fis8 fis | 
  a a cis4 a d8 d | 
  cis cis cis cis b b4 b8 | 
  a2.
  
  
}

alto = \relative c'' {
  \global
  a4 |
  a2.~ a8. a16 |
  a8 a gis4 a8 a a4 |
  gis2.~ gis8. a16 |
  a8 a gis4 a8 a a4 |
  a2.~ a8. a16 |
  a8 a gis4 a8 a a a |
  a a a a gis gis4 gis8 | 
  e2.~ e8 r8 |
  
  r1 | r1 | 
  r2 r4 r8 fis8 |
  a4 fis e d8 d |
  cis cis b4 a d8 d |
  cis4 d cis d8 d |
  cis cis e4 cis fis8 fis |
  e e e e d d4 d8 | 
  a2.
}

tenor = \relative c' {
  \global
  e4 |
  e2.~ e8. e16 |
  e8 e d4 cis8 cis e4 |
  d2.~ d8. cis16 |
  e8 e d4 cis8 cis e4 |
  e2.~ e8. e16 |
  e8 e d4 cis8 cis fis fis |
  e e e e d d4 d8 | 
  cis2.~ cis8 r8 |
  
  r2 r8 a4 fis8 | 
  e4 fis e fis8 fis | 
  a a cis4 a2~ | 
  a1~ | a2. a8 a | a4 a a a8 a | 
  a a a4 a a8 a | 
  a a a a gis gis4 gis8 | 
  a2.
  
}

bass = \relative c' {
  \global
  a4 |
  a2.~ a8. a16 |
  a8 a a4 a8 a a4 |
  e2.~ e8. e16 |
  e8 e e4 a8 a a4 |
  a2.~ a8. a16 |
  e8 e e4 fis8 fis d d |
  e e e e e e4 e8 | 
  a,2.~ a8 r8 |
  
  r1 | r1 | 
  r2 r4 r8 fis'8 |
  a4 fis e d8 d |
  cis cis b4 a a8 a |
  a4 a a a8 a |
  a a a4 a d8 d |
  e e e e e e4 e8 | 
  a,2.
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

miditempo = 120

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