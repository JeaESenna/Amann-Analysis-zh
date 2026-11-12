## 1 连续线性映射

正如我们刚才所说，多元情形的微分依赖于用仿射函数作局部近似这一思想。当然，由命题 I.12.8，向量空间之间的仿射函数中非平凡的部分正是其线性映射。因此，下面我们集中研究赋范向量空间之间的线性映射。在导出它们若干基本性质之后，我们将用它们来研究指数映射以及常系数线性微分方程理论。

以下，设

• $ E = (E, \|\cdot\|) $ 与 $ F = (F, \|\cdot\|) $ 是域 $ \mathbb{K} $ 上的赋范向量空间\footnote{必要时，我们用相应的指标区分 $ E $ 与 $ F $ 中的范数。}。

##### $ \mathcal{L}(E, F) $ 的完备性

由第 VI.2 节，我们已经知道 $ \mathcal{L}(E, F) $，即从 $ E $ 到 $ F $ 的所有有界线性映射的空间，是一个赋范向量空间。现在我们来研究这个空间的完备性。

1.1 定理 若 $ F $ 是巴拿赫空间，则 $ \mathcal{L}(E, F) $ 也是巴拿赫空间。

证明 (i) 设 $ (A_{n}) $ 是 $ \mathcal{L}(E, F) $ 中的柯西序列。则对每个 $ \varepsilon > 0 $，存在 $ N(\varepsilon) \in \mathbb{N} $，使得当 $ m, n \ge N(\varepsilon) $ 时 $ \|A_{n} - A_{m}\| < \varepsilon $。特别地，对每个 $ x \in E $，有

\[ \|A_{n}x - A_{m}x\| \le \|A_{n} - A_{m}\|\,\|x\| \le \varepsilon\,\|x\| \qquad \text{对 } m, n \ge N(\varepsilon) . \tag{1.1} \]

因此 $ (A_{n}x) $ 是 $ F $ 中的柯西序列。由于 $ F $ 完备，存在唯一的 $ y \in F $，使得 $ \lim A_{n}x = y $。于是我们可以通过 $ x \mapsto \lim A_{n}x $ 定义一个映射 $ A : E \to F $。由极限的线性性立即可得 $ A $ 是线性的。

(ii) 由于 $ (A_{n}) $ 是柯西序列，故它在 $ \mathcal{L}(E, F) $ 中有界（参见命题 II.6.3）。因此存在 $ \alpha \ge 0 $，使得对一切 $ n \in \mathbb{N} $ 有 $ \|A_{n}\| \le \alpha $。由此可得

\[ \|A_{n}x\| \le \|A_{n}\|\,\|x\| \le \alpha\,\|x\| \qquad \text{对 } n \in \mathbb{N} \text{ 且 } x \in E . \]

舍去中间项，令 $ n \to \infty $ 即得对每个 $ x \in E $ 的估计 $ \|Ax\| \le \alpha\,\|x\| $。因此 $ A $ 属于 $ \mathcal{L}(E, F) $。

(iii) 最后我们证明 $ \mathcal{L}(E, F) $ 中的序列 $ (A_{n}) $ 收敛到 $ A $。由 (1.1)，可得

\[ \|A_{n}x - A_{m}x\| \le \varepsilon \qquad \text{对 } m, n \ge N(\varepsilon) \text{ 且 } x \in \mathbb{B}_{E} . \]

令 $ m \to \infty $，这给出

\[ \|A_{n}x - Ax\| \le \varepsilon \qquad \text{对 } n \ge N(\varepsilon) \text{ 且 } x \in \mathbb{B}_{E} , \]

并且，正如所断言的那样，我们得到不等式

\[ \|A_{n} - A\| = \sup_{\|x\| \le 1}\|A_{n}x - Ax\| \le \varepsilon \qquad \text{对 } n \ge N(\varepsilon) \]

其中上确界在 $ \mathbb{B}_{E} $ 上取。■

1.2 推论
(i) $ \mathcal{L}(E, \mathbb{K}) $ 是巴拿赫空间。
(ii) 若 $ E $ 是巴拿赫空间，则 $ \mathcal{L}(E) $ 是带单位元的巴拿赫代数。

证明 (i) 显然，(ii) 由注 VI.2.4(g) 可得。■

##### 有限维巴拿赫空间

赋范向量空间 $ E $ 与 $ F $ 称为（**拓扑**）**同构**的，若存在从 $ E $ 到 $ F $ 的连续线性同构 $ A $，使得 $ A^{-1} $ 也连续，即若 $ A $ 属于 $ \mathcal{L}(F, E) $。此时 $ A $ 是从 $ E $ 到 $ F $ 的**拓扑同构**。我们用

\[ \mathcal{L}\mathrm{is}(E, F) \]

表示从 $ E $ 到 $ F $ 的所有拓扑同构的集合，且当 $ \mathcal{L}\mathrm{is}(E, F) $ 非空\footnote{注意，在赋范向量空间中 $ \cong $ 总是指“拓扑同构”，而不仅仅是指存在一个向量空间同构。}时，我们写 $ E \cong F $。此外，我们令

\[ \mathcal{L}\mathrm{aut}(E) := \mathcal{L}\mathrm{is}(E, E) . \]

因此 $ \mathcal{L}\mathrm{aut}(E) $ 是 $ E $ 的所有**拓扑自同构**的集合。

1.3 注 (a) 空间 $ \mathcal{L}(\mathbb{K}, F) $ 与 $ F $ 是等距同构的\footnote{参见例 III.1.3(o)。}。更确切地说，利用等距同构

\[ \mathcal{L}(\mathbb{K}, F) \to F , \quad A \mapsto A1 , \tag{1.2} \]

我们可以规范地把 $ \mathcal{L}(\mathbb{K}, F) $ 与 $ F $ 等同为 $ \mathcal{L}(\mathbb{K}, F) = F $。

证明 显然映射 (1.2) 是线性的且为单射。对 $ v \in F $，考虑 $ A_{v} \in \mathcal{L}(\mathbb{K}, F) $，其中 $ A_{v}x := xv $。则 $ A_{v}1 = v $。因此 $ A \mapsto A1 $ 是向量空间同构。此外，

\[ \|Ax\|_{F} = |x|\,\|A1\|_{F} \le \|A1\|_{F} \qquad \text{对 } x \in \mathbb{B}_{\mathbb{K}} \text{ 且 } A \in \mathcal{L}(\mathbb{K}, F) . \]

这给出 $ \|A\|_{\mathcal{L}(\mathbb{K}, F)} = \|A1\|_{F} $。因此 (1.2) 是等距。■

(b) $ \mathcal{L}\mathrm{aut}(E) $ 是一个群，即 $ E $ 的**拓扑自同构群**，其中的乘法由两个线性映射的复合来定义。

证明 这由注 VI.2.4(g) 可得。■

(c) 若 $ E $ 与 $ F $ 同构，则 $ E $ 是巴拿赫空间当且仅当 $ F $ 是巴拿赫空间。

证明 容易看出，拓扑同构把柯西序列映为柯西序列，把收敛序列映为收敛序列。■

(d) 设 $ E $ 与 $ F $ 是巴拿赫空间，且 $ A \in \mathcal{L}(E, F) $ 是双射。则 $ A $ 是拓扑同构，即 $ A \in \mathcal{L}\mathrm{is}(E, F) $。

证明 这个定理是泛函分析的标准内容（参见巴拿赫同态定理，也称为开映射定理）。■

1.4 定理 设 $ \{b_{1}, \ldots, b_{n}\} $ 是 $ E $ 的一个基。则

\[ T : E \to \mathbb{K}^{n} , \quad e = \sum_{j=1}^{n} x_{j}b_{j} \to (x_{1}, \ldots, x_{n}) \tag{1.3} \]

是拓扑同构，也就是说，每个有限维赋范向量空间都拓扑同构于一个欧几里得向量空间。

证明 显然 $ T $ 良定义、线性且为双射，并且

\[ T^{-1}x = \sum_{j=1}^{n} x^{j}b_{j} \quad \text{对 } x = (x^{1}, \ldots, x^{n}) \in \mathbb{K}^{n} , \]

（参见注 I.12.5）。由推论 II.3.9 的柯西-施瓦茨不等式，有

\[ \|T^{-1}x\| \le \sum_{j=1}^{n} |x^{j}|\,\|b_{j}\| \le \left( \sum_{j=1}^{n} |x^{j}|^{2} \right)^{1/2}\left( \sum_{j=1}^{n} \|b_{j}\|^{2} \right)^{1/2} = \beta\,|x| \]

其中 $ \beta := \left( \sum_{j=1}^{n}\|b_{j}\|^{2} \right)^{1/2} $。因此 $ T^{-1} $ 属于 $ \mathcal{L}(\mathbb{K}^{n}, E) $。

对 $ x \in \mathbb{K}^{n} $，我们令 $ |x|_{\bullet} := \|T^{-1}x\| $。不难看出 $ |\cdot|_{\bullet} $ 是 $ \mathbb{K}^{n} $ 上的一个范数（参见习题 II.3.1）。在例 III.3.9(a) 中我们已经看到，$ \mathbb{K}^{n} $ 上的所有范数都等价。因此存在 $ \alpha > 0 $，使得对 $ x \in \mathbb{K}^{n} $ 有 $ |x| \le \alpha|x|_{\bullet} $。于是我们有

\[ |Te| \le \alpha|Te|_{\bullet} = \alpha\|e\| \qquad \text{对 } e \in E , \]

即 $ T \in \mathcal{L}(E, \mathbb{K}^{n}) $，证毕。■

1.5 推论 若 $ E $ 是有限维的，则下列陈述成立：
(i) $ E $ 上的所有范数都等价。
(ii) $ E $ 完备，因而是巴拿赫空间。

证明 令 $ A := T^{-1} $，其中 $ T $ 是 (1.3) 中的映射。

(i) 对 $ j = 1, 2 $，设 $ \|\cdot\|_{j} $ 是 $ E $ 上的范数。则 $ x \mapsto |x|_{(j)} := \|Ax\|_{j} $ 是 $ \mathbb{K}^{n} $ 上的范数。因此，由例 III.3.9(a)，存在 $ \alpha \ge 1 $ 使得

\[ \alpha^{-1}|x|_{(1)} \le |x|_{(2)} \le \alpha|x|_{(1)} \qquad \text{对 } x \in \mathbb{K}^{n} . \]

因为 $ \|e\|_{j} = |A^{-1}e|_{(j)} $，由此可得

\[ \alpha^{-1}\|e\|_{1} \le \|e\|_{2} \le \alpha\|e\|_{1} \qquad \text{对 } e \in E . \]

因此 $ \|\cdot\|_{1} $ 与 $ \|\cdot\|_{2} $ 是 $ E $ 上的等价范数。

(ii) 这由注 1.3(c) 以及定理 1.4 与 II.6.5 可得。■

1.6 定理 设 $ E $ 是有限维的。则 $ \operatorname{Hom}(E, F) = \mathcal{L}(E, F) $。换言之，有限维赋范向量空间上的每个线性算子都是连续的。

证明 通过 (1.3) 定义 $ T \in \mathcal{L}\mathrm{is}(E, \mathbb{K}^{n}) $。则存在 $ \tau > 0 $，使得对 $ e \in E $ 有 $ |Te| \le \tau\|e\| $。

现在设 $ A \in \operatorname{Hom}(E, F) $。则 $ Ae = \sum_{j=1}^{n} x^{j}Ab_{j} $。因此，柯西-施瓦茨不等式（取 $ x_{e} := Te $）给出

\[ \|Ae\| \le \left( \sum_{j=1}^{n} \|Ab_{j}\|^{2} \right)^{1/2}|x_{e}| = \alpha|x_{e}| \qquad \text{对 } e \in E , \]

其中我们令 $ \alpha := \left( \sum_{j}\|Ab_{j}\|^{2} \right)^{1/2} $。于是我们得到

\[ \|Ae\| \le \alpha|x_{e}| = \alpha|Te| \le \alpha\tau\|e\| \qquad \text{对 } e \in E . \]

最后，根据定理 VI.2.5，$ A $ 连续。■

1.7 注 (a) 推论 1.5 与定理 1.6 的陈述对无限维赋范向量空间不成立。

证明

(i) 我们令 $ E := BC^{1}((-1, 1), \mathbb{R}) $。在赋范向量空间 $ (E, \|\cdot\|_{\infty}) $ 中，考虑序列 $ (u_{n}) $，其中对 $ t \in [-1, 1] $ 与 $ n \in \mathbb{N}^{\times} $，$ u_{n}(t) := \sqrt{t^{2} + 1/n} $。

容易看出 $ (u_{n}) $ 是 $ (E, \|\cdot\|_{\infty}) $ 中的柯西序列。现在假设 $ (E, \|\cdot\|_{\infty}) $ 完备。则存在 $ u \in E $，使得 $ \lim \|u_{n} - u\|_{\infty} = 0 $。特别地，$ (u_{n}) $ 逐点收敛到 $ u $。

显然，对 $ t \in [-1, 1] $，当 $ n \to \infty $ 时 $ u_{n}(t) = \sqrt{t^{2} + 1/n} \to |t| $。因此，由（逐点收敛情形下）极限的唯一性可得

\[ (t \mapsto |t|) = u \in BC^{1}((-1, 1), \mathbb{R}) , \]

这是错误的。这个矛盾表明 $ (E, \|\cdot\|_{\infty}) $ 不完备。

最后，由习题 V.2.10 我们知道，带范数 $ \|u\|_{\bullet} := \|u\|_{\infty} + \|u'\|_{\infty} $ 的 $ (BC^{1}((-1, 1), \mathbb{R}), \|\cdot\|_{\bullet}) $ 是巴拿赫空间。因此，根据注 II.6.7(a)，$ \|\cdot\| $ 与 $ \|\cdot\|_{\bullet} $ 不可能等价。

(ii) 我们令

\[ E := (C^{1}([0, 1], \mathbb{R}), \|\cdot\|_{\infty}) \quad \text{且} \quad F := (C([0, 1], \mathbb{R}), \|\cdot\|_{\infty}) \]

并考虑 $ A : E \to F $，$ u \mapsto u' $。则 $ E $ 与 $ F $ 是赋范向量空间，且 $ A $ 是线性的。假设 $ A $ 有界，从而连续。因为 $ (u_{n}) $，其中

\[ u_{n}(t) := (1/n)\sin(n^{2}t) \qquad \text{对 } n \in \mathbb{N}^{\times} \text{ 且 } t \in [0, 1] \]

在 $ E $ 中收敛到零，故在 $ F $ 中有 $ Au_{n} \to 0 $。

由 $ (Au_{n})(t) = n\cos(n^{2}t) $，有 $ (Au_{n})(0) = n $。但由于 $ (Au_{n}) $ 在 $ F $ 中收敛到 0，且一致收敛蕴含逐点收敛，这是不可能的。因此 $ A $ 不属于 $ \mathcal{L}(E, F) $，即 $ \operatorname{Hom}(E, F)\setminus\mathcal{L}(E, F) \ne \varnothing $。■

(b) 每个有限维内积空间都是希尔伯特空间。

(c) 设 $ E $ 是有限维巴拿赫空间。则在 $ E $ 上存在一个等价的**希尔伯特范数**，即由内积诱导的范数。换言之，每个有限维巴拿赫空间都可以改赋范数成为希尔伯特空间\footnote{此处有限维的假设是重要的。}。

证明 设 $ n := \dim E $ 且 $ T \in \mathcal{L}\mathrm{is}(E, \mathbb{K}^{n}) $。则

\[ (x|y)_{E} := (Tx|Ty) \qquad \text{对 } x, y \in E \]

定义了 $ E $ 上的一个内积。结论由推论 1.5(i) 可得。■

##### 矩阵表示

设 $ m, n \in \mathbb{N}^{\times} $。我们用 $ \mathbb{K}^{m \times n} $ 表示所有 $ (m \times n) $ 矩阵的集合

\[ [a_{k}^{j}] = \begin{bmatrix} a_{1}^{1} & \cdots & a_{n}^{1} \\ \vdots & & \vdots \\ a_{1}^{m} & \cdots & a_{n}^{m} \end{bmatrix} \]

其中元素 $ a_{k}^{j} $ 属于 $ \mathbb{K} $。这里上指标是行号，下指标是列号\footnote{除 $ a_{k}^{j} $ 外，我们偶尔也写 $ a_{jk} $ 或 $ a^{jk} $，其中第一个指标总是行号，第二个指标总是列号。}。为清晰起见需要时，我们把 $ [a_{k}^{j}] $ 写成

\[ [a_{k}^{j}]_{\substack{1 \le j \le m \\ 1 \le k \le n}} . \]

最后，我们令

\[ \|M\| := \sqrt{\sum_{j=1}^{m}\sum_{k=1}^{n} |a_{k}^{j}|^{2}} \quad \text{且} \quad M := [a_{k}^{j}] \in \mathbb{K}^{m \times n} . \tag{1.4} \]

我们假设你熟悉线性代数中矩阵的基本概念，特别地，你知道 $ \mathbb{K}^{m \times n} $ 关于通常的矩阵加法与数乘是维数为 $ mn $ 的 $ \mathbb{K} $-向量空间。

1.8 命题
(i) 通过 (1.4)，我们在 $ \mathbb{K}^{m \times n} $ 上定义一个范数 $ \|\cdot\| $，称为**希尔伯特-施密特范数**。因此

\[ \mathbb{K}^{m \times n} := (\mathbb{K}^{m \times n}, \|\cdot\|) \]

是巴拿赫空间。

(ii) 映射

\[ \mathbb{K}^{m \times n} \to \mathbb{K}^{mn} , \quad [a_{k}^{j}] \mapsto (a_{1}^{1}, \ldots, a_{n}^{1}, a_{1}^{2}, \ldots, a_{n}^{2}, \ldots, a_{1}^{m}, \ldots, a_{n}^{m}) \]

是等距同构。

证明 我们把这个简单的证明留给你\footnote{另见习题 II.3.14。}。■

以下，我们总是默认 $ \mathbb{K}^{m \times n} $ 赋有希尔伯特-施密特范数。

设 $ E $ 与 $ F $ 是有限维的，并设

\[ \mathcal{E} = \{e_{1}, \ldots, e_{n}\} \quad \text{且} \quad \mathcal{F} = \{f_{1}, \ldots, f_{m}\} \]

分别是 $ E $ 与 $ F $ 的（有序）基。根据定理 1.6，$ \operatorname{Hom}(E, F) = \mathcal{L}(E, F) $。我们将用基 $ \mathcal{E} $ 与 $ \mathcal{F} $ 表示 $ A \in \mathcal{L}(E, F) $ 在 $ E $ 中向量上的作用。首先，对 $ k = 1, \ldots, n $，存在唯一的数 $ a_{k}^{1}, \ldots, a_{k}^{m} $，使得 $ Ae_{k} = \sum_{j=1}^{m} a_{k}^{j}f_{j} $。因此由 $ A $ 的线性性，对每个 $ x = \sum_{k=1}^{n} x^{k}e_{k} \in E $，有

\[ Ax = \sum_{k=1}^{n} x^{k}Ae_{k} = \sum_{j=1}^{m}\left( \sum_{k=1}^{n} a_{k}^{j}x^{k} \right)f_{j} = \sum_{j=1}^{m}(Ax)^{j}f_{j} \]

其中

\[ (Ax)^{j} := \sum_{k=1}^{n} a_{k}^{j}x^{k} \qquad \text{对 } j = 1, \ldots, m . \]

我们令

\[ [A]_{\mathcal{E},\mathcal{F}} := [a_{k}^{j}] \in \mathbb{K}^{m \times n} \]

并称 $ [A]_{\mathcal{E},\mathcal{F}} $ 为 $ A $ 关于 $ E $ 的基 $ \mathcal{E} $ 与 $ F $ 的基 $ \mathcal{F} $ 的**表示矩阵**。（若 $ E = F $，我们简写 $ [A]_{\mathcal{E}} $ 表示 $ [A]_{\mathcal{E},\mathcal{E}} $。）

现在设 $ [a_{k}^{j}] \in \mathbb{K}^{m \times n} $。对 $ x = \sum_{k=1}^{n} x^{k}e_{k} \in E $，我们令

\[ Ax := \sum_{j=1}^{m}\left( \sum_{k=1}^{n} a_{k}^{j}x^{k} \right)f_{j} . \]

则 $ A := (x \mapsto Ax) $ 是从 $ E $ 到 $ F $ 的线性映射，其表示矩阵为 $ [A]_{\mathcal{E},\mathcal{F}} = [a_{k}^{j}] $。

下一个定理总结了有限维向量空间之间线性映射的表示矩阵的最重要性质。

1.9 定理
(i) 我们令 $ n := \dim E $ 与 $ m := \dim F $，并设 $ \mathcal{E} $ 与 $ \mathcal{F} $ 分别是 $ E $ 与 $ F $ 的基。则**矩阵表示**

\[ \mathcal{L}(E, F) \to \mathbb{K}^{m \times n} , \quad A \mapsto [A]_{\mathcal{E},\mathcal{F}} \tag{1.5} \]

是拓扑同构。

(ii) 设 $ G $ 是有限维赋范向量空间，$ \mathcal{G} $ 是 $ G $ 的基。则，\footnote{对于两个复合的线性映射，我们通常写 $ AB $ 而不写 $ A\circ B $。}

\[ [AB]_{\mathcal{E},\mathcal{G}} = [A]_{\mathcal{F},\mathcal{G}}[B]_{\mathcal{E},\mathcal{F}} \qquad \text{对 } A \in \mathcal{L}(F, G) \text{ 且 } B \in \mathcal{L}(E, F) . \]

证明 (i) 映射 (1.5) 显然是线性的。上面的讨论表明它还是双射（另见 [Gab96, Chapter D.5.5]）。特别地，$ \dim \mathcal{L}(E, F) = \dim \mathbb{K}^{m \times n} $。因为 $ \mathbb{K}^{m \times n} \cong \mathbb{K}^{mn} $，空间 $ \mathcal{L}(E, F) $ 的维数为 $ mn $。因此我们可以应用定理 1.6，得到

\[ (A \mapsto [A]_{\mathcal{E},\mathcal{F}}) \in \mathcal{L}(\mathcal{L}(E, F), \mathbb{K}^{m \times n}) \quad \text{且} \quad ([A]_{\mathcal{E},\mathcal{F}} \mapsto A) \in \mathcal{L}(\mathbb{K}^{m \times n}, \mathcal{L}(E, F)) . \]

因此 $ A \mapsto [A]_{\mathcal{E},\mathcal{F}} $ 是拓扑同构。

(ii) 这个事实在线性代数中是熟知的（例如 [Gab96, Chapter D.5.5]）。■

在分析中，我们要考虑度量空间到两个巴拿赫空间 $ E $ 与 $ F $ 之间连续线性映射空间的映射。若这些空间是有限维的，则根据定理 1.9，我们可以把这些映射视为矩阵。此时，由上面的结果容易证明这些映射连续。正如下一个重要推论所示，只需验证表示矩阵的元素连续即可。

1.10 推论 设 $ X $ 是度量空间，$ E $ 与 $ F $ 分别是维数为 $ n $ 与 $ m $ 的有限维巴拿赫空间，并带有序基 $ \mathcal{E} $ 与 $ \mathcal{F} $。设 $ A(\cdot) : X \to \mathcal{L}(E, F) $，并对 $ x \in X $ 令 $ [a_{k}^{j}(x)] $ 为 $ A(x) $ 的表示矩阵 $ [A(x)]_{\mathcal{E},\mathcal{F}} $。则

\[ A(\cdot) \in C(X, \mathcal{L}(E, F)) \iff \left( a_{k}^{j}(\cdot) \in C(X, \mathbb{K}),\ 1 \le j \le m,\ 1 \le k \le n \right) . \]

证明 这直接由定理 1.9、命题 1.8(ii) 与命题 III.1.10 可得。■

约定 除非另有说明，在 $ \mathbb{K}^{n} $ 中我们使用例 I.12.4(a) 中定义的标准基 $ \{e_{1}, \ldots, e_{n}\} $。此外，我们用 $ [A] $ 表示 $ A \in \mathcal{L}(\mathbb{K}^{n}, \mathbb{K}^{m}) $ 的表示矩阵。

##### 指数映射

设 $ E $ 是巴拿赫空间，$ A \in \mathcal{L}(E) $。由推论 1.2(ii)，我们知道 $ \mathcal{L}(E) $ 是巴拿赫代数。因此对 $ k \in \mathbb{N} $，$ A^{k} $ 属于 $ \mathcal{L}(E) $，并且

\[ \|A^{k}\| \le \|A\|^{k} \qquad \text{对 } k \in \mathbb{N} . \]

因此，对每个 $ \alpha \ge \|A\| $，指数级数 $ \sum_{k} \alpha^{k}/k! $ 是**指数级数**

\[ \sum_{k} A^{k}/k! \tag{1.6} \]

在 $ \mathcal{L}(E) $ 中的优级数。因此由优级数判别法（定理 II.8.3），级数 (1.6) 在 $ \mathcal{L}(E) $ 中绝对收敛。我们称其和

\[ e^{A} := \sum_{k=0}^{\infty} \frac{A^{k}}{k!} \]

为 $ A $ 的**指数**，而

\[ \mathcal{L}(E) \to \mathcal{L}(E) , \quad A \mapsto e^{A} \]

是 $ \mathcal{L}(E) $ 中的**指数映射**。

若 $ A $ 与 $ t \in \mathbb{K} $，则 $ tA $ 也属于 $ \mathcal{L}(E) $。因此映射

\[ U := U_{A} : \mathbb{K} \to \mathcal{L}(E) , \quad t \mapsto e^{tA} \tag{1.7} \]

是良定义的。在下一个定理中，我们汇总函数 $ U $ 的最重要性质。

1.11 定理 设 $ E $ 是巴拿赫空间，$ A \in \mathcal{L}(E) $。则
(i) $ U \in C^{\infty}(\mathbb{K}, \mathcal{L}(E)) $ 且 $ \dot{U} = AU $；
(ii) $ U $ 是从加法群 $ (\mathbb{K}, +) $ 到乘法群 $ \mathcal{L}\mathrm{aut}(E) $ 的群同态。

证明 (i) 只需证明对每个 $ r \ge 1 $，有

\[ U \in C^{1}(r\mathbb{B}_{\mathbb{C}}, \mathcal{L}(E)) \quad \text{且} \quad \dot{U}(t) = AU(t) \text{ 对 } |t| < r . \]

结论随之由归纳法得出。

对 $ n \in \mathbb{N} $ 与 $ |t| < r $，定义 $ f_{n}(t) := (tA)^{n}/n! $。则 $ f_{n} \in C^{1}(r\mathbb{B}_{\mathbb{C}}, \mathcal{L}(E)) $，且 $ \sum f_{n} $ 逐点收敛到 $ U|r\mathbb{B}_{\mathbb{C}} $。又 $ \dot{f}_{n} = Af_{n-1} $，从而

\[ \|\dot{f}_{n}(t)\| \le \|A\|\,\|f_{n-1}(t)\| \le (r\|A\|)^{n}/(n-1) \qquad \text{对 } t \in r\mathbb{B}_{\mathbb{C}} \text{ 且 } n \in \mathbb{N}^{\times} . \]

因此一个标量指数级数是 $ \sum \dot{f}_{n} $ 的优级数。于是 $ \sum \dot{f}_{n} $ 在 $ r\mathbb{B}_{\mathbb{C}} $ 上正规收敛到 $ AU|r\mathbb{B}_{\mathbb{C}} $，定理随之由推论 V.2.9 得出。

(ii) 对 $ s, t \in \mathbb{K} $，$ sA $ 与 $ tA $ 在 $ \mathcal{L}(E) $ 中交换。二项式定理（定理 I.8.4）给出

\[ (sA + tA)^{n} = \sum_{k=0}^{n}\binom{n}{k}(sA)^{k}(tA)^{n-k} . \]

利用指数级数的绝对收敛性，如同例 II.8.12(a) 的证明那样，我们得到

\[ U(s + t) = e^{(s+t)A} = e^{sA+tA} = e^{sA}e^{tA} = U(s)U(t) \qquad \text{对 } s, t \in \mathbb{K} . ■ \]

1.12 注 设 $ A \in \mathcal{L}(E) $，$ s, t \in \mathbb{K} $。
(a) 指数 $ e^{sA} $ 与 $ e^{tA} $ 交换：$ e^{sA}e^{tA} = e^{tA}e^{sA} $。
(b) $ \|e^{tA}\| \le e^{|t|\|A\|} $。

证明 这由注 II.8.2(c) 可得。■

(c) $ (e^{tA})^{-1} = e^{-tA} $。
(d) 对 $ n \in \mathbb{N} $，$ \partial_{t}^{n}e^{tA} = A^{n}e^{tA} = e^{tA}A^{n} $。

证明 由归纳法，这直接由定理 1.11(i) 得出。■

1.13 例 (a) 若 $ E = \mathbb{K} $，则指数映射与指数函数一致。

(b) 设 $ N \in \mathcal{L}(E) $ 是**幂零的**，即存在 $ m \in \mathbb{N} $，使得 $ N^{m+1} = 0 $。则

\[ e^{N} = \sum_{k=0}^{m} \frac{N^{k}}{k!} = 1 + N + \frac{N^{2}}{2!} + \cdots + \frac{N^{m}}{m!} , \]

其中 1 表示 $ \mathcal{L}(E) $ 的单位元。

(c) 设 $ E $ 与 $ F $ 是巴拿赫空间，$ A \in \mathcal{L}(E) $，$ B \in \mathcal{L}(F) $。又设

\[ A \otimes B : E \times F \to E \times F , \quad (x, y) \mapsto (Ax, By) . \]

则

\[ e^{A \otimes B} = e^{A} \otimes e^{B} . \]

证明 这容易由 $ (A \otimes B)^{n} = A^{n} \otimes B^{n} $ 得出。■

(d) 对 $ A \in \mathcal{L}(\mathbb{K}^{m}) $ 与 $ B \in \mathcal{L}(\mathbb{K}^{n}) $，有关系式

\[ [e^{A \otimes B}] = \begin{bmatrix} [e^{A}] & 0 \\ 0 & [e^{B}] \end{bmatrix} . \]

证明 这由 (c) 可得。■

(e) 设 $ \lambda_{1}, \ldots, \lambda_{m} \in \mathbb{K} $，并通过下式定义 $ \operatorname{diag}(\lambda_{1}, \ldots, \lambda_{m}) \in \mathcal{L}(\mathbb{K}^{m}) $：

\[ [\operatorname{diag}(\lambda_{1}, \ldots, \lambda_{m})] := \begin{bmatrix} \lambda_{1} & & 0 \\ & \ddots & \\ 0 & & \lambda_{m} \end{bmatrix} =: \operatorname{diag}[\lambda_{1}, \ldots, \lambda_{m}] . \]

则

\[ e^{\operatorname{diag}(\lambda_{1}, \ldots, \lambda_{m})} = \operatorname{diag}(e^{\lambda_{1}}, \ldots, e^{\lambda_{m}}) . \]

证明 这通过利用 (a) 与 (d) 归纳得出。■

(f) 对满足下式的 $ A \in \mathcal{L}(\mathbb{R}^{2}) $：

\[ [A] = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} , \]

我们有

\[ [e^{tA}] = \begin{bmatrix} \cos t & -\sin t \\ \sin t & \cos t \end{bmatrix} \qquad \text{对 } t \in \mathbb{R} . \]

证明 习题 I.11.10 容易给出

\[ (tA)^{2n+1} = (-1)^{n}t^{2n+1}A , \quad (tA)^{2n} = (-1)^{n}t^{2n}1_{\mathbb{R}^{2}} \qquad \text{对 } t \in \mathbb{R} \text{ 且 } n \in \mathbb{N} . \]

因为绝对收敛级数可以任意重排，我们得到

\[ \begin{aligned} \sum_{k=0}^{\infty} \frac{(tA)^{k}}{k!} &= \sum_{n=0}^{\infty} \frac{(tA)^{2n}}{(2n)!} + \sum_{n=0}^{\infty} \frac{(tA)^{2n+1}}{(2n+1)!} \\ &= \left( \sum_{n=0}^{\infty} (-1)^{n}\frac{t^{2n}}{(2n)!} \right)1_{\mathbb{R}^{2}} + \left( \sum_{n=0}^{\infty} (-1)^{n}\frac{t^{2n+1}}{(2n+1)!} \right)A , \end{aligned} \]

这就证明了该断言。■

##### 线性微分方程

对 $ a \in E $，映射 $ u(\cdot, a) : \mathbb{R} \to E $，$ t \mapsto e^{tA}a $ 是光滑的，且满足“微分方程” $ \dot{x} = Ax $，这立即由定理 1.11(i) 得出。现在我们将更深入地研究这类微分方程。

设 $ A \in \mathcal{L}(E) $，$ f \in C(\mathbb{R}, E) $。则

\[ \dot{x} = Ax + f(t) \qquad \text{对 } t \in \mathbb{R} , \tag{1.8} \]

称为 $ E $ 中的**一阶线性微分方程**。若 $ f = 0 $，则 (1.8) 是**齐次的**；否则它是**非齐次的**。若 $ A $ 与“时间” $ t $ 无关，我们称 $ \dot{x} = Ax $ 是**常系数**线性齐次微分方程。所谓 (1.8) 的**解**，我们指的是逐点满足 (1.8) 的函数 $ x \in C^{1}(\mathbb{R}, E) $，即对 $ t \in \mathbb{R} $ 有 $ \dot{x}(t) = A(x(t)) + f(t) $。

设 $ a \in E $。则

\[ \dot{x} = Ax + f(t) \text{ 对 } t \in \mathbb{R} , \quad \text{满足} \quad x(0) = a \tag{1.9;a} \]

是微分方程 (1.8) 的**初值问题**，$ a $ 是**初值**。这个初值问题的**解**是指逐点满足 $ (1.9)_{a} $ 的函数 $ x \in C^{1}(\mathbb{R}, E) $。

1.14 注 (a) 通过在 (1.8) 与 $ (1.9)_{a} $ 中标出 $ f $ 的自变量 $ t $（但不标出 $ x $ 的），我们采用的是一种不太精确的、符号化的记法，我们这样做是因为它强调 $ f $ 通常依赖于 $ t $。为了完整描述 (1.8) 或 $ (1.9)_{a} $，必须始终指明这类微分方程的解的含义。

(b) 为简单起见，这里我们只考虑 $ f $ 在整个 $ \mathbb{R} $ 上有定义的情形。当 $ f $ 只在一个完全子区间上有定义且连续时，所需的明显修改留给你。■

(c) 因为 $ C^{1}(\mathbb{R}, E) \subset C(\mathbb{R}, E) $ 且导数算子 $ \partial $ 是线性的（参见定理 IV.1.12），映射

\[ \partial - A : C^{1}(\mathbb{R}, E) \to C(\mathbb{R}, E) , \quad u \mapsto \dot{u} - Au \]

是线性的。定义

\[ \ker(\partial - A) = \left\{ x \in C^{1}(\mathbb{R}, E) ;\ x \text{ 是 } \dot{x} = Ax \text{ 的解} \right\} =: V \]

表明齐次微分方程 $ \dot{x} = Ax $ 的**解空间** $ V $ 是 $ C^{1}(\mathbb{R}, E) $ 的向量子空间。

(d) (1.8) 的全部解构成 $ C^{1}(\mathbb{R}, E) $ 的一个仿射子空间 $ u + V $，其中 $ u $ 是 (1.8) 的（任一）解。

证明 对 $ w := u + v \in u + V $，有 $ (\partial - A)w = (\partial - A)u + (\partial - A)v = f $。因此 $ w $ 是 (1.8) 的解。反之，若 $ w $ 是 (1.8) 的解，则 $ v := u - w $ 属于 $ V $，因为 $ (\partial - A)v = (\partial - A)u - (\partial - A)w = f - f = 0 $。■

(e) 对 $ a \in E $ 与 $ x \in C(\mathbb{R}, E) $，令

\[ \Phi_{a}(x)(t) := a + \int_{0}^{t} \left( Ax(s) + f(s) \right)ds . \]

显然，$ \Phi_{a} $ 是从 $ C(\mathbb{R}, E) $ 到 $ C^{1}(\mathbb{R}, E) $ 的仿射映射，且 $ x $ 是 $ (1.9)_{a} $ 的解当且仅当 $ x $ 是 $ \Phi_{a} $ 在\footnote{当然，我们把 $ \Phi_{a} $ 等同于 $ i \circ \Phi_{a} $，其中 $ i $ 表示 $ C^{1}(\mathbb{R}, E) $ 到 $ C(\mathbb{R}, E) $ 的包含映射。} $ C(\mathbb{R}, E) $ 中的不动点，即当 $ x $ 解线性**积分方程**

\[ x(t) = a + \int_{0}^{t} \left( Ax(s) + f(s) \right)ds \qquad \text{对 } t \in \mathbb{R} . ■ \]

##### 格朗沃尔引理

研究微分方程的一个重要工具是下面这个估计，称为**格朗沃尔引理**。

1.15 引理（格朗沃尔）设 $ J $ 是区间，$ t_{0} \in J $，$ \alpha, \beta \in [0, \infty) $。进一步设 $ y : J \to [0, \infty) $ 连续，且满足

\[ y(t) \le \alpha + \beta\left| \int_{t_{0}}^{t} y(\tau)\,d\tau \right| \qquad \text{对 } t \in J . \tag{1.10} \]

则

\[ y(t) \le \alpha e^{\beta|t - t_{0}|} \qquad \text{对 } t \in J . \]

证明 (i) 首先考虑 $ t \ge t_{0} $ 的情形，并令

\[ h : [t_{0}, t] \to \mathbb{R}^{+} , \quad s \mapsto \beta e^{\beta(t_{0} - s)}\int_{t_{0}}^{s} y(\tau)\,d\tau \qquad \text{对 } t \in J . \]

由定理 VI.4.12 与 (1.10)，可得

\[ h'(s) = -\beta h(s) + \beta e^{\beta(t_{0} - s)}y(s) \le \alpha\beta e^{\beta(t_{0} - s)} = \frac{d}{ds}\left( -\alpha e^{\beta(t_{0} - s)} \right) \qquad \text{对 } s \in [t_{0}, t] . \]

将该不等式从到 $ t_{0} $ 到 $ t $ 积分，得

\[ h(t) = \beta e^{\beta(t_{0} - t)}\int_{t_{0}}^{t} y(\tau)\,d\tau \le \alpha - \alpha e^{\beta(t_{0} - t)} , \]

其中我们用了 $ h(t_{0}) = 0 $。于是有

\[ \beta\int_{t_{0}}^{t} y(\tau)\,d\tau \le \alpha e^{\beta(t - t_{0})} - \alpha , \]

而 (1.10) 完成了该情形的证明。

(ii) 当 $ t \le t_{0} $ 时，我们令

\[ h(s) := -\beta e^{\beta(s - t_{0})}\int_{s}^{t_{0}} y(\tau)\,d\tau \qquad \text{对 } s \in [t, t_{0}] , \]

并如同 (i) 那样进行。■

利用格朗沃尔引理，我们可以轻松证明关于方程 (1.8) 的解空间的下一个陈述。

1.16 命题
(i) 设 $ x \in C^{1}(\mathbb{R}, E) $ 解 $ \dot{x} = Ax $。则

\[ x = 0 \iff x(t_{0}) = 0 \text{ 对某个 } t_{0} \in \mathbb{R} . \]

(ii) 初值问题 $ (1.9)_{a} $ 至多有一个解。

(iii) 对每个 $ a \in E $，初值问题 $ \dot{x} = Ax $，$ x(0) = a $ 有唯一解 $ t \mapsto e^{tA}a $。

(iv) $ \dot{x} = Ax $ 的解空间 $ V \subset C^{1}(\mathbb{R}, E) $ 是同构于 $ E $ 的向量空间。一个同构由下式给出

\[ E \to V , \quad a \mapsto (t \mapsto e^{tA}a) . \]

(v) 设 $ x_{1}, \ldots, x_{m} $ 解 $ \dot{x} = Ax $。则下列陈述等价：
(α) $ x_{1}, \ldots, x_{m} $ 在 $ C^{1}(\mathbb{R}, E) $ 中线性无关。
(β) 对每个 $ t \in \mathbb{R} $，$ x_{1}(t), \ldots, x_{m}(t) $ 在 $ E $ 中线性无关。
(γ) 存在 $ t_{0} \in \mathbb{R} $，使得 $ x_{1}(t_{0}), \ldots, x_{m}(t_{0}) $ 在 $ E $ 中线性无关。

证明 (i) 只需验证蕴含“$ \Longleftarrow $”。于是设 $ t_{0} \in \mathbb{R} $ 满足 $ x(t_{0}) = 0 $。则

\[ x(t) = A\int_{t_{0}}^{t} x(\tau)\,d\tau \qquad \text{对 } t \in \mathbb{R} \]

（参见注 1.14(e) 与习题 VI.3.3）。则 $ y := \|x\| $ 满足不等式

\[ y(t) \le \|A\|\left\| \int_{t_{0}}^{t} x(\tau)\,d\tau \right\| \le \|A\|\int_{t_{0}}^{t} \|x(\tau)\|\,d\tau = \|A\|\int_{t_{0}}^{t} y(\tau)\,d\tau \qquad \text{对 } t \in \mathbb{R} , \]

结论由格朗沃尔引理可得。

(ii) 若 $ u $ 与 $ v $ 解 $ (1.9)_{a} $，则 $ w = u - v $ 也解 $ \dot{x} = Ax $，且 $ w(0) = 0 $。由 (i)，得 $ w = 0 $。

(iii) 这由定理 1.11 与 (ii) 可得。

(iv) 这是 (iii) 的推论。

(v) 由于 (iv) 与定理 1.11(ii)，只需证明蕴含“(α)$ \Longrightarrow $(β)”。因此设对某个 $ t_{0} \in \mathbb{R} $，$ \lambda_{j} \in \mathbb{K} $ 满足 $ \sum_{j=1}^{m} \lambda_{j}x_{j}(t_{0}) = 0 $（$ j = 1, \ldots, m $）。因为 $ \sum_{j=1}^{m} \lambda_{j}x_{j} $ 解 $ \dot{x} = Ax $，由 (i) 得 $ \sum_{j=1}^{m} \lambda_{j}x_{j} = 0 $。由假设，$ x_{1}, \ldots, x_{m} $ 在 $ C^{1}(\mathbb{R}, E) $ 中线性无关。因此，由 $ x_{1}(t_{0}), \ldots, x_{m}(t_{0}) $ 在 $ E $ 中的线性无关性，得 $ \lambda_{1} = \cdots = \lambda_{m} = 0 $。■
