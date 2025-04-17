\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass{article}

\RequirePackage[8pt]{ctex}
\setCJKmainfont{FandolSong-Regular.otf}[BoldFont = FandolHei-Regular.otf, ItalicFont = FandolKai-Regular.otf] % Hei represents bold, Kai represents italic

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use xcolor for customizing color
\RequirePackage[usenames,dvipsnames]{xcolor}

% \RequirePackage[
% 	a4paper,
% 	left=0.7in,
% 	right=0.7in,
% 	top=0.50in,
% 	bottom=0.5in,
% 	nohead
% ]{geometry}

\RequirePackage[
	a4paper,
	left=0.4in,
	right=0.4in,
	top=0.4in,
	bottom=0.3in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}

\titleformat{\section}         % Customise the \section command 
  {\Large\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1}{*1}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}
\titlespacing*{\paragraph}{0cm}{*1}{*0.5}

\newcommand{\dated}[2]{#1 \hfill #2}
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \centerline{\Huge\scshape{#1}} 
  \vspace{1.2ex}
}
\newcommand{\contactInfo}[2]{
  \centerline{\sffamily\large{\ 手机：{#1} \textperiodcentered\ \ 邮箱：{#2}}} 
  \vspace{1.2ex}
}
\newcommand{\otherInfo}[4]{
  \centerline{\sffamily\large{\ {#1}}
    \ifthenelse{\isempty{#2}}%
      { } % if {#2} is empty
      {\textperiodcentered\ \ {#2} } % homepage, no space before \text...
    \ifthenelse{\isempty{#3}}%
      { } % if {#3} is empty
      {\textperiodcentered\ \ {#3} } % homepage, no space before \text...
    \ifthenelse{\isempty{#4}}%
      { } % if {#3} is empty
      {\textperiodcentered\ \ {#4} }
  }
  \vspace{0.7ex}
}

\newcommand{\yourphoto}[1]{
  \hfill \smash{\includegraphics[width={#1}\paperwidth]{images/you.png}}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}

% add
\newcommand{\sepspace}{\vspace*{1em}}		        % Vertical space macro

\newcommand{\MyName}[1]{
    \noindent
	\huge \textbf{#1} \hfill        % Name
	\par \normalsize \normalfont
}

\newcommand{\SimpleEntry}[1]{
	\noindent\hangindent=0.5cm\hangafter=0          % Indentation
	#1 \par                                         % Entry 
}