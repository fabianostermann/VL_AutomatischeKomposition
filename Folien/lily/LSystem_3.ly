\version "2.20.0"

\include "lilypond-book-preamble.ly"

\paper{
  indent=0\mm
  line-width=100\mm
  paper-width=1000\mm
}

%aNote = { }
%bNote = { }

music = {
%\override Score.BarLine.stencil = ##t
%\override Score.Clef.stencil = ##t
%\override Score.TimeSignature.stencil = ##t
\numericTimeSignature

	% L-word: bababbab
	% a means third down
	% b means step up
	
	c''8
	d''_"b" %b
	b'_"a" %a
	c''_"b" %b
	a'_"a" %a
	b'_"b" %b
	c''_"b" %b
	a'_"a" %a
	b'_"b" %b
	r8 r4
}

\score {
  \music
  \layout{}
  \midi{}
}
