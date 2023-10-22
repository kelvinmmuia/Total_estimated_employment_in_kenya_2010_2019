% Custom LaTeX document class for two-column landscape A4 page

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twocolumnlandscape}[2023/10/22 Custom LaTeX Document Class]

% Load required packages
\LoadClass[12pt, a4paper, landscape]{article}
\usepackage[left=5mm, right=5mm, top=5mm, bottom=5mm]{geometry}
\usepackage{graphicx}
\usepackage{titling}

% Define the document class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Set up the two-column layout
\newlength{\colwidth}
\setlength{\colwidth}{0.5\paperwidth}
\newlength{\colsep}
\setlength{\colsep}{5mm} % Small margin between images

\newcommand{\twocolumnlayout}{%
  \newgeometry{left=\colsep, right=\colsep, top=5mm, bottom=5mm, paperwidth=\colwidth+\colwidth+3\colsep}
}

\newcommand{\restorelayout}{%
  \restoregeometry
}

\renewcommand{\maketitle}{%
  \begin{titlepage}
    \twocolumnlayout
    \begin{center}
      \vspace*{\fill}
      \Huge\thetitle\\
      \vspace*{\fill}
      \large\theauthor
    \end{center}
  \end{titlepage}
  \restorelayout
}

% Define a command for adding two images side by side, auto-sizing to fit the columns with a small margin
\newcommand{\twoimages}[2]{%
  \begin{figure}
    \twocolumnlayout
    \includegraphics[width=\dimexpr\colwidth-\colsep\relax]{#1}\hspace{\dimexpr0.5\colsep\relax}
    \includegraphics[width=\dimexpr\colwidth-\colsep\relax]{#2}
    \restorelayout
  \end{figure}
}


\endinput
