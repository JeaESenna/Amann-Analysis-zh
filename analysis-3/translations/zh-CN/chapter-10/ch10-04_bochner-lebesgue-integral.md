当 $ j \to \infty $ 时 $ \mu $-几乎处处。由引理 2.8，

\[ \|f - \varphi_k\|_1 = \lim_{j} \|\varphi_j - \varphi_k\|_1 \qquad \text{对 } k \in \mathbb{N} . \]

设 $ \varepsilon > 0 $。则存在 $ N \in \mathbb{N} $，使得对 $ j, k \ge N $ 有 $ \|\varphi_j - \varphi_k\|_1 < \varepsilon $；令 $ j \to \infty $ 取极限，得到 $ \|f - \varphi_N\|_1 \le \varepsilon $。这说明 $ \mathcal{S}(X,\mu,E) $ 在 $ \mathcal{L}_1(X,\mu,E) $ 中稠密。

(ii) 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中的柯西序列，并取 $ \varepsilon > 0 $。选取 $ M \in \mathbb{N} $，使得对 $ j, k \ge M $ 有 $ \|f_j - f_k\|_1 < \varepsilon/2 $。由 (i) 我们知道，对任意 $ j \in \mathbb{N} $ 都可找到 $ \varphi_j \in \mathcal{S}(X,\mu,E) $，使得 $ \|f_j - \varphi_j\|_1 < 2^{-j} $。于是

\[ \|\varphi_j - \varphi_k\|_1 \le \|\varphi_j - f_j\|_1 + \|f_j - f_k\|_1 + \|f_k - \varphi_k\|_1 < 2^{-j} + 2^{-k} + \varepsilon/2 \]

对 $ j, k \ge M $。这说明 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中的 $ \mathcal{L}_1 $-柯西序列。因此由引理 2.5，存在 $ (\varphi_j) $ 的子列 $ (\varphi_{j_k})_{k \in \mathbb{N}} $ 以及 $ f \in \mathcal{L}_1(X,\mu,E) $，使得当 $ k \to \infty $ 时 $ \varphi_{j_k} \to f $ $ \mu $-几乎处处。(i) 的证明表明，存在 $ N \ge M $ 使得 $ \|f - \varphi_{j_N}\|_1 < \varepsilon/4 $，于是得到

\[ \|f - f_j\|_1 \le \|f - \varphi_{j_N}\|_1 + \|\varphi_{j_N} - f_{j_N}\|_1 + \|f_{j_N} - f_j\|_1 < \varepsilon \qquad \text{对 } j \ge N , \]

即 $ (f_j) $ 在 $ \mathcal{L}_1(X,\mu,E) $ 中收敛到 $ f $。■

##### 积分的基本性质

我们已经看到，简单函数空间上的积分是连续的、线性的，并且当 $ E = \mathbb{R} $ 时还是单调的——参见注 2.2(g)、2.1(c) 与 2.1(f)。现在我们要说明，这些性质在把积分从简单函数空间延拓到可积函数空间之后仍然保持。

2.11 定理

(i) $ \int_X \cdot \, d\mu: \mathcal{L}_1(X,\mu,E) \to E $ 是线性且连续的，且

\[ \left| \int_X f \, d\mu \right| \le \int_X |f| \, d\mu = \|f\|_1 . \]

(ii) $ \int_X \cdot \, d\mu: \mathcal{L}_1(X,\mu,\mathbb{R}) \to \mathbb{R} $ 是连续的正线性泛函。

(iii) 设 $ F $ 是巴拿赫空间，$ T \in \mathcal{L}(E,F) $。则

\[ Tf \in \mathcal{L}_1(X,\mu,F) \qquad \text{且} \qquad T \int_X f \, d\mu = \int_X Tf \, d\mu \]

对 $ f \in \mathcal{L}_1(X,\mu,E) $。

证明 (i) 命题 2.4 表明，$ \mu $-可积函数构成一个向量空间。取 $ f, g \in \mathcal{L}_1(X,\mu,E) $ 与 $ \alpha \in \mathbb{K} $。则存在 $ \mathcal{S}(X,\mu,E) $ 中的 $ \mathcal{L}_1 $-柯西序列 $ (\varphi_j) $ 与 $ (\psi_j) $，使得 $ \varphi_j \to f $ 且 $ \psi_j \to g $ $ \mu $-几乎处处。由注 2.1(c)，

\[ \int_X (\alpha\varphi_j + \psi_j) \, d\mu = \alpha \int_X \varphi_j \, d\mu + \int_X \psi_j \, d\mu \qquad \text{对 } j \in \mathbb{N} . \]

在 $ \mathcal{L}_1(X,\mu,E) $ 上积分的线性由取极限 $ j \to \infty $ 得到。由推论 2.9，$ \|\cdot\|_1 $ 是 $ \mathcal{L}_1(X,\mu,E) $ 上的半范数，而注 2.1(e) 给出

\[ \left| \int_X \varphi_j \, d\mu \right| \le \int_X |\varphi_j| \, d\mu = \|\varphi_j\|_1 \qquad \text{对 } j \in \mathbb{N} . \]

由引理 2.8，我们可以取极限 $ j \to \infty $，并得到

\[ \left| \int_X f \, d\mu \right| \le \int_X |f| \, d\mu = \|f\|_1 . \]

连续性现在由注 2.2(f) 推出。

刚才所用的方法可以毫无困难地改用来证明 (ii) 与 (iii)。我们把它留给读者作为练习。■

2.12 推论

(i) 映射 $ f = (f_1,\ldots,f_n): X \to \mathbb{K}^n $ 是 $ \mu $-可积的，当且仅当其每个坐标 $ f_j $ 都是 $ \mu $-可积的。此时，

\[ \int_X f \, d\mu = \left( \int_X f_1 \, d\mu, \ldots, \int_X f_n \, d\mu \right) . \]

(ii) 设 $ g, h \in \mathbb{R}^X $ 并定义 $ f := g + ih $。则 $ f $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{C}) $ 当且仅当 $ g $ 与 $ h $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $。此时，

\[ \int_X f \, d\mu = \int_X g \, d\mu + i \int_X h \, d\mu . \]

(iii) 函数 $ f \in \mathbb{R}^X $ 是 $ \mu $-可积的，当且仅当 $ f^+ $ 与 $ f^- $ 都是 $ \mu $-可积的。此时，

\[ \int_X f \, d\mu = \int_X f^+ \, d\mu - \int_X f^- \, d\mu , \qquad \int_X |f| \, d\mu = \int_X f^+ \, d\mu + \int_X f^- \, d\mu . \]

证明 (i) “$ \Rightarrow $” 取 $ f \in \mathcal{L}_1(X,\mu,\mathbb{K}^n) $。由于对 $ j = 1,\ldots,n $ 有 $ \mathrm{pr}_j \in \mathcal{L}(\mathbb{K}^n,\mathbb{K}) $，由定理 2.11(iii) 可得 $ f_j = \mathrm{pr}_j \circ f $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{K}) $。此外 $ \int f_j \, d\mu = \mathrm{pr}_j \int f \, d\mu $，故

\[ \int_X f \, d\mu = \left( \int_X f_1 \, d\mu, \ldots, \int_X f_n \, d\mu \right) . \]

“$ \Leftarrow $” 对 $ j = 1,\ldots,n $，我们考虑映射

\[ b_j: \mathbb{K} \to \mathbb{K}^n , \qquad y \mapsto (0,\ldots,0,y,0,\ldots,0) , \]

其中 $ y $ 位于右侧第 $ j $ 个位置。于是

\[ b_j \in \mathcal{L}(\mathbb{K},\mathbb{K}^n) \qquad \text{且} \qquad f := \sum_{j=1}^{n} b_j \circ f_j . \]

该断言现在由定理 2.11(i) 与 (iii) 推出。

(ii) 这由 (i) 以及把 $ \mathbb{C} $ 与 $ \mathbb{R}^2 $ 等同得到。

(iii) 对 $ f \in \mathbb{R}^X $，我们有

\[ f^+ = (f + |f|)/2 , \qquad f^- = (|f| - f)/2 , \qquad f = f^+ - f^- , \qquad |f| = f^+ + f^- . \]

于是定理 2.11(i) 与引理 2.8 蕴含结论。■

2.13 引理 对 $ f \in \mathcal{L}_1(X,\mu,E) $ 与 $ A \in \mathcal{A} $，有 $ \chi_A f \in \mathcal{L}_1(X,\mu,E) $。

证明 设 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中 $ \mu $-几乎处处收敛到 $ f $ 的 $ \mathcal{L}_1 $-柯西序列。则由注 1.2(d)，$ \chi_A \varphi_j $ 是 $ \mu $-简单的，且 $ (\chi_A \varphi_j)_{j \in \mathbb{N}} $ 显然 $ \mu $-几乎处处收敛到 $ \chi_A f $。由注 2.1(f)，我们有

\[ \int_X |\chi_A \varphi_j - \chi_A \varphi_k| \, d\mu = \int_X \chi_A |\varphi_j - \varphi_k| \, d\mu \le \int_X |\varphi_j - \varphi_k| \, d\mu \qquad \text{对 } j, k \in \mathbb{N} . \]

因此 $ (\chi_A \varphi_j)_{j \in \mathbb{N}} $ 是 $ \mathcal{S}(X,\mu,E) $ 中的 $ \mathcal{L}_1 $-柯西序列。这说明 $ \chi_A f $ 是 $ \mu $-可积的。■

对 $ f \in \mathcal{L}_1(X,\mu,E) $ 与 $ A \in \mathcal{A} $，我们如下定义 $ f $ 在 $ A $ 上的 **$ \mu $-积分**：

\[ \int_A f \, d\mu := \int_X \chi_A f \, d\mu . \]

这由引理 2.13 是良定义的。

2.14 注 设 $ f \in \mathcal{L}_1(X,\mu,E) $ 与 $ A \in \mathcal{A} $。

(a) $ \int_A \cdot \, d\mu: \mathcal{L}_1(X,\mu,E) \to E $ 是线性且连续的，且

\[ \left| \int_A f \, d\mu \right| \le \int_A |f| \, d\mu = \|\chi_A f\|_1 . \]

(b) 设 $ \mathcal{B} := \mathcal{A}|A $ 且 $ \nu := \mu|_{\mathcal{B}} $。则 $ \int_A f \, d\mu = \int_A f|A \, d\nu $。

证明 证明很简单，留给读者（习题 1）。■

(c) 若 $ E = \mathbb{R} $ 且 $ f \ge 0 $，则映射

\[ \mathcal{A} \to [0,\infty) , \qquad A \mapsto \int_A f \, d\mu \]

是有限测度（见习题 11）。■

2.15 引理 设 $ f \in \mathcal{L}_1(X,\mu,E) $ 与 $ g \in E^X $ 满足 $ f = g $ $ \mu $-几乎处处。则 $ g $ 也属于 $ \mathcal{L}_1(X,\mu,E) $，且 $ \int_X f \, d\mu = \int_X g \, d\mu $。

证明 设 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中使 $ \varphi_j \to f $ $ \mu $-几乎处处的 $ \mathcal{L}_1 $-柯西序列。又设 $ M $ 与 $ N $ 是 $ \mu $-零集，使得在 $ M^c $ 上 $ \varphi_j \to f $，在 $ N^c $ 上 $ f = g $。则 $ (\varphi_j) $ $ \mu $-几乎处处收敛到 $ g $，因为对 $ x \in (M \cup N)^c $ 有 $ \varphi_j(x) \to g(x) $。因此 $ g $ 属于 $ \mathcal{L}_1(X,\mu,E) $，且 $ \int g \, d\mu = \lim_{j} \int \varphi_j \, d\mu = \int f \, d\mu $。■

2.16 推论

(i) 设 $ f \in E^X $ $ \mu $-几乎处处为零。则 $ f $ 是 $ \mu $-可积的，且 $ \int_X f \, d\mu = 0 $。

(ii) 设 $ f, g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ $ \mu $-几乎处处满足 $ f \le g $。则 $ \int_X f \, d\mu \le \int_X g \, d\mu $。

证明 (i) 这立刻由引理 2.15 推出。

(ii) 定理 2.11(ii) 与引理 2.15 蕴含 $ 0 \le \int_X (g - f) \, d\mu $，因此 $ \int_X f \, d\mu \le \int_X g \, d\mu $。■

2.17 命题 对 $ f \in \mathcal{L}_1(X,\mu,E) $ 与 $ \alpha > 0 $，有 $ \mu([|f| \ge \alpha]) < \infty $。

证明 引理 2.5 表明，存在 $ \mathcal{S}(X,\mu,E) $ 中的 $ \mathcal{L}_1 $-柯西序列 $ (\varphi_j) $ 以及 $ \mu $-可测集 $ A $，使得 $ \mu(A) \le 1 $ 且 $ (\varphi_j) $ 在 $ A^c $ 上一致收敛到 $ f $。由于 $ |f| $ 是 $ \mu $-可测的，$ B := A^c \cap [|f| \ge \alpha] $ 属于 $ \mathcal{A} $。此外存在 $ N \in \mathbb{N} $，使得对 $ x \in A^c $ 有 $ |\varphi_N(x) - f(x)| \le \alpha/2 $。因此

\[ |\varphi_N(x)| \ge |f(x)| - |\varphi_N(x) - f(x)| \ge \alpha/2 \qquad \text{对 } x \in B . \]

特别地，$ B $ 包含于 $ [\varphi_N \ne 0] $。于是 $ \mu(B) \le \mu([\varphi_N \ne 0]) < \infty $，因为 $ \varphi_N $ 是 $ \mu $-简单的。由于

\[ [|f| \ge \alpha] = B \cup (A \cap [|f| \ge \alpha]) \subset B \cup A , \]

可得 $ \mu([|f| \ge \alpha]) \le \mu(B) + 1 < \infty $。■

##### $ \mathcal{L}_1 $ 中的收敛

对每个可积函数 $ f $，都存在由简单函数构成的 $ \mathcal{L}_1 $-柯西序列，它几乎处处收敛到 $ f $。下面我们说明，$ \mathcal{L}_1(X,\mu,E) $ 中的每个柯西序列实际上都有一个子列，几乎处处收敛到该序列的 $ \mathcal{L}_1 $ 极限。

2.18 定理 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中收敛到 $ f \in \mathcal{L}_1(X,\mu,E) $ 的序列。

(i) 存在 $ (f_j) $ 的子列 $ (f_{j_k})_{k \in \mathbb{N}} $，具有以下性质：

(α) 当 $ k \to \infty $ 时 $ f_{j_k} \to f $ $ \mu $-几乎处处。

(β) 对每个 $ \varepsilon > 0 $，存在 $ A_\varepsilon \in \mathcal{A} $ 使 $ \mu(A_\varepsilon) < \varepsilon $，且 $ (f_{j_k})_{k \in \mathbb{N}} $ 在 $ A_\varepsilon^c $ 上一致收敛到 $ f $。

(ii) 积分 $ \int_X f_j \, d\mu $ 当 $ j \to \infty $ 时收敛到 $ \int_X f \, d\mu $。

证明 (i) 只需处理 $ f = 0 $ 的情形，因为若 $ f \ne 0 $，我们可以考虑序列 $ (f_j - f)_{j \in \mathbb{N}} $。

如同引理 2.5 的证明，存在 $ (f_j) $ 的子列 $ (g_k) $，使得对 $ m \ge \ell \ge 0 $ 有 $ \|g_\ell - g_m\|_1 < 2^{-2\ell} $。极限 $ m \to \infty $ 给出 $ \|g_\ell\|_1 \le 2^{-2\ell} $，对 $ \ell \in \mathbb{N} $。我们令 $ B_\ell := [|g_\ell| \ge 2^{-\ell}] $。由引理 2.8、命题 2.4 与命题 1.9，$ B_\ell $ 属于 $ \mathcal{A} $，而且我们得到

\[ 2^{-\ell} \mu(B_\ell) \le \int_{B_\ell} |g_\ell| \, d\mu \le \int_X |g_\ell| \, d\mu = \|g_\ell\|_1 \le 2^{-2\ell} \qquad \text{对 } \ell \in \mathbb{N} \]

（比较定理 2.11(ii)）。因此对 $ \ell \in \mathbb{N} $ 有 $ \mu(B_\ell) \le 2^{-\ell} $。取 $ A_n := \bigcup_{k=0}^{\infty} B_{n+k} $，我们有 $ \mu(A_n) \le 2^{-n+1} $，并得出 $ A := \bigcap_{n=0}^{\infty} A_n $ 是 $ \mu $-零集。容易验证 $ (g_k) $ 在 $ A_n^c $ 上一致收敛到 0，并在 $ A^c $ 上逐点收敛到 0（这方面参见引理 2.5 的证明）。

(ii) 由定理 2.11(i) 可得

\[ \left| \int_X f_j \, d\mu - \int_X f \, d\mu \right| \le \int_X |f_j - f| \, d\mu = \|f_j - f\|_1 \qquad \text{对 } j \in \mathbb{N} , \]

故左端当 $ j \to \infty $ 时的极限为 0。■

2.19 推论 对 $ f \in \mathcal{L}_1(X,\mu,E) $，

\[ \|f\|_1 = 0 \iff f = 0 \quad \mu\text{-几乎处处} . \]

证明 “$ \Rightarrow $” 因为 $ \|f\|_1 = 0 $，由 $ f_j := 0 $（$ j \in \mathbb{N} $）定义的序列 $ (f_j) $ 在 $ \mathcal{L}_1(X,\mu,E) $ 中收敛到 $ f $。由定理 2.18，于是存在 $ (f_j) $ 的子列 $ (f_{j_k})_{k \in \mathbb{N}} $，使得当 $ k \to \infty $ 时 $ f_{j_k} \to f $ $ \mu $-几乎处处。因此 $ f = 0 $ $ \mu $-几乎处处。

“$ \Leftarrow $” 按假设，$ |f| = 0 $ $ \mu $-几乎处处；断言由推论 2.16(i) 推出。■

下面我们通过一个特别简单的情形来说明本节的概念与结果，以此结束本节。

2.20 例（可和级数空间） 设 $ X $ 表示 $ \mathbb{N} $ 或 $ \mathbb{Z} $，并设 $ \mathcal{H}^0 $ 为其 0 维豪斯多夫测度，或计数测度。由 $ \mathbb{R} $ 诱导的拓扑显然使 $ X $ 成为 $ \sigma $-紧度量空间，其中每个单点集都是开集。因此 $ X $ 的拓扑与 $ \mathfrak{P}(X) $ 一致：$ X $ 的每个子集都是开集。从而 $ X $ 的每个映射都是连续的 $ E $ 值映射，即 $ C(X,E) = E^X $。

进一步可得 $ \mathcal{B}(X) = \mathfrak{P}(X) $，且 $ \mathcal{H}^0 $ 是 $ X $ 上的 massive 拉东测度。于是由定理 1.17，

\[ \mathcal{L}_0(X,\mathcal{H}^0,E) = C(X,E) = E^X . \]

此外，$ \mathcal{H}^0 $ 没有非空零集。因此 $ \mathcal{H}^0 $-几乎处处收敛与逐点收敛相同。

对 $ \varphi \in E^X $，我们定义 $ \varphi $ 的**支集**为集合

\[ \operatorname{supp}(\varphi) := \{ x \in X ; \varphi(x) \ne 0 \} , \]

并记 $ C_c(X,E) $ 为 $ X $ 上具有紧支集的连续 $ E $ 值函数空间：

\[ C_c(X,E) := \{ \varphi \in C(X,E) ; \operatorname{supp}(\varphi) \text{ 是紧的} \} . \]

显然 $ \varphi \in C(X,E) $ 属于 $ C_c(X,E) $ 当且仅当 $ \operatorname{supp}(\varphi) $ 是有限集。又 $ C_c(X,E) $ 是 $ C(X,E) $ 的向量子空间，且容易验证 $ C_c(X,E) = \mathcal{S}(X,\mathcal{H}^0,E) $。

对 $ \varphi \in C_c(X) $，由注 2.1(b) 可得

\[ \int_X \varphi \, d\mathcal{H}^0 = \sum_{x \in \operatorname{supp}(\varphi)} \varphi(x) . \tag{2.4} \]

现在我们令

\[ \ell_1(X,E) := \left\{ f \in E^X ; \sum_{x \in X} |f(x)| < \infty \right\} . \]

对 $ f \in \ell_1(X,E) $ 与 $ n \in \mathbb{N} $，令

\[ \varphi_n(x) := \begin{cases} f(x) & \text{若 } |x| \le n , \\ 0 & \text{若 } |x| > n . \end{cases} \]

则 $ \varphi_n $ 属于 $ C_c(X,E) $，且当 $ n \to \infty $ 时 $ \varphi_n \to f $。对 $ m > n $，由 (2.4) 得到

\[ \|\varphi_n - \varphi_m\|_1 = \sum_{n < |x| \le m} |f(x)| . \]

因此 $ (\varphi_n) $ 是 $ \mathcal{S}(X,\mathcal{H}^0,E) $ 中的 $ \mathcal{L}_1 $-柯西序列，这说明 $ f $ 属于 $ \mathcal{L}_1(X,\mathcal{H}^0,E) $。因此 $ \ell_1(X,E) \subset \mathcal{L}_1(X,\mathcal{H}^0,E) $，且

\[ \int_X f \, d\mathcal{H}^0 = \sum_{x \in X} f(x) \qquad \text{对 } f \in \ell_1(X,E) . \tag{2.5} \]

现在设 $ f \in \mathcal{L}_1(X,\mathcal{H}^0,E) $。则存在 $ \mathcal{S}(X,\mu,E) $ 中的 $ \mathcal{L}_1 $-柯西序列 $ (\psi_j) $——从而也是 $ C_c(X,E) $ 中的——它逐点收敛到 $ f $。由引理 2.8，$ |f| $ 属于 $ \mathcal{L}_1(X,\mathcal{H}^0,\mathbb{R}) $，且

\[ \|f\|_1 = \int_X |f| \, d\mathcal{H}^0 = \lim_{j \to \infty} \int_X |\psi_j| \, d\mathcal{H}^0 = \lim_{j \to \infty} \sum_{x \in X} |\psi_j(x)| . \]

于是存在 $ k \in \mathbb{N} $ 使得

\[ \left| \int_X |f| \, d\mathcal{H}^0 - \sum_{x \in X} |\psi_j(x)| \right| \le 1 \qquad \text{对 } j \ge k . \]

这说明

\[ \sum_{x \in X} |\psi_j(x)| \le 1 + \int_X |f| \, d\mathcal{H}^0 =: K < \infty \qquad \text{对 } j \ge k . \]

因此对每个 $ m \in \mathbb{N} $ 都有

\[ \sum_{|x| \le m} |\psi_j(x)| \le K \qquad \text{对 } j \ge k , \]

由此，因为当 $ j \to \infty $ 时 $ \psi_j \to f $，我们得到

\[ \sum_{|x| \le m} |f(x)| \le K \qquad \text{对 } m \in \mathbb{N} . \]

现在定理 II.7.7 蕴含 $ f $ 属于 $ \ell_1(X,E) $（且满足 $ \|f\|_1 \le K $）。因此我们已证明

\[ \mathcal{L}_1(X,\mathcal{H}^0,E) = \ell_1(X,E) , \]

由此我们从 (2.5) 得到关系\footnote{见定理 II.8.9。}

\[ \|f\|_1 = \sum_{x \in X} |f(x)| . \]

最后，由定理 2.10 与注 2.2(a) 可得

\[ \ell_1(X,E) := (\ell_1(X,E), \|\cdot\|_1) \]

是巴拿赫空间，即**可和**（$ E $ 值）级数的空间。

若 $ E = \mathbb{K} $，通常用 $ \ell_1(\mathbb{Z}) $ 与 $ \ell_1(\mathbb{N}) $ 表示 $ \ell_1(X,\mathbb{K}) $，缩写 $ \ell_1 := \ell_1(\mathbb{N}) $ 也很常见。\footnote{比较习题 II.8.6。} ■
