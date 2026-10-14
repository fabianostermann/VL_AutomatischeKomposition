\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

pitches = { a' b' c'' d'' }
rhythms = { 4 8 16 }

music = {
\new DrumStaff \with{
    %\remove "Bar_engraver"
    %drumStyleTable = #percussion-style
    \override StaffSymbol.line-count = #1
    \remove "Time_signature_engraver"
    %\hide Stem
    %\override Stem.Y-extent = ##f
  } \rhythms
  
}

\score {
  \music
  \layout{}
  \midi{}
}
