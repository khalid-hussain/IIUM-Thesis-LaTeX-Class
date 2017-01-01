\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iiumthesis}[2016/12/22 IIUM Thesis class]

% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}
\LoadClass[12pt, a4paper, oneside, parskip=full]{memoir}
%******************************
%      Packages
%*************************
% The following is taken from umalayathesis.cls
\RequirePackage{etoolbox}
\RequirePackage{calc}
\RequirePackage{paralist}
\RequirePackage[english]{babel}
% ===
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext,newtxmath}

%******************************
%      Margins
%*************************
\setulmarginsandblock{2.5cm}{3cm}{*} % Upper-Lower margins
\setlrmarginsandblock{3.8cm}{2.5cm}{*} % Left-Right margins
\checkandfixthelayout

%******************************
% Chapter headings
%*************************
%% Taken from umalayathesis.cls
%% 3 May 2016: One-line chapter title
\renewcommand\chapterheadstart{\bgroup\SingleSpacing\normalsize\vskip\beforechapskip}
\appto{\afterchaptertitle}{\egroup}
\setlength\beforechapskip{0pt}
\setlength\midchapskip{2\onelineskip}
\setlength\afterchapskip{\onelineskip}
\renewcommand*\chapnamefont{\normalsize\bfseries}
\renewcommand*\chapnumfont{\normalsize\bfseries\centering}
\renewcommand*\chaptitlefont{\normalsize\bfseries\centering}
\renewcommand*{\afterchapternum}{: }
\renewcommand{\printchaptername}{{\chapnamefont\MakeUppercase{\chaptername}}}
\renewcommand*{\printchaptertitle}[1]{{\chaptitlefont\MakeUppercase{#1}\par}}

%******************************
%      Table of con../fig../tab..
%*************************
\settocdepth{subsubsection}
% START Dot separators
\renewcommand\cftdotsep{0}
\renewcommand{\cftchapterleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftfigureleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cfttableleader}{\cftdotfill{\cftdotsep}}
% END Dot separators
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\printtoctitle}[1]{\centering\Large\bfseries #1}
\renewcommand{\printloftitle}[1]{\centering\Large\bfseries #1}
\renewcommand{\printlottitle}[1]{\centering\Large\bfseries #1}
\renewcommand{\chapternumberline}[1]{\MakeTextUppercase{\chaptername\ 
\numtoName{#1}: }}
\abstractintoc % Show abstract in ToC
\renewcommand\cftchaptername{\chaptername~}

\setlength\cftsectionindent{1.2cm}
\setlength\cftsubsectionindent{2.0cm}
\setlength\cftsubsubsectionindent{2.8cm}

% For removing spaces between chapters in LoF and LoT
%\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
%\addtocontents{lof}{\protect\noaddvspace}
%\addtocontents{lot}{\protect\noaddvspace}

%******************************
%      Spacing
%*************************
\usepackage{parskip}
\setlength{\parindent}{1.2cm} % Paragraph indent
\frenchspacing % Use single space after end of sentence
\DoubleSpacing

%******************************
%      Others
%*************************
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{longtable}