\version "2.18.2"

global = {
  \key es \major
  \time 4/4
}


#(set-global-staff-size 18)

toene = \absolute {
  \global
 
}

soprano = \relative c'' {
  \global
  %{
  es4 fis,8 fis g4 c, | f b, c r8 es | es( d) es fis g fis g a | \break
  bes4 fis g r8 g | f'4. f8 es8. es16 d8 c | d4 g,8.g16 g4 g | c4. c8 c4 as | \break
  des4. des8 des4 des( | d) c8. c16 des4 bes | des c des c~ | c c8. c16 c4 g'~ | \break
  
  g g,8. g16 c4 es, | es4. es8 es4 f | g4. g8 g4 g | g4. g8 g4 a | \break
  bes4. bes8 bes4 bes4 | bes4. bes8 bes4 c | es d c bes | a2 fis2 | g4 g'2 d8 d | \break
  es4 b c fis, | g g a e | f c des c | g'2. es'4~ | es b8 b c4 es, | \break
  
  g4 b, c4. es8 | es( d) es( fis) g(fis) g( a) | bes4 fis g r8 g8 | \break
  f'4. f8 es8. es16 d8 c | d4 g, g4. g8 | c4 as as4. as8 | des4 f f4. es8 | \break
  f4 des f es | f es2 c8 c | g'4 g,2 g8 g | c2 r4 es, | es4. es8 es4 f | \break
  
  g4. g8 g4 g | g4. g8 g4 a | bes4. bes8 bes4 bes | bes4. bes8 bes4 c | es d c bes | \break
  a2 fis | g4 g g'4. d8 | es4 b c fis, | g g as e | \break
  f4 c des c | g'2. es'4~ | es fis,8. fis16 g4 c, | f b, c4. es8 | \break
  
  es8( d es) fis g( fis g) a | bes4 fis g r8 g | f'4. f8 es8. es16 d8 c | \break
  d4 g, g4. g8 | c4 as as4. as8 | des4 des2 c8 c | des4 bes des c | \break
  des c c4. c8 | g'4 g, g4. g8 | c2. r4 |
  %}
}

alto = \relative c'' {
  \global
  
   %{
  es4 fis,8 fis g4 c, | f b, c r8 c | c b c es d c d es | \break
  g4 d g r8 g | d'4. d8 c8. c16 b8 c | b4 g8. g16 g4 g | c4. c8 c4 as | \break
  des4. des8 des4 as~ | as beses8. beses16 as4 ges | as beses as a( | as) a8. a16 a4 g~ | \break
  
  g g8. g16 es4 c | c4. c8 c4 d | es4. es8 es4 es | es4. es8 es4 es | \break
  g4. g8 g4 g | g4. g8 g4 g | g g fis g | es2 c | b4 g'2 d'8 d | \break
  es4 b c fis, | g g as e | f c des c | b2. es'4~ | es b8 b c4 es, | \break 
  
  g4 b, c4 r8 c8 | c8 b c es d c d es | g4 d g r8 g | \break
  d'4. d8 c8. c16 b8 c | b4 g g4. g8 | c4 as as4. as8 | des4 << {des4 des4. c8} {as4 as4. beses8} >> | \break
  << {des4 bes des c | des c2 c8 c | g4 g2 g8 g | g2 } { as4 ges as beses | as a2 a8 a | g4 d2 d8 d | es2 } >> r4 c4 | c4. c8 c4 d | \break
  
  es4. es8 es4 es | es4. es8 es4 es | g4. g8 g4 g | g4. g8 g4 g | g g fis g | \break
  es2 c | b4 g' g4. d'8 | es4 b c fis, | g g as e | \break
  f c des c | b2. es'4~ | es fis,8. fis16 g4 c, | f b, c4. c8 | \break
  
  c8 b c es d c d es | g4 d g r8 g | d'4. d8 c8. c16 b8 c | \break
  b4 g g4. g8 | c4 as as4. as8 | des4 as2 beses8 beses | as4 ges as beses | \break
  as a a4. a8 | <<{es'4 g, g4. g8 | g2.}{c4 d, d4. d8 | es2.}>> r4 |
  %}
  
}

tenor = \relative c'' {
  \global
 %{
  es4 fis,8 fis g4 c, | f b, c r8 c | c4 c8 c' bes a bes c | \break
  d4 d, g r8 g | as'4. as8 g8. g16 f8 es | g4 g,8. g16 g4 g| c4. c8 c4 as | \break
  des4. des8 des4 des( | d) es8. es16 des4 des | des es des es~ | es es8. es16 es4 g~ | \break
  
  g g,8. g16 g4 g | g4. g8 g4 bes | bes4. bes8 bes4 bes4 | bes4. bes8 bes4 c | \break 
  d4. d8 d4 <<{bes | bes4. bes8 bes4 c | es d c bes | a2 fis}{g4 | g4. g8 g4 a | c bes a g | es2 d }>> | g4 f'2 d8 d | \break
  es4 b c fis, | g g as e | f c des c | e2. es'4( | es4) b8 b c4 es, | \break
  
  g4 b, c4. c8 | c4 c8 c' bes a bes c | d4 d, g4. g8 | \break
  as'4. as8 g8. g16 f8 es | g4 g, g4. g8 | c4 as as4. as8 | des4 <<{f f4. es8}{des4 des4. c8}>> | \break
  <<{f4 des f es | f es2 c8 c | g'4 b,2 b8 b}{des4 bes des c | des c2 c8 c | g'4 g,2 g8 g}>> | c2 r4 g | g4. g8 g4 bes | \break
  
  bes4. bes8 bes4 bes | bes4. bes8 bes4 c | d4. d8 d4 <<{bes | bes4. bes8 bes4 c | es d c bes}{g4 | g4. g8 g4 a | c bes a g}>> | \break
  <<{a2 fis}{es2 d}>> | g4 g g'4. d8 | es4 b c fis, | g g as e | \break 
  f c des c | d2. es'4~ | es fis,8. fis16 g4 c, | f b, c4. c8 | \break
  
  c4. c'8 bes a bes c | d4 d, g r8 g | as'4. as8 g8. g16 f8 es | \break
  g4 g, g4. g8 | c4 as as4. as8 | des4 des2 es8 es | des4 des des es | \break
  des es es4. es8 | g4 <<{b, b4. b8 | c2.}{g4 g4. g8 | g2.}>> r4 |
  %}
  
}

bass = \relative c' {
  \global
 
 es4 fis,8 fis g4 c, | f b, c4. c8 | c4 c8 c' bes a bes c | \break
 d4 d, g r8 g8 | g4. g8 g8. g16 g8 g | g4 g8. g16 g4 g | c4. c8 c4 as | \break
 des4. des8 des4 f,~ | f ges8. ges16 f4 ges | f ges f fis( | f) fis8. fis16 fis4 g4~ | \break
 
 g4 g,8. g16 c4 c | c4. c8 c4 bes | es4. es8 es4 es | es4. es8 es4 c | \break
 g4. g'8 g4 g | g4. g8 g4 g | g g a bes | c c, d4. d8 | g4 g2 d'8 d | \break
 es4 b c fis, | g g as e | f c des c | g2. es''4~ | es4 b8 b c4 es, | \break
  
  
  
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