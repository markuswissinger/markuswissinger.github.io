\version "2.18.2"

global = {
  \key bes \major
  \time 4/4
}


#(set-global-staff-size 18)

toene = \absolute {
  \global
  
  bes,4 d'' f' bes'
   
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

alto = \relative c' {
  \global
  
   f2 es8 es es d | g4 f8 f f4 r | es2 d4. c8 | c4 b c r | \break
   r4 r8 b'8 c4 r | r r8 a bes4 r | r1 | \break
   r4 bes a8 f g e | f4 r r r8 f | as8 as as as as2 | a8. bes32 as32 g8 f g4 r8 e | \break
   g8 f bes g f4 r | r8 bes4 c8 a4 r | r8 bes4 g8 a g a g | \break
   
   a4 r r r8 a | bes4 r8 bes a g fis r | r fis g es es f f g | \break
   g4 r8 g g g g g | g4 r8 f f f f f | f4 r r8 g a bes | \break
   c4. bes8 a a bes c | d4. c8 bes4. bes8 | g g g g a c bes a | \break
   bes4 r r r8 bes | des des des des des2~ | des8. es32 des32 c8 bes a4 r8 a | \break
   
   a8 bes g f f4 r | r8 es'4 d8 c4 r | r8 d4 c8 bes4 r | r8 f f es d d r4 | \break
   d4 r r8 f f es | d4 r8 d8 d4 r8 d | d d g g g4 r8 f | \break
   f f f f f4 r | f2 es8 es es d | g4 f8 f f4 r | es2 d4. c8 | c4 b c r | \break
   r4 r8 b' c4 r | r4 r8 a bes4 r8 f | f f bes bes a4 r | \break
   
   r2 r4 r8 d, | f f f f f2~ | f4 g8 as g4 r8 g | \break
   as8 bes g f f4 r | r8 es'4 d8 c4 r | r8 d4 c8 bes4 r | f2 es8 es es d | \break
   g4 f8 f f4 r | f2 es4. d8 | g4 f8 f f4 g | f16 es d c f8 a, bes4 g' | \break
   f16 es d c f8 g16 a bes8 a bes a | bes4 r r2 |
   
}

tenor = \relative c'' {
  \global
 
  d2 c8 c c bes | bes4 a8 bes16 c bes4 r | g2 f'4. es8 | d4 g, g r8 es'8 | \break
  d8 es d4 r r8 d | c d c4 r8 d bes a | g bes a f' e c f c | \break
  g'4 r r2 | r4 r8 f, c' c c c | c8. c16 c8 c f f f f | f4. f8 e4 r8 c | \break
  c8 c d bes a f'4 e8 | d r r4 r8 f4 e8 | d d4 c16 bes a8 bes a bes | \break
  
  a4 r8 f' es d c r | r f d4 r r8 d | bes4 r8 bes c c d d | \break
  es4 r8 d es d es d | es4 r8 c d c d c | d d, es f g4. f8 | \break
  es8 es f g a4. g8 | f f g a bes4. bes8 | bes bes bes bes a4 r | \break
  r4 r8 bes f' f f f | f4. des8 bes4. bes8 | bes bes bes bes c4 r8 c | \break
  
  c8 bes es c d f4 es8 | d4 r r8 es4 d8 | c4 r r8 d d c | bes bes r4 r bes | \break
  r8 d d c bes4 r | r8 bes bes4 r r8 bes | bes d c b c4 r8 c | \break
  c bes bes a bes4 r | d2 c8 c c bes | bes4 a8 bes16 c bes4 r g2 f'4. es8 | d4 g, g r8 es' | \break 
  d es d4 r8 g es d | c d c4 r8 f d f | d d c c c4 r | \break
  
  r4 r8 bes d d d d | d8. d16 d8 d d d d d | d4. d8 es4 r8 es16 d | \break
  c8 bes es c d f4 es8 | d4 r r8 es4 d8 | c4 r r2 | d2 c8 c c bes | \break
  bes4 a8 bes16 c bes4 r | d2 c4. bes8 | bes4 a8 bes16 c bes4 r | r2 r4 g | \break
  f16 es d c f8 g16 a bes8 es d es | d4 r r2 |
  
}

bass = \relative c {
  \global
 
  bes2 f'8 f f g | es4 f8 f bes,4 r c2 g'4. as8 | f4 g c, r8 c' | \break
  b8 c b4 r r8 bes | a8 bes a4 r8 bes g f | e c f a c bes a f | \break
  e4 r r r8 c | f f f f f4. f8 | f4. f8 des des des des | des4. des8 c4 r8 c | \break
  e f bes, c f d'4 c8 | bes r r4 r8 d4 c8 | bes g4 c8 f, c f c | \break
  
  f4 r8 d' c bes a r | r8 a bes4 r r8 fis | g4 r8 g as a bes b | \break
  c4 r8 b c b c b | c4 r8 a bes a bes a | bes bes, c d es4. d8 | \break
  c8 c d es f4. es8 | d d es f g4. g8 | c, c c c f4 r8 f | \break
  bes8 bes bes bes bes4. bes8 | bes4. bes8 ges ges ges ges | ges4. ges8 f4 r8 f | \break
  
  f8 g es f bes, d'4 c8 | bes4 r r8 c4 bes8 | a4 r r8 f f es | d d r4 r d | \break
  r8 f f es d4 r | r8 d d4 r4 r8 g | g g es d c4 r8 a | \break
  bes8 d f f bes,4 r | bes2 f'8 f f g | es4 f8 f bes,4 r | c2 g'4. as8 | f4 g c, r8 c' | \break
  b8 c b4 r8 b c bes | a bes a4 r8 a bes a | bes bes g g f4 r8 f | \break
  
  as8 as as as as4. as8 | as4. as8 as as as as | as4 g8 f es4 r8 c | \break
  f g es f bes, d'4 c8 | bes4 r r8 c4 bes8 | a4 r r2 | bes,2 f'8 f f g | \break
  es4 f8 f bes,4 r | bes2 f'4. g8 | es4 f bes, r | r2 r4 g' | \break
  f16 es d c f8 g16 a bes8 f bes f bes4 r r2 |
  
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