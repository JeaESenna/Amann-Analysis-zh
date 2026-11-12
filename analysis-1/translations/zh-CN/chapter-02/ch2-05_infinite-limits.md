## 5 无穷极限

$\mathbb{R}$ 中的某些序列可以有益地考虑收敛到扩充实数轴 $\bar{\mathbb{R}}$ 中的 $+\infty$ 或 $-\infty$。对于极限概念的这种扩充，只需在 $\bar{\mathbb{R}}$ 中定义元素 $\pm\infty$ 的适当邻域。

##### 收敛到 $ \pm\infty $

由于在 $ \bar{\mathbb{R}} $ 上没有合适的度量\footnote{当然，可以在 $\bar{\mathbb R}$ 上定义各种度量，但迄今为止我们定义过的度量没有一个适合我们的目的（见习题 5）。}，我们利用如下专门定义来扩充 $ \mathbb{R} $ 中所有邻域的集合：若存在某个 $ K > 0 $ 使得 $ (K, \infty) \subseteq U $（或使得 $ (-\infty, -K) \subseteq U $），则称子集 $ U \subseteq \bar{\mathbb{R}} $ 为 $ \infty $（或 $ -\infty $）的一个**邻域**。$ \pm \infty $ 的邻域之集记为 $ \mathcal{U}(\pm \infty) $，即

\[ \mathcal{U}(\pm\infty):=\{U\subseteq\bar{\mathbb{R}};\ U\text{ 是 }\pm\infty\text{ 的邻域}\} \]

现在设 $(x_n)$ 是 $\mathbb{R}$ 中的序列。则若 $\pm\infty$ 的每个邻域 $U$ 都包含 $(x_n)$ 的无穷多个（或几乎所有）项，就称 $\pm\infty$ 为 $(x_n)$ 的聚点（或极限）。若 $\pm\infty$ 是 $(x_n)$ 的极限，我们通常写

\[ \lim_{n\to\infty}x_{n}=\pm\infty\qquad\text{或}\qquad x_{n}\to\pm\infty\ \left(n\to\infty\right). \]

序列 $ (x_n) $ 在 $ \bar{\mathbb{R}} $ 中收敛，如果存在某个 $ x \in \bar{\mathbb{R}} $ 使得 $ \lim_{n \to \infty} x_n = x $。序列 $ (x_n) $ 在 $ \bar{\mathbb{R}} $ 中发散，如果它在 $ \bar{\mathbb{R}} $ 中不收敛。按照这一定义，任何在 $ \mathbb{R} $ 中收敛的序列也在 $ \bar{\mathbb{R}} $ 中收敛，任何在 $ \bar{\mathbb{R}} $ 中发散的序列也在 $ \mathbb{R} $ 中发散。另一方面，存在在 $ \mathbb{R} $ 中发散但在 $ \bar{\mathbb{R}} $ 中（趋于 $ \pm\infty $）收敛的序列。在这种情况下，称该序列非正常收敛。这一区别是重要的，因为我们对度量空间中收敛的理解不适用于非正常收敛，因此这种收敛需要单独研究。

5.1 例 (a) 设 $ (x_n) $ 是 $ \mathbb{R} $ 中的序列。则 $ x_n \to \infty $ 当且仅当，对每个 $ K > 0 $，存在某个 $ N_K \in \mathbb{N} $ 使得对所有 $ n \geq N_K $ 有 $ x_n > K $。

\[ \begin{array}{r}{\operatorname*{l i m}_{n\to\infty}(n^{2}-n)=\infty\text{ 且 }\operatorname*{l i m}_{n\to\infty}(-2^{n})=-\infty.}\end{array} \]

(c) 序列 $ ((-n)^n)_{n \in \mathbb{N}} $ 有聚点 $ \infty $ 和 $ -\infty $，因此在 $ \bar{\mathbb{R}} $ 中发散。

5.2 命题 设 $ (x_n) $ 是 $ \mathbb{R}^{\times} $ 中的序列。

(i) 若 $ x_n \to \infty $ 或 $ x_n \to -\infty $，则 $ 1/x_n \to 0 $。

(ii) 若 $ x_n \to 0 $ 且对几乎所有 $ n \in \mathbb{N} $ 有 $ x_n > 0 $，则 $ 1/x_n \to \infty $。

(iii) 若 $ x_n \to 0 $ 且对几乎所有 $ n \in \mathbb{N} $ 有 $ x_n < 0 $，则 $ 1/x_n \to -\infty $。

证明 (i) 设 $ \varepsilon > 0 $。则存在某个 $ N $ 使得对所有 $ n \geq N $ 有 $ |x_n| > 1/\varepsilon $，并且我们有不等式

\[ |1/x_{n}|=1/|x_{n}|<\varepsilon\;,\qquad n\geq N\;. \]

因此 $ (1/x_{n}) $ 收敛到 0。

(ii) 设 K > 0。则存在某个 N 使得对所有 $ n \geq N $ 有 $ 0 < x_{n} < 1/K $。因此

\[ 1/x_{n}>K\;,\qquad n\geq N\;, \]

因此该断言由例 5.1(a) 推出。

断言 (iii) 可以类似地证明。■

5.3 命题 $ \mathbb{R} $ 中的每个单调序列 $ (x_n) $ 都在 $ \bar{\mathbb{R}} $ 中收敛，并且

\[ \begin{array}{r}{\operatorname*{l i m}x_{n}=\left\{\begin{array}{c l}{\operatorname*{s u p}\{x_{n};~n\in\mathbb{N}\}~,\quad}&{\text{若 }(x_{n})\text{ 递增}\;,}\\ {\operatorname*{i n f}\{x_{n};~n\in\mathbb{N}\}~,\quad}&{\text{若 }(x_{n})\text{ 递减}\;.}\end{array}\right.}\end{array} \]

证明 我们考虑递增序列 $ (x_n) $。若 $ \{x_n; n \in \mathbb{N}\} $ 上有界，则由定理 4.1，$ (x_n) $ 在 $ \mathbb{R} $ 中收敛到 sup $ \{x_n; n \in \mathbb{N}\} $。否则，若 $ \{x_n; n \in \mathbb{N}\} $ 不是上有界的，则对每个 $ K > 0 $ 存在某个 $ m $ 使得 $ x_m > K $。由于 $ (x_n) $ 递增，我们也有对所有 $ n \geq m $ 有 $ x_n > K $，即 $ (x_n) $ 收敛到 $ \infty $。递减序列的情形类似地证明。

##### 上极限与下极限

5.4 定义 设 $ (x_{n}) $ 是 $ \mathbb{R} $ 中的序列。我们可以定义两个新序列 $ (y_{n}) $ 和 $ (z_{n}) $ 如下：

\[ y_{n}:=\sup_{k\geq n}x_{k}:=\sup\{x_{k};k\geq n\}, \]

\[ z_{n}:=\operatorname*{i n f}_{k\geq n}x_{k}:=\operatorname*{i n f}\{x_{k};k\geq n\}. \]

显然 $(y_n)$ 是递减序列，而 $(z_n)$ 是 $\bar{\mathbb{R}}$ 中的递增序列。由命题 5.3，这些序列在 $\bar{\mathbb{R}}$ 中收敛：

\[ \limsup_{n\to\infty}x_{n}:=\varlimsup_{n\to\infty}x_{n}:=\lim_{n\to\infty}\left(\sup_{k\geq n}x_{k}\right), \]

上极限，并且

\[ \liminf_{n\to\infty}x_{n}:=\varliminf_{n\to\infty}x_{n}:=\lim_{n\to\infty}\left(\inf_{k\geq n}x_{k}\right), \]

序列 $ (x_{n}) $ 的下极限。我们还有

\[ \lim\operatorname*{s u p}x_{n}=\operatorname*{i n f}_{n\in\mathbb{N}}\bigl(\operatorname*{s u p}_{k\geq n}x_{k}\bigr)\quad\text{ 且 }\quad\operatorname*{l i m}\operatorname*{i n f}x_{n}=\operatorname*{s u p}_{n\in\mathbb{N}}\bigl(\operatorname*{i n f}_{k\geq n}x_{k}\bigr), \]

这些再次由命题 5.3 推出。■

接下来我们看到，序列的上极限与下极限特别地都是聚点。

5.5 定理 $ \mathbb{R} $ 中的任何序列 $ (x_n) $ 在 $ \bar{\mathbb{R}} $ 中都有一个最小聚点 $ x_* $ 和一个最大聚点 $ x^* $，并且它们满足

\[ \lim\inf x_{n}=x_{*}\quad\text{ 且 }\quad\lim\sup x_{n}=x^{*}. \]

证明 令 $ x^* := \lim \sup x_n $，并对 $ n \in \mathbb{N} $ 令 $ y_n := \sup_{k \geq n} x_k $。则 $ (y_n) $ 是满足如下条件的递减序列：

\[ x^{*}=\inf_{n\in\mathbb{N}}y_{n}. \]

我们考虑三种情形：

(i) 假设 $ x^* = -\infty $。则对每个 K > 0，存在某个 n 使得

\[ -K>y_{n}=\sup_{k\geq n}x_{k}, \]

因为否则对某个 $ K_0 \geq 0 $ 我们将有 $ x^* \geq -K_0 $。因此对所有 $ k \geq n $ 有 $ x_k \in (-\infty, -K) $，即 $ x^* = -\infty $ 是 $ (x_n) $ 的唯一聚点。

(ii) 假设 $ x^* \in \mathbb{R} $。由命题 I.10.5 和 (5.1)，对每个 $ \xi > x^* $ 存在某个 $ n $ 使得对所有 $ k \geq n $ 有 $ \xi > y_n \geq x_k $。因此，$ (x_n) $ 的任何聚点都不大于 $ x^* $。只须再证明 $ x^* $ 本身是 $ (x_n) $ 的聚点。设 $ \varepsilon > 0 $。由于

\[ \sup_{k\geq n}x_{k}=y_{n}\geq x^{*},\qquad n\in\mathbb{N}, \]

再次由命题 I.10.5，我们对每个 $n$ 有某个 $k \geq n$ 使得 $x_k > x^* - \varepsilon$。由于我们已知 $(x_n)$ 的任何聚点都不大于 $x^*$，区间 $(x^* - \varepsilon, x^* + \varepsilon)$ 必包含序列 $(x_n)$ 的无穷多项，即 $x^*$ 是 $(x_n)$ 的聚点。

(iii) 最后我们考虑 $ x^* = \infty $ 的情形。由 (5.1) 我们有对所有 $ n \in \mathbb{N} $ 有 $ y_n = \infty $。因此对每个 $ K > 0 $ 和每个 $ n $，存在某个 $ k \geq n $ 使得 $ x_k > K $。这意味着 $ x^* = \infty $ 是 $ (x_n) $ 的聚点，并且显然是最大的这种点。

证明 $ x_* := \liminf x_n $ 是 $ (x_n) $ 的最小聚点是类似的。■

5.6 例

(a) $ \varlimsup\frac{(-1)^{n}n}{n+1}=1 $ 且 $ \varliminf\frac{(-1)^{n}n}{n+1}=-1 $。

(b) $ \varlimsup n^{(-1)^{n}}=\infty $ 且 $ \varliminf n^{(-1)^{n}}=0 $。$ \blacksquare $

5.7 定理 设 $ (x_{n}) $ 是 $ \mathbb{R} $ 中的序列。则

\[ \begin{array}{r}{(x_{n})\text{ 在 }\bar{\mathbb{R}}\text{ 中收敛}\iff\varlimsup x_{n}\leq\varliminf x_{n}.}\end{array} \]

当序列收敛时，极限 x 满足

\[ x=\lim x_{n}=\varliminf_{}x_{n}=\overline{\lim}x_{n}. \]

证明 “⟹” 若 $(x_n)$ 在 $\bar{\mathbb{R}}$ 中收敛到 $x$，则 $x$ 是 $(x_n)$ 的唯一聚点，因此该断言由定理 5.5 推出。

“⟸” 假设 $\varlimsup x_n \leq \varliminf x_n$。则再次由定理 5.5，$(x_n)$ 的唯一聚点是 $x := \varlimsup x_n = \varliminf x_n$。若 $x = -\infty$（或 $x = \infty$），则对每个 $K > 0$，存在某个 $k$ 使得对所有 $n \geq k$ 有 $x_n < -K$（或 $x_n > K$）。因此 $\lim x_n = -\infty$（或 $\lim x_n = \infty$）。

若 $x$ 在 $\mathbb{R}$ 中，则由定理 5.5 和命题 I.10.5，对给定的 $\varepsilon > 0$，至多有有限多个 $j \in \mathbb{N}$ 和有限多个 $k \in \mathbb{N}$ 使得 $x_j < x - \varepsilon$ 且 $x_k > x + \varepsilon$。因此 $x$ 的每个邻域 $U$ 都包含序列 $(x_n)$ 的几乎所有项，即 $\lim x_n = x$。

##### 波尔查诺-魏尔斯特拉斯定理

对于 $ \mathbb{R} $ 中的有界序列，定理 5.5 称为波尔查诺-魏尔斯特拉斯定理。我们实际上在稍一般的情形下证明这一定理。

5.8 定理（波尔查诺-魏尔斯特拉斯）$ \mathbb{K}^m $ 中的每个有界序列都有一个收敛子序列，即一个聚点。

证明 我们先考虑 $ \mathbb{K} = \mathbb{R} $ 的情形，并对 $ m $ 归纳证明该断言。$ m = 1 $ 的情形由定理 5.5 和命题 1.17 推出。对于归纳步骤 $ m \to m + 1 $，假设 $ (z_n) $ 是 $ \mathbb{R}^{m+1} $ 中的有界序列。则界 $ M := \sup\{|z_n|; n \in \mathbb{N}\} $ 在 $ [0, \infty) $ 中存在。由于 $ \mathbb{R}^{m+1} = \mathbb{R}^m \times \mathbb{R} $，我们可以把每个 $ z \in \mathbb{R}^{m+1} $ 写成 $ z = (x, y) $ 的形式，其中 $ x \in \mathbb{R}^m $ 且 $ y \in \mathbb{R} $。于是由 $ z_n = (x_n, y_n) $，我们得到 $ \mathbb{R}^m $ 中的序列 $ (x_n) $ 和 $ \mathbb{R} $ 中的序列 $ (y_n) $。由于

\[ \max\{|x_{n}|,|y_{n}|\}\leq|z_{n}|=\sqrt{|x_{n}|^{2}+|y_{n}|^{2}}\leq M,\qquad n\in\mathbb{N}, \]

$(x_n)$ 和 $(y_n)$ 都有界。现在我们利用归纳假设找到 $(x_n)$ 的子序列 $(x_{n_k})$ 和某个 $x \in \mathbb{R}^m$，使得当 $k \to \infty$ 时 $x_{n_k} \to x$。由于子序列 $(y_{n_k})$ 也有界，由归纳假设推出，存在 $(y_{n_k})$ 的子序列 $(y_{n_{k_j}})$ 和某个 $y \in \mathbb{R}$，使得当 $j \to \infty$ 时 $y_{n_{k_j}} \to y$。最后，由命题 1.15 和 3.14，$(z_n)$ 的子序列 $(x_{n_{k_j}}, y_{n_{k_j}})$ 当 $j \to \infty$ 时收敛到 $z := (x, y) \in \mathbb{R}^{m+1}$。这就完成了 $\mathbb{K} = \mathbb{R}$ 情形的证明。

$ \mathbb{K} = \mathbb{C} $ 的情形由刚才所证以及 $ \mathbb{C}^m $ 与 $ \mathbb{R}^{2m} $ 的等同推出。$ \blacksquare $

##### 习题

1 设 $ (x_n) $ 是 $ \mathbb{R} $ 中的序列，$ x_* := \varliminf_{} x_n $ 且 $ x^* := \varlimsup_{} x_n $。假设 $ x_* $ 和 $ x^* $ 都在 $ \mathbb{R} $ 中。证明：对每个 $ \varepsilon > 0 $，存在某个 $ N $ 使得

\[ x_{*}-\varepsilon<x_{n}<x^{*}+\varepsilon,\qquad n\geq N. \]

在 $ x_* = -\infty $ 和 $ x^* = \infty $ 的情形下，该断言应如何修改？

2 设 $ (x_{n}) $ 和 $ (y_{n}) $ 是 $ \mathbb{R} $ 中的序列，并且

\[ x_{*}:=\varliminf_{}x_{n},\quad x^{*}:=\varlimsup_{}x_{n},\quad y_{*}:=\varliminf_{}y_{n},\quad y^{*}:=\varlimsup_{}y_{n}. \]

证明下列结论：

(a) $ \overline{\lim}(-x_n) = -x_* $

(b) 若 $ (x^{*}, y^{*}) $ 和 $ (x_{*}, y_{*}) $ 不等于 $ (\infty, -\infty) $ 或 $ (-\infty, \infty) $，则

\[ \varlimsup_{}(x_{n}+y_{n})\leq x^{*}+y^{*}\text{ 且 }\varliminf_{}(x_{n}+y_{n})\geq x_{*}+y_{*}. \]

(c) 若对所有 $ n \in \mathbb{N} $ 有 $ x_n \geq 0 $ 且 $ y_n \geq 0 $，并且 $ (x_*, y_*) \notin \{(0, \infty), (\infty, 0)\} $，$ (x_*, y^*) \neq (\infty, 0) $ 且 $ (x^*, y^*) \neq (0, \infty) $，则

\[ 0\leq x_{*}y_{*}\leq\varliminf_{}(x_{n} y_{n})\leq x_{*}y^{*}\leq\varlimsup_{}(x_{n} y_{n})\leq x^{*}y^{*}. \]

(d) 若 $ (y_n) $ 收敛到 $ y \in \mathbb{R} $，则

\[ \begin{array}{r}{\varlimsup(x_{n}+y_{n})=x^{*}+y~,\quad\varliminf(x_{n}+y_{n})=x_{*}+y~,}\end{array} \]

并且

\[ \begin{aligned}\varlimsup(x_{n}y_{n})&=y x^{*},\quad&y>0,\\\varlimsup(x_{n}y_{n})&=y x_{*},\quad&y<0.\end{aligned} \]

(e) 若对所有 $ n \in \mathbb{N} $ 有 $ x_n \leq y_n $，则 $ \underline{\lim} x_n \leq \underline{\lim} y_n $ 且 $ \overline{\lim} x_n \leq \overline{\lim} y_n $。

3 对 $n \in \mathbb{N}$，令 $x_n := 2^n \left(1 + (-1)^n\right) + 1$。确定下列各值：

\[ \varliminf_{}x_{n},\quad\varlimsup_{}x_{n},\quad\varliminf_{}(x_{n+1}/x_{n}),\quad\varlimsup_{}(x_{n+1}/x_{n}),\quad\varliminf_{}\sqrt[n]{x_{n}},\quad\varlimsup_{}\sqrt[n]{x_{n}} \]

4 设 $ (x_n) $ 是 $ \mathbb{R} $ 中的序列，使得对所有 $ n \in \mathbb{N} $ 有 $ x_n > 0 $。证明

\[ \underline{\lim}\frac{x_{n+1}}{x_{n}}\leq\underline{\lim}\sqrt[n]{x_{n}}\leq\overline{\lim}\sqrt[n]{x_{n}}\leq\overline{\lim}\frac{x_{n+1}}{x_{n}}. \]

（提示：若 $ q < \underline{\lim}(x_{n+1}/x_n) $，则对所有 $ n \geq n(q) $ 有 $ x_{n+1}/x_n \geq q $。）

5 (a) 证明函数

\[ \varphi:\bar{\mathbb{R}}\to\left[-1,1\right],\quad\varphi(x):=\left\{\begin{array}{c l}{-1,}&{\quad x=-\infty\;,}\\ {x/(1+|x|),}&{\quad x\in\mathbb{R}\;,}\\ {1,}&{\quad x=\infty\;,}\\ \end{array}\right. \]

是严格递增且双射的。

(b) 证明函数

\[ d\colon\bar{\mathbb{R}}\times\bar{\mathbb{R}}\to\mathbb{R}^{+}~,\quad(x,y)\mapsto|\varphi(x)-\varphi(y)| \]

是 $ \bar{\mathbb{R}} $ 上的度量。

6 对于序列

\[ (x_{n}):=(0,1,2,1,0,1,2,1,0,1,2,1,\ldots)\quad\text{ 且 }\quad(y_{n}):=(2,1,1,0,2,1,1,0,2,1,1,0,\ldots) \]

确定下列各值：

\[ \varlimsup x_{n}+\varlimsup y_{n}\ ,\qquad \varlimsup(x_{n}+y_{n})\ , \]

\[ \underline{{\operatorname*{l i m}}}x_{n}+\underline{{\operatorname*{l i m}}}y_{n}~,\quad\underline{{\operatorname*{l i m}}}(x_{n}+y_{n})~,\quad\underline{{\operatorname*{l i m}}}x_{n}+\overline{{\operatorname*{l i m}}}y_{n}~. \]
