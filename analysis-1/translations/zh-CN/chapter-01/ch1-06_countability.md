## 6 可数性

上一节我们看到，“无限集”对于自然数的构造是必要的。然而，双射 $ \mathbb{N} \to 2\mathbb{N} $，$ n \mapsto 2n $ 表明偶数与自然数恰好一样多，这提醒我们在处理无限时必须谨慎。奇数 1,3,5,… 怎么能在 $ \mathbb{N} $ 中有容身之处呢？本节我们再次考察无限的概念，特别地，我们将证明无限不止一种。

若 $X$ 是空集，或者存在 $n \in \mathbb{N}^\times$ 以及从 $\{1, \ldots, n\}$ 到 $X$ 的双射，则称集合 $X$ 为 $\text{有限}$。若一个集合不是有限的，则称它为 $\text{无限}$。

6.1 例 (a) 集合 N 是无限的。

证明 反设 $\mathbb{N}$ 是有限的。由于 $\mathbb{N}$ 非空，存在某个 $m \in \mathbb{N}^\times$ 以及从 $\mathbb{N}$ 到 $\{1, \ldots, m\}$ 的双射 $\varphi$。于是 $\psi := \varphi | \{1, \ldots, m\}$ 是从 $\{1, \ldots, m\}$ 到自身的单射，从而由习题 1 是双射。由于 $\varphi(m+1) \in \{1, \ldots, m\}$，特别地存在某个 $n \in \{1, \ldots, m\}$ 使得 $\varphi(n) = \psi(n) = \varphi(m+1)$。但这与 $\varphi$ 的单射性矛盾。

(b) 不难看出，如注 5.2(a) 那样的任何无限系统都是无限集（见习题 2）。■

上述讨论表明，有限集 $X$ 的“大小”可以通过计数来确定，即借助一个从 $\{1, \ldots, n\}$ 到 $X$ 的双射。对于无限集，这一想法当然行不通。尽管如此，对无限集与有限集都用下式定义 $\text{Num}(X)$ 是很有用的\footnote{符号 $\infty$（‘无穷’）并非自然数。尽管如此，把 $\mathbb N$ 上的加法与乘法（部分地）扩充到$\bar{\mathbb N}:=\mathbb N\cup\{\infty\}$ 仍然有用，为此约定：对一切 $n\in\bar{\mathbb N}$ 有 $n+\infty:=\infty+n:=\infty$，对 $n\in\mathbb N^\times\cup\{\infty\}$ 有 $n\cdot\infty:=\infty\cdot n:=\infty$。此外，我们对一切 $n\in\mathbb N$ 定义 $n<\infty$。}：

 \[ \operatorname{N u m}(X):=\left\{\begin{array}{l l}{0,}&{\quad X=\emptyset\;,}\\ {n,}&{\quad n\in\mathbb{N}^{\times}\text{ 且存在从 }\{1,\ldots,n\}\text{ 到 }X\text{ 的双射}\;,}\\ {\infty,}&{\quad X\text{ 是无限的}.}\end{array}\right. \]

若 $X$ 是有限的且 $\text{Num}(X) = n \in \mathbb{N}$，则我们说 $X$ 有 $n$ 个元素，或称 $X$ 是 $n$ 元集。

6.2 注 若 $m, n \in \mathbb{N}^\times$ 且 $\varphi$ 与 $\psi$ 分别是 $X$ 到 $\{1, \ldots, m\}$ 与 $\{1, \ldots, n\}$ 的双射，则 $\varphi \circ \psi^{-1}$ 是从 $\{1, \ldots, n\}$ 到 $\{1, \ldots, m\}$ 的双射，并且由习题 2 可得 $m = n$。因此上述定义是合理的，即 $\text{Num}(X)$ 是良定义的。

##### 置换

设 $X$ 是有限集。从 $X$ 到自身的双射函数称为 $X$ 的一个置换。（注意，由习题 1，从 $X$ 到自身的单射函数也必然是双射。）我们用 $S_X$ 表示 $X$ 的所有置换构成的集合。

6.3 命题 若 $X$ 是 $n$ 元集，则 $\text{Num}(\mathsf{S}_X) = n!$。也就是说，$n$ 元集有 $n!$ 个置换。

证明 先考虑 $ X = \emptyset $ 的情形。此时存在唯一的函数 $ \emptyset: \emptyset \to \emptyset $。这个函数是双射\footnote{这是空真的，因为双射定义中的条件一个都没有被检验。真正的用意是不把 $n=0$ 当作特殊情形，从而避免在后续证明中作繁琐的情形区分。}，故该情形下断言成立。

我们用归纳法证明 $ n \in \mathbb{N}^\times $ 的情形。由于对任何一元集 $ X $ 都有 $ \mathsf{S}_X = \{\mathrm{id}_X\} $，我们可以从 $ n_0 = 1 $ 开始归纳。归纳假设是：对每个 $ n $ 元集 $ X $，有 $ \mathrm{Num}(\mathsf{S}_X) = n! $。

现在设 $Y = \{a_1, \ldots, a_{n+1}\}$ 是 $(n+1)$ 元集。鉴于归纳假设，对每个 $j \in \{1, \ldots, n+1\}$，恰有 $n$! 个 $Y$ 的置换把 $a_j$ 送到 $a_1$。因此总共有（见习题 5）$(n+1)n! = (n+1)!$ 个 $Y$ 的置换。

##### 等势集

两个集合 X 与 Y 称为等势的或等基数的，记作 $ X \sim Y $，若存在从 X 到 Y 的双射。若 M 是一个集合的集合，则 $ \sim $ 显然是 M 上的等价关系（见命题 3.6）。

集合 $X$ 称为可数无限的，若 $X \sim \mathbb{N}$；若 $X \sim \mathbb{N}$ 或 $X$ 是有限的，则我们说 $X$ 是可数的。最后，若 $X$ 不是可数的，则 $X$ 是不可数的。

6.4 注 若 $ X \sim \mathbb{N} $，则由例 6.1(a) 可得 $ X $ 不是有限的。因此一个集合不可能既是有限的又是可数无限的。

当然，自然数集是可数无限的。更有趣的是这样一个观察：可数无限集的真子集本身也可以是可数无限的，偶数自然数集 $ 2\mathbb{N} = \{2n; n \in \mathbb{N}\} $ 的例子表明了这一点。另一方面，我们将在下一节遇到真包含 $ \mathbb{N} $ 的可数无限集。

在进一步考察可数集的性质之前，我们先证明不可数集的存在性。为此我们证明下面这个属于 G. 康托尔的基本结果。

6.5 定理 不存在从集合 X 到 $ \mathcal{P}(X) $ 的满射。

证明 对函数 $ \varphi: X \to \mathcal{P}(X) $，考虑子集

 \[ A:=\left\{x\in X;x\notin\varphi(x)\right\} \]

的 $X$。我们证明 $A$ 不在 $\varphi$ 的像中。事实上，若 $y \in X$ 且 $\varphi(y) = A$，则或者 $y \in A$，从而 $y \notin \varphi(y) = A$，矛盾；或者 $y \notin A = \varphi(y)$，于是 $y \in A$，这同样是矛盾。这表明 $\varphi$ 不是满射。

这个定理的一个直接推论是不可数集的存在性。

6.6 推论 $ \mathcal{P}(\mathbb{N}) $ 是不可数的。

##### 可数集

现在我们回到可数集，并证明一些看似显然的命题：

6.7 命题 可数集的任何子集都是可数的。

证明 (a) 设 $X$ 是可数集，$A \subseteq X$。若 $A$ 是有限的，则结论已得（见习题 9），故可设 $A$ 是无限的，此时 $X$ 必为可数无限的。也就是说，存在从 $X$ 到 $\mathbb{N}$ 的双射 $\varphi$ 以及从 $A$ 到 $\varphi(A)$ 的双射 $\psi := \varphi|A$。因此我们可以不失一般性地假设 $X = \mathbb{N}$ 且 $A$ 是 $\mathbb{N}$ 的无限子集。

(b) 我们递归地定义函数 $ \alpha: \mathbb{N} \to A $ 如下：

 \[ \alpha(0):=\min(A),\quad\alpha(n+1):=\min\left\{m\in A;m>\alpha(n)\right\}. \]

由于命题 5.5 以及假设 $ \text{Num}(A) = \infty $，$ \alpha: \mathbb{N} \to A $ 是良定义的。显然

 \[ \alpha(n+1)>\alpha(n)~,\quad\alpha(n+1)\geq\alpha(n)+1~,\qquad n\in\mathbb{N}~. \]

(c) 对 $ n \in \mathbb{N} $ 与 $ k \in \mathbb{N}^\times $，有 $ \alpha(n+k) > \alpha(n) $。这可由 (6.1) 的第一个不等式对 $ k $ 作归纳容易地推出。特别地，$ \alpha $ 是单射。

(d) 我们验证 $ \alpha $ 的满射性。首先用归纳法证明

 \[ \alpha(m)\geq m~,\qquad m\in\mathbb{N}~. \]

当 m = 0 时，这当然成立。归纳步骤 $ m \to m + 1 $ 由 (6.1) 的第二个不等式与归纳假设推出，

 \[ \alpha(m+1)\geq\alpha(m)+1\geq m+1. \]

现在给定 $ n_0 \in A $。我们需要找出某个 $ m_0 \in \mathbb{N} $ 使 $ \alpha(m_0) = n_0 $。考虑集合 $ B := \{m \in \mathbb{N} : \alpha(m) \geq n_0\} $。由 (6.2)，$ B $ 非空。于是由命题 5.5，存在某个 $ m_0 := \min(B) $。若 $ m_0 = 0 $，则

 \[ \min(A)=\alpha(0)\geq n_{0}\geq\min(A), \]

从而 $ n_0 = \alpha(0) $。于是我们可以假设 $ n_0 > \min(A) $，从而 $ m_0 \in \mathbb{N}^\times $。但此时 $ \alpha(m_0 - 1) < n_0 \leq \alpha(m_0) $，且由 $ \alpha $ 的定义有 $ \alpha(m_0) = n_0 $。■

6.8 命题 可数集的可数并是可数的。

证明 对每个 $n \in \mathbb{N}$，设 $X_n$ 是可数集。由命题 6.7，我们可以假设诸 $X_n$ 都是可数无限的且两两不交。于是 $X_n = \{x_{n,k} ; k \in \mathbb{N}\}$，其中对 $k \neq j$ 有 $x_{n,k} \neq x_{n,j}$，也就是说，$x_{n,k}$ 是 $k \in \mathbb{N}$ 在从 $\mathbb{N}$ 到 $X_n$ 的双射下的像。现在我们按下面“无限矩阵”中箭头所示排列 $X := \bigcup_{n=0}^{\infty} X_n$ 的元素。这诱导出从 $X$ 到 $\mathbb{N}$ 的双射。

 \[ \includegraphics[width=0.78\textwidth]{build/figure-cache/d1a18a5464e9cd86.jpg} \] 

<div style="text-align: center;"><div style="text-align: center;">我们把明确写出这个双射的任务留给读者。■</div> </div>


6.9 命题 可数集的有限积是可数的。

证明 设 $X_j, j = 0, 1, \ldots, n$ 是可数集，$X := \prod_{j=0}^{n} X_j$。按定义 $X = (\prod_{j=0}^{n-1} X_j) \times X_n$，故只需考虑 $n = 1$ 的情形。于是设 $X := X_0 \times X_1$，其中 $X_0$ 与 $X_1$ 可数无限。记 $X_0 = \{ y_k : k \in \mathbb{N} \}$，$X_1 = \{ z_k : k \in \mathbb{N} \}$，并对 $j, k \in \mathbb{N}$ 令 $x_{j,k} := (y_j, z_k)$。采用这一记号便有 $X = \{ x_{j,k} : j, k \in \mathbb{N} \}$，因此我们可以再次用 (6.3) 定义从 $X$ 到 $\mathbb{N}$ 的双射。

##### 无限积

若允许可数集的“无限积”，命题 6.9 就不再正确。为使这一说法更精确，我们需要先解释什么是“无限积”。设 $ \{X_\alpha; \alpha \in \mathbb{A}\} $ 是一个固定集合的子集族。则笛卡儿积 $ \prod_{\alpha \in \mathbb{A}} X_\alpha $ 定义为所有这样的函数构成的集合：

 $ \varphi: A \to \bigcup_{\alpha \in A} X_\alpha $ 使得对每个 $ \alpha \in A $ 有 $ \varphi(\alpha) \in X_\alpha $。人们常用 $ \{x_\alpha; \alpha \in \mathsf{A}\} $ 代替 $ \varphi $，其中当然 $ x_\alpha := \varphi(\alpha) $。

在特殊情形 $ \mathbf{A} = \{1, \ldots, n\} $（其中 $ n \in \mathbb{N}^\times $）下，$ \prod_{\alpha \in \mathbb{A}} X_\alpha $ 显然与第 2 节引入的积 $ \prod_{k=1}^{n} X_k $ 相同。若对每个 $ \alpha \in \mathbb{A} $ 都有 $ X_\alpha = X $，则记 $ X^\mathbb{A} := \prod_{\alpha \in \mathbb{A}} X_\alpha $。

6.10 注 显然，若诸 $ X_\alpha $ 中有一个（或更多）是空集，则 $ \prod_{\alpha \in \mathcal{A}} X_\alpha = \emptyset $。另一方面，即使对每个 $ \alpha \in \mathcal{A} $ 都有 $ X_\alpha \neq \emptyset $，用我们迄今所见过的集合论公理也无法证明 $ \prod_{\alpha \in \mathcal{A}} X_\alpha $ 非空。为此需要知道存在函数 $ \varphi: \mathcal{A} \to \bigcup_{\alpha \in \mathcal{A}} X_\alpha $，使得对每个 $ \alpha \in \mathcal{A} $ 有 $ \varphi(\alpha) \in X_\alpha $，即存在一条从每个集合 $ X_\alpha $ 中选出一个元素的规则。为确保这样的函数存在，需要选择公理，我们把它表述如下：对任意集族 $ \{X_\alpha : \alpha \in \mathcal{A}\} $，

 \[ \prod_{\alpha\in A}X_{\alpha}\neq\emptyset\Longleftrightarrow(X_{\alpha}\neq\emptyset\;\;\forall\alpha\in\mathsf{A})~. \]

以下我们将不加说明地使用这一自然出现的公理。对数学基础感兴趣的读者可参阅文献，例如 [Ebb77] 和 [FP85]。■

令人惊讶的是，与命题 6.9 相反，有限集的可数无限积一般不是可数的，如下面的命题所示。

6.11 命题 集合 $ \{0,1\}^{\mathbb{N}} $ 是不可数的。

证明 设 $ A \in \mathcal{P}(\mathbb{N}) $。则特征函数 $ \chi_A $ 是 $ \{0,1\}^\mathbb{N} $ 的一个元素。显然函数

 \[ \mathcal{P}(\mathbb{N})\to\{0,1\}^{\mathbb{N}},\quad A\mapsto\chi_{A} \]

是单射。对 $\varphi \in \{0,1\}^{\mathbb{N}}$，令 $A(\varphi):=\varphi^{-1}(1)\in \mathcal{P}(\mathbb{N})$。则 $\chi_{A(\varphi)}=\varphi$。这表明函数 (6.4) 是满射的。（另见习题 3.6。）因此 $\{0,1\}^{\mathbb{N}}$ 与 $\mathcal{P}(\mathbb{N})$ 等势，而结论由推论 6.6 得出。

6.12 推论 集合 $\{0,1\}^{\mathbb{N}}$ 与 $\mathcal{P}(\mathbb{N})$ 等势。

##### 习题

1 设 $ n \in \mathbb{N}^\times $。证明从 $ \{1, \ldots, n\} $ 到自身的任何单射函数都是双射。（提示：对 $ n $ 作归纳。设 $ f: \{1, \ldots, n+1\} \to \{1, \ldots, n+1\} $ 是单射函数，$ k := f(n+1) $。考虑函数

 \[ g(j):=\left\{\begin{array}{c l}{n+1\;,}&{\quad j=k\;,}\\ {k\;,}&{\quad j=n+1\;,}\\ {j}&{\quad\text{其他情形},}\\ \end{array}\right. \]

以及 $ h := g \circ f $ 和 $ h | \{1, \ldots, n\} $。）

2 证明下列各题：

(a) 设 $ m, n \in \mathbb{N}^{\times} $。则存在从 $ \{1, \ldots, m\} $ 到 $ \{1, \ldots, n\} $ 的双射函数当且仅当 $ m = n $。

(b) 若 $M$ 是无限系统，则 $\text{Num}(M) = \infty$（提示：习题 1）。

3 证明 $n$ 元集的 $m$ 元子集的个数是 $\binom{n}{m}$。（提示：设 $N$ 是 $n$ 元集，$M$ 是 $N$ 的 $m$ 元子集。由命题 6.3 推出，有 $m!(n-m)!\; \text{个从} \{1,\ldots,n\} \text{到} N \text{的双射，使得} \{1,\ldots,m\} \text{映到} M.)$

4 设 M 和 N 是有限集。从 M 到 N 的单射函数有多少个？

5 设 $ X_0, \ldots, X_m $ 是有限集。证明 $ X := \bigcup_{i=0}^{m} X_j $ 也是有限的，且

 \[  Num(X)\leq\sum_{j=0}^{m}Num(X_{j})~. \]

何时取等号？

6 设 $ X_0, \ldots, X_m $ 是有限集。证明 $ X := \prod_{i=0}^{m} X_i $ 也是有限的，且

 \[  Num(X)=\prod_{j=0}^{m}Num(X_{j})~. \]

7 证明非空集合 X 是可数的当且仅当存在从 N 到 X 的满射。

8 设 $X$ 是可数集。证明 $X$ 的所有有限子集构成的集合是可数的。（提示：考虑函数 $X^n \to \mathcal{E}_n(X)$，$(x_1, \ldots, x_n) \mapsto \{x_1, \ldots, x_n\}$，其中 $\mathcal{E}_n(X)$ 是元素个数至多为 $n$ 的所有子集构成的集合。）

9 证明有限集的任何子集都是有限的。
