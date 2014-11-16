\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{formats/format1}[11/09/2013 custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}

\RequirePackage{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[dvipsnames]{color}
\RequirePackage{baskervald}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{multicol}
\RequirePackage{enumitem}
 
\pagestyle{empty}
 
\geometry{letterpaper,tmargin=0.66in,bmargin=0.66in,lmargin=1in,rmargin=1in,headheight=0in,headsep=0in,footskip=.3in}
 
\setlength{\parindent}{0in}
\setlength{\parskip}{0in}
 

% Colors
\definecolor{light-grey}{gray}{0.7}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commands and Environments for resume
 
% A horizontal rule for sections
\newcommand{\HRule}[2]{\textcolor{#1}{\rule{\linewidth}{#2}}}
 
% A section tile command
\newcommand{\sectiontitle}[1]{\begin{minipage}{\textwidth}\HRule{black}{0.25mm}\vspace{-10pt}\begin{center}\Large\MakeUppercase{#1}\end{center}\end{minipage}\\\HRule{light-grey}{0.15mm}\vspace{\baselineskip}}
 

\newcommand{\contact}[7]{
  \begin{tabularx}{\linewidth}{X r}
    \multirow{2}{*}{\Huge{#1}} & #6 \\& #7\\\\
  \end{tabularx}\\
}

% An environment for a resume section
\newenvironment{ressection}[1]{
  \sectiontitle{#1}}
  {\vspace{-\baselineskip}}
 
% A column if there is a two columned section such as in awards
\newenvironment{rescolumn}{
  \vspace{-30pt}
  \begin{multicols}{6}
    \begin{itemize}
      \renewcommand\labelitemi{}
      \setlength{\itemsep}{0cm}%
      \setlength{\parskip}{0cm}%
  }
  {\end{itemize}
    \end{multicols}
    \vspace{0.5\baselineskip}}
 
% A resitem is a simple list element
\newcommand{\resitem}[1]{
    \vspace{2pt}
    \item \begin{flushleft} #1 \end{flushleft}
}
 
% An entry for education
% Arg1: Institution
% Arg2: Program
% Arg3: Dates
\newcommand{\resedentry}[3]{
  \begin{minipage}{\textwidth}
  \vspace{-10pt}
  \textbf{#1}\\
  \textit{#2}\hfill\textcolor{light-grey}{#3}\\
  \vspace{0.5\baselineskip}
  \end{minipage}
}
 
% Resentry defines a position
% Arg1: Position title
% Arg2: Company or Office---Company
% Arg3: Location, PROV
% Arg4: Date Range
\newcommand{\resentryheader}[4]{
    \vspace{-5pt}
    \textbf{#1}\hspace{\stretch{1}}\textcolor{light-grey}{#3}\\
    \textit{#2}\hspace{\stretch{1}}\textcolor{light-grey}{#4}\\
}
 
% This is a resume entry with a header and bullet items
\newenvironment{resentry}[4]{
  \begin{minipage}{\textwidth}
    \resentryheader{#1}{#2}{#3}{#4}
        \vspace{-\baselineskip}
    \begin{itemize}[noitemsep,nolistsep]
}{
    \end{itemize}
        \vspace{\baselineskip}
        \end{minipage}
}
