## 3 外测度

迄今为止，我们遇到的一切测度都属于平庸的那一类。它们中没有一个能用来度量——比如说——曲面面积，如果我们希望所得结果在最简单的矩形情形下与熟悉的几何值一致的话！

本节中，我们为引入更有趣的测度类奠定基础。我们首先构造称为“外测度”的集函数，它们定义在给定集合的**所有**子集上，并且具有测度的某些（尽管并非全部）性质。我们将看到它们的重要例子。在后面的各节中，我们再通过适当选取外测度的限制，得到许多真正的测度。

与往常一样，我们假设

• $ X $ 是非空集合。

##### 外测度的构造

若映射 $ \mu^*\colon \mathfrak{P}(X) \to [0,\infty] $ 满足 $ \mu^*(\varnothing) = 0 $，并且递增、$ \sigma $-次可加，则称它是 $ X $ 上的**外测度**。若 $ \mathfrak{P}(X) $ 的子集 $ \mathcal{K} $ 既包含空集，又包含元素 $ K_j $（$ j \in \mathbb{N} $），使得 $ X = \bigcup_j K_j $，则称 $ \mathcal{K} $ 是 $ X $ 的**合格覆盖**。

3.1 注 (a) $ X $ 上的任何外测度都已经定义在整个 $ \mathfrak{P}(X) $ 上。

(b) $ \mathfrak{P}(X) $ 上定义的每个测度都是 $ X $ 上的外测度。

证明 这由命题 2.3(vi) 推出。■

(c) 对 $ A \subset X $，令

\[ \mu^*(A) := \begin{cases} 0 , & A = \varnothing , \\ 1 , & A \ne \varnothing . \end{cases} \]

则 $ \mu^* $ 是 $ X $ 上的外测度，并且它是测度当且仅当 $ X $ 只有一个点。

(d) $ \{ \varnothing, X \} $ 是 $ X $ 的合格覆盖。

(e) 对每个 $ a, b \in \mathbb{R}^n $，设 $ A(a,b) $ 是 $ \mathbb{R}^n $ 的某个子集，且 $ (a,b) \subset A(a,b) \subset [a,b] $。则 $ \{ A(a,b) \,;\ a, b \in \mathbb{R}^n \} $ 是 $ \mathbb{R}^n $ 的合格覆盖；特别地，$ \mathbb{J}(n) $ 也是。

(f) 若 $ (X, \mathcal{T}) $ 是拓扑空间，则 $ \mathcal{T} $ 是 $ X $ 的合格覆盖。

(g) 设 $ X $ 是可分度量空间，$ \mathcal{T} $ 是相应的拓扑。则对任意 $ \varepsilon > 0 $，集合 $ \{ O \in \mathcal{T} \,;\ \operatorname{diam}(O) < \varepsilon \} $ 是 $ X $ 的合格覆盖。

证明 由命题 1.8，$ X $ 是林德勒夫空间，由此推出该结论。■

下面的定理使外测度的系统构造成为可能。

3.2 定理 设 $ \mathcal{K} $ 是 $ X $ 的合格覆盖，且 $ \nu\colon \mathcal{K} \to [0,\infty] $ 满足 $ \nu(\varnothing) = 0 $。对 $ A \subset X $，令

\[ \mu^*(A) := \inf\left\{ \sum_{j=0}^{\infty} \nu(K_j) \,;\ (K_j) \in \mathcal{K}^{\mathbb{N}} , A \subset \bigcup_j K_j \right\} . \]

则 $ \mu^* $ 是 $ X $ 上的外测度，称为由 $ (\mathcal{K}, \nu) $ **诱导**的。

证明 显然 $ \mu^*\colon \mathfrak{P}(X) \to [0,\infty] $ 是递增的，且 $ \mu^*(\varnothing) = 0 $。为验证 $ \sigma $-次可加性，设 $ (A_j) $ 是 $ \mathfrak{P}(X) $ 中的序列。对每个 $ \varepsilon > 0 $ 与每个 $ j \in \mathbb{N} $，存在 $ \mathcal{K} $ 中的序列 $ (K_{j,k})_{k \in \mathbb{N}} $，使得

\[ A_j \subset \bigcup_k K_{j,k} \quad \text{ 且 } \quad \sum_k \nu(K_{j,k}) \le \mu^*(A_j) + \varepsilon/2^{j+1} . \]

则 $ \bigcup_j A_j \subset \bigcup_j \bigcup_k K_{j,k} $，并且得到

\[ \begin{aligned} \mu^*\left(\bigcup_j A_j\right) &\le \sum_j \sum_k \nu(K_{j,k}) \\ &\le \sum_j \left( \mu^*(A_j) + \varepsilon/2^{j+1} \right) = \left( \sum_j \mu^*(A_j) \right) + \varepsilon . \end{aligned} \]

由于 $ \varepsilon > 0 $ 是任意的，$ \sigma $-次可加性得证。■

##### 勒贝格外测度

对 $ a, b \in \mathbb{R}^n $，$ \mathbb{R}^n $ 中区间 $ (a, b) $ 的 **$ n $ 维体积**定义为

\[ \operatorname{vol}_n(a,b) := \begin{cases} \prod_{j=1}^{n} (b_j - a_j) , & a \le b , \\ 0 & \text{其他情形} . \end{cases} \]

若 $ (a, b) $ 非空，则它与 $ (a, b) $ 的 $ n $ 条棱长之积一致——更具体地说，当 $ n = 1, 2, \text{ 与 } 3 $ 时，它与区间长度、矩形面积、平行六面体体积这些日常概念分别一致。

3.3 命题 对 $ A \subset \mathbb{R}^n $，令

\[ \lambda_n^*(A) := \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(I_j) \,;\ I_j \in \mathbb{J}(n), j \in \mathbb{N}, \bigcup_{j=0}^{\infty} I_j \supset A \right\} . \]

则 $ \lambda_n^* $ 是 $ \mathbb{R}^n $ 上的外测度，称为 **$ n $ 维勒贝格外测度**。对 $ a, b \in \mathbb{R}^n $ 及 $ (a, b) \subset A \subset [a, b] $，有 $ \lambda^*(A) = \operatorname{vol}_n(a,b) $。

证明 (i) 第一个断言由注 3.1(e) 与定理 3.2 推出。

(ii) 设 $ a, b \in \mathbb{R}^n $，并令 $ I_0 := (a, b) $，对 $ j \in \mathbb{N}^{\times} $ 令 $ I_j := \varnothing $。显然这定义了 $ \mathbb{R}^n $ 中的一个区间序列，使得 $ (a, b) \subset \bigcup_j I_j $。因此

\[ \lambda_n^*((a,b)) \le \sum_j \operatorname{vol}_n(I_j) = \operatorname{vol}_n(a,b) . \tag{3.1} \]

(iii) 设 $ \mathcal{A}_0 $ 是 $ [a, b] $ 的全部子集\footnote{$ J $ 本身不必是 $ \mathbb{R}^n $ 中的区间。} $ J $ 之集，这里 $ a, b \in \mathbb{R}^n $，且对某个 $ k \in \{1, \ldots, n\} $ 有 $ a_k = b_k $。显然，对每个 $ J \in \mathcal{A}_0 $ 与 $ \varepsilon > 0 $，存在 $ I_\varepsilon \in \mathbb{J}(n) $，使得 $ J \subset I_\varepsilon $ 且 $ \operatorname{vol}_n(I_\varepsilon) < \varepsilon $。因此对 $ J \in \mathcal{A}_0 $ 有 $ \lambda_n^*(J) = 0 $。现在给定 $ a, b \in \mathbb{R}^n $，存在 $ 2n $ 个“面” $ J_j \in \mathcal{A}_0 $，使得

\[ [a,b] = (a,b) \cup \bigcup_{j=1}^{2n} J_j . \]

由此及注 2.1(a) 可得

\[ \lambda_n^*([a,b]) \le \lambda_n^*((a,b)) + \sum_{j=1}^{2n} \lambda_n^*(J_j) = \lambda_n^*((a,b)) . \]

对 $ (a, b) \subset A \subset [a, b] $，由 $ \lambda_n^* $ 的单调性可得

\[ \lambda_n^*((a,b)) = \lambda_n^*(A) = \lambda_n^*([a,b]) . \tag{3.2} \]

(iv) 设 $ (I_j) $ 是 $ \mathbb{J}(n) $ 中的序列，且 $ [a, b] \subset \bigcup_j I_j $。由于 $ [a, b] $ 是紧致的，存在 $ N \in \mathbb{N} $，使得 $ [a, b] \subset \bigcup_{j=0}^{N} I_j $。因此由下面的习题 1 可得

\[ \operatorname{vol}_n(a,b) \le \sum_{j=0}^{N} \operatorname{vol}_n(I_j) \le \sum_{j=0}^{\infty} \operatorname{vol}_n(I_j) , \]

取下确界便得 $ \operatorname{vol}_n(a,b) \le \lambda_n^*([a,b]) $。结合 (3.1) 与 (3.2)，即得结论。■

对 $ a, b \in \mathbb{R}^n $，设 $ J(a,b) $ 是 $ \mathbb{R}^n $ 中的区间，且 $ (a, b) \subset J(a,b) \subset [a, b] $。则由命题 3.3 可得

\[ \lambda_n^*(J(a,b)) = \operatorname{vol}_n(a,b) . \tag{3.3} \]

因此，我们令

\[ \operatorname{vol}_n J(a,b) := \lambda_n^*(J(a,b)) \]

并且我们再次把 $ \operatorname{vol}_n J(a,b) $ 称为区间 $ J(a,b) $ 的 **$ n $ 维体积**。公式 (3.3) 粗略地说，边界面对于 $ n $ 维长方体的体积没有贡献。

形如 $ J = [a, b) $ 的区间（其中 $ a, b \in \mathbb{R}^n $）都称为**左闭的**，形如 $ J = (a, b] $ 的区间称为**右闭的**。我们用 $ \mathbb{J}_\ell(n) $ 记 $ \mathbb{R}^n $ 中所有左闭区间之集，用 $ \mathbb{J}_r(n) $ 记所有右闭区间之集。用 $ \overline{\mathbb{J}}(n) $ 记 $ \mathbb{R}^n $ 中有界且（两侧都）闭的区间之集。

下面的结果表明，在勒贝格外测度的定义中，我们可以用左闭、右闭或两侧都闭的区间代替开区间。

3.4 命题 设 $ A \subset \mathbb{R}^n $，$ \mathbb{J} \in \{ \mathbb{J}_\ell(n), \mathbb{J}_r(n), \overline{\mathbb{J}}(n) \} $。则

\[ \lambda_n^*(A) = \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j) \,;\ J_j \in \mathbb{J}, j \in \mathbb{N}, \bigcup_{j=0}^{\infty} J_j \supset A \right\} . \]

证明 我们考虑 $ \mathbb{J} = \mathbb{J}_\ell(n) $ 的情形。对 $ J = (a, b) \in \mathbb{J}(n) $，令 $ \ell J := [a, b) $。

若序列 $ (J_j) \in \mathbb{J}(n)^{\mathbb{N}} $ 覆盖 $ A $，则序列 $ (\ell J_j) \in \mathbb{J}^{\mathbb{N}} $ 也覆盖 $ A $。因此，$ \mathbb{J} $ 中覆盖 $ A $ 的序列不少于 $ \mathbb{J}(n) $ 中覆盖 $ A $ 的序列。于是 (3.3) 与 $ \lambda_n^*(A) $ 的定义蕴含

\[ \begin{aligned} & \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j) \,;\ J_j \in \mathbb{J}, j \in \mathbb{N}, \bigcup_j J_j \supset A \right\} \\ & \le \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(\ell J_j) \,;\ J_j \in \mathbb{J}(n), j \in \mathbb{N}, \bigcup_j J_j \supset A \right\} = \lambda_n^*(A) . \end{aligned} \tag{3.4} \]

设 $ (J_j) $ 是 $ \mathbb{J} $ 中覆盖 $ A $ 的序列，并取 $ \varepsilon > 0 $。对 $ a_j, b_j \in \mathbb{R}^n $ 及 $ J_j = [a_j, b_j) $，令

\[ J_j^{\varepsilon} := (a_j - \varepsilon(b_j - a_j), b_j) \quad \text{对 } j \in \mathbb{N} . \]

则 $ (J_j^{\varepsilon}) $ 是 $ \mathbb{J}(n) $ 中覆盖 $ A $ 的序列，并且

\[ \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j^{\varepsilon}) = \sum_{j=0}^{\infty} (1+\varepsilon)^n \operatorname{vol}_n(J_j) = \left( \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j) \right)(1+\varepsilon)^n . \]

由此可得

\[ \begin{aligned} \lambda_n^*(A) &= \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(I_j) \,;\ I_j \in \mathbb{J}(n), j \in \mathbb{N}, \bigcup_j I_j \supset A \right\} \\ &\le \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j^{\varepsilon}) \,;\ J_j \in \mathbb{J}, j \in \mathbb{N}, \bigcup_j J_j \supset A \right\} \\ &= \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j) \,;\ J_j \in \mathbb{J}, j \in \mathbb{N}, \bigcup_j J_j \supset A \right\}(1+\varepsilon)^n . \end{aligned} \]

由于 $ \varepsilon > 0 $ 是任意的，我们看出

\[ \lambda_n^*(A) \le \inf\left\{ \sum_{j=0}^{\infty} \operatorname{vol}_n(J_j) \,;\ J_j \in \mathbb{J}, j \in \mathbb{N}, \bigcup_j J_j \supset A \right\} . \]

现在由 (3.4) 即得结论。对 $ \mathbb{J} = \mathbb{J}_r(n) $ 与 $ \mathbb{J} = \overline{\mathbb{J}}(n) $ 的情形，作显然的修改即可完成证明。■

##### 勒贝格–斯蒂尔杰斯外测度

设 $ F\colon \mathbb{R} \to \mathbb{R} $ 递增且左连续。我们称 $ F $ 为**测度生成函数**。若 $ \lim_{x \to -\infty} F(x) = 0 $ 且 $ \lim_{x \to \infty} F(x) = 1 $，我们还称 $ F $ 为**（概率）分布函数**。若 $ F $ 是测度生成函数，我们令

\[ \nu_F([a,b)) := \begin{cases} F(b) - F(a) , & a < b , \\ 0 , & a \ge b , \end{cases} \]

其中 $ a, b \in \mathbb{R} $。由于 $ F $ 递增，$ \nu_F $ 是从形如 $ [a, b) $（$ a, b \in \mathbb{R} $）的区间之集到 $ \mathbb{R} $ 的递增映射。

3.5 命题 设 $ F $ 是测度生成函数，且对 $ A \subset \mathbb{R} $ 令

\[ \mu_F^*(A) := \inf\left\{ \sum_{j=0}^{\infty} \nu_F(I_j) \,;\ I_j = [a_j, b_j), a_j, b_j \in \mathbb{R} \text{ 且 } A \subset \bigcup_{j=0}^{\infty} I_j \right\} . \]

则 $ \mu_F^* $ 是 $ \mathbb{R} $ 上的外测度，称为**由 $ F $ 产生的勒贝格–斯蒂尔杰斯外测度**。对 $ -\infty < a < b < \infty $，有 $ \mu_F^*([a,b)) = F(b) - F(a) $。

证明 (i) $ \mu_F^* $ 是外测度，这由注 3.1(e) 与定理 3.2 推出。

(ii) 设 $ a, b \in \mathbb{R} $ 且 $ a < b $。令 $ I_0 := [a, b) $，并对 $ j \in \mathbb{N}^{\times} $ 令 $ I_j := \varnothing $。则 $ [a, b) \subset \bigcup_j I_j $，并且

\[ \mu_F^*([a,b)) \le \sum_{j=0}^{\infty} \nu_F(I_j) = \nu_F(I_0) = F(b) - F(a) . \tag{3.5} \]

(iii) 现在设 $ I_j := [a_j, b_j) $（$ j \in \mathbb{N} $）满足 $ [a, b) \subset \bigcup_j I_j $，并取 $ \varepsilon > 0 $。由于 $ F $ 左连续，存在正数 $ c $ 与 $ c_j $，使得

\[ F(b) - F(b-c) < \varepsilon/2 , \quad F(a_j) - F(a_j - c_j) < \varepsilon 2^{-(j+2)} \quad \text{对 } j \in \mathbb{N} , \tag{3.6} \]

并且 $ [a, b-c] \subset \bigcup_j (a_j - c_j, b_j) $。由于 $ [a, b-c] $ 是紧致的，存在 $ N $，使得 $ [a, b-c] \subset \bigcup_{j=0}^{N} (a_j - c_j, b_j) $。现在 $ F $ 的单调性蕴含

\[ F(b-c) - F(a) \le \sum_{j=0}^{N} \big( F(b_j) - F(a_j - c_j) \big) \le \sum_{j=0}^{\infty} \big( F(b_j) - F(a_j - c_j) \big) . \]

结合 (3.6)，这给出

\[ \begin{aligned} F(b) - F(a) &= F(b) - F(b-c) + F(b-c) - F(a) \\ &\le \sum_{j=0}^{\infty} \left[ F(b_j) - F(a_j) + \varepsilon 2^{-(j+2)} \right] + \varepsilon/2 \le \sum_{j=0}^{\infty} \left[ F(b_j) - F(a_j) \right] + \varepsilon . \end{aligned} \]

这对每个 $ \varepsilon > 0 $ 都成立，故 $ F(b) - F(a) \le \sum_{j=0}^{\infty} \nu_F(I_j) $，考虑到 (3.5)，便得到所要的等式。■
