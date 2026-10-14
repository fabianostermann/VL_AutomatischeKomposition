\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

aNote = { a'8_"a" g'16 a'16 }
bNote = { b'8_"b" r8 c''8 }

music = {
%\override Score.BarLine.stencil = ##t
%\override Score.Clef.stencil = ##t
%\override Score.TimeSignature.stencil = ##t
\numericTimeSignature

	% L-word: bababbab
	\bNote\aNote\bNote\aNote\bNote\bNote\aNote\bNote r8

}

\score {
  \music
  \layout{}
  \midi{}
}
