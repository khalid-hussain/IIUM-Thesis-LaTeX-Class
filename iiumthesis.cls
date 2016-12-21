\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iiumthesis}[2016/12/22 IIUM Thesis class]

\LoadClass[12pt, a4paper, oneside, parskip=full]{memoir}

%******************************
%      Margins
%*************************
\setulmarginsandblock{2.5cm}{3cm}{*} % Upper-Lower margins
\setlrmarginsandblock{3.8cm}{2.5cm}{*} % Left-Right margins
\checkandfixthelayout

%******************************
%      Table of con../fig../tab..
%*************************
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listfigurename}{LIST OF FIGURES}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\printtoctitle}[1]{\centering\Large\bfseries #1}
\renewcommand{\printloftitle}[1]{\centering\Large\bfseries #1}
\renewcommand{\printlottitle}[1]{\centering\Large\bfseries #1}
\renewcommand{\chapternumberline}[1]{\MakeTextUppercase{\chaptername\ 
\numtoName{#1}: }}
\setcounter{tocdepth}{3}
\abstractintoc % Show abstract in ToC
\renewcommand\cftchaptername{\chaptername~}

%******************************
%      Packages
%*************************
\RequirePackage{times}

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
\usepackage{hyperref}
\RequirePackage{hyperref}