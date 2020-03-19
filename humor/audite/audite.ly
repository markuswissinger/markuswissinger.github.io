\version "2.18.2"

global = {
  \key f \major
  \time 4/2
}


#(set-global-staff-size 18)

toene = \absolute {
  \global
  
   f c' c'' c''
 
}

soprano = \relative c'' {
  \global
  
   r2 c1 a2~ | a2 f4 g a d, bes'2 | a1. g4 f | e f g1 f2~ | \break 
   f2 e4 d e1~ | e1~ e1 | \time 4/4 f2 f4 f | a g fis2 | g4 e e e | \break
   
   f2 a2 | g4 f2 e4 | f2 r4 f | g8 g g g g4 f | a2 r4 f | g8 g g g g4 c, | f2 r4 f | \break
   f4 f bes2 | a r | c, f | r c | f bes | a4 g2 fis4 | g2 r4 d | \break
   f4 f4. e16 d e4 | f1 | r1 | r4 d d2 | e4 f2 e4 | f1 | \break
   
   \time 3/4 a2 bes4 | a2 g4 | g2 g4 | g2 g4 | g2 a4 | \time 4/4 g2 e | f f4 f | g2 f | g f | \break
   e2 r4 f | f2 g4 f | g2 f | e1 | r4 f a2 | r2 r4 f | f e f e | \break
   c4 f d2 | f4 e2 f4 | f2 r4 f | e2 d | c1 | r1 | d2 e4 g | \break
   
   fis2 g4 a | bes2 a | g g | f r4 bes~ | bes a g fis | g a2 g4 | f e f g~ | \break
   g f e d | e2 g | a c~ | c4 f, g2~ | g4 f f2~ | f2 e | \break
   e2 g | a c~ | c4 f, g2~ | g4 f f2~ | f e | f1 |
  
}

alto = \relative c'' {
  \global
  
   c1 a2 f | c' c r4 f d2 | c1 f, | g2 e c'1 | \break
   c1~ c1~ | c1~ c1 | \time 4/4 c2 c4 c | f d d2 | b4 c c c | \break
   
   c4. d8 e4 f | d2 c | c r4 c | es8 es es es es4 d | f2 r4 c | c8 c c c g4 g | c2 r4 c | \break
   d4 d f2 | f r | f d | r f | d r4 f4~ | f e d d | b2 r4 b | \break
   c8 b a b g4 g | f1 | r | r4 bes bes a | c2 c | c1 | \break
   
   \time 3/4 f2 f4 | f2 e4 | d2 e4 | d2 e4 | d2 f4 | \time 4/4 e2 c | c c4 d | es2 c | es c | \break
   c2 r4 c | c2 es4 d | es2 c | c1 | r4 c f2 | r r4 f,4 | a g a bes | \break
   c4 c bes2 | a4 c2 d4 | c1 | r4 c bes2 | a g | r1 | b2 c4 d | \break
   
   d2 e4 e | f2. f4 | d2 g,2 | c f | f d4 d | d f2 d4 | d b c es~ | \break
   es d c bes | c2 e | f c~ | c es | d c | c1 | \break
   r2 e | f c~ | c es | d c | c1~ | c1 |
  
}

tenor = \relative c' {
  \global
 
   r1 c | a f | r2 f a bes | c2. bes4 a1 | \break
   g1~ g1~ | g1~ g1 | \time 4/4 a2 a4 a | c bes a2 | g4 g g g | \break
   
   a2 c | bes g | a r4 a | bes8 bes bes bes bes 4 bes | c2 r4 a | e8 e e e e4 e | a2 r4 a | \break
   bes a d2 | c c | c r | c a | r d | c bes4 a | g1 | \break
   r1 | r4 a bes a | c4. bes8 a4 g | f2 f | g4 a g g | a1 | \break
   
   \time 3/4 c2 d4 | c2 c4 | b2 c4 | b2 c4 | b2 c4 | \time 4/4 c2 g | a a4 a | bes2 a | bes2 a | \break
   g2 r4 a | a2 bes4 a | bes2 a | g r4 g | a2 r4 f | a g a bes | c2 r | \break
   a2 f | f4 g2 bes4 | a1 | r | r2 r4 c | bes2 a | g4 g g bes | \break
   
   a2 c4 c | d2  c | b c | a d~ | d4 c bes a | bes c2 bes4 | a g a bes~ | \break
   bes a g f | g1 | r2 g | a c | bes a | g1 | \break
   g1 | r2 g | a c | bes a | g1 | f |
  
}

bass = \relative c {
  \global
 
  R\breve | f1 d2 bes | f'2. e4 d1 | c\breve~ | \break
  c\breve~ | c\breve | \time 4/4 f2 f4 f | f g d2 | g,4 c c c | \break
  
  f2 a, | bes c | f, r4 f' | es8 es es es es4 bes | f'2 r4 f | c8 c c c c4 c | f,2 r4 f' | \break 
  d4 d bes2 | f' c | f r | c f | r bes, | c d4 d | g,1 | \break 
  R1 | r4 d' d2 | e4 f2 e4 | f bes, bes d | c2 c | f1 | \break
  
  \time 3/4 f2 bes,4 | f'2 c4 | g'2 c,4 | g2 c4 | g'2 g4 | \time 4/4 c,2 c | f f4 f | es2 f | es f | \break
  c2 r4 f | f2 es4 f | es2 f | c r4 c | f2 r4 f | f e f d | c2 r | \break
  f2 bes, | d4 c2 bes4 | f'1 | r | r4 f e2 | d c | r4 g c g | \break
  
  d'2 c4 c | bes2 f' | g e | f bes, | f' g4 d | g f2 g4 | d g f es~ | \break
  es f c d | c1 | r2 e | f c | d f | c1 | \break
  c1 | r2 e | f c | d f | c1 | f, |
  
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
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
  >>
  \new Staff = "b" \with {
    instrumentName = \markup \center-column { "Bass" }
  } <<
    \clef bass
    \new Voice = "bass" { \voiceTwo \bass }
  >>
>>

miditempo = 120

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