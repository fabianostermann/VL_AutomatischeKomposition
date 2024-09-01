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
\override Score.BarLine.stencil = ##f
\override Score.TimeSignature.stencil = ##f

	a'4
	b'8
	c''16
	d''4
	a'8
	b'16
	c''4
	d''8
	a'16
	b'4
	c''8
	d''16
	a'4
	b'8
	c''16
	d''4
}

\score {
  \music
  \layout{}
  \midi{}
}
