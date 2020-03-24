\version "2.18.2"

global = {
  \key f \major
  \time 4/4 \partial 4
}


#(set-global-staff-size 18)

toene = \absolute {
  \global
  
  a4 d'' f' a'
 
}

soprano = \relative c'' {
  \global
  
   a4 | a2. a4 | a2. a4 | d2 c~ | c4 a g2 | d2. d4 | e e f f | \break
   
   g g a a8 a | bes4 bes c c | d d e e | fis2 e | r4 a, g c | a1~ | \break
   a4 r a8 a a4 | r2 r8 a a a | d4 d a a | r a8 a f'4 f | a, a r2 | r2 r4 e~ | \break
   e2 \tuplet 3/2 {a8 a a} a4 | r d r a | a a d, r | r1 | \time 2/4 r8 d8 d d | \time 4/4 \break
   
   bes'4. bes8 bes bes c bes | a a4. r8 a a a | g g g g g g a g | f4 g a d,8 d | \break
   g4 g r g | f f r8 f f f | e e e r r8. g16 f8. e16 | d4 r r8 d d d | <<{d'4. d8 c4. bes8}{bes4. bes8 a4. g8}>> | \break
   <<{bes8 a4.}{g8 f4.}{d8 c4.}>> r8 f f f | \time 2/4 g4 r8 bes | \time 4/4 a8 g4 f16 e d4 r | \time 2/4 \tuplet 3/2 {r4 a'8 bes4 a8} | \time 4/4 <<{f'8 d4.~ d2~ | d4 r4 r4}{c8 b4.~ b2~ | b4 r4 r4}>>
  
}

alto = \relative c' {
  \global
  
   r4 | r f f2 | r4 e e e | fis2 g~ | g4 fis e2 | d2. d4 | e e e e | \break
   
   e e e e8 e | f4 f a a | bes bes g g | a2 g | r4 fis e g | g2 fis2 | \break
   f4 r d8 d d4 | r2 r8 fis fis fis | g4 g fis fis | r fis8 fis g4 g | fis4 fis r2 | r2 d2~ | \break
   d2 \tuplet 3/2 {d8 d d} d4 | r g r a | a a d, r | R1 | \time 2/4 r8 d d d | \time 4/4 \break
   
   f4. f8 g g a g | e e4. r8 f f f | d d d d e e f e | d4 d d d8 d | \break
   d4 d r e | e d r8 d d d | d d d r8 r8. e16 d8. cis16 | e4 r r8 d d d f4.f8 e4.d8 | \break
   d8 c4. r8 d d d | \time 2/4 e4 r8 bes' | \time 4/4 a g4 f16 e d4 r | \time 2/4 \tuplet 3/2 {r4 a'8 bes4 a8} | \time 4/4 a1~ | a4 r r 
 
  
}

tenor = \relative c'' {
  \global
 
  r4 | r d d2 | r4 d d d | d2 e2~ | e4 d c2 | a2. d4 | d d d d | \break
  
  d d d d8 d | d4 d e e | f f d d | d2 c | r4 d c e | e2 d | \break
  d4 r4 r2 | r4 a r8 d d d | bes4 bes d d | r d8 d bes4 bes | d d r2 | r4 bes r2 | \break
  r4 bes \tuplet 3/2 {bes8 bes bes} bes4 | r a r a | a a d, r8 bes' | a g4 f16 e d4 r | \time 2/4 R2 | \time 4/4 \break
  
  d'4 d c c | c c c c | bes bes a a | a a d c | \break
  bes bes a a | a a gis a | bes8 bes bes r a4 a8. g16 | f4 r r2 | d'4 d c c | \break
  c4 c c8 bes bes bes | \time 2/4 bes4 r8 bes | \time 4/4 a g4 f16 e d4 r | \time 2/4 \tuplet 3/2 {r4 a'8 bes4 a8} | \time 4/4 f'1~ | f4 r r 
  
  
}

bass = \relative c' {
  \global
 
  r4 | r a4 a2 | r4 bes bes bes | a1 | a,2. d4 | d2. d'4 | d d c c | \break
  
  bes4 bes a a8 a | g4 g f f | g g bes bes | a2. a,4 | a2 a | d1~ | \break 
  d4 r r2 | r4 d r8 d d d | es4 es d d | r d8 d g4 g | d d r a' | R1 | \break
  r4 bes \tuplet 3/2 {g8 g g} g4 | r e r a | a a d, r8 bes' | a g4 f16 e d4 a | \time 2/4 d r | \time 4/4 \break
  
  g4 g e e | f f d d | e e cis cis | d e f a | \break
  e e cis cis | d d bes d | g8 g g r a4 a,8. a16 | d4 a d r | g g c, c | \break
  f4 f f8 bes bes a | \time 2/4 g4 r8 bes | \time 4/4 a8 g4 f16 e d4 r | \time 2/4 \tuplet 3/2 {r4 a'8 bes4 a8} | \time 4/4 <<{a1~|a4}{d,1~| d4}>> r r
  
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