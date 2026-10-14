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
%\override Score.BarLine.stencil = ##t
%\override Score.Clef.stencil = ##t

\override Score.TimeSignature.stencil = ##f
%\numericTimeSignature
\hide Stem

	\pitches
}

\score {
  \music
  \layout{}
  \midi{}
}
