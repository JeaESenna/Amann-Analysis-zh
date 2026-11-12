## 3 收敛定理

勒贝格积分理论与第 VI 章的黎曼理论形成鲜明对照，因为它包含非常一般且多用途的判别准则，用于判定取极限与积分是否可交换。因此，对于分析的需要而言，Bochner–Lebesgue 积分比（更简单的）黎曼积分更为适用。

与通常一样，我们在本节中总假定 $ (X, \mathcal{A}, \mu) $ 是完备的 σ-有限测度空间；$ E = (E, |\cdot|) $ 是巴拿赫空间。

##### 非负扩充实值函数的积分

在数学、自然科学以及其他领域中积分的许多应用里，实值函数都扮演着重要角色。通常人们感兴趣的是这类情形下的可积函数，也就是有限的积分。然而我们已经提到，如果使理论涵盖 $ \overline{\mathbb{R}} $ 值函数的积分，既不排除函数取无穷值、也不排除积分取无穷值，那么理论在简洁性与优雅性上都会显著提升。作为从这种更具包容性的处理中获益的结果，我们举出单调收敛定理（习题 2.8 与定理 3.4）以及关于积分可交换性的富比尼–托内利定理（定理 6.11）。

由于实值情形的重要性，也由于它能提供依赖于 $ \mathbb{R} $ 与 $ \overline{\mathbb{R}} $ 的全序的有用补充结果，我们现在就来发展一套针对 $ \overline{\mathbb{R}} $ 值函数——特别是实值函数——的积分理论，作为 Bochner–Lebesgue 积分的补充。\footnote{针对 $ \overline{\mathbb{R}} $ 值函数的理论几乎是所有积分论教材的核心内容。它在某些方面比更一般的 Bochner–Lebesgue 理论更简单，而且如果只关心实值与复值函数，它已经够用；但它不能满足现代高等分析的需要，这正是我们选择更一般的处理方式的原因。}

根据定理 1.12，对每个 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，都存在 $ \mathcal{S}(X,\mu,\mathbb{R}^+) $ 中的递增序列 $ (f_j) $，它逐点收敛于 $ f $。把 $ f $ 的积分定义为递增序列 $ (\int_X f_j\,d\mu)_{j\in\mathbb{N}} $ 在 $ \overline{\mathbb{R}}^+ $ 中的极限，是自然的。只要我们能够保证该极限不依赖于 $ (f_j) $ 的选取，这一做法就是有意义的。

3.1 引理 设对 $ j \in \mathbb{N} $ 有 $ \varphi_j, \psi \in \mathcal{S}(X,\mu,\mathbb{R}^+) $。又设 $ (\varphi_j) $ 递增，且 $ \psi \le \lim_j \varphi_j $。则

\[ \int_X \psi\,d\mu \le \lim_j \int_X \varphi_j\,d\mu . \]

证明 设 $ \sum_{j=0}^m \alpha_j \chi_{A_j} $ 是 $ \psi $ 的标准形式，并固定 $ \lambda > 1 $。对 $ k \in \mathbb{N} $ 定义 $ B_k := [\lambda\varphi_k \ge \psi] $。由于 $ (\varphi_k) $ 递增且 $ \lambda > 1 $，我们有 $ B_k \subset B_{k+1} $ 对 $ k \in \mathbb{N} $ 成立，并且 $ \bigcup_{k\in\mathbb{N}} B_k = X $。测度的下连续性于是给出

\[ \int_X \psi\,d\mu = \sum_{j=0}^m \alpha_j \mu(A_j) = \lim_k \sum_{j=0}^m \alpha_j \mu(A_j \cap B_k) = \lim_k \int_X \psi\chi_{B_k}\,d\mu . \]

由 $ B_k $ 的定义有 $ \lambda\varphi_k \ge \psi\chi_{B_k} $，于是得到

\[ \int_X \psi\,d\mu = \lim_k \int_X \psi\chi_{B_k}\,d\mu \le \lambda \lim_k \int_X \varphi_k\,d\mu . \]

令 $ \lambda \downarrow 1 $ 取极限即完成证明。 ■

3.2 推论 设 $ (\varphi_j) $ 与 $ (\psi_j) $ 是 $ \mathcal{S}(X,\mu,\mathbb{R}^+) $ 中的递增序列，且 $ \lim_j \varphi_j = \lim_j \psi_j $。则

\[ \lim_j \int_X \varphi_j\,d\mu = \lim_j \int_X \psi_j\,d\mu \quad \text{在 } \overline{\mathbb{R}}^+ \text{ 中} . \]

证明 按假设，对 $ k \in \mathbb{N} $ 有 $ \psi_k \le \lim_j \psi_j = \lim_j \varphi_j $。由引理 3.1 得

\[ \int_X \psi_k\,d\mu \le \lim_j \int_X \varphi_j\,d\mu \quad \text{对 } k \in \mathbb{N} , \]

而令 $ k \to \infty $ 便得

\[ \lim_k \int_X \psi_k\,d\mu \le \lim_j \int_X \varphi_j\,d\mu . \]

交换 $ (\varphi_j) $ 与 $ (\psi_j) $，即得反向的不等式，从而得到所要求的等式。 ■

设 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,\mathbb{R}^+) $ 中的递增序列，它逐点收敛于 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $。我们称

\[ \int_X f\,d\mu := \lim_j \int_X \varphi_j\,d\mu \]

为 $ f $ 关于测度 $ \mu $ 在 $ X $ 上的（勒贝格）积分。对 $ A \in \mathcal{A} $，

\[ \int_A f\,d\mu := \int_X \chi_A f\,d\mu \]

为 $ f $ 在可测集 $ A $ 上的（勒贝格）积分。

3.3 注 (a) 对一切 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 与 $ A \in \mathcal{A} $，$ \int_A f\,d\mu $ 都是良好定义的。

证明 这由定理 1.12 与推论 3.2 推出。 ■

(b) 若 $ f, g \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 满足 $ f \le g $ μ-几乎处处，则 $ \int_X f\,d\mu \le \int_X g\,d\mu $。

(c) 对 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，下列陈述等价：

(i) $ \int_X f\,d\mu = 0 $。

(ii) $ [f > 0] $ 是 μ-零集。

(iii) $ f = 0 $ μ-几乎处处。

证明 “（i）⇒（ii）” 令 $ A := [f > 0] $、$ A_j := [f > 1/j] $，$ j \in \mathbb{N}^\times $。则 $ (A_j) $ 是 $ \mathcal{A} $ 中的递增序列，且 $ A = \bigcup_j A_j $。又有 $ \chi_{A_j} \le jf $。由此推出

\[ 0 \le \mu(A_j) = \int_X \chi_{A_j}\,d\mu \le j \int_X f\,d\mu = 0 \quad \text{对 } j \in \mathbb{N}^\times , \]

而由下连续性得 $ \mu(A) = \lim_j \mu(A_j) = 0 $。

“（ii）⇒（iii）” 显然。

“（iii）⇒（i）” 设 $ N $ 是 μ-零集，且对 $ x \in N^c $ 有 $ f(x) = 0 $。则\footnote{回忆约定 (2.1)。} $ f\chi_{N^c} = 0 $ 且 $ f\chi_N \le \infty\chi_N $。结合积分的定义（另见下面的 (d)）便得到

\[ 0 \le \int_X f\,d\mu = \int_X f\chi_N\,d\mu + \int_X f\chi_{N^c}\,d\mu \le \infty\mu(N) = 0 . \blacksquare \]

(d) 设 $ f, g \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 且 $ \alpha \in [0,\infty] $。则

\[ \int_X (\alpha f + g)\,d\mu = \alpha \int_X f\,d\mu + \int_X g\,d\mu . \]

证明 我们考虑 $ \alpha = \infty $、$ g = 0 $ 的情形。令 $ \varphi_j := j\chi_{[f>0]} $，$ j \in \mathbb{N} $，则 $ f_j \uparrow \infty f $，从而

\[ \int_X (\infty f)\,d\mu = \begin{cases} 0 & \text{若 } \mu([f > 0]) = 0 , \\ \infty & \text{若 } \mu([f > 0]) > 0 . \end{cases} \]

由 (c) 现在可得 $ \int_X (\infty f)\,d\mu = \infty \int_X f\,d\mu $。其余结论容易由积分的定义推出，留作练习。 ■

(e) (i) 设 $ f \in \mathcal{L}_0(X,\mu,\mathbb{R}^+) $ 的勒贝格积分 $ \int_X f\,d\mu $ 有限。则 $ f $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{R}^+) $，且 $ f $ 在 $ X $ 上的勒贝格积分与 Bochner–Lebesgue 积分一致。

(ii) 对 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}^+) $，勒贝格积分 $ \int_X f\,d\mu $ 有限，且与 Bochner–Lebesgue 积分一致。

证明 (i) 定理 1.12 保证存在 $ \mathcal{S}(X,\mu,\mathbb{R}^+) $ 中的序列 $ (\varphi_j) $，使得 $ \varphi_j \uparrow f $。按假设，对每个 $ \varepsilon > 0 $ 都存在 $ N \in \mathbb{N} $，使得当 $ j \ge N $ 时有 $ \int_X f\,d\mu - \int_X \varphi_j\,d\mu < \varepsilon $。对 $ k \ge j \ge N $，由 $ \int_X f\,d\mu $ 的有限性得

\[ \int_X |\varphi_k - \varphi_j|\,d\mu = \int_X (\varphi_k - \varphi_j)\,d\mu \le \int_X (f - \varphi_j)\,d\mu = \int_X f\,d\mu - \int_X \varphi_j\,d\mu < \varepsilon . \]

因此 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,\mathbb{R}^+) $ 中的 $ \mathcal{L}_1 $-柯西序列。这说明 $ f $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{R}^+) $。第二个结论是习题 2.8 的推论。

(ii) 这由定理 1.12 与习题 2.8 推出。 ■

(f) 对每个 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，有

\[ \int_X f\,d\mu = \sup \left\{ \int_X \varphi\,d\mu ; \varphi \in \mathcal{S}(X,\mu,\mathbb{R}^+) \text{ 且 } \varphi \le f \ \mu\text{-几乎处处} \right\} . \blacksquare \]

##### 单调收敛定理

我们现在证明习题 2.8 中对 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $ 中函数所述的单调收敛定理的一个实质性加强。我们将看到，对于 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的递增序列，勒贝格积分与取极限可交换。

3.4 定理（单调收敛） 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的递增序列。则

\[ \int_X \lim_j f_j\,d\mu = \lim_j \int_X f_j\,d\mu \quad \text{在 } \overline{\mathbb{R}}^+ \text{ 中} . \]

证明 (i) 令 $ f := \lim_j f_j $。由命题 1.11，$ f $ 属于 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，且对 $ j \in \mathbb{N} $ 有 $ f_j \le f $。于是由注 3.3(b)，对 $ j \in \mathbb{N} $ 有 $ \int f_j\,d\mu \le \int f\,d\mu $，从而 $ \lim_j \int f_j\,d\mu \le \int f\,d\mu $。

(ii) 设 $ \varphi \in \mathcal{S}(X,\mu,\mathbb{R}^+) $ 且 $ \varphi \le f $。取 $ \lambda > 1 $ 并令 $ A_j := [\lambda f_j \ge \varphi] $，$ j \in \mathbb{N} $。则 $ (A_j) $ 是 $ \mathcal{A} $ 中的递增序列，且 $ \bigcup_j A_j = X $、$ \lambda f_j \ge \varphi\chi_{A_j} $。此外 $ \varphi\chi_{A_j} \uparrow \varphi $，故

\[ \int_X \varphi\,d\mu = \lim_j \int_X \varphi\chi_{A_j}\,d\mu \le \lambda \lim_j \int_X f_j\,d\mu . \]

令 $ \lambda \downarrow 1 $ 取极限，则对所有满足 $ \varphi \le f $ 的 μ-简单函数 $ \varphi $ 都有 $ \int_X \varphi\,d\mu \le \lim_j \int_X f_j\,d\mu $。由注 3.3(f) 可得 $ \int_X f\,d\mu \le \lim_j \int_X f_j\,d\mu $，于是证毕。 ■

3.5 推论 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的序列。则

\[ \sum_{j=0}^{\infty} \int_X f_j\,d\mu = \int_X \left( \sum_{j=0}^{\infty} f_j \right) d\mu \quad \text{在 } \overline{\mathbb{R}}^+ \text{ 中} . \]

证明 这由推论 1.13(iii) 与定理 3.4 推出。 ■

3.6 注 (a) 若序列不递增，定理 3.4 的结论可能不成立。

证明 取 $ f_j := (1/j)\chi_{[0,j]} $，$ j \in \mathbb{N}^\times $。则 $ (f_j) $ 是 $ \mathcal{S}(\mathbb{R},\lambda_1,\mathbb{R}^+) $ 中一个（不增的）序列，它一致收敛于 0。但是序列 $ \int f_j\,d\lambda_1 $ 并不收敛于 0，因为对 $ j \in \mathbb{N}^\times $ 有 $ \int f_j\,d\lambda_1 = 1 $。 ■

(b) 设 $ a_{j,k} \in \mathbb{R}^+ $，$ j, k \in \mathbb{N} $。则

\[ \sum_{j=0}^{\infty} \sum_{k=0}^{\infty} a_{jk} = \sum_{k=0}^{\infty} \sum_{j=0}^{\infty} a_{jk} . \]

证明 令 $ (X,\mu) := (\mathbb{N},\mathcal{H}^0) $，并定义 $ f_j : X \to \mathbb{R}^+ $ 为 $ f_j(k) := a_{jk} $，$ j, k \in \mathbb{N} $。则 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mathcal{H}^0,\overline{\mathbb{R}}^+) $ 中的序列（见例 2.20），结论由推论 3.5 推出。 ■

对非负二重级数，这个结果比定理 II.8.10 更强，因为不再假设 $ \sum_{jk} a_{jk} $ 可和。

##### 法图引理

我们现在对 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的任意（不必递增的）序列证明单调收敛定理的一个推广。

3.7 定理（法图引理） 对 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的每个序列 $ (f_j) $，有

\[ \int_X \left( \varliminf_j f_j \right) d\mu \le \varliminf_j \int_X f_j\,d\mu \quad \text{在 } \overline{\mathbb{R}}^+ \text{ 中} . \]

证明 令 $ g_j := \inf_{k\ge j} f_k $。由命题 1.11，$ g_j $ 属于 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，且递增序列 $ (g_j) $ 收敛于 $ \varliminf_j f_j $。由定理 3.4 便得 $ \lim_j \int g_j\,d\mu = \int (\varliminf_j f_j)\,d\mu $。又 $ g_j \le f_k $，因此对 $ k \ge j $ 有 $ \int g_j\,d\mu \le \int f_k\,d\mu $。由此可得 $ \int g_j\,d\mu \le \inf_{k\ge j} \int f_k\,d\mu $，令 $ j \to \infty $ 取极限即完成证明。 ■

3.8 推论 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的序列，$ g \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 满足 $ \int_X g\,d\mu < \infty $，且对 $ j \in \mathbb{N} $ 有 $ f_j \le g $ μ-几乎处处。则\footnote{假设 $ \int_X g\,d\mu < \infty $ 不能放宽（见习题 1）。}

\[ \varlimsup_j \int_X f_j\,d\mu \le \int_X \left( \varlimsup_j f_j \right) d\mu \quad \text{在 } \overline{\mathbb{R}}^+ \text{ 中} . \]

证明 设 $ N $ 是 μ-零集，使得对 $ x \in N^c $ 与 $ j \in \mathbb{N} $ 有 $ f_j(x) \le g(x) $。则 $ f_j \le g + \infty\chi_N $ 在 $ X $ 上成立，且 $ \int_X (g + \infty\chi_N)\,d\mu = \int_X g\,d\mu $（见注 3.3(c) 与 (d)）。因此我们可以不失一般性地假设对 $ j \in \mathbb{N} $ 有 $ f_j \le g $。令 $ g_j := g - f_j $，由法图引理得到

\[ \int_X \left( \varliminf_j g_j \right) d\mu = \int_X g\,d\mu - \int_X \left( \varlimsup_j f_j \right) d\mu \le \varliminf_j \int_X g_j\,d\mu = \int_X g\,d\mu - \varlimsup_j \int_X f_j\,d\mu . \]

由于 $ \int_X g\,d\mu < \infty $，结论随之成立。 ■

作为第一个应用，我们证明可积函数的一个基本刻画。

3.9 定理 对 $ f \in \mathcal{L}_0(X,\mu,E) $，下列条件等价：

(i) $ f \in \mathcal{L}_1(X,\mu,E) $；

(ii) $ |f| \in \mathcal{L}_1(X,\mu,\mathbb{R}) $；

(iii) $ \int_X |f|\,d\mu < \infty $。

若这些条件得到满足，则 $ \left| \int_X f\,d\mu \right| \le \|f\|_1 < \infty $。

证明 “（i）⇒（ii）” 由引理 2.8 推出，“（ii）⇒（iii）” 显然。“（iii）⇒（ii）” 已在注 3.3(e) 中证明。

“（ii）⇒（i）” 设 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中 μ-几乎处处收敛于 $ f $ 的序列。令 $ A_j := [\,|\varphi_j| \le 2|f|\,] $、$ f_j := \varphi_j\chi_{A_j} $，$ j \in \mathbb{N} $。定理 1.7 与命题 1.9 表明 $ A_j $ 属于 $ \mathcal{A} $。于是 $ (f_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中的序列。

取 $ N \in \mathcal{A} $ 使 $ \mu(N) = 0 $，且对 $ x \in N^c $ 有 $ \varphi_j(x) \to f(x) $。若对某个 $ x \in N^c $ 有 $ f(x) \ne 0 $，则存在 $ k := k(x) \in \mathbb{N} $，使得对 $ j \ge k $ 有 $ |\varphi_j(x) - f(x)| \le 3|f(x)| $。因此当 $ j \ge k(x) $ 时 $ x \in N^c \cap [\,|f| > 0\,] $ 属于 $ A_j $。这意味着当 $ j \ge k(x) $ 时 $ f_j(x) = \varphi_j(x) $，从而对 $ x \in N^c \cap [\,|f| > 0\,] $ 有 $ f_j(x) \to f(x) $。若对某个 $ x \in N^c $ 有 $ f(x) = 0 $，则同样有 $ j \to \infty $ 时 $ f_j(x) \to f(x) $。由于 $ x $ 属于某个 $ A_k $（$ k \in \mathbb{N} $），我们得到 $ f_k(x) = \varphi_k(x) = 0 $，因为 $ |\varphi_k(x)| \le 2|f(x)| = 0 $。对 $ x \notin A_k $，同样有 $ f_k(x) = \chi_{A_k}(x)\varphi_k(x) = 0 $。这意味着 $ |f - f_j| \to 0 $ μ-几乎处处。现在显然对 $ j \in \mathbb{N} $ 有 $ |f - f_j| \le 3|f| $，故推论 3.8 给出

\[ \varlimsup_j \int_X |f - f_j|\,d\mu \le \int_X \varlimsup_j |f - f_j|\,d\mu = 0 . \]

因此对每个 $ \varepsilon > 0 $ 都能找到 $ m \in \mathbb{N} $，使得当 $ j \ge m $ 时 $ \int |f - f_j|\,d\mu < \varepsilon/2 $。由此可知，对满足 $ j, k \ge m $ 的 $ j, k \in \mathbb{N} $，

\[ \|f_j - f_k\|_1 = \int_X |f_j - f_k|\,d\mu \le \int_X |f_j - f|\,d\mu + \int_X |f - f_k|\,d\mu < \varepsilon . \]

因此 $ (f_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中的 $ \mathcal{L}_1 $-柯西序列，$ f $ 是 μ-可积的。

最后一条结论由定理 2.11(i) 推出。 ■

3.10 结论 (a) 设 $ f \in \mathcal{L}_0(X,\mu,E) $，并设存在 $ \mathcal{L}_1(X,\mu,E) $ 中的序列 $ (f_j) $，使得 $ f_j \to f $ μ-几乎处处，且 $ \varliminf_j \|f_j\|_1 < \infty $。则 $ f $ 属于 $ \mathcal{L}_1(X,\mu,E) $，且 $ \|f\|_1 \le \varliminf_j \|f_j\|_1 $。

证明 由引理 2.15，我们可以假设 $ (f_j) $ 在整个 $ X $ 上收敛于 $ f $。利用法图引理得

\[ \int_X |f|\,d\mu = \int_X \varliminf_j |f_j|\,d\mu \le \varliminf_j \int_X |f_j|\,d\mu < \infty , \]

再由定理 3.9 即得结论。 ■

(b) 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,\mathbb{R}^+) $ 中的序列。设存在 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 使得

\[ f_j \to f \ \mu\text{-几乎处处} \quad \text{且} \quad \int_X f_j\,d\mu \to \int_X f\,d\mu \quad (j \to \infty) . \]

于是可推出\footnote{比较定理 2.18 的陈述。} $ (f_j) $ 在 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $ 中收敛于 $ f $。

证明 这里同样可以假设 $ (f_j) $ 在整个 $ X $ 上收敛于 $ f $。则 $ f \ge 0 $ 且 $ |f_j - f| \le f_j + f $。由定理 3.7 得

\[ 2\int_X f\,d\mu = \int_X \varliminf_j (f_j + f - |f_j - f|)\,d\mu \le \varliminf_j \int_X (f_j + f - |f_j - f|)\,d\mu = 2\int_X f\,d\mu - \varlimsup_j \int_X |f_j - f|\,d\mu . \]

按定理 3.9，$ \int_X f\,d\mu $ 有限，于是得到 $ \lim_j \int_X |f_j - f|\,d\mu = 0 $。 ■

##### 扩充实值函数的积分

将 $ \overline{\mathbb{R}} $ 值函数分解为正部与负部，也使我们能把勒贝格积分推广到可取负值的可测 $ \overline{\mathbb{R}} $ 值函数。若 $ \int_X f^+\,d\mu < \infty $ 且 $ \int_X f^-\,d\mu < \infty $，则称 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $ 关于 $ \mu $ 是**勒贝格可积**的。此时称

\[ \int_X f\,d\mu := \int_X f^+\,d\mu - \int_X f^-\,d\mu \]

为 $ f $ 关于测度 $ \mu $ 在 $ X $ 上的（勒贝格）积分。

3.11 注 (a) 对 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $，下列三个陈述等价：

(i) $ f $ 关于 $ \mu $ 勒贝格可积。

(ii) $ \int_X |f|\,d\mu < \infty $；

(iii) 存在 $ g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $，使得 $ |f| \le g $ μ-几乎处处。

证明 “（i）⇒（ii）” 这是 $ |f| = f^+ + f^- $ 的推论。

“（ii）⇒（iii）” 定理 3.9 说明 $ |f| \in \mathcal{L}_1(X,\mu,\mathbb{R}) $。因此 (iii) 在 $ g = |f| $ 时成立。

“（iii）⇒（i）” 这由 $ f^+ \vee f^- \le |f| \le g $ 与注 3.3(b) 推出。 ■

(b) 设 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $。则 $ f $ 关于 $ \mu $ 勒贝格可积当且仅当 $ f $ 是 μ-可积的。此时 $ f $ 在 $ X $ 上的勒贝格积分等于 Bochner–Lebesgue 积分。换句话说，若考虑实值映射，则 $ \overline{\mathbb{R}} $ 值函数的勒贝格可积性定义与第 2 节中的定义一致。\footnote{另见推论 2.12(iii)。}

证明 这由 (a)、定理 3.9 与注 3.3(e) 推出。 ■
