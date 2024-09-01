\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

music = {
\override Score.BarLine.stencil = ##f
%\override Score.Clef.stencil = ##t
\override Score.TimeSignature.stencil = ##f
\numericTimeSignature

  \relative c'' {
  	g4 e e2 
  }
  \bar "|."

	% 6x c, 12x d, 15x e, 6x f, 11x g 

}

\score {
  \music
  \layout{}
  \midi{}
}
