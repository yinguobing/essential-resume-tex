\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024/03/30 Modern resume]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[dvipsnames]{xcolor}
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


% FONT
\usepackage{xeCJK}
\setmainfont {Noto Serif SC}
\setCJKmainfont {Noto Serif SC}
\setCJKsansfont {Noto Sans SC}
\setCJKmonofont {Noto Sans Mono CJK SC}
\linespread{1.25}
\usepackage{fontawesome5} % social icons

% 页面几何
\usepackage[includefoot, a4paper, left=20mm, top=20mm, centering]{geometry}

% Header & footer
\usepackage{lastpage}
\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\fancyfoot[C]{\thepage \hspace{1pt} / \pageref{LastPage}}

% 引用URL
\usepackage{url}

% 段落间距
\usepackage{parskip}

% 标题外观
\usepackage{titlesec}
\titleformat
{\section}
{\normalsize\bfseries}
{\thesection.}
{1em}
{}
[\titlerule]
\titlespacing{\section}{0pt}{12pt}{10pt}

% 新指令

% 姓名
\newcommand{\name}[1]{\begin{spacing}{0.8}\huge{#1}\end{spacing}}
% 电话
\newcommand{\phone}[1]{\small\href{tel:#1}{\faPhone* #1}}
% 电子邮件
\newcommand{\mail}[1]{\small\href{mailto:#1}{\faEnvelope[regular] #1}}
% 个人博客
\newcommand{\blog}[1]{\small\href{https://#1}{{\faChrome} #1}}
% Github
\newcommand{\github}[1]{\small\href{https://github.com/#1}{{\faGithub} github.com/#1}}
