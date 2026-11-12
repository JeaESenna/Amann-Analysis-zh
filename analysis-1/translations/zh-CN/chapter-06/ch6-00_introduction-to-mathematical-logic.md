1 逻辑研究的是陈述与证明。陈述的例子有：方程  $ x^{2}+1=0 $ 无解、2 大于 3，以及给定一条直线和不在该直线上的一点，恰有一条经过该点且与给定直线平行的直线（由普罗克洛斯表述的平行公设）。

陈述可以是“真”、“假”或“不可证明”。孤立地看，一个陈述可能没有真值，但与其他陈述联系起来时可能成为真或假。

在逻辑中，陈述通常用一种特殊的形式语言来书写。这样一种语言建立在简单的构词规则和语法之上，从而避免了通常语言中存在的歧义。然而这可能导致庞大而难以理解的句子。

由于我们希望在这一讨论中使用惯常的语言，因此无法给出“陈述”一词的精确定义。我们的陈述是英语中的句子。但这并不意味着句子与陈述是同一回事。

首先，不同的句子可能是同一个陈述。例如，不存在数 x 使得  $ x^{2} = -1 $ 与第一个例子是同一个陈述。其次，许多句子是歧义的，因为词可能有多重含义，或者因为如果其中的一部分被当作不言自明，则陈述应有的部分就缺失了。例如，在第一个例子中，我们并没有明确说出 x 必须是实数。最后，日常生活中的大多数句子都不是这里所说的意义上的陈述。我们不试图把诸如加拿大队再度夺金这样的句子放进一个逻辑上连贯的陈述系统中。我们在此只限于关于项的陈述，也就是说，关于诸如数、点、函数和变量这类数学对象的陈述。

2 即使我们没有陈述的定义，我们至少可以给出构造陈述的规则：

a) 相等：项总是可以彼此相等。于是我们可以构造出“真”陈述 方程  $ x^2 - 1 = 0 $ 的解集等于  $ \{-1, 1\} $ 以及“假”陈述“2 = [0, 1]”。

b) 属于：诸如 点 $P$ 位于直线 $\mathcal{G}$ 上、$P$ 属于直线 $\mathcal{G}$ 或 $P$ 是直线 $\mathcal{G}$ 的一个元素 这样的句子都是同一个陈述。这类陈述常用属于符号 $\in: 'P \in \mathcal{G}'$ 来表达。

可以由其他陈述构造出新陈述如下：

c) 每个陈述  $ \phi $ 都有一个否定  $ \neg\phi $。于是，方程  $ x^2 + 1 = 0 $ 无解 是 方程  $ x^2 + 1 = 0 $ 有解 的否定。2 大于 3 的否定是 2 不大于 3（这与 2 小于 3 不是一回事）。

d) 从两个陈述  $ \phi $ 和  $ \psi $，我们可以构造出陈述  $ \phi \to \psi $（若  $ \phi $ 则  $ \psi $）。例如，我们有“真”却看似晦涩的陈述 若 2 大于 3，则方程  $ x^{2}+1=0 $ 有解。

e) c) 和 d) 中的构造可以组合。例如，由  $ \phi $ 和  $ \psi $，我们得到陈述  $ \phi \lor \psi = (\neg \phi) \rightarrow \psi $（ $ \phi $ 或  $ \psi $）和  $ \phi \land \psi = \neg (\phi \rightarrow \neg \psi) $（ $ \phi $ 且  $ \psi $）。

f) 存在性陈述：陈述 存在实数 x 和 y 使得  $ x^{2} + y^{2} = 1 $ 常常用符号  $ \exists $（存在量词）来形式地表达：

\[ \exists x\exists y\Big(\big((x\in\mathbb{R})\land(y\in\mathbb{R})\big)\land(x^{2}+y^{2}=1)\Big). \]

这里  $ \mathbb{R} $ 是实数集。

表达式  $ ((x \in \mathbb{R}) \land (y \in \mathbb{R})) \land (x^2 + y^2 = 1) $ 不是一个陈述，因为  $ x $ 和  $ y $ 是变量。它反而是公式，当变量被数替换时它就成为一个陈述，或者如上所述，用存在量词时它就成为存在性陈述。

g) 诸如 对所有实数 x 和所有实数 y，有  $ x^{2} + y^{2} > 0 $ 这样的陈述是一个“双重”否定的存在性陈述：

\[ \neg(\exists x)(\exists y)\Big(\neg\big((x\in\mathbb{R})\land(y\in\mathbb{R})\to(x^{2}+y^{2}>0)\big)\Big). \]

实际上，这一陈述用符号  $ \forall $（全称量词）缩写为：

\[ (\forall x)(\forall y)\big((x\in\mathbb{R})\land(y\in\mathbb{R})\to(x^{2}+y^{2}>0)\big). \]

3 每个陈述集 $\Gamma$ 都有一个逻辑闭包 $\overline{\Gamma}$，它是由 $\Gamma$ 所蕴涵的全部陈述组成的集合。当然，$\overline{\Gamma}$ 包含集合 $\Gamma$（假设规则）以及 $\overline{\Gamma}$ 的任何子集 $\Delta$ 的逻辑闭包 $\overline{\Delta}$（链式规则）。下面我们只收集逻辑其余规则中最重要的那些。记号 $\Gamma \vdash \phi$ 表示 $\Gamma$ 蕴涵 $\phi$。类似地，$\Gamma, \psi \vdash \phi$ 表示 $\phi$ 由 $\Gamma$ 中的陈述与陈述 $\psi$ 共同蕴涵。

a) 对每个陈述集  $ \Gamma $ 和每个常项  $ t $，有  $ \Gamma \vdash (t = t) $（相等规则）。特别地，$ t = t $ 由“空”陈述集  $ \emptyset $ 所蕴涵。

b) 对所有陈述  $ \phi $ 和  $ \psi $，有  $ \psi, \neg\psi \vdash \phi $（矛盾规则）。

c)  $ \Gamma, \psi \vdash \phi $ 和  $ \Gamma, \neg \psi \vdash \phi $ 蕴涵  $ \Gamma \vdash \phi $（分情形规则）。

d)  $ \Gamma, \phi \vdash \psi $ 蕴涵  $ \Gamma \vdash (\phi \to \psi) $（蕴涵规则）。

e)  $ \phi, (\phi \to \psi) \vdash \psi $（肯定前件律）。

f) 若 $a, b, \ldots, c$ 是常项且 $\phi(x, y, \ldots, z)$ 是以 $x, y, \ldots, z$ 为自由变量的公式，则 $\phi(a, b, \ldots, c) \vdash (\exists x)(\exists y) \ldots (\exists z)\phi(x, y, \ldots, z)$（代换规则）。

4 将  $ \mathbf{3} $ 中的规则加以组合，我们得到更多的构造：

a)  $ \Gamma \vdash (\phi \to \psi) $ 蕴涵  $ \Gamma, \phi \vdash \psi $（蕴涵规则的逆）：

由 $\phi, (\phi \to \psi) \vdash \psi$（肯定前件律）得到 $\Gamma, \phi, (\phi \to \psi) \vdash \psi$。于是 $\Gamma, \phi \vdash \psi$，因为 $\phi \to \psi$ 在 $\overline{\Gamma}$ 中（链式规则）。

b)  $ (\phi \to \psi) \vdash (\neg \psi \to \neg \phi) $（第一逆否规则）：

由  $ \phi, (\phi \to \psi) \vdash \psi $（肯定前件律）得到  $ \phi, (\phi \to \psi), \neg \psi \vdash \psi $。

由于  $ \phi, (\phi \to \psi), \neg\psi \vdash \neg\psi $ 也成立，这蕴涵  $ \phi, (\phi \to \psi), \neg\psi \vdash \neg\phi $（矛盾规则）。

由 $\phi, (\phi \to \psi), \neg\psi \vdash \neg\phi$ 和 $\neg\phi, (\phi \to \psi), \neg\psi \vdash \neg\phi$ 可得

$ (\phi \to \psi), \neg\psi \vdash \neg\phi $（分情形规则）。

最后，这给我们  $ (\phi \to \psi) \vdash (\neg \psi \to \neg \phi) $（蕴涵规则）。

类似地，可以证明下列各条：

$ (\phi \to \neg\psi) \vdash (\psi \to \neg\phi) $（第二逆否规则）。

 $ (\neg\phi \to \psi) \vdash (\neg\psi \to \phi) $（第三逆否规则）。

 $ (\neg\phi \to \neg\psi) \vdash (\psi \to \phi) $（第四逆否规则）。

例如，要证明第四条规则，就在第一条规则的证明中分别用  $ \neg\phi $、 $ \phi $、 $ \neg\psi $ 和  $ \psi $ 替换  $ \phi $、 $ \neg\phi $、 $ \psi $ 和  $ \neg\psi $。

当然，如果所用的语言使得双重否定  $ \neg \neg \phi $ 与  $ \phi $ 相同，那么这四条逆否规则便重合。在日常谈话中可能就是这样，我们把双重否定 方程  $ x^2 + 1 = 0 $ 无解并非真 视为陈述 方程  $ x^2 + 1 = 0 $ 有解 的重新表述。在通常的逻辑形式语言中， $ \phi $ 与  $ \neg \neg \phi $ 是不同的陈述，它们在蕴涵的意义下等价：

c)  $ \phi \vdash \neg \neg \phi $ 和  $ \neg \neg \phi \vdash \phi $（双重否定规则）：

由  $ \neg\phi \vdash \neg\phi $（假设规则）得到

\[\emptyset\vdash(\neg\phi\rightarrow\neg\phi)\vdash(\phi\rightarrow\neg\neg\phi)\text{（蕴涵规则与第二逆否规则）。}\]

于是由  $ \emptyset \vdash (\phi \to \neg \neg \phi) $（链式规则）可得  $ \phi \vdash \neg \neg \phi $（蕴涵规则的逆）。

d1)  $ \psi \vdash (\phi \rightarrow \psi) $：

由 $\psi, \phi \vdash \psi$（假设规则）得到 $\psi \vdash (\phi \to \psi)$（蕴涵规则）。

d2)  $ \neg \phi \vdash (\phi \rightarrow \psi) $：

这由 $\neg\phi\vdash(\neg\psi\rightarrow\neg\phi)$ 与 $(\neg\psi\rightarrow\neg\phi)\vdash(\phi\rightarrow\psi)$（第四逆否规则）利用链式规则得到。

d3)  $ \phi, \neg\psi \vdash \neg(\phi \rightarrow \psi) $：

由 $\phi, (\phi \to \psi) \vdash \psi$（肯定前件律）得到 $\phi \vdash ((\phi \to \psi) \to \psi)$（蕴涵规则）以及 $\phi \vdash (\neg \psi \to \neg (\phi \to \psi))$（第一逆否规则与链式规则）。于是结论由蕴涵规则的逆得到。

e1)  $ \phi, \psi \vdash \phi \land \psi $（合取规则）：

由 $\phi, (\phi \to \neg\psi) \vdash \neg\psi$（肯定前件律）得到 $\phi \vdash ((\phi \to \neg\psi) \to \neg\psi)$（蕴涵规则）。于是由第二逆否规则与链式规则可得 $\phi \vdash (\psi \to \neg(\phi \to \neg\psi))$。结论于是是蕴涵规则的逆的一个推论。

e2)  $ (\phi \land \psi) \vdash \phi $：

由 $\neg\phi\vdash(\phi\to\neg\psi)$（d2）得到 $\emptyset\vdash(\neg\phi\to(\phi\to\neg\psi))\vdash(\neg(\phi\to\neg\psi)\to\phi)$（第三逆否规则）以及 $\neg(\phi\to\neg\psi)\vdash\phi$（蕴涵规则的逆）。

e3)  $ (\phi \land \psi) \vdash \psi $

由 $\neg\psi \vdash (\phi \to \neg\psi)$（d1）得到 $\emptyset \vdash (\neg\psi \to (\phi \to \neg\psi)) \vdash (\neg(\phi \to \neg\psi) \to \psi)$（第三逆否规则）以及 $\neg(\phi \to \neg\psi) \vdash \psi$（蕴涵规则的逆）。

f1)  $ \psi \vdash (\phi \lor \psi) \vdash (\psi \lor \phi) $（析取规则）：

按定义有  $ (\phi \lor \psi) = (\neg \phi \to \psi) $。于是第一个蕴涵由 d1) 得到，第二个由第三逆否规则得到。

f2)  $ (\phi \lor \psi), \neg \phi \vdash \psi $（肯定前件律）。

5 利用这些构造规则，我们可以构造出满足  $ \emptyset \vdash \alpha $ 的陈述  $ \alpha $。例如，由  $ \phi \vdash \phi $ 和蕴涵规则，对任何陈述  $ \phi $ 我们都得到  $ \emptyset \vdash (\phi \to \phi) $。特别地，我们有  $ \emptyset \vdash (\psi \lor \neg \psi) = (\neg \psi \to \neg \psi) $（排中律）

由空集所蕴涵的陈述可以看作绝对为真。例如，陈述  $ t = t $、 $ \neg\phi \to (\phi \to \psi) $、 $ (\phi \lor \psi) \to (\psi \lor \phi) $、 $ \phi \to \neg\neg\phi $ 和  $ (\psi \land \neg\psi) \to \phi $ 是绝对为真的。

由于数学家通常渴求的不仅仅是“绝对真”，通常的做法是从一个陈述集  $ \Gamma $ 出发，这些陈述称为公理，它们产生于某个特定的数学情境。这类公理的例子有欧几里得几何中的平行公设或集合论的外延公理（集合 x 和 y 相等当且仅当 x 中的任何 z 都在 y 中，且 y 中的任何 z 都在 x 中）：

\[ \forall x\forall y\Big(\forall z\big((z\in x\to z\in y)\land(z\in y\to z\in x)\big)\to x=y\Big). \]

于是数学的目标是探索所给陈述集的逻辑闭包  $ \overline{\Gamma} $。我们希望假定这些公理是可信赖的，

也就是说，$\Gamma$ 不蕴涵任何形如 $(\neg\phi \land \phi) = \neg(\neg\phi \to \phi)$ 的矛盾式。若果真如此，我们就说陈述 $\phi$ 为真，如果它在 $\overline{\Gamma}$ 中；而如果 $\neg\phi$ 为真，我们就说它为假。

陈述 $\phi \lor \psi$ 为真，如果陈述 $\phi$ 与 $\psi$ 中有一个为真（析取规则）；而如果 $\phi$ 与 $\psi$ 都为假，则它为假（4.f2）。然而，即使 $\phi$、$\neg\phi$、$\psi$、$\neg\psi$ 这些陈述都不在 $\overline{\Gamma}$ 中，$\phi \lor \psi$ 也可能为真。例如，陈述 $\psi \lor \neg\psi$ 是绝对为真的。所以，一般说来，$\psi$ 必然要么为真要么为假这一点并不成立。$\psi$ 完全有可能是不可判定的，也就是说，$\psi$ 与 $\neg\psi$ 都不被 $\Gamma$ 所蕴涵。

如果我们只考虑可判定的陈述，那么就有一个真值函数，它把每个可判定的陈述映射到值 T（= 真）或 F（= 假）之一。下面的“真值表”给出可判定陈述组合的真值。这些组合的可判定性容易由 3 和 4 得到。例如，如果  $ \phi $ 为真而  $ \psi $ 为假，那么  $ \neg\phi $、 $ \phi \to \psi $ 和  $ \phi \land \psi $ 为假，而  $ \phi \lor \psi $ 为真。



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>$ \phi $</td><td style='text-align: center; word-wrap: break-word;'>$ \psi $</td><td style='text-align: center; word-wrap: break-word;'>$ \neg\phi $</td><td style='text-align: center; word-wrap: break-word;'>$ \phi \rightarrow \psi $</td><td style='text-align: center; word-wrap: break-word;'>$ \phi \lor \psi $</td><td style='text-align: center; word-wrap: break-word;'>$ \phi \land \psi $</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td></tr></table>

6 关于逻辑的更详细讨论，读者可参阅文献，例如 [EFT96]。尽管文献中所发展的形式语言的语法极其简单，但在本讲述中我们仍宁愿用英语表达我们的陈述。经过充分的练习之后，它能给出数学陈述的紧凑而精确的表述。在英语中，句法与语义之间没有截然的区分：集合是对象的汇集——而不只是一串没有意义的符号。在形式语言中，解释留给读者。在英语中，解释通常已内建其中。

