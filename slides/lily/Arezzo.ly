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

	{
    		% a e i o u
    		% C D E F G
    		
    		%uiaeaaue oeu
    		g'4 e' c' d' c' c' g' d'
    		f'2 d' g' 
    
	}
	\addlyrics {
		Mus -- ik -- da -- ten -- a -- na -- ly -- se
		Vor -- les -- ung
	}
	
}

\score {
  \music
  \layout{}
  \midi{}
}


