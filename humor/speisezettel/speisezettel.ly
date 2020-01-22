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
  
    a8. a16 a8. a16 | g'4 g | a,8 cis e g | fis4 fis |
    a,8 d fis a | g8. g16 g4 | fis8. d16 e8. fis16 | d8 r8 d4 |
  
  
    b'4 b | d,8 d g b | a4 a | d,8 d fis a |
    g8. fis16 g8. fis16 | g8. e16 e4 | e8. fis16 g8. e16 | a4 fis8 r8 |
    g8. fis16 g8. fis16 | g8. e16 e4 | e8. fis16 g8. e16 | 
  
  
      d4 d8. fis16 | a2~ | a4 d,8. fis16 | a2~ | a4 d,8. fis16 | a2~ | a4 a8. a16 |
      a4 a | a a | \time 4/4 d r r2 | r d,4.d8 | d2  g2 | fis1( | e1) | d2 r | 
    
   
}

alto = \relative c' {
  \global
  r2 r4 r8 a8 | a4 r4 r4 r8 cis8 |
  cis2 r2 | r4 r8 a8 a4 r8 d8 | d2 cis |
  \repeat volta 2 {
    \time 2/4 a8. a16 a8. a16 | e'4 e | r2 | d4 d |
    r2 | e8. e16 e4 | d8. d16 cis8. cis16 | d8 r8 d4 |
  }
  \repeat volta 2 {
    g4 g | d8 d d g | fis4 fis | d8 d d d |
    e8. dis16 e8. dis16 | e8. cis16 cis4 | cis8. d16 e8. cis16 | fis4 d8 r8 |
    e8. dis16 e8. dis16 | e8. cis16 cis4 | cis8. d16 e8. cis16 | d4 r4 |
  }
  \repeat volta 2 {
    b8 r8 b8 r8 | b8 r8 b8 r8 | b8 r8 d8 r8 | 
    d8 r8 d4 | d8 r8 d4 | d8 r8 d4 | cis8 r cis r |
  }
  \alternative {
    {a8 r8 r4 |}
    {a8 r8 r4 |}
  }
  
    \time 2/4 a8. a16 a8. a16 | e'4 e | r2 | d4 d |
    r2 | e8. e16 e4 | d8. d16 cis8. cis16 | d8 r8 d4 |
  
  
    g4 g | d8 d d g | fis4 fis | d8 d d d |
    e8. dis16 e8. dis16 | e8. cis16 cis4 | cis8. d16 e8. cis16 | fis4 d8 r8 |
    e8. dis16 e8. dis16 | e8. cis16 cis4 | cis8. d16 e8. cis16 | 
  
  
    d4 r4 | r4 e8. e16 | fis4 r4 | r4 e8. e16 | fis4 r4 | r4 e8. e16 | fis4 e8. e16 | 
    fis4 e | fis g | \time 4/4 a r r2 | r2 a,4 a | b2 d | d1( | cis) | a2 r2 | 
  
  
  
}

tenor = \relative c' {
  \global
  r2 r4 r8 e8 | e4 r4 r4 r8 g8 |
  g2 r2 | r4 r8 fis8 fis4 r8 a8 | a2 a |
  \repeat volta 2 {
    \time 2/4 a8. a16 a8. a16 | cis4 cis | r2 | a4 a |
    r2 | cis8. cis16 cis4 | a8. a16 a8. a16 | fis8 r8 d'4 |
  }
  \repeat volta 2 {
    d4 d | b8 b d d | d4 d | fis,8 fis a d |
    cis8. a16 a8. a16 | a8. a16 a4 | a8. a16 a8. a16 | a4 d8 r8 |
    cis8. a16 a8. a16 | a8. a16 a4 | a8. a16 a8. g16 | fis4 r4 |
  }
  \repeat volta 2 {
    g8 r8 g8 r8 | g8 r8 g8 r8 | g8 r8 b8 r8 | 
    cis8 r8 cis4 | b8 r8 b4 | a8 r8 a4 | g8 r g r |
  }
  \alternative {
  {fis8 r8 r4 |}
  {fis8 r8 r4 |}
  }
  
    \time 2/4 a8. a16 a8. a16 | cis4 cis | r2 | a4 a |
    r2 | cis8. cis16 cis4 | a8. a16 a8. a16 | fis8 r8 d'4 |
  
  
    d4 d | b8 b d d | d4 d | fis,8 fis a d |
    cis8. a16 a8. a16 | a8. a16 a4 | a8. a16 a8. a16 | a4 d8 r8 |
    cis8. a16 a8. a16 | a8. a16 a4 | a8. a16 a8. g16 | 
  
  
    fis4 r4 | r4 cis'8. e16 | d4 r4 | r4 cis8. e16 | d4 r4 | r4 cis8. e16 | d4 cis8. cis16 | 
    d4 cis | d e | \time 4/4 fis r r2 | r2 fis,4. fis8 | g2 g2 | a1( | g1) | fis2 r2 |
  
  
  
}

bass = \relative c {
  \global
  r4 r8 a8 a4. a8 | a4 r8 a8 a4. a8 |
  a2 r8 a8 a8. e'16 | d4 r8 a8 a4 r8 a'8 | a2 a, |
  \repeat volta 2 {
    \time 2/4 a'8. a16 a8. a16 | a4 a | r2 | d,4 d |
    r2 | a'8. a16 a4 | d,8. fis16 a8. a16 | d,8 r8 d'4 |
  }
  \repeat volta 2 {
    g,4 g | g8 g b g | d'4 d | d,8 d d fis |
    a8. a16 a8. a16 | a8. a16 a4 | a8. a16 a8. a16 | a4 d8 r8 |
    a8. a16 a8. a16 | a8. a16 a4 | a8. a16 a,8. a16 | d4 r4 |
  }
  \repeat volta 2 {
    g8 r8 g8 r8 | g8 r8 g8 r8 | g8 r8 g8 r8 | 
    fis8 r8 fis4 | g8 r8 g4 | d8 r8 d4 | a8 r a r |
  }
  \alternative {
  {d8 r8 r4 |}
  {d8 r8 r4 |}
  }
  
    \time 2/4 a'8. a16 a8. a16 | a4 a | r2 | d,4 d |
    r2 | a'8. a16 a4 | d,8. fis16 a8. a16 | d,8 r8 d'4 |
  
  
    g,4 g | g8 g b g | d'4 d | d,8 d d fis |
    a8. a16 a8. a16 | a8. a16 a4 | a8. a16 a8. a16 | a4 d8 r8 |
    a8. a16 a8. a16 | a8. a16 a4 | a8. a16 a,8. a16 | 
  
  
    d4 r4 | r4 a'8. cis16 | d4 r4 | r4 a8. cis16 | d4 r4 | r4 a8. cis16 | d4 a8. a16 |
    d4 a | d a | d, r d4. d8 | d1~ | d2 b | a1~ | a | <<d2  d,2>> r2 |
    
  
  
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