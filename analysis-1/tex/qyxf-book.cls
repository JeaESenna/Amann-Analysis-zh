% --------------------------
% qyxf-book 钱院学辅书籍模板
% 如不清楚含义，请勿随意更改
% --------------------------
%
% ======================================================================
%  本项目（Analysis I 中文译本）对模板所做的修改，全部集中在本文件内：
%    ① 定理类环境与计数器 —— 见「定理环境及样式设定」一节；
%    ② 编号与显示格式     —— 见「章节标题与目录样式」一节；
%    ③ 条目标记列表（items / subitems / exercises）—— 见「列表样式设置」。
%  正文不再需要任何自备的环境定义文件；qyxf-book.cls 就是唯一的排版定义处。
%
%  【编译须知】TeX Live 里另有一份同名的 qyxf-book.cls，且优先级高于当前目录。
%  要让本文件的改动生效，必须把仓库根目录放到 TEXINPUTS 最前：
%      $env:TEXINPUTS = (Get-Location).Path + ';'
%  在本目录下执行 xelatex 编译即可。
% ======================================================================

\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\newcommand{\styversion}{3.1.0}
\newcommand{\styname}{qyxf-book}
\ProvidesClass{qyxf-book}
  [2020/09/11 v3.1.0 Qian Yuan Xue Fu book template]
\typeout{The book template provided by Qian Yuan Xue Fu}

% 设定 key-val 选项
\RequirePackage{kvoptions}
\SetupKeyvalOptions{family = QYXF, prefix = QYXF@}

% 选项定制与处理
\DeclareStringOption[basic]{colorscheme}[basic]
\DeclareStringOption{primary}
\DeclareStringOption{secondary}
\DeclareBoolOption[true]{xits}
\DeclareVoidOption{noCJKfont}{\PassOptionsToClass{fontset=none}{ctexbook}}

% 已废弃选项提示
\DeclareVoidOption{color}{\ClassWarning{\styname}{The option `color' is deprecated. Use `colorscheme' instead}}
\DeclareVoidOption{parskip}{\ClassWarning{\styname}{The option `parskip' is deprecated}}
\DeclareVoidOption{decoration}{\ClassWarning{\styname}{The option `decoration' is deprecated, due to the lack of `pgfornament' package in TeX Live 2020}}
\DeclareVoidOption{sourcefont}{\ClassWarning{\styname}{The option `sourcefont' is deprecated. Please customize your fonts by commands of `fontspec' and `xeCJK' package}}
\DeclareVoidOption{plain}{\ClassWarning{\styname}{The option `sourcefont' is deprecated}}
\DeclareVoidOption{opensource}{\ClassWarning{\styname}{The option `opensource' is deprecated}}

% 处理选项
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*

% 载入文类
\PassOptionsToPackage{no-math}{fontspec}
\PassOptionsToPackage{CJKmath = true}{xeCJK}
\LoadClass{ctexbook}

% 西文字体处理
\RequirePackage{amsmath}
% amsthm 提供 \theoremstyle / \newtheorem / proof 环境，并让 \qedsymbol 可改。
% 必须在 amsmath 之后载入。
\RequirePackage{amsthm}
\ifQYXF@xits
  \setmainfont{XITS}
  \setsansfont{TeX Gyre Heros}[Scale=0.93]
  \RequirePackage{unicode-math}
  \setmathfont{XITS Math}
\fi
\RequirePackage{hologo}

% unicode-math 不提供的 amssymb 同名符号。
% \Box、\blacksquare、\square 在 LaTeX2e 核心里是「不提供」的占位命令，
% 直接调用会报 "Command \Box not provided in base LaTeX2e"，故用 renewcommand。
% 证明环境结尾的实心方块 ■ 就取自 \blacksquare。
\providecommand{\blacksquare}{}\renewcommand{\blacksquare}{\mdlgblksquare}
\providecommand{\square}{}\renewcommand{\square}{\mdlgwhtsquare}
\providecommand{\Box}{}\renewcommand{\Box}{\mdlgwhtsquare}
\providecommand{\lcorner}{\llcorner}
\providecommand{\rcorner}{\lrcorner}
\providecommand{\ulcorner}{\ulcorner}
\providecommand{\circledR}{\mathord{\text{\textregistered}}}

% 正文样式设置
\RequirePackage[normalem]{ulem}

% 脚注样式调整
% 原文（Amann–Escher, Analysis I）用上标阿拉伯数字，不带圆括号与粗体，故此处照改。
% 编号按**节**重新开始（原文如此：第 IV 章 §1 是 1,2,3，§2 又从 1 开始），
% 与 LaTeX 默认的「按章重置」不同，所以这里挂到 section 计数器上。
\renewcommand{\thefootnote}{\arabic{footnote}}
\@addtoreset{footnote}{section}

% 浮动体（图表）处理
\RequirePackage{graphicx}
\graphicspath{{./figure/}{./pic/}{./image}}
\setlength{\textfloatsep}{6pt plus 2pt minus 4pt}
\setlength{\intextsep}{6pt plus 2pt minus 2pt}
\RequirePackage{longtable,booktabs}
\RequirePackage{tikz}
\usetikzlibrary{calc,backgrounds,shadows}
\RequirePackage[many]{tcolorbox}

% caption 样式设定
\RequirePackage{caption}
\DeclareCaptionFormat{colored}{\small{\bfseries\color{\CaptionColor}#1} #3}
\captionsetup{
  format = colored,
  skip = 1ex
}

% 处理配色方案
\RequirePackage{etoolbox}
\ifdefempty{\QYXF@primary}{\relax}{\newcommand{\PrimaryColor}{\QYXF@primary}}
\ifdefempty{\QYXF@secondary}{\relax}{\newcommand{\SecondaryColor}{\QYXF@secondary}}

% color scheme 默认值

% for titles amd text
\newcommand{\TitleColor}{black}
\newcommand{\ListColor}{black}
\newcommand{\CaptionColor}{black}
\newcommand{\LinkColor}{black}
\newcommand{\MiscColor}{black}
% for boxes
\newcommand{\BoxBackground}{white}
\newcommand{\BoxFrame}{black!75}
\newcommand{\BoxTitleColor}{white}
\newcommand{\BoxTitleBackground}{black!50}
\newcommand{\BoxColor}{black}
\newcommand{\AlertBackground}{white}
\newcommand{\AlertColor}{black}
\newcommand{\AlertFrame}{black}
\newcommand{\AlertTitleBackground}{black}
\newcommand{\AlertTitleColor}{white}
% for theorems
\newcommand{\DefineBackground}{white}
\newcommand{\DefineFrame}{black!40}
\newcommand{\DefineColor}{black}
\newcommand{\TheoremBackground}{black!10}
\newcommand{\TheoremFrame}{black!80}
\newcommand{\TheoremColor}{black}

% 读取 color scheme
\RequirePackage{xstring}
\IfEqCase{\QYXF@colorscheme}{%
  {basic}{\relax}% Basic theme
  {black}{% BLack theme (bicolor)
    % main colors
    \providecommand\PrimaryColor{black}
    % for titles amd text
    \renewcommand\TitleColor{\PrimaryColor}
    \renewcommand\ListColor{\PrimaryColor}
    \renewcommand\CaptionColor{\PrimaryColor}
    \renewcommand\LinkColor{\PrimaryColor}
    \renewcommand\MiscColor{\PrimaryColor}
    % for boxes
    \renewcommand\BoxBackground{white}
    \renewcommand\BoxTitleColor{\PrimaryColor}
    \renewcommand\BoxTitleBackground{white}
    \renewcommand\BoxFrame{\PrimaryColor}
    \renewcommand\AlertTitleColor{white}
    \renewcommand\AlertTitleBackground{\PrimaryColor}
    % for theorems
    \renewcommand\DefineFrame{\PrimaryColor}
    \renewcommand\TheoremBackground{white}
    \renewcommand\TheoremFrame{\PrimaryColor}
  }%
  {rbb}{% Red-Blue-Black theme (tricolor)
    % main colors
    \providecommand\PrimaryColor{blue}
    \providecommand\SecondaryColor{red}
    % for titles amd text
    \renewcommand\TitleColor{\PrimaryColor}
    \renewcommand\ListColor{\PrimaryColor}
    \renewcommand\CaptionColor{\PrimaryColor}
    \renewcommand\LinkColor{\SecondaryColor}
    \renewcommand\MiscColor{\PrimaryColor}
    % for boxes
    \renewcommand\BoxBackground{white}
    \renewcommand\BoxFrame{\PrimaryColor}
    \renewcommand\BoxTitleBackground{\PrimaryColor}
    \renewcommand\AlertColor{\SecondaryColor}
    \renewcommand\AlertFrame{\SecondaryColor}
    \renewcommand\AlertTitleBackground{\SecondaryColor}
    % for theorems
    \renewcommand\DefineFrame{black}
    \renewcommand\TheoremBackground{white}
    \renewcommand\TheoremFrame{\PrimaryColor}
  }%
  {bootstrap-v4}{% Bootstrap V4 theme
    % for titles amd text
    \renewcommand\TitleColor{black!85}
    \renewcommand\ListColor{blue!50!cyan}
    \renewcommand\CaptionColor{cyan!80!olive}
    \renewcommand\LinkColor{blue!67!green!}
    \renewcommand\MiscColor{blue!50!cyan}
    % for boxes
    \renewcommand\BoxBackground{cyan!20!white}
    \renewcommand\BoxFrame{blue!30!teal}
    \renewcommand\BoxTitleBackground{blue!55!cyan}
    \renewcommand\BoxColor{blue!45!teal!80!black}
    \renewcommand\AlertBackground{red!10!white}
    \renewcommand\AlertColor{red!40!black!90!white}
    \renewcommand\AlertFrame{red!75!teal}
    \renewcommand\AlertTitleBackground{red!80!cyan}
    % for theorems
    \renewcommand\DefineBackground{green!8!white!94!black}
    \renewcommand\DefineFrame{green!10!white!90!black}
    \renewcommand\DefineColor{green!40!black!90!white}
    \renewcommand\TheoremBackground{-blue!20!black!96!green}
    \renewcommand\TheoremFrame{-blue!30!black!90!green}
    \renewcommand\TheoremColor{red!57!green!90!black}
  }%
}[\ClassWarning{\styname}{Color scheme `\QYXF@colorscheme' not found, `basic' theme is used then.}]

% tcolorbox 样式设定
\tcbset{
  enhanced,
  noparskip,
  after = \noindent,
  colback = \BoxBackground,
  title filled,
  colbacktitle = \BoxTitleBackground,
  colframe = \BoxFrame,
  coltitle = \BoxTitleColor,
  coltext = \BoxColor,
  fonttitle = \bfseries,
  arc = 0.25em,
  boxrule = 0.5pt,
  toptitle = 0.75em,
  bottomtitle = 0.75em,
  boxsep = 0pt,
  left = 1.25em,
  right = 1.25em,
  top = 1.25em,
  bottom = 1.25em,
  drop fuzzy shadow,
  breakable
}

% 引导命令
\newcommand{\exercise}[1]{\noindent\textbf{\color{\MiscColor}练习 #1}\ }
\newcommand{\solve}[1][解]{\noindent\textbf{\color{\MiscColor}#1}\ }
\newcommand{\analysis}[1][分析]{\noindent\emph{\color{\MiscColor}#1}\ }

% 中文标题字体：原文的「定理／引理／证明」等标题用**楷体**。
% XeLaTeX 会报
%     Font shape `TU/KaiTi(0)/b/n' undefined
% 并把加粗的楷体回退成正文字体（于是标题看起来不像标题）。
% 这里把楷体的粗体显式映射到黑体：中文排版里「楷体标题加粗」就是用黑体。
% 用 fontset=none 时 \kaishu 不存在，故先判断再设置。
\ifdefined\kaishu
  \setCJKfamilyfont{zhkai}{KaiTi}[BoldFont=SimHei]
  \renewcommand*{\kaishu}{\CJKfamily{zhkai}}
\fi

% ======================================================================
% 定理环境及样式设定
% ----------------------------------------------------------------------
% 【计数器：共用一套】
%   原文（Amann–Escher, Analysis I）在一个「节」内把
%     例 / 注 / 命题 / 定理 / 引理 / 推论 / 定义
%   编成**同一个序列**：例 1.1、注 1.2、命题 1.3 是同一条流水号里的第 1、2、3 项，
%   而不是各自从 1 起算。译文里的交叉引用（「由命题 1.5」「见例 1.1(c)」）
%   能对上号，全靠这一条。
%   因此下面所有环境都挂在同一个计数器 thmlike 上（[thmlike] 即「共用」）。
%
% 【每节重置】编号形如「节号.序号」；\numberwithin 让序号随每一节回到 1。
%
% 【公式是另一套计数器】见文件末尾的 \numberwithin{equation}{section}：
%   equation 与 thmlike 互不相干，因此同一节里可以同时存在
%   「命题 1.1」与公式 (1.1)。原文正是如此。
% ======================================================================

% 标题样式：楷体加粗，编号后紧跟一句点，再留 0.5em 接正文。
% amsthm 自带的几种 style 都不带中文字体设置，故自定义一种。
\newtheoremstyle{qyxf}%
  {0.8ex plus 0.3ex minus 0.1ex}%  上方间距
  {0.8ex plus 0.3ex minus 0.1ex}%  下方间距
  {\normalfont}%                   正文字体
  {0pt}%                           首行缩进
  {\bfseries\kaishu}%              标题字体
  {.}%                             编号后标点
  {0.5em}%                         编号与正文间距
  {}%                              标题后附加内容
\theoremstyle{qyxf}

% 共用计数器本体。\newtheorem 允许计数器名没有同名环境。
\newtheorem{thmlike}{条目}
\numberwithin{thmlike}{section}

% 七个环境，全部 [thmlike] —— 这就是「共用一套计数器」。
\newtheorem{example}[thmlike]{例}
\newtheorem{remark}[thmlike]{注}
\newtheorem{proposition}[thmlike]{命题}
\newtheorem{theorem}[thmlike]{定理}
\newtheorem{lemma}[thmlike]{引理}
\newtheorem{corollary}[thmlike]{推论}
\newtheorem{definition}[thmlike]{定义}
% 原文偶有合并标题的条目（「例与注」），与上面同属一套编号。
\newtheorem{examplenote}[thmlike]{例与注}
% 原书还有两条「应用」（2.16、3.9），也在这套编号里，标签固定印「应用」。
\newtheorem{application}[thmlike]{应用}

% ---------------------------------------------------------------------------
% 定理类条目的框：**只框陈述性的五类**，而且彼此有区别（2026-10-17 用户要求）
% ---------------------------------------------------------------------------
% 用户最终定稿：**定理 / 引理 / 命题 / 推论 / 定义** 五类加框（「最主要的」环境），
% 例 / 注 / 例与注 / 应用**不加框**，恢复成普通段落（它们本来也是原书的排法）。
%
% 五类的区别（按「分量」从重到轻）：
%   定理    1.0pt 框，最深的底色          （核心结论，最重）
%   定义    0.8pt 框，直角，用模板自己的 Define 配色（一眼认得出是定义）
%   引理    0.8pt 框，次深
%   命题    0.6pt 框，中等
%   推论    0.5pt 框，白底                 （由前文推出来的，视觉上更轻）
%
% 颜色一律**从主题变量派生**（先用 \colorlet 把 \TheoremBackground 等取成
% 具体色名，再用 xcolor 的 !n!white 调淡），这样切 color scheme
% （basic / black / rbb / bootstrap-v4）时这套分级仍然成立，
% 不会因为主题里 \TheoremBackground 是 `-blue!20!black!96!green` 这种
% 带负混合的表达式而炸掉。
%
% 为什么用 \tcolorboxenvironment 而不是 \BeforeBeginEnvironment + \begin{tcolorbox}：
%   · 它按环境名绑定，不会和其它 tcolorbox 用法打架；
%   · 选项里必须**逐条写全**（这个命令把选项原样存起来，不展开宏 ——
%     实测写成 {\QyxfThmBoxOptions} 会报 "I do not know the key '/tcb/colback=…'"）。
%   · 可跨页（breakable）是必须的：有几条比一页还长（定理 9.1、注 8.19 之类），
%     不可跨页会被整条挤到下一页。
\colorlet{QyxfThmBg}{\TheoremBackground}
\colorlet{QyxfThmFrame}{\TheoremFrame}
\colorlet{QyxfThmText}{\TheoremColor}
\colorlet{QyxfDefBg}{\DefineBackground}
\colorlet{QyxfDefFrame}{\DefineFrame}
\colorlet{QyxfDefText}{\DefineColor}

% 定理：最重
\tcolorboxenvironment{theorem}%
  {colback=QyxfThmBg, colframe=QyxfThmFrame, coltext=QyxfThmText,
   boxrule=1pt, beforeafter skip balanced=0.45em, before upper={\@listdepth0 }, arc=0.25em,
   left=1.2em, right=1.2em, top=1em, bottom=1em, breakable}
% 引理：次重
\tcolorboxenvironment{lemma}%
  {colback=QyxfThmBg!62!white, colframe=QyxfThmFrame!82!white, coltext=QyxfThmText,
   boxrule=0.8pt, beforeafter skip balanced=0.45em, before upper={\@listdepth0 }, arc=0.25em,
   left=1.15em, right=1.15em, top=0.9em, bottom=0.9em, breakable}
% 命题：中等
\tcolorboxenvironment{proposition}%
  {colback=QyxfThmBg!38!white, colframe=QyxfThmFrame!65!white, coltext=QyxfThmText,
   boxrule=0.6pt, beforeafter skip balanced=0.45em, before upper={\@listdepth0 }, arc=0.22em,
   left=1.1em, right=1.1em, top=0.85em, bottom=0.85em, breakable}
% 推论：轻（白底）
\tcolorboxenvironment{corollary}%
  {colback=white, colframe=QyxfThmFrame!52!white, coltext=QyxfThmText,
   boxrule=0.5pt, beforeafter skip balanced=0.45em, before upper={\@listdepth0 }, arc=0.22em,
   left=1.1em, right=1.1em, top=0.8em, bottom=0.8em, breakable}
% 定义：模板自己的 Define 配色 + 直角（与命题/推论一眼区分）
\tcolorboxenvironment{definition}%
  {colback=QyxfDefBg, colframe=QyxfDefFrame, coltext=QyxfDefText,
   boxrule=0.8pt, beforeafter skip balanced=0.45em, before upper={\@listdepth0 }, arc=0pt,
   left=1.1em, right=1.1em, top=0.85em, bottom=0.85em, breakable}

% 例 / 注 / 例与注 / 应用：**不加框**（用户指定）。它们仍是有编号的环境、
% 仍走 thmlike 计数器，只是按原书那样排成普通段落；不要在这里补 \tcolorboxenvironment。

% 定理类条目里的脚注：**提到框外、仍排在页脚**。
%   tcolorbox 的正文排在 \vbox 里，LaTeX 就按 minipage 的规则处理 \footnote：
%   脚注正文留在框底部、标号变成 a/b/c（mpfootnote），与全书「按节连续编号」
%   的脚注体系冲突。转换层（build_env_book_v2.js 的 liftFootnotes）的做法：
%   · \qyxffntextdef{idx}{…} 放在 \begin{env} **之前**：给这一次的脚注编号
%     （\refstepcounter），并按这个编号把正文交给 \footnotetext（进页脚）；
%   · 正文里的引用点用 \qyxffnmark{idx}，只印出刚才存下的编号。
%   放在「之前」而不是「之后」，是因为方框可能跨页：放之后时脚注正文会被推到
%   条目结束的那一页（实测应用 2.16 的脚注漂到了两页之后）。
%
% ★ 这里**不要**再写 \makeatletter/\makeatother：类文件读进来时 @ 本来就已经是
%   字母，插一对 \makeatother 会让后面整段（`\newcommand{\@subtitle}{}` 之类）
%   把 `\@` 当成命令名，报 "Command \@ already defined"、"Missing \begin{document}"。
\newcommand\qyxffntextdef[2]{%
  \refstepcounter{footnote}%
  \expandafter\xdef\csname qyxfn@#1\endcsname{\thefootnote}%
  \expandafter\footnotetext\expandafter[\csname qyxfn@#1\endcsname]{#2}}
\newcommand\qyxffnmark[1]{\textsuperscript{\csname qyxfn@#1\endcsname}}
% 「落位后置」变体（build/fixes/footnote-placement.json 里 place:"after" 的脚注）：
%   \qyxffnnumdef{idx}       框前：只给编号（\refstepcounter + 存 qyxfn@idx），
%                            供框内 \qyxffnmark 使用；
%   \qyxffntextof{idx}{正文} 框后：按存下的编号把正文交给 \footnotetext（进页脚），
%                            用于「引用点在方框开始之后」、须让脚注正文落在方框
%                            结束页（=引用点所在页）的场合。
% 原 \qyxffntextdef 的定义与行为完全不变（旧脚注零影响）。
\newcommand\qyxffnnumdef[1]{%
  \refstepcounter{footnote}%
  \expandafter\xdef\csname qyxfn@#1\endcsname{\thefootnote}}
\newcommand\qyxffntextof[2]{%
  \expandafter\footnotetext\expandafter[\csname qyxfn@#1\endcsname]{#2}}

% 证明环境：原文以「证明」起头，以实心方块 ■ 收尾。
% （见原书页 5 脚注 2：We use a black square to indicate the end of a list of
%   examples or remarks, or the end of a proof.）
% 用 amsthm 自带的 proof 环境：它按 amsmath 的规则处理结尾方块的位置
% （证明以行间公式结尾时把方块放到公式同一行右侧），比自己写 \hfill 可靠。
% 证明不编号、不进目录，也不占用 thmlike 计数器。
\renewcommand{\proofname}{证明}
\renewcommand{\qedsymbol}{\ensuremath{\blacksquare}}
% 【2026-10-21 用户要求】证明环境起头的「证明」二字要**加粗、与 \proofhead 一致**。
% 做法：照抄 amsthm 的 proof 定义，只改标题那两处，其余（\pushQED/\popQED、结尾 ■ 的
% 位置规则）一字未动：
%   · 字体：`\itshape` → `\bfseries\kaishu`。
%     amsthm 原本是西文斜体；中文没有斜体字形，排出来仍是正体，于是和条目内部那个
%     \proofhead（加粗楷体）对不上。
%   · 标点：去掉 `\@addpunct{.}`。
%     amsthm 会在「证明」后加一个句点，而全书 438 处 \proofhead 都不带句点；
%     加上就又不一样了。间距仍由 \item 的 labelsep（0.5em）给，与 \proofhead 的
%     \enspace 一致。
%
% ★ 这里不要写 \makeatletter/\makeatother：类文件读进来时 @ 本来就是字母，
%   插一对 \makeatother 会让后面 `\newcommand{\@subtitle}` 之类把 `\@` 当命令名。
\renewenvironment{proof}[1][\proofname]{%
  \par\pushQED{\qed}%
  \normalfont\topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries\kaishu
        #1]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
% 原文里「证明」有时只是环境内部的一个小标题（如例 1.4 中 (b) 项之后的那行），
% 那种场合用 \proofhead{证明}：起头加粗，但不产生结尾方块。
\newcommand{\proofhead}[1][证明]{\par\smallskip\noindent{\bfseries\kaishu #1}\enspace\ignorespaces}

\newtcolorbox{note}{title={注记}}
\newtcolorbox{alert}{
  title = {警告},
  colback = \AlertBackground,
  colframe = \AlertFrame,
  colbacktitle = \AlertTitleBackground,
  coltitle = \AlertTitleColor,
  coltext = \AlertColor
}

% 页面设置
\RequirePackage{geometry}
\geometry{margin = 1in}
\setlength{\footskip}{30pt}
\setlength{\headheight}{15pt}

% 链接设置
\RequirePackage[unicode]{hyperref}
\hypersetup{
  breaklinks,
  unicode,
  linktoc = all,
  bookmarksnumbered = true,
  bookmarksopen = true,
  pdfborder = {0 0 0},
  linktocpage,
  pageanchor = true
}
\hypersetup{
  colorlinks = true,
  linkcolor = \LinkColor,
  anchorcolor = \MiscColor,
  urlcolor = \LinkColor,
  citecolor = \MiscColor
}

% ======================================================================
% 章节标题与目录样式
% ----------------------------------------------------------------------
% ---- 编号方式：与原文 Analysis I（Amann–Escher）一致 ----
%   章   ：罗马数字，写作「第 I 章」（原文 Chapter I）
%   节   ：章内阿拉伯数字，从 1 重新起算，写作「1 逻辑基础」
%   子节 ：原文不编号，只用粗体小标题（正文里由 \subsection* 实现）
%   公式 ：按「节号.序号」编号（\numberwithin{equation}{section}），如 (1.4)
%   定理类：按「节号.序号」编号（\numberwithin{thmlike}{section}），如「命题 1.5」
%   交叉引用：译文里的「命题 I.11.4」用 \ref 生成，即「章号.节号.序号」，
%            章号取 \thechapter（= I、II、III …），与原文写法一致。
% ======================================================================
\RequirePackage{titlesec,titletoc}
\ctexset{
  chapter = {name = {第~,~章}, number = {\Roman{chapter}}},
  section = {name = {}, number = {\arabic{section}}}
}
% ---- 计数器显示格式 ------------------------------------------------
% ctexbook 默认把章号前置到所有下级计数器的显示里（\theequation 于是成了
% \thechapter.\@arabic\c@equation）。原文的编号**不带章号**：
%     公式 (1.4)、命题 1.5 —— 章号只出现在章标题和正文交叉引用「命题 I.11.4」里。
% 所以这里把显示格式改回「节号.序号」。
%
% 顺序很要紧：\numberwithin 会自己重定义 \the<计数器>，必须**先** \numberwithin
% 建立「每节重置」，**后** \renewcommand 定显示格式。反过来写会被覆盖掉。
%
% 另有一处极易踩的坑：\arabic 的参数是**数字**，不是计数器名。
%     \arabic{equation}  会把它当成数字 0，从而把计数器**加一**（编号变成 1.1.1，
%                        每引用一次 \theequation 还会再多加一次）；
%     \@arabic\c@equation 才是「读计数器当前值」（这才是 \theequation 该用的写法）。
\numberwithin{thmlike}{section}
\numberwithin{equation}{section}
% 节的显示格式：原文的节号就是「1」「2」「12」，不带章号。
% ctexbook 默认是 \thechapter.\@arabic\c@section（即 I.1），这里改回纯节号。
\renewcommand{\thesection}{\@arabic\c@section}
% \p@section 是「章号.节号」（I.11），供正文交叉引用「命题 I.11.4」使用，
% 因此保持 ctex 的原样，不动它。
\renewcommand{\thethmlike}{\thesection.\@arabic\c@thmlike}
\renewcommand{\theequation}{\thesection.\@arabic\c@equation}
\renewcommand{\thesubsection}{\@arabic\c@subsection}
\renewcommand{\thesubsubsection}{\@arabic\c@subsubsection}
% 章标题：中文（第/章/章名）由 format 的字号控制；但 label 里的 `\CTEXthechapter`
% 展开出的章号（第 I 章里的罗马数字 I）会退回正文正常字号，印出来比汉字小一大截。
% 所以在 label 里再显式给一次字号 + \selectfont（2026-10-24 版面审校线报出）。
\titleformat{\chapter}[block]{\color{\TitleColor}\centering\bfseries\fontsize{2.25em}{1.2ex}}%
  {\fontsize{2.25em}{1.2ex}\selectfont\CTEXthechapter}{1em}{}
\titleformat*{\section}{\color{\TitleColor}\fontsize{1.75em}{1.225ex}\bfseries\centering}
\titleformat*{\subsection}{\color{\TitleColor}\fontsize{1.5em}{1.43ex}\bfseries}
\titleformat*{\subsubsection}{\color{\TitleColor}\fontsize{1.25em}{1.4ex}\bfseries}
\titleformat*{\paragraph}{\color{\TitleColor}\bfseries}
\titleformat*{\subparagraph}{\color{\TitleColor}}
\titlespacing{\chapter}{0pt}{*1}{*4}
\titlecontents{chapter}[24pt]{\hspace{-2pc}\filright}
              {\normalsize\bfseries\contentspush{\thecontentslabel\ }}
              {}{\bfseries\titlerule*[8pt]{.}\contentspage}
\titlecontents{section}[20pt]{\filright}
              {\contentspush{\thecontentslabel\ }}
              {}{\titlerule*[8pt]{.}\contentspage}
\titlecontents{subsection}[18pt]{\hspace{2pc}\filright}
              {\contentspush{\thecontentslabel\ }\itshape}
              {}{\titlerule*[8pt]{}\contentspage}
\setcounter{tocdepth}{2}

% 页眉页脚设置
\newcommand{\footerbox}{%
  {\color{\MiscColor}\bfseries\thepage}\\[-\baselineskip]
  \uline{\hphantom{\@footorginfo}}\\
  \@footorginfo}
\RequirePackage{fancyhdr}
\fancyhead[EC]{\itshape\nouppercase\leftmark}
\fancyhead[OC]{\itshape\nouppercase\rightmark}
\fancyhead[EL,OR]{}
\fancyhead[ER,OL]{}
\fancyfoot[C]{\footerbox}
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyfoot[C]{\footerbox}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}

% 列表样式设置
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{pifont}
\setlist{nosep, partopsep=0.5ex}
\setlist[itemize,1]{label={\color{\ListColor}\ding{228}}, left=0.8em}
\setlist[itemize,2]{label={\color{\ListColor}\ding{111}}, left=2.8em}
\setlist[itemize,3]{label={\color{\ListColor}\ding{109}}, left=4.8em}
\setlist[enumerate,1]{label={\color{\ListColor}\textbf{\arabic*}.}, left=0.8em}
\setlist[enumerate,2]{label={\color{\ListColor}{\arabic*}.}, left=2.8em}
\setlist[enumerate,3]{label={\color{\ListColor}({\arabic*})}, left=4.8em}
\setlist[description]{style=nextline, font=\color{\ListColor}\bfseries}

% ---- 原文条目的两套记号（本项目新增）------------------------------------
% 原文的条目分两级：
%     （a）（b）（c）……   一级条目，也用于习题编号 1、2、3
%     （i）（ii）（iii）… 二级条目
% 标签一律沿用译文里原文自己的编号，**不重新编号** —— 因为正文会反过来
% 引用「见 (b)」「由 (iii)」，重新编号会让这些引用指错地方。
\newlist{items}{enumerate}{3}
\setlist[items]{label={（\alph*）},ref={\alph*},leftmargin=2.6em,labelsep=0.4em,
  topsep=0.4ex,partopsep=0pt,parsep=0pt,itemsep=0.2ex,listparindent=2em}
\newlist{subitems}{enumerate}{3}
\setlist[subitems]{label={（\roman*）},ref={\roman*},leftmargin=2.9em,labelsep=0.4em,
  topsep=0.4ex,partopsep=0pt,parsep=0pt,itemsep=0.2ex,listparindent=2em}
% 习题：原文按 1. 2. 3. 编号
\newlist{exercises}{enumerate}{3}
\setlist[exercises]{label={\arabic*.},ref={\arabic*},leftmargin=2.2em,labelsep=0.5em,
  topsep=0.4ex,partopsep=0pt,parsep=0pt,itemsep=0.5ex,listparindent=2em}

% 「习题」小标题：原文不编号。\subsection* 本身不会进目录，
% 故不必（也不应）再 \addcontentsline，否则目录里会出现两遍。
\newcommand{\exerciseshead}{\subsection*{习题}}

% ---- 附录索引（原书版式：双栏、主条目顶格、子条目左缩进一行）--------------
% 译文源 ch6-02_index.md 里用「行首缩进」标记子条目，转换层据此发 \idxsub。
% 不缩进的发 \idxmain。两者都带悬挂缩进（条目折行时续行缩进，不会回到行首）。
\RequirePackage{multicol}
\newcommand{\idxmain}[1]{\par\noindent\hangindent=1.2em\hangafter=1\relax #1\par}
\newcommand{\idxsub}[1]{\par\noindent\hangindent=3.0em\hangafter=1\relax \hspace*{1.8em}#1\par}
\newcommand{\idxsubsub}[1]{\par\noindent\hangindent=4.2em\hangafter=1\relax \hspace*{3.0em}#1\par}
\newenvironment{indexlist}%
  {\par\setlength{\parindent}{0pt}\setlength{\parskip}{0pt}\raggedright}%
  {\par}

% 参考文献定制
\RequirePackage[square,numbers]{natbib}
\renewcommand{\citenumfont}[1]{{\color{\LinkColor}#1}}
\renewcommand{\bibnumfmt}[1]{{\color{\ListColor}[#1]}}
\AtBeginEnvironment{thebibliography}{\addcontentsline{toc}{chapter}{\bibname}}

% 杂项
\RequirePackage{lastpage}
\RequirePackage{appendix}
\ctexset{appendix={number={\Roman{chapter}}}}

% 若干 metadata
\newcommand{\@subtitle}{}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\@typo}{}
\newcommand{\typo}[1]{\gdef\@typo{#1}}
\newcommand{\@cover}{}
\newcommand{\cover}[1]{\gdef\@cover{#1}}
\newcommand{\@orginfo}{%
  \textit{钱学森书院学业辅导中心}\\[1ex]
  \textsc{Xi'an Jiaotong University}}
\newcommand{\org}[1]{\gdef\@orginfo{#1}}
\newcommand{\@footorginfo}{\textsc{Qian Yuan Xue Fu}}
\newcommand{\footorg}[1]{\gdef\@footorginfo{#1}}
\newcommand{\@licenseinfo}{%
本作品采用%
\href{https://creativecommons.org/licenses/by-nc-nd/4.0/}%
{\bfseries CC BY-NC-ND 4.0 协议}进行许可。
使用者可以在给出作者署名及资料来源的前提下对本作品进行转载，%
但不得对本作品进行修改，亦不得基于本作品进行二次创作，%
不得将本作品运用于商业用途。}
\newcommand{\license}[1]{\gdef\@licenseinfo{#1}}

% 已废弃的 metadata
\newcommand{\version}[1]{\ClassWarning{\styname}{The metadata item `version' is deprecated}}
\newcommand{\sourcepage}[1]{\ClassWarning{\styname}{The metadata item `sourcepage' is deprecated}}

% 封面样式重定义
\newcommand{\titlefont}{\Huge\bfseries}
\newcommand{\subtitlefont}{\huge\itshape}
\newcommand{\authorfont}{\LARGE\itshape}
\newcommand{\datefont}{\Large}
\renewcommand*{\maketitle}{%
  \begin{titlepage}
  \null
  \begin{center}\large
  \begin{tcolorbox}[blanker,borderline west={1mm}{0pt}{\BoxFrame},%
  left=20pt,top=1ex,bottom=1ex,after skip=0pt,no shadow]
  {\color{\TitleColor}\titlefont\@title}
  \ifdefempty\@subtitle{}{\\[1ex]{\color{\TitleColor}\subtitlefont\@subtitle}}
  \end{tcolorbox}
  \begin{tcolorbox}[blanker,borderline west={1mm}{0pt}{\TitleColor},%
  left=20pt,top=2ex,bottom=1ex,before skip=0pt,after skip=0pt,no shadow]
  {\authorfont\@author}\\\datefont\@date
  \end{tcolorbox}
  \vfil\@cover\vfil
  \vbox{\@orginfo}
  \end{center}
  \vfilneg
  \end{titlepage}
  \thispagestyle{empty}
  \newpage
  \hypersetup{pageanchor=true}
  \null\vfill
  \begin{tcolorbox}[title={\bfseries 作品信息}]
  \begin{itemize}
    \item \textbf{标题：}\@title{}\ifdefempty\@subtitle{}{: \textit{\@subtitle}}
    \item \textbf{作者：}\@author%
    \ifdefempty{\@typo}{}{\item \textbf{校对排版：}\@typo}
    \item \textbf{出品时间：}\@date
    \item \textbf{总页数：}\pageref{LastPage}
  \end{itemize}
  \end{tcolorbox}
  \ifdefempty\@licenseinfo{}{%
    \begin{tcolorbox}[title={\bfseries 许可证说明}]
    \@licenseinfo
    \end{tcolorbox}}
  \newpage
  \pagestyle{fancy}}
\AtBeginDocument{%
  \hypersetup{
    pageanchor=false,
    pdfauthor=\@author,
    pdftitle=\@title,
    pdfsubject={\@author: \@title\ifdefempty{\@subtitle}{}{ - \textit{\@subtitle}}},
    pdfkeywords={qyxf, book},
    pdfcreator={XeLaTeX with \styname\ v\styversion\ \ifdefempty{\@typo}{}{(by \@typo)}}
  }}

% 目录样式重定义
\renewcommand\tableofcontents{%
\pagestyle{empty}
\begin{center}%
\normalfont\LARGE\bfseries\contentsname%
\@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}
\end{center}
\vskip 3ex%
{\setlength\parskip{0pt}\@starttoc{toc}}
\cleardoublepage
\pagestyle{fancy}
\setcounter{page}{1}
}

% 修正配色方案重定义问题
\newcommand{\selectcolor}{
  \hypersetup{
    linkcolor = \LinkColor,
    anchorcolor = \MiscColor,
    urlcolor = \LinkColor,
    citecolor = \MiscColor
  }
  \tcbset{
    colback = \BoxBackground,
    colbacktitle = \BoxTitleBackground,
    colframe = \BoxFrame,
    coltitle = \BoxTitleColor,
    coltext = \BoxColor
  }
}

\endinput
