\version "2.18.2"

global = {
  \key bes \major
  \time 4/4
}


#(set-global-staff-size 18)

toene = \absolute {
  \global
  
   
}

soprano = \relative c'' {
  \global
  
  bes2 bes8 a8 a bes | c4. d16 es d4 r | c2 c4 b8 c | d4. es16 f es4 r | \break
  r4 r8 g8 es4 r4 | r4 r8 f8 d4 r | r1 | \break
  r4 e f8 d bes c | f,4 r4 r2 | r4 r8 f8 des' des des c | b4. b8 c4 r8 bes | \break
  bes8 a d e, f4 r | r8 g'4 e8 f4 r4 | r8 g4 e8 f e f e | \break
  
  f4 r r r8 f | d4 r8 d c bes a r | r d bes es c f d g | \break
  es4 r8 g es g es g | es4 r8 f d f d f | d4 r r8 bes c d | \break
  es4. d8 c c d es | f4. es8 d4. d8 | e8 e e e f es d c | \break
  d4 r r2 | r4 r8 bes es es es es | e4. e8 f4 r8 es | \break
  
  es8 d g a, bes4 r | r8 g'4 f8 es4 r | r8 f4 es8 d4 r | r8 d d c bes bes r4 | \break
  bes4 r r8 d d c | bes4 r8 bes bes4 r8 bes | bes bes c d es4 r8 f | \break
  d d c c bes4 r | bes2 bes8 a a bes | c4. d16 es d4 r | c2 c4 b8 c | d4. es16 f es4 r | \break
  r4 r8 g es4 r | r r8 f d4 r8 c | d d e e f4 r | \break
  
  r1 | r4 r8 f, bes bes bes bes | b4. b8 c4 r8 es | \break
  es8 d g a, bes4 r | r8 g'4 f8 es4 r | r8 f4 es8 d4 r | bes2 bes8 a a bes | \break
  c4. d16 es d4 r | bes2 bes4 a8 bes | c4. d16 es d4 g | f16 es d c f8 a, bes4 g | \break
  f16 es d c f8 g16 a bes8 c d c | bes4 r r2 |
  
  
  
}

alto = \relative c'' {
  \global
  
   
 
  
  
}

tenor = \relative c'' {
  \global
 
  
  
  
}

bass = \relative c' {
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