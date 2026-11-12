## 2 连续延拓

本节研究把一个一致连续映射连续延拓到其定义域的一个适当超集上的问题。这里我们仅限于定义域在该超集中稠密的情形。在这一情形下，连续延拓是唯一确定的，并且可以由原函数以任意精度逼近。在此过程中，我们将学到一种在整个分析中反复出现的逼近技巧。

本节的前几部分对整个连续数学具有根本的重要性，并有众多应用，因此很好地理解这些结果是重要的。

##### 一致连续函数的延拓

2.1 定理（延拓定理）设 $ Y $ 与 $ Z $ 是度量空间，且 $ Z $ 是完备的。又设 $ X $ 是 $ Y $ 的稠密子集，$ f : X \to Z $ 一致连续。\footnote{照例，我们给 $ X $ 赋予由 $ Y $ 诱导的度量。}则 $ f $ 有唯一确定的延拓 $ \bar{f} : Y \to Z $，由下式给出

\[ \bar{f}(y) = \lim_{\substack{x \to y \\ x \in X}} f(x) \quad \text{对 } y \in Y, \]

且 $ \bar{f} $ 也一致连续。

证明 (i) 我们先验证唯一性。设 $ g, h \in C(Y, Z) $ 是 $ f $ 的延拓。由于 $ X $ 在 $ Y $ 中稠密，对每个 $ y \in Y $，存在 $ X $ 中的序列 $ (x_n) $，使得在 $ Y $ 中 $ x_n \to y $。$ g $ 与 $ h $ 的连续性给出

\[ g(y) = \lim_n g(x_n) = \lim_n f(x_n) = \lim_n h(x_n) = h(y). \]

因此 $ g = h $。

(ii) 若 $ f $ 一致连续，则对每个 $ \varepsilon > 0 $，存在 $ \delta = \delta(\varepsilon) > 0 $，使得

\[ d(f(x), f(x')) < \varepsilon \quad \text{对 } x, x' \in X \text{ 且 } d(x, x') < \delta. \tag{2.1} \]

设 $ y \in Y $，$ (x_n) $ 是 $ X $ 中的序列，使得在 $ Y $ 中 $ x_n \to y $。则存在 $ N \in \mathbb{N} $，使得

\[ d(x_j, y) < \delta/2 \quad \text{对 } j \ge N, \tag{2.2} \]

并且由此可得

\[ d(x_j, x_k) \le d(x_j, y) + d(y, x_k) < \delta \quad \text{对 } j, k \ge N. \]

由 (2.1)，我们有

\[ d(f(x_j), f(x_k)) < \varepsilon \quad \text{对 } j, k \ge N. \]

因此 $ (f(x_j)) $ 是 $ Z $ 中的柯西序列。由于 $ Z $ 完备，我们可以找到 $ z \in Z $，使得 $ f(x_j) \to z $。若 $ (x'_k) $ 是 $ X $ 中另一个使得 $ x'_k \to y $ 的序列，我们如上推理可得存在 $ z' \in Z $，使得 $ f(x'_k) \to z' $。此外，我们可以找到 $ M \ge N $，使得对 $ k \ge M $ 有 $ d(x'_k, y) < \delta/2 $。这连同 (2.2) 给出

\[ d(x_j, x'_k) \le d(x_j, y) + d(y, x'_k) < \delta \quad \text{对 } j, k \ge M, \]

又由 (2.1)，我们有

\[ d(f(x_j), f(x'_k)) < \varepsilon \quad \text{对 } j, k \ge M. \tag{2.3} \]

在 (2.3) 中对 $ j \to \infty $ 与 $ k \to \infty $ 取极限，得到 $ d(z, z') \le \varepsilon $。这对每个正的 $ \varepsilon $ 都成立，故 $ z = z' $。这些考虑表明映射

\[ \bar{f} : Y \to Z, \quad y \mapsto \lim_{\substack{x \to y \\ x \in X}} f(x) \]

是良定义的，也就是说，它不依赖于所选取的序列。

对 $ x \in X $，对 $ j \in \mathbb{N} $ 令 $ x_j := x $，于是得到 $ \bar{f}(x) = \lim_j f(x_j) = f(x) $。因此 $ \bar{f} $ 是 $ f $ 的延拓。

(iii) 剩下要证明 $ \bar{f} $ 一致连续。设 $ \varepsilon > 0 $，并选取满足 (2.1) 的 $ \delta > 0 $。再取 $ y, z \in Y $，使得 $ d(y, z) < \delta/3 $。则存在 $ X $ 中的序列 $ (y_n) $ 与 $ (z_n) $，使得 $ y_n \to y $ 且 $ z_n \to z $。因此存在 $ N \in \mathbb{N} $，使得对 $ n \ge N $ 有 $ d(y_n, y) < \delta/3 $ 且 $ d(z_n, z) < \delta/3 $。特别地，我们得到

\[ d(y_N, z_N) \le d(y_N, y) + d(y, z) + d(z, z_N) < \delta \]

以及

\[ \begin{aligned} d(y_n, y_N) &\le d(y_n, y) + d(y, y_N) < \delta, \\ d(z_n, z_N) &\le d(z_n, z) + d(z, z_N) < \delta \end{aligned} \]

对 $ n \ge N $ 成立。由 $ \bar{f} $ 的定义、例 III.1.3(l) 以及 (2.1)，我们有

\[ \begin{aligned} d(\bar{f}(y), \bar{f}(z)) &\le d(\bar{f}(y), f(y_N)) + d(f(y_N), f(z_N)) + d(f(z_N), \bar{f}(z)) \\ &= \lim_n d(f(y_n), f(y_N)) + d(f(y_N), f(z_N)) + \lim_n d(f(z_N), f(z_n)) \\ &< 3\varepsilon. \end{aligned} \]

因此 $ \bar{f} $ 一致连续。■

2.2 应用 设 $ X $ 是 $ \mathbb{K}^n $ 的有界子集。则限制\footnote{$ BUC(X) $ 表示 $ X $ 上有界且一致连续的函数所构成的巴拿赫空间，以上确界范数给出。试与习题 V.2.1 比较。}

\[ T : C(\bar{X}) \to BUC(X), \quad u \mapsto u|X \tag{2.4} \]

是等距同构。

证明 (i) 设 $ u \in C(\bar{X}) $。由于 $ \bar{X} $ 由海涅–博雷尔定理是紧致的，故推论 III.3.7 与定理 III.3.13 给出 $ u $——从而 $ Tu = u|X $——有界且一致连续。因此 $ T $ 是良定义的。显然 $ T $ 是线性的。

(ii) 设 $ v \in BUC(X) $。由于 $ X $ 在 $ \bar{X} $ 中稠密，由定理 2.1 存在唯一确定的 $ u \in C(\bar{X}) $，使得 $ u|X = v $。因此 $ T : C(\bar{X}) \to BUC(X) $ 是向量空间同构。

(iii) 对 $ u \in C(\bar{X}) $，我们有

\[ \|Tu\|_\infty = \sup_{x \in X} |Tu(x)| = \sup_{x \in X} |u(x)| \le \sup_{x \in \bar{X}} |u(x)| = \|u\|_\infty. \]

另一方面，由推论 III.3.8，存在 $ y \in \bar{X} $，使得 $ \|u\|_\infty = |u(y)| $。我们选取 $ X $ 中的序列 $ (x_n) $，使得 $ x_n \to y $，于是得到

\[ \|u\|_\infty = |u(y)| = |\lim u(x_n)| = |\lim Tu(x_n)| \le \sup_{x \in X} |Tu(x)| = \|Tu\|_\infty. \]

这表明 $ T $ 是等距。■

约定 若 $ X $ 是 $ \mathbb{K}^n $ 的有界开子集，我们总是通过同构 (2.4) 把 $ BUC(X) $ 与 $ C(\bar{X}) $ 等同起来。

##### 有界线性算子

定理 2.1 对线性映射尤为重要。因此我们先汇集线性算子的若干性质。

设 $ E $ 与 $ F $ 是赋范向量空间，$ A : E \to F $ 是线性的。我们称 $ A $ **有界**\footnote{由于历史原因，我们在这里接受术语上的某种不一致：若 $ F $ 不是零向量空间，则（除零算子外）不存在按第 II.3 节意义为有界映射的有界线性算子（试与习题 II.3.15 比较）。这里，有界线性算子把有界集映成有界集（试与结论 2.4(c) 比较）。}，若存在 $ \alpha \ge 0 $，使得

\[ \|Ax\| \le \alpha \|x\| \quad \text{对 } x \in E. \tag{2.5} \]

我们定义

\[ \mathcal{L}(E, F) := \{\, A \in \operatorname{Hom}(E, F) \;;\; A \text{ 有界} \,\}. \]

对每个 $ A \in \mathcal{L}(E, F) $，存在 $ \alpha \ge 0 $，使 (2.5) 成立。因此

\[ \|A\| := \inf\{\, \alpha \ge 0 \;;\; \|Ax\| \le \alpha \|x\|, \; x \in E \,\} \]

是良定义的。我们称 $ \|A\|_{\mathcal{L}(E, F)} := \|A\| $ 为 $ A $ 的**算子范数**。

2.3 命题 对 $ A \in \mathcal{L}(E, F) $，我们有\footnote{此处以及类似情形，我们默认 $ E \ne \{0\} $。}

\[ \|A\| = \sup_{x \ne 0} \frac{\|Ax\|}{\|x\|} = \sup_{\|x\| = 1} \|Ax\| = \sup_{\|x\| \le 1} \|Ax\| = \sup_{x \in \mathbb{B}_E} \|Ax\|. \]

证明 该结论由下式得出

\[ \begin{aligned} \|A\| &= \inf\{\, \alpha \ge 0 \;;\; \|Ax\| \le \alpha \|x\|, \; x \in E \,\} \\ &= \inf\left\{ \alpha \ge 0 \;;\; \frac{\|Ax\|}{\|x\|} \le \alpha, \; x \in E \backslash \{0\} \right\} \\ &= \sup\left\{ \frac{\|Ax\|}{\|x\|} \;;\; x \in E \backslash \{0\} \right\} \\ &= \sup\left\{ \left\| A\left( \frac{x}{\|x\|} \right) \right\| \;;\; x \in E \backslash \{0\} \right\} \\ &= \sup_{\|y\| = 1} \|Ay\| \le \sup_{\|x\| \le 1} \|Ax\|. \end{aligned} \]

对每个满足 $ 0 < \|x\| \le 1 $ 的 $ x \in E $，我们有估计式

\[ \|Ax\| \le \frac{1}{\|x\|} \|Ax\| = \left\| A\left( \frac{x}{\|x\|} \right) \right\|, \]

因此我们得到

\[ \sup_{\|x\| \le 1} \|Ax\| \le \sup_{\|y\| = 1} \|Ay\|. \]

这样我们就证明了该定理的前三个等式。

对于最后一个等式，令 $ a := \sup_{x \in \mathbb{B}_E} \|Ax\| $，且 $ y \in \overline{\mathbb{B}} := \overline{\mathbb{B}}_E $。则 $ 0 < \lambda < 1 $ 意味着 $ \lambda y $ 属于 $ \mathbb{B} $。于是估计式 $ \|Ay\| = \|A(\lambda y)\|/\lambda \le a/\lambda $ 对 $ 0 < \lambda < 1 $ 成立，正如 $ \|Ay\| \le a $ 所示。因此

\[ \sup_{\|x\| \le 1} \|Ax\| \le \sup_{x \in \mathbb{B}_E} \|Ax\| \le \sup_{\|x\| \le 1} \|Ax\|. \blacksquare \]

2.4 结论 (a) 若 $ A \in \mathcal{L}(E, F) $，则

\[ \|Ax\| \le \|A\| \|x\| \quad \text{对 } x \in E. \]

(b) 每个 $ A \in \mathcal{L}(E, F) $ 是利普希茨连续的，因此也一致连续。

证明 若 $ x, y \in E $，则 $ \|Ax - Ay\| = \|A(x - y)\| \le \|A\| \|x - y\| $。因此 $ A $ 以 $ \|A\| $ 为利普希茨常数，是利普希茨连续的。■

(c) 设 $ A \in \operatorname{Hom}(E, F) $。则 $ A $ 属于 $ \mathcal{L}(E, F) $ 当且仅当 $ A $ 把有界集映成有界集。

证明 “$ \Longrightarrow $” 设 $ A \in \mathcal{L}(E, F) $，且 $ B $ 在 $ E $ 中有界。则存在 $ \beta > 0 $，使得对所有 $ x \in B $ 有 $ \|x\| \le \beta $。由此可得

\[ \|Ax\| \le \|A\| \|x\| \le \|A\| \beta \quad \text{对 } x \in B. \]

因此 $ B $ 在 $ A $ 下的像在 $ F $ 中有界。

“$ \Longleftarrow $” 由于闭单位球 $ \mathbb{B}_E $ 在 $ E $ 中闭，由假设存在 $ \alpha > 0 $，使得对 $ x \in \overline{\mathbb{B}}_E $ 有 $ \|Ax\| \le \alpha $。因为对所有 $ y \in E \backslash \{0\} $ 有 $ y/\|y\| \in \overline{\mathbb{B}}_E $，由此可得对所有 $ y \in E $ 有 $ \|Ay\| \le \alpha \|y\| $。■

(d) $ \mathcal{L}(E, F) $ 是 $ \operatorname{Hom}(E, F) $ 的向量子空间。

证明 设 $ A, B \in \mathcal{L}(E, F) $，$ \lambda \in \mathbb{K} $。对每个 $ x \in E $，我们有估计式

\[ \|(A + B)x\| = \|Ax + Bx\| \le \|Ax\| + \|Bx\| \le (\|A\| + \|B\|) \|x\| \tag{2.6} \]

与

\[ \|\lambda Ax\| = |\lambda| \|Ax\| \le |\lambda| \|A\| \|x\|. \tag{2.7} \]

因此 $ A + B $ 与 $ \lambda A $ 也属于 $ \mathcal{L}(E, F) $。■

(e) 映射

\[ \mathcal{L}(E, F) \to \mathbb{R}^+, \quad A \mapsto \|A\| \]

是 $ \mathcal{L}(E, F) $ 上的范数。

证明 由于 (d)，只需按范数的定义直接验证。首先，由于 $ \|A\| = 0 $，由命题 2.3 可得 $ A = 0 $。其次选取 $ x \in E $，使得 $ \|x\| \le 1 $。则由 (2.6) 与 (2.7) 可得

\[ \|(A + B)x\| \le \|A\| + \|B\| \quad \text{且} \quad \|\lambda Ax\| = |\lambda| \|Ax\|, \]

而对 $ x $ 取上确界便验证了定义的其余部分。■

(f) 设 $ G $ 是赋范向量空间，$ B \in \mathcal{L}(E, F) $，且 $ A \in \mathcal{L}(F, G) $。则我们有

\[ AB \in \mathcal{L}(E, G) \quad \text{且} \quad \|AB\| \le \|A\| \|B\|. \]

证明 这由下式

\[ \|ABx\| \le \|A\| \|Bx\| \le \|A\| \|B\| \|x\| \quad \text{对 } x \in E, \]

以及算子范数的定义得出。■

(g) $ \mathcal{L}(E) := \mathcal{L}(E, E) $ 是带单位的**赋范代数**\footnote{试与第 V.4 节中巴拿赫代数的定义比较。}，也就是说，$ \mathcal{L}(E) $ 是一个代数，且 $ \|\mathbf{1}_E\| = 1 $，并且还有

\[ \|AB\| \le \|A\| \|B\| \quad \text{对 } A, B \in \mathcal{L}(E). \]

证明 该断言由例 I.12.11(c) 与 (f) 立即可得。■

约定 在下文中，我们总是给 $ \mathcal{L}(E, F) $ 赋以算子范数。因此

\[ \mathcal{L}(E, F) := (\mathcal{L}(E, F), \|\cdot\|) \]

是具有 $ \|\cdot\| := \|\cdot\|_{\mathcal{L}(E, F)} $ 的赋范向量空间。

下一个定理表明，线性映射有界当且仅当它连续。

2.5 定理 设 $ A \in \operatorname{Hom}(E, F) $。下列陈述等价：

(i) $ A $ 连续。

(ii) $ A $ 在 0 处连续。

(iii) $ A \in \mathcal{L}(E, F) $。

证明 “$ (i) \Longrightarrow (ii) $” 是显然的，而 “$ (iii) \Longrightarrow (i) $” 已在结论 2.4(b) 中证明。

“$ (ii) \Longrightarrow (iii) $” 由假设，存在 $ \delta > 0 $，使得对所有 $ y \in \overline{\mathbb{B}}(0, \delta) $ 有 $ \|Ay\| = \|Ay - A0\| < 1 $。由此可得

\[ \sup_{\|x\| \le 1} \|Ax\| = \frac{1}{\delta} \sup_{\|x\| \le 1} \|A(\delta x)\| = \frac{1}{\delta} \sup_{\|y\| \le \delta} \|Ay\| \le \frac{1}{\delta}, \]

因此 $ A $ 是闭的。■

##### 有界线性算子的连续延拓

2.6 定理 设 $ E $ 是赋范向量空间，$ X $ 是 $ E $ 中的稠密向量子空间，$ F $ 是巴拿赫空间。则对每个 $ A \in \mathcal{L}(X, F) $，存在唯一确定的延拓 $ \bar{A} \in \mathcal{L}(E, F) $，由下式定义

\[ \bar{A}e = \lim_{\substack{x \to e \\ x \in X}} Ax \quad \text{对 } e \in E, \tag{2.8} \]

且 $ \|\bar{A}\|_{\mathcal{L}(E, F)} = \|A\|_{\mathcal{L}(X, F)} $。

证明 (i) 根据结论 2.4(b)，$ A $ 一致连续。令 $ f := A $，$ Y := E $，$ Z := F $，则由定理 2.1 可得 $ A $ 在 $ C(E, F) $ 中有唯一确定的延拓 $ \bar{A} $，它由 (2.8) 给出。

(ii) 我们现在证明 $ \bar{A} $ 是线性的。为此设 $ e, e' \in E $，$ \lambda \in \mathbb{K} $，$ (x_n) $ 与 $ (x'_n) $ 是 $ X $ 中的序列，使得在 $ E $ 中 $ x_n \to e $ 且 $ x'_n \to e' $。由 $ A $ 的线性性以及极限的线性性，我们有

\[ \bar{A}(e + \lambda e') = \lim_n A(x_n + \lambda x'_n) = \lim_n Ax_n + \lambda \lim_n Ax'_n = \bar{A}e + \lambda \bar{A}e'. \]

因此 $ \bar{A} : E \to F $ 是线性的。$ \bar{A} $ 连续可由定理 2.5 得出，因为 $ \bar{A} $ 属于 $ \mathcal{L}(E, F) $。

(iii) 最后我们证明 $ \bar{A} $ 与 $ A $ 有相同的算子范数。由范数的连续性（见例 III.1.3(j)）以及结论 2.4(a)，可得

\[ \|\bar{A}e\| = \|\lim Ax_n\| = \lim \|Ax_n\| \le \lim \|A\| \|x_n\| = \|A\| \|\lim x_n\| = \|A\| \|e\| \]

对每个 $ e \in E $ 以及 $ X $ 中每个使得在 $ E $ 中 $ x_n \to e $ 的序列 $ (x_n) $ 成立。因此 $ \|\bar{A}\| \le \|A\| $。由于 $ \bar{A} $ 延拓了 $ A $，命题 2.3 给出

\[ \|\bar{A}\| = \sup_{\|y\| < 1} \|\bar{A}y\| \ge \sup_{\substack{\|x\| < 1 \\ x \in X}} \|\bar{A}x\| = \sup_{\substack{\|x\| < 1 \\ x \in X}} \|Ax\| = \|A\|, \]

于是得到 $ \|\bar{A}\|_{\mathcal{L}(E, F)} = \|A\|_{\mathcal{L}(X, F)} $。■

##### 习题

在下列习题中，$ E $、$ E_j $、$ F $ 与 $ F_j $ 都是赋范向量空间。

1 设 $ A \in \operatorname{Hom}(E, F) $ 是满射。证明

\[ A^{-1} \in \mathcal{L}(F, E) \Longleftrightarrow \exists\, \alpha > 0 : \alpha \|x\| \le \|Ax\|, \quad x \in E. \]

若 $ A $ 还属于 $ \mathcal{L}(E, F) $，证明 $ \|A^{-1}\| \ge \|A\|^{-1} $。

2 设 $ E $ 与 $ F $ 是有限维的，$ A \in \mathcal{L}(E, F) $ 是双射，且其逆\footnote{若 $ E $ 是有限维赋范向量空间，则 $ \operatorname{Hom}(E, F) = \mathcal{L}(E, F) $（见定理 VII.1.6）。因此我们无需假设 $ A $、$ A^{-1} $ 与 $ B $ 连续。} $ A^{-1} \in \mathcal{L}(F, E) $ 连续。证明：若 $ B \in \mathcal{L}(E, F) $ 满足

\[ \|A - B\|_{\mathcal{L}(E, F)} < \|A^{-1}\|_{\mathcal{L}(F, E)}^{-1} \]

则 $ B $ 可逆。

3 $ A \in \operatorname{End}(\mathbb{K}^n) $ 在标准基下有矩阵元 $ [a_{jk}] $。对 $ E_j := (\mathbb{K}^n, |\cdot|_j) $（其中 $ j = 1, 2, \infty $），验证：对 $ A \in \mathcal{L}(E_j) $，有

(i) $ \|A\|_{\mathcal{L}(E_1)} = \max_k \sum_j |a_{jk}| $；

(ii) $ \|A\|_{\mathcal{L}(E_2)} \le \left( \sum_{j,k} |a_{jk}|^2 \right)^{1/2} $；

(iii) $ \|A\|_{\mathcal{L}(E_\infty)} = \max_j \sum_k |a_{jk}| $。

4 证明 $ \delta : B(\mathbb{R}^n) \to \mathbb{R} $，$ f \mapsto f(0) $ 属于 $ \mathcal{L}(B(\mathbb{R}^n), \mathbb{R}) $，并求 $ \|\delta\| $。

5 设 $ A_j \in \operatorname{Hom}(E_j, F_j) $（$ j = 0, 1 $），且

\[ A_0 \otimes A_1 : E_0 \times E_1 \to F_0 \times F_1, \quad (e_0, e_1) \mapsto (A_0 e_0, A_1 e_1). \]

验证：

\[ A_0 \otimes A_1 \in \mathcal{L}(E_0 \times E_1, F_0 \times F_1) \Longleftrightarrow A_j \in \mathcal{L}(E_j, F_j), \quad j = 0, 1. \]

6 设 $ (A_n) $ 是 $ \mathcal{L}(E, F) $ 中收敛到 $ A $ 的序列，$ (x_n) $ 是 $ E $ 中极限为 $ x $ 的序列。证明 $ F $ 中的序列 $ (A_n x_n) $ 收敛到 $ Ax $。

7 证明 $ A \in \mathcal{L}(E, F) $ 的核 $ \ker(A) $ 是 $ E $ 的闭向量子空间。
