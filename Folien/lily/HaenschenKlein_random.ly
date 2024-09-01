\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

randomNotes =
{
  $@(let ((notes (ly:music-property #{ <c' d' e' f' g'> #}
                                    'elements)))
      (map (lambda (x) (list-ref notes (random (length notes)))) (iota
(* 4 4))))
}

music = {
%\override Score.BarLine.stencil = ##t
%\override Score.Clef.stencil = ##t
%\override Score.TimeSignature.stencil = ##t
\numericTimeSignature

	\randomNotes 
	\bar "|."
}

\score {
  \music
  \layout{}
  \midi{}
}
