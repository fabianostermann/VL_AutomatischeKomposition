\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

music = {
%\override Score.Clef.stencil = ##t
\override Score.BarLine.stencil = ##f
\override Score.TimeSignature.stencil = ##f
%\numericTimeSignature
\hide Stem

	\relative c' {
		f16 g
		a b c d e
	}
}

\score {
  \music
  \layout{}
  \midi{}
}
