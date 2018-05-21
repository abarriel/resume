\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2018/05/21 resume]

\LoadClass{article}

\RequirePackage{titlesec} % For neater titles
\RequirePackage{geometry} % For page layout
\RequirePackage{fontawesome} % For icons
\RequirePackage{hyperref} % For links
\RequirePackage[dvipsnames]{xcolor} % For colors
\RequirePackage{graphicx} % For images
\pagenumbering{gobble} % Remove page numbering
\graphicspath{ {images/} }

\definecolor{red}{RGB}{213,75,61}
\definecolor{grey}{RGB}{106,115,124}
\definecolor{blue}{RGB}{17,120,179}

% Margins
\geometry{
    left=10mm,
	right=10mm,
	top=10mm,
	bottom=15mm,
    }

\titleformat{\section}         % Customise the \section command 
{\Large\scshape\raggedright} % Make the \section headers large (\Large),
                             % small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

\newcommand{\datedsubsection}[2]{%
\subsection[#1]{\textbf{#1} \hfill #2}%
}

\newcommand{\name}[1]{
	\centerline{\textbf{\textit{\Huge{#1}}}}
}

% Skill title
\newcommand{\skilltitle}[1]{
	\vspace{2mm}
	\textbf{#1} \\
}

% Skill description
\newcommand{\skilldesc}[1]{
	\vspace{2mm}
#1 \\
}

\renewcommand\labelitemi{$\cdot$}
\newcommand{\workitems}[4]{
    \renewcommand\labelitemi{}
    \begin{itemize}
        \item \color{red}\large{\faEnvelope} {\href{mailto:#1}{\texttt{#1}}}
        \item \color{grey}\large{\faGithub} {\url{#2}}
        \item \color{blue}\large{\faLinkedin} {\url{#3}}
        \item \color{OliveGreen}\large{\faPhone} {\texttt{#4}}
    \end{itemize}
}
