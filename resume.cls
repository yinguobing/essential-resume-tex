\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024/03/30 Modern resume]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{xcolor}
\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{setspace}

%Setup hyperref package, and colors for links
\RequirePackage[unicode, draft=false]{hyperref}
\definecolor{linkcolour}{rgb}{0,0.1,0.4}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour,linkcolor=linkcolour}

\renewcommand{\section}{
    \@startsection
    {section}
    {1}
    {0pt}
    {-1.5ex plus -1ex minus -.2ex}
    {1ex plus .2ex}
    {\large}
}

\setcounter{secnumdepth}{0}

%----------------------------------------------------------------------------------------
%	FONT
%----------------------------------------------------------------------------------------
% fontspec allows you to use TTF/OTF fonts directly
\usepackage{fontspec}
\setmainfont{Noto}[
    Path = /usr/share/fonts/opentype/noto/,
    UprightFont = *SerifSC-Regular.otf,
    BoldFont = *SansSC-Regular.ttf,
    ItalicFont = *SerifSC-SemiBold.otf,
]
\XeTeXlinebreaklocale "zh"
\linespread{1.25}
\usepackage{fontawesome5} % social icons

%----------------------------------------------------------------------------------------
%	PACKAGES
%----------------------------------------------------------------------------------------
\usepackage{url}
\usepackage{parskip}

%other packages for formatting
\usepackage[dvipsnames]{xcolor}
\usepackage[a4paper, left=20mm, top=20mm, centering]{geometry}

%custom \section
\usepackage{titlesec}

\titleformat
{\section}
{\normalsize\bfseries}
{\thesection.}
{1em}
{}
[\titlerule]

\titlespacing{\section}{0pt}{12pt}{10pt}


%debug page outer frames
% \usepackage{showframe}

% non-numbered pages
\pagestyle{empty}

% 新指令

% 姓名
\newcommand{\name}[1]{\begin{spacing}{0.8}\huge{#1}\end{spacing}}
% 电话
\newcommand{\phone}[1]{\small\href{tel:#1}{\raisebox{-0.05\height}{\faPhone*} #1}}
% 电子邮件
\newcommand{\mail}[1]{\small\href{mailto:#1}{\raisebox{-0.05\height}{\faEnvelope[regular]} #1}}
% 个人博客
\newcommand{\blog}[1]{\small\href{https://#1}{\raisebox{-0.05\height}{\faChrome} #1}}
% Github
\newcommand{\github}[1]{\small\href{https://github.com/#1}{\raisebox{-0.05\height}{\faGithub} github.com/#1}}
