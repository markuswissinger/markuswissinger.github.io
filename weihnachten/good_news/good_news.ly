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
  \tuplet 3/2 {cis8~ cis cis} b4 \tuplet 3/2 {a8~ a a} cis4 | 
  b2.~ b8. a16 | 
  \tuplet 3/2 {cis8~ cis cis} b4 \tuplet 3/2 {a8~ a a} cis4 |
  cis2.~ cis8. cis16 | 
  \tuplet 3/2 {cis8~ cis cis} b4 \tuplet 3/2 {a8~ a a} \tuplet 3/2 {a8~ a b} | 
  \tuplet 3/2 {cis~ cis cis} \tuplet 3/2 {cis~ cis cis} \tuplet 3/2 {b~ b b~ } \tuplet 3/2 {b~ b b8} | 
  a2.~ a8 r8 |
  
  r2 \tuplet 3/2 {r8~ r8 a8~} \tuplet 3/2 {a~ a fis8} | 
  e4 fis e \tuplet 3/2 {fis8~ fis fis} | 
  \tuplet 3/2 {a~ a a} cis4 a2~ | 
  a1~ | a2. \tuplet 3/2 {fis8~ fis fis} | e4 fis e \tuplet 3/2 {fis8~ fis fis} | 
  \tuplet 3/2 {a~ a a} cis4 a \tuplet 3/2 {d8~ d d} | \tuplet 3/2 {cis~ cis cis} \tuplet 3/2 {cis~ cis cis} \tuplet 3/2 {b~ b b8~} \tuplet 3/2 {b8~ b b8} | a2.
  
  
}

alto = \relative c'' {
  \global
  a4
  
  
}

tenor = \relative c' {
  \global
  e4
}

bass = \relative c' {
  \global
  a4
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