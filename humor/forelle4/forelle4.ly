\version "2.18.2"



global = {
  \key bes \major
  \time 2/4
  \partial 8
  
}

#(set-global-staff-size 18)

toene = \absolute {
  \global
  bes, f' d' f' 
}

soprano = \relative c' {
  \global
  
  f8 | bes16( a) bes( c) d8  d | bes4 f8 f | f8. d'16 c( bes) a( g) | \break
  f16.( es32 d8) r8 f | bes16( a) bes( c) d8  d | bes4 f8. d'16 | c8. d16 c16( bes) a( g) | \break
  f8. a32 g32 f8 r8 | bes4 d | f d | r2 | \break
  r4 r8 f, | a a a a | bes4 f8 bes | a a a a | \break

  bes4. bes8 | g8 g g bes | bes4 f8 f | f f c' a | \break
  bes4. bes8 | a16( g) g8 g16( bes) a( c) | bes4 f8 f | f f c' a | \break
  bes4 r | d8 bes16 d f4 | d8 bes16 d f4 | d8 bes16 bes bes8 d | \break 
  c2 | d8 bes16 d f4 | d8 bes16 d f4 | d8 bes16 bes bes8 bes | bes2 | \break
  
}

alto = \relative c' {
  \global
  
  r8 | d d d r | d d d r | f8. bes16 a( g) f( es) | \break
  d16. c32 bes8 r4 | d8 d d r | d d d r16 bes' | a8. bes16 a g f e | \break
  c4. r8 | d4 bes' | d bes8 f | f8 f16 f f8 f16 f | \break
  f8 f16 f f8 f16 f | f8 f16 f f8 f16 f | f8 f16 f f8 f16 f | f8 f16 f f8 f16 f | \break
  
  f8 f16 f f8 f16 f | es8 es es g | f4 d8 d | c c f f | \break
  f4. f8 | es es es g | f4 d8 d | c c f f | \break
  f8 f16 f f8 f16 f | f8 f16 f a4 | f8 f16 f a4 | bes8 d,16 d d8 bes' | \break
  <<{f2}{a2}>> | f8 f16 f a4 | f8 f16 f a4 | bes8 d,16 d d8 d | d2 |
  
  
}

tenor = \relative c' {
  \global
 
   r8 | f f f r | f f f r | f2 | \break
   f8 f4 r8 | f f f r | f f f r | c'4. c16 bes | \break
   a4. r8 | f4 f | bes f | r2 | \break
   r4 r8 d' | f16 es c8 f16 es c8 | d4 d8 d8 f16 es c8 f16 es c8 | \break
   
   d4. d8 | es es es es | d4 bes8 bes | a a es' c | \break
   d4. d8 | es es es es | d4 bes8 bes | a a es' c | \break
   d4. r8 | d8 d16 d c4 | d8 d16 d c4 | bes8 f16 f f8 f | \break
   <<{c'2}{a2}>> | d8 d16 d c4 | d8 d16 d c4 | bes8 f16 f f8 f | f2 |
  
 
}

bass = \relative c {
  \global
 
   r8 | bes bes bes r | bes bes bes r | f2 | \break
   bes8 bes4 r8 | bes bes bes r | bes bes bes r |c4. c8 | \break
   f4. r8 | bes,4 bes | bes bes8 f' | f f16 f f8 f16 f | \break
   f8 f16 f f8 f | f f f f | bes,4 bes8 bes' | f f f f | \break
   
   bes,4 bes'8 bes16 bes | bes8 bes16 bes bes 8 bes 16 bes | bes8 bes16 bes bes 8 bes 16 bes | f8 f16 f f8 f16 f | \break
   bes8 bes16 bes bes 8 bes 16 bes | bes8 bes16 bes bes 8 bes 16 bes | bes8 bes16 bes bes 8 bes 16 bes | f8 f16 f f8 f16 f | \break
   bes,4 r4 | bes'8 bes 16 bes f4 | bes8 bes 16 bes f4 |  bes,8 bes 16 bes bes8 bes | \break
   f'2 | bes8 bes 16 bes f4 | bes8 bes 16 bes f4 | bes,8 bes16 bes bes8 bes | bes2 | 
 
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

miditempo = 85

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