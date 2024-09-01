\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

aNote = { a'8_"a" }
bNote = { b'8_"b" }

music = {
%\override Score.BarLine.stencil = ##t
%\override Score.Clef.stencil = ##t
%\override Score.TimeSignature.stencil = ##t
\numericTimeSignature

	% L-word: bababbab
	\bNote\aNote\bNote\aNote\bNote\bNote\aNote\bNote

}

\score {
  \music
  \layout{}
  \midi{}
}
