\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{uebungsblatt}[2023/27/01 Class-File fuer Uebungsblaetter]
\LoadClass[a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

\RequirePackage{amsmath,amssymb}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{csquotes}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage[left=2cm,right=2cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{tcolorbox}

%\RequirePackage{etoolbox}
%\RequirePackage{eurosym}
%\RequirePackage{icomma}
%\RequirePackage{ifpdf}
%\RequirePackage{forloop}
%\RequirePackage{listings}
%\RequirePackage{relsize}
%\RequirePackage{tabularx}
%\RequirePackage{xparse}
%\RequirePackage{xspace}
\sloppy
\setlength{\parindent}{0mm}

\clubpenalty = 10000
\widowpenalty = 10000
\displaywidowpenalty = 10000

%\pagestyle{plain}

\newcounter{aufgabennummer}
\setcounter{aufgabennummer}{1}
%\newcounter{aufgabenpunkte}
%\setcounter{aufgabenpunkte}{0}

\newcounter{teilaufgabennummer}
\setcounter{teilaufgabennummer}{1}
%\newcounter{teilaufgabenpunkte}
%\setcounter{teilaufgabenpunkte}{0}

% \begin{aufgabe}{Überschrift}...\end{aufgabe}
\newenvironment{aufgabe}[1]%
{%
  \setcounter{teilaufgabennummer}{1}%
  \bigskip\bigskip

  \par\goodbreak
  {\large\bf\underline{Aufgabe\,\arabic{aufgabennummer}}: #1}
  \medskip\\
  %
}{%
  \addtocounter{aufgabennummer}{1}%
  \setcounter{teilaufgabennummer}{1}%
}

% \begin{teilaufgabe}{Punkte}...\end{teilaufgabe}
\newenvironment{teilaufgabe}[0]%
{%
  \medskip\par\goodbreak
  {\bf{\alph{teilaufgabennummer}})}%
}{%
  \addtocounter{teilaufgabennummer}{1}%
}

\newenvironment{tipp}{\medskip\par\goodbreak\underline{\textsc{Tipp}}:}{}

\renewcommand*{\DefaultOptionsofText}{print, bordercolor={black}, backgroundcolor=white, borderwidth=0pt}

\newenvironment{loesung}{
	\par\goodbreak\medskip
	{\large\bf{
			%\hrule\smallskip
			\underline{Lösung}:}}
	\hfill
	\begin{minipage}{.88\textwidth}
	\begin{tcolorbox}[colback=LimeGreen!25]
	%
}{\end{tcolorbox}
\end{minipage}}

\providecommand{\loesungverbergen}{
	\usepackage{environ}
	\NewEnviron{hide}{}
	\let\loesung\hide
	\let\endloesung\endhide
}

\AtBeginDocument{

\providecommand{\dozent}{{\color{red}Bitte \textbackslash dozent definieren}}
\providecommand{\titel}{{\color{red}Bitte \textbackslash titel definieren}}
\providecommand{\untertitel}{{\color{red}Bitte \textbackslash untertitel definieren}}
\providecommand{\ausgabedatum}{{\color{red}Bitte \textbackslash ausgabedatum definieren}}

\pagestyle{fancy}
\fancyhf{}
\setlength{\headsep}{1.0cm}
\lhead{Name, Matrikelnummer:}
\rhead{Seite~\thepage~von~\pageref*{LastPage}}

  \includegraphics[height=30pt]{logos/TU_Logo.png}
  \hfill 
  \includegraphics[height=30pt]{logos/FI_Logo.png}
  \vspace*{5mm}

  \dozent
  \hfill
  Dortmund, den \ausgabedatum
  
  \begin{center}
    \LARGE\textbf\titel \\
    \medskip
    \Large\untertitel
  \end{center}

  \vspace{0.25cm}
}
