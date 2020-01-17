\version "2.18.2"



global = {
  \key c \major
  \time 4/4
}

triolen =
#(define-music-function
     (parser location music)
     (ly:music-list?)
   #{
     \tupletSpan 4 \tuplet 3/2 $music
   #})



#(set-global-staff-size 18)

toene = \absolute {
  \global
  g2
  d''2
  f'2
  bes'2
}

soprano = \relative c'' {
  \global
    r2 bes4 bes | r2 bes4 bes | a a c c | a a c c |
    d8 d c c bes bes a a | g g f f es es d d' | f f e e d d c c | bes bes a a g g f f | 
    r f4 d8 d'4 d8 d |
    
    \time 2/4 r4 a | \time 4/4 d, d r2 | r2 r4 \triolen {d d8 | 
    f4 g8 gis4 a8 d,4 d8} r4 | r2 r4 \triolen {d4 d8 | f4 g8 gis4 a8 d4 d8} r4 | r2 r4 \triolen {d4 d8 |
    f4 d8} r4 r4 \triolen {d4 d8} | c4 a \tupletSpan 2 \tuplet 3/2 {gis4 g f} | d r4 r2 | r4 \triolen {f4 g8} as4 r4 |
    r4 \triolen {a4 a8} gis4 \triolen {g g8} | fis2. r4 |
    
    d'8. d16 d4 r8 d,8 d d | gis2. r4 | a8. a16 a4 r2 | r1 |
    r8 d,8 d d gis2 | r1 | r1 | r1 |
    
    es4. es8 es4 es | r4 bes'2 bes4 | a4 a a8 a a a | d4 r4 r4 d4~ | 
    d2. d4 | a8 a c4 a8 a c8 c | a8 a c c a a c c | a a r4 as8 as r4 | 
    r1 | \time 2/4 r 2 | 
    
    \time 4/4 r2 f4 f | r2 e4 e | \time 2/4 r2 | \time 4/4 r2 es4 es |
    r2 d4 d | r2 f | d1~ | d2. r4 |  
}

alto = \relative c'' {
  \global
    r2 f,4 f | r2 f4 f | g g f f | g g f f |
    a8 a g g f f e e | d d c c bes bes a a' | a a g g f f e e | d d c c e e d d | 
    r f4 d8 g4 g8 g |
    
    \time 2/4 r4 a | \time 4/4 d, d r2 | d2( f) | d d | <<{c b} {d d}>> | 
    <<{c d} {f f}>> | <<{c4 \triolen {c8 c c b4 b8}} {f'4 \triolen {f8 f e d4 d8}}>> r4 | r4 \triolen {a'4 g8 f4 d8} r4 |
    g2 r2 | r4 \triolen {c,4 c8} bes4 r4 | r4 \triolen {d4 d8} f4 r4 | r4 \triolen {f4 f8} e4 \triolen {es es8} | 
    d2. r4 |
    
    d8. d16 d4 r8 d d d | gis2. r4 | a8. a16 a4 r2 | r2 r8 a a a | 
    d,1 | 
    
    r1 | r1 | r1 |
    es4. es8 es4 es | r4 bes'2 bes4 | a a a8 a a a | g4 r r d~ | 
    d2. g4 | f8 f g4 f8 f g g | f f g g f f g g f f r4 fes8 fes r4 | 
    r1 | \time 2/4 r2 |
    
    \time 4/4 r2 c4 c | r2 b4 b | \time 2/4 r2 | \time 4/4 r2 bes4 bes | r2 a4 a | r2 d2 | a1~ | a2. r4 | 
}

tenor = \relative c' {
  \global
  d'4 d r2 | d4 d r2 | c4 c a a | c c a a |
  f2 g | a bes4 a | c8 c c c a a a a | d d c c bes bes a a | r8 f4 d8 bes'4 bes8 bes |
  
  \time 2/4 r4 a | \time 4/4 d( c b2) | c( b) | c b | 
  a g | a b | fis4 fis \triolen {g4 g8} r4 | r4 \triolen {f g8 a4 d8} r4 | 
  cis2 r2 | r2 r4 \triolen {a a8} | r4 \triolen {a a8} d4 r4 | r4 \triolen {c c8} b4 \triolen {bes bes8} |
  a2. r4 |
  
  d8. d16 d4 r8 d, d d | gis2. r4 | a8. a16 a4 r2 | r8 es es es a2~ | 
  a1 | 
  
  r1 | r4 a2 a4 | es es es es | r1 | 
  r1 | a4 g8 g f a a a | bes4 r4 r4 d~ | d2. e4 |
  d8 d e4 d8 d e e | d d e e d d e e | d d r4 des8 des r4 | r1 | \time 2/4 r2 |
  
  \time 4/4 a4 a r2 | a4 a r2 | \time 2/4 r2 | \time 4/4 a4 a r2 | a4 a f f | r2 as | f1~ | f2. r4 |
}

bass = \relative c {
  \global
  g'4 g r2 | g4 g r2 | f4 f d d | f f d d | 
  bes2 c | d es4 d | f8 f c c d d a a | bes bes f' f c c d d | r f4 d8 es4 es8 es |
  
  \time 2/4 r4 a | \time 4/4 <<{d,2( d)} {a'2( g)}>> | <<{d2( d)} {a'2( g)}>> | d4 f g \triolen {f e8} |
  \triolen {d4 c8 a4 g8~} g4 a | d a g \triolen {g'8 f e} | d4 d \triolen {g, g8} r4 | r4 \triolen {f'4 g8 a4 d,8} r4 |
  a2 r | r2 r4 \triolen {a'4 a8} | d,4 \triolen {c c8} bes4 \triolen {a a8} | \triolen {f'8 d4~} d2 \triolen {d4 d8} | 
  d2. r4 |
  
  %takt 23
  d8. d16 d4 r8 d d d | gis2. r4 | a8. a16 a4 r8 a,8 a a | es1~ | es1 |
  
  r4 a8 a a4 a | r4 a'2 a4 | es es es es | r1 | r1 |
  a4 g8 g f f e e | es4 e, e r | a' g f e | d a d a8 a| 
  d4 a d a | r4 a2 a'4 | r4 bes2 a,4 | \time 2/4 r2 |
  
  \time 4/4 d4 d r2 | d4 d r2 | \time 2/4 r2 | \time 4/4 d4 d r2 | d4 d d d | r2 bes | d1~ | d2. r4 |
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