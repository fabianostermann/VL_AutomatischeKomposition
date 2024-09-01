\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

music = {
%\override Score.BarLine.stencil = ##t
%\override Score.Clef.stencil = ##t
%\override Score.TimeSignature.stencil = ##t
\numericTimeSignature

  \relative c'' {
  	g4 e e2 | f4 d d2 | c4 d e f | g g g2 |
  	g4 e e2 | f4 d d2 | c4 e g g | c,1 |
  	d4 d d d | d e f2 | e4 e e e | e f g2 |
  	g4 e e2 | f4 d d2 | c4 e g g | c,1 |
  }
  \bar "|."

	% 6x c, 12x d, 15x e, 6x f, 11x g 

}

\score {
  \music
  \layout{}
  \midi{}
}
