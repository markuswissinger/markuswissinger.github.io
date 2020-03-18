\version "2.18.2"



global = {
  \key e \major
  \time 2/4
  \partial 8
  
}

#(set-global-staff-size 18)

toene = \absolute {
  \global
  
  b4 b'4 b'4
   
}

soprano = \relative c'' {
  \global
  
  b8 | gis4 e8 gis | b4 b8 b | e4 dis8 cis | b4. b8 cis4 cis8 cis | \break
  fis4 fis8 fis | dis4 cis8 cis | b4 r8 e | e4 e8 e | e4 cis8 cis | e4 e8 e | \break
  e4. b8 | cis4 dis8 dis | e4 fis8 fis | gis4 fis8 fis | e4 r8 a,8 | a4 a8 a | a4 a8 a | \break
  a4 a8 a | dis4. dis8 | e4 dis8 dis | cis4 b8 b | ais4 b8 b | cis4. e8 | e4 e8 e | \break
  e4 e8 e | e4 e8 e | e4. e8 | dis4 fis8 fis | e4 dis8 dis | cis4 ais8 ais | b4 r8 b8 | \break
  
}

alto = \relative c'' {
  \global
  
   b8 | gis4 e8 gis | b4 b8 b | e4 dis8 cis | b4. fis8 | gis4 gis8 gis | \break
   ais4 ais8 ais | b4 ais8 ais | b4 r8 cis | cis4 cis8 cis | cis4 a8 cis | b4 b8 b | \break
   b4. b8 a4 a8 a | b4 cis8 cis | e4 dis8 dis | e4 r8 fis,8 | fis4 fis8 fis | fis4 fis8 fis | \break
   fis4 fis8 fis | a4. a8 | gis4 gis8 gis | gis4 gis8 gis | fis4 gis8 gis | ais4. cis8 | cis4 cis8 cis | \break
   cis4 cis8 cis | cis4 cis8 cis | cis4. cis8 | b4 b8 b | b4 b8 b | gis4 e8 e | dis4 r8 b'8 | \break
  
  
}


bass = \relative c' {
  \global
 
   b8 | gis4 e8 gis | b4 b8 b | e4 dis8 cis | b4. dis,8 | e4 e8 e | \break
   fis4 fis8 fis | b4 fis8 fis | b,4 r8 a'8 | a4 a8 a | a4 a,8 a'8 | gis4 gis8 gis | \break
   gis4. gis8 | a4 fis8 fis | gis4 a8 a | b4 b8 b | e,4 r8 b8 | b4 b8 b | c4 c8 c | \break
   b4 b8 b | bis4. bis8 bis4 dis8 dis | e4 eis8 eis8 | fis4 fis8 fis | fis4. fis8 | fis4 fis8 fis8 | \break
   g4 g8 g | gis4 a8 a | ais4. ais8 | b4 a8 a | gis4 fis8 fis | e4 fis8 fis | b,4 r8 b' | \break
  
}



choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
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
  \bookOutputSuffix "toene"
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
  \bookOutputSuffix "oben"
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
  \bookOutputSuffix "mitte"
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
  \bookOutputSuffix "unten"
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