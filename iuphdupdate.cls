%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Indiana University Doctorate Thesis Latex Template %%%%%%%%%%%%%%%
%%%  Fullfill the requirement of IU docterate thesis Fall 2013 %%%%%%%%
%%%%                   Author: Ran Liao %%%%%%%%%%%%%
%%%%                      Jan 2017 %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{iuphdupdate}
              [2013/01/18 LaTeX document class for IU dissertations]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{textcase}
\newif\if@school
\DeclareOption{school}{\@schooltrue}
\DeclareOption{department}{\@schoolfalse}
\newif\if@preface
\DeclareOption{showpreface}{\@prefacetrue}
\DeclareOption{hidepreface}{\@prefacefalse}
\newif\if@acknowledgments
\DeclareOption{showacknowledgments}{\@acknowledgmentstrue}
\DeclareOption{hideacknowledgments}{\@acknowledgmentsfalse}
\newif\if@abstract
\DeclareOption{showabstract}{\@abstracttrue}
\DeclareOption{hideabstract}{\@abstractfalse}
\newif\if@dedication
\DeclareOption{showdedication}{\@dedicationtrue}
\DeclareOption{hidededication}{\@dedicationfalse}
%see addtions to execute options below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{letterpaper,12pt,oneside,onecolumn,final,openany,department,hideabstract,hideacknowlegments,hidededication,hidepreface}
\ProcessOptions
\input{size1\@ptsize.clo}
 %% Page layout
\setlength\textwidth{6in}
\setlength\textheight{9in}
\setlength\oddsidemargin{0.5in}
\setlength\evensidemargin{0in}
\setlength\topmargin{0in}
\setlength\headheight{0in}
\setlength\headsep{0in}
\setlength\footskip{39pt}
%Ranedit


\newlength\chaptocskip
\setlength\chaptocskip{1.5cm}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1.9} %sets double spacing
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
\def\ssp{\def\baselinestretch{1.0}\large\normalsize}


\newcommand*{\aftertoctitle}{\thispagestyle{plain}%
  \par\nobreak \mbox{}\hfill{\normalfont Page}\par\nobreak}
\newcommand*{\cftchapterfont}{\normalfont}
\newcommand*{\cftchapterpagefont}{\normalfont}
\newcommand*{\cftchapterleader}{%
  \cftchapterfont\cftdotfill{\cftchapterdotsep}}
\newcommand*{\cftchapterdotsep}{\cftdotsep} %%%%
\newcommand*{\cftchaptername}{CHAPTER~}
%\setlength{\cftbeforechapterskip}{0pt plus 0pt}
\newcommand*{\insertchapterspace}{}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%this redefines \@sect (contained in latex.ltx) so that sections, subsections, etc. are displayed in the TOC with all caps.
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      %\MakeTextUppercase
      {#7}}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        %\MakeTextUppercase
        {#7}}}%
  \fi
  \@xsect{#5}}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%Begin maketitle Definition
\newcommand*{\@department}{Biostatistics}
\newcommand*{\department}[1]{\renewcommand*{\@department}{#1}}

  \if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
\null\vfil
\begin{center}
\vspace{0.5in}
{\Large \MakeTextUppercase{\@title} \par}
\vskip 1in
    \begin{tabular}[t]{c}
	 \@author
     \end{tabular}\par
\vfill
\begin{doublespace}
%\renewcommand{\baselinestretch}{.5}
Submitted to the faculty of the University Graduate School \\
in partial fulfillment of the requirements \\
for the degree \\
Doctor of Philosophy \\
in the \if@school School \else Department \fi of \@department, \\
Indiana University\\
\end{doublespace}
\@date \\
\vskip 60\p@
\end{center}
%\@thanks
\vfil\null
 \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
%  \global\let\@author\@empty
  \global\let\@date\@empty
%  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\Large \@title \par}%
    \vskip 1.5em%
    {\large
    \lineskip .5em%
     \begin{tabular}[t]{c}%
      \@author \par
     \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
%%%%%End maketitle Definition

%centeredpage
\newenvironment{centeredpage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \null\vfill
    }%
    {
    \vfill\null
    \if@restonecol\twocolumn \else \newpage \fi
    }

%%%%Begin Acceptance Page Definition
\newcommand*{\@committeechair}{}
\newcommand*{\committeechair}[1]{\renewcommand*{\@committeechair}{#1}}
\newcommand*{\@readertwo}{}
\newcommand*{\readertwo}[1]{\renewcommand*{\@readertwo}{#1}}
\newcommand*{\@readerthree}{}
\newcommand*{\readerthree}[1]{\renewcommand*{\@readerthree}{#1}}
\newcommand*{\@readerfour}{}
\newcommand*{\readerfour}[1]{\renewcommand*{\@readerfour}{#1}}
\newcommand*{\@readerfive}{}
\newcommand*{\readerfive}[1]{\renewcommand*{\@readerfive}{#1}}
\newcommand*{\@defensedate}{}
\newcommand*{\defensedate}[1]{\renewcommand*{\@defensedate}{#1}}

\newcommand\acceptancepage{\begin{centeredpage}%
\vspace{-1in}
%Ranedit-1.5in
\begin{center}
\begin{doublespace}
 Accepted by the Graduate Faculty, Indiana University, in partial \par fulfillment
 of the requirements for the degree of Doctor of Philosophy.\par
\end{doublespace}
\end{center}
\vspace{1.1in}
\begin{minipage}[c]{0.3\textwidth}
%\vskip -1in
Doctoral Committee \\
\vskip 1in
\@defensedate\par
\end{minipage}
\begin{minipage}[c]{0.7\textwidth}
\begin{flushright}
\makebox[3in]{\hrulefill}\\
\hfill \@committeechair
\vspace{1.5\baselineskip}

\makebox[3in]{\hrulefill}\\
\hfill \@readertwo
\vspace{1.5\baselineskip}

\makebox[3in]{\hrulefill}\\
\hfill \@readerthree
\vspace{1.5\baselineskip}

\makebox[3in]{\hrulefill}\\
\hfill \@readerfour
\vspace{1.5\baselineskip}

\makebox[3in]{\hrulefill}\\
\hfill \@readerfive
\vspace{1.5\baselineskip}

%\makebox[3in]{\hrulefill}\\
%\hfill \@readerfive
%\vspace{1.5\baselineskip}
\end{flushright}
\end{minipage}

\end{centeredpage}%
  \global\let\committeechair\relax
  \global\let\readertwo\relax
  \global\let\readerthree\relax
  \global\let\readerfour\relax
  \global\let\readerfive\relax
  \global\let\defensedate\relax

}
%%%%End Acceptance Page Definition
% FRONTMATTER environment
%
% The FRONTMATTER environment makes sure that page numbering is set
% correctly (roman, lower-case, starting at 3) for the front matter
% that follows the abstract.  It also resets page-numbering for
% the remainder of the dissertation (arabic, starting at 1).

\newenvironment{frontmatter}
{\setcounter{page}{2}\renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}


%%%%Begin Copyright Page Definition
\newcommand*{\@cryear}{}
\newcommand*{\cryear}[1]{\renewcommand*{\@cryear}{#1}}

\newcommand\copyrightpage{\begin{centeredpage}%
\vspace{-\baselineskip}
\begin{center}
\copyright\ \@cryear\\ %set to use \@Year
        \@author      \\
   %     ALL RIGHTS RESERVED\\
\end{center}
\end{centeredpage}%
\global\let\cryear\relax
}
%%%%End Copyright Page Definition

\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}


\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}{#1}}%
    \else
      \addcontentsline{toc}{part}{{#1}}%
    \fi
    \markboth{}{}%
    {%\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
      \bfseries {#2}\par}%
    \@endpart}
\def\@spart#1{%
    {%\centering
     \interlinepenalty \@M
     \normalfont
      \bfseries {#1}\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\@chapapp\hspace{2mm}\thechapter}\hspace{\protect\chaptocskip}{#1}}%
                    \else
%                      \addcontentsline{toc}{chapter}{\MakeTextUppercase{#1}}%
                      \addcontentsline{toc}{chapter}{{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{0\p@}}%
                    \addtocontents{lot}{\protect\addvspace{0\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  %\vspace*{50\p@}%
  {
 %\parindent \z@ \raggedright
 %ranedit
  \centering
  \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    {#1}\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  %\vspace*{50\p@}%
  {
 % \parindent \z@ \raggedright
  %ranedit
    \centering
    \normalfont
    \interlinepenalty\@M
    {#1}\par\nobreak

    \vskip 40\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

%%%%Begin abstract Definition
\if@titlepage
  \newenvironment{abstract}{%\begin{centeredpage}%
 \if@abstract
    \addcontentsline{toc}{chapter}{ABSTRACT}
 \else
 \fi
 \newpage
 \vspace{-15em}
  \begin{center}
  % ABSTRACT \\ \vskip 2em
   %\vspace{-1.5in}%Ranedit 
  \@author\par
 \vspace{20\p@}

{\MakeUppercase\@title\par}
 \vspace{20\p@}
\end{center}
%\raggedright
}
{
%  \end{centeredpage}%
  }
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi
%%%%End abstract Definition

\let\tempone\itemize
\let\temptwo\enditemize
\renewenvironment{itemize}{\vspace{-0.3\baselineskip}
			    \tempone\addtolength{\itemsep}{-0.35\baselineskip}}
			  {\temptwo\vspace{-0.3\baselineskip}}
\let\tempthree\enumerate
\let\tempfour\endenumerate
\renewenvironment{enumerate}{\vspace{-0.3\baselineskip}
			    \tempthree\addtolength{\itemsep}{-0.35\baselineskip}}
			  {\tempfour\vspace{-0.3\baselineskip}}
			
\newenvironment{verse}
               {\vspace{0.5\baselineskip}\let\\\@centercr
                \list{}{\topsep \z@
                        \parskip \z@
			\itemsep      \z@
			\parsep       \z@
			\partopsep    \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
			\item\relax
			\def\baselinestretch{1}%
			\@currsize
}
               {\endlist}
\newenvironment{quotation}
               {\vspace{0.5\baselineskip}\list{}{\topsep \z@
                        \parskip \z@
			\itemsep      \z@
			\parsep       \z@
			\partopsep    \z@
                        \itemindent    1.5em%
                        \rightmargin   \leftmargin}%
                        \item\relax
                        \def\baselinestretch{1}%
			\@currsize
}
               {\endlist}
\newenvironment{quote}
               {\vspace{0.5\baselineskip}\list{}{\topsep \z@
                        \parskip \z@
			\itemsep      \z@
			\parsep       \z@
			\partopsep    \z@
			\rightmargin\leftmargin}%
			\item\relax
			\def\baselinestretch{1}%
			\@currsize
}
               {\endlist}

%%%%Page Environment Definitions%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%titlepage
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \pagenumbering{roman}
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }

%dedication
\newenvironment{dedication}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
       \begin{center}
        DEDICATION
      \end{center}
      \if@dedication
      \addcontentsline{toc}{chapter}{DEDICATION}
      \else
      \fi
    }%
    {
    \if@restonecol\twocolumn \else \newpage \fi
    }

%acknowledgments
\newenvironment{acknowledgments}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
       \begin{center}
        ACKNOWLEDGMENTS
      \end{center}
      \if@acknowledgments
      \addcontentsline{toc}{chapter}{ACKNOWLEDGMENTS}
      \else
      \fi
    }%
    {
    \if@restonecol\twocolumn \else %\newpage
    \fi
    }

%preface
\newenvironment{preface}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \chapter*{PREFACE}
       \if@preface
       \addcontentsline{toc}{chapter}{PREFACE}
       \else
       \fi
    }%
    {
    \if@restonecol\twocolumn \else \newpage \fi
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\appendix{\par
  \setlength{\chaptocskip}{6cm}%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
\renewcommand\chaptername{}
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\newcommand\@pnumwidth{3.55em}  % TOC number margin
\newcommand\@tocrmarg{3.55em}   % title to right margin
\newcommand\@dotsep{4.5}        % space between dots
\setcounter{tocdepth}{2}

\newcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \contentsname}{\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    \clearpage
%    \pagenumbering{arabic}
%    \setcounter{page}{1}
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
        #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%\newcommand\listoffigures{%
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \chapter*{\listfigurename}%
%      \@mkboth{\MakeUppercase\listfigurename}%
%              {\MakeUppercase\listfigurename}%
%    \@starttoc{lof}%
%    \if@restonecol\twocolumn\fi
%    }
\newcommand*\l@figure{\@dottedtocline{1}{0.5em}{2.3em}}
% LIST OF FIGURES
%
% Single-space list of figures, add it to the table of contents.
\def\listoffigures{\@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \chapter*{\listfigurename\@mkboth{{\listfigurename}}%
   {{\listfigurename}}}
   \addcontentsline{toc}{chapter}{\listfigurename}
   {\@starttoc{lof}}\if@restonecol
    \twocolumn\fi}

%\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}



%bibilography toc
%\def\bchap{\@restonecolfalse
%  \if@twocolumn\@restonecoltrue\onecolumn\fi
%  \chapter*{\@mkboth{\MakeUppercase{\bibname}}%
%{\uppercase{\bibname}}
%}
%   \addcontentsline{toc}{chapter}{\bibname}
%   {\@starttoc{lof}}\if@restonecol
%    \twocolumn\fi}

%\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%\let\l@cv\l@figure

%\newcommand\listoftables{%
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \chapter*{\listtablename}%
%      \@mkboth{%
%          \MakeUppercase\listtablename}%
%         {\MakeUppercase\listtablename}%
%    \@starttoc{lot}%
%    \if@restonecol\twocolumn\fi
%    }
%\let\l@table\l@figure

% LIST OF TABLES
%
\def\listoftables{\@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \chapter*{\listtablename\@mkboth{{\listtablename}}%
{{\listtablename}}}
   \addcontentsline{toc}{chapter}{\listtablename}
   {\@starttoc{lot}}\if@restonecol
  \twocolumn\fi}

\let\l@table\l@figure

%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
% The thebibliography environment executes the following commands:
%
%  \def\newblock{\hskip .11em plus .33em minus .07em} --
%      Defines the `closed' format, where the blocks (major units of
%      information) of an entry run together.
%
%  \sloppy  -- Used because it's rather hard to do line breaks in
%      bibliographies,
%
%  \sfcode`\.=1000\relax --
%      Causes a `.' (period) not toproduce an end-of-sentence space.

%% RmS 91/10/27 [ .. ] replaced by \@biblabel{ .. }
%% RmS 91/11/13: Changed counter enumi to enumiv,
%%               as it says in the comment in latex.tex
%% RmS 92/01/14: Set \p@enumiv to {} and \theenumiv to \arabic{enumiv}
%%               to get correct references

% \thebibliography:
\def\bibname{BIBLIOGRAPHY}
%            ~~~~~~~~~~~~


\def\thebibliography#1{\chapter*{\bibname\@mkboth
  {\uppercase{\bibname}}{\uppercase{\bibname}}}
  \addcontentsline{toc}{chapter}{\bibname}
  \list{\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}



%% 91/08/26 FMI & RmS: introduced warning instead of error

\def\endthebibliography{%
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
  \endlist}


% \def\@biblabel#1{[#1]\hfill}  % Produces the label for a \bibitem[...]
                                % command.
% \def\@cite#1{[#1]}            % Produces the output of the \cite
                                % command.
\newcommand{\@intcite}{\@ifnextchar
  [{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}
\newcommand{\@intcitep}{\@ifnextchar
  [{\@tempswatrue\@citexp}{\@tempswafalse\@citexp[]}}
\renewcommand{\cite}{\@ifstar{\shortcitefullp}{\shortcitefull}}
\newcommand{\fullcite}{\@ifstar{\citefullp}{\citefull}}
\newcommand{\citefull}{\def\bsccite##1##2##3{##1 (##3}\@intcite}
\newcommand{\citefullp}{\def\bsccite##1##2##3{##1, ##3}\@intcitep}
\newcommand{\shortcitefull}{\def\bsccite##1##2##3{##2 (##3}\@intcite}
\newcommand{\shortcitefullp}{\def\bsccite##1##2##3{##2, ##3}\@intcitep}
\newcommand{\citeyear}{\def\bsccite##1##2##3{##3}\@intcitep}

\newcommand{\citeA}{\def\bsccite##1##2##3{##2}\@intcitep}
\newcommand{\fullciteA}{\def\bsccite##1##2##3{##1}\@intcitep}
\renewcommand{\@citex}[2][default]{%
  \if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{), }\@ifundefined
      {b@\@citeb}{{\bf ?}\@warning
        {Citation `\@citeb' on page \thepage \space undefined}}%
      {\csname b@\@citeb\endcsname}}}{#1}}

\newcommand{\@citexp}[2][default]{%
  \if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@citep{\@for\@citeb:=#2\do
    {\@citea\def\@citea{; }\@ifundefined
      {b@\@citeb}{{\bf ?}\@warning
        {Citation `\@citeb' on page \thepage \space undefined}}%
      {\csname b@\@citeb\endcsname}}}{#1}}

\renewcommand{\@cite}[2]{#1\if@tempswa , #2\fi)}
\newcommand{\@citep}[2]{#1\if@tempswa , #2\fi}

\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@
                \columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{TABLE OF CONTENTS}
\newcommand\listfigurename{LIST OF FIGURES}
\newcommand\listtablename{LIST OF TABLES}
%\newcommand\bibname{BIBLIOGRAPHY}
\newcommand\indexname{INDEX}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{PART}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{ABSTRACT}
%                    ~~~~~~~~~~~~~~~~

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%%
%% End of file `report.cls'.
