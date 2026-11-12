## 4 勒贝格空间

我们在推论 VI.7.4 中已经看到，紧区间 $ I $ 上连续的 $ \mathbb{K} $ 值函数构成的空间关于 $ L_2 $ 范数不完备。勒贝格积分理论的框架现在为我们提供了完备化内积空间 $ (C(I,\mathbb{K}),(\cdot\mid\cdot)_2) $ 的手段：我们将构造一个向量空间 $ L_2 $ 以及 $ (\cdot\mid\cdot)_2 $ 到 $ L_2 \times L_2 $ 上的延拓——仍记作 $ (\cdot\mid\cdot)_2 $——使得 $ (L_2,(\cdot\mid\cdot)_2) $ 是包含 $ C(I,\mathbb{K}) $ 作为稠密子空间的希尔伯特空间。

这一构造可以自然地推广，由此得到一族新的巴拿赫空间，即勒贝格 $ L_p $ 空间。这些空间在数学的许多领域中极为重要。

以下我们假设：

- $ (X,\mathcal{A},\mu) $ 是完备的 σ-有限测度空间；$ E = (E,|\cdot|) $ 是巴拿赫空间。

##### 本质有界函数

称函数 $ f \in \mathcal{L}_0(X,\mu,E) $ 是 **μ-本质有界**的，若存在 $ \alpha \ge 0 $ 使得 $ \mu([|f| > \alpha]) = 0 $。此时 $ f $ 的 **μ-本质上确界**为\footnote{注意，现在 $ \|\cdot\|_\infty $ 有两种含义，即可测函数的本质上确界与有界函数的上确界范数。这两个值**未必**相同；见注 4.1 中的 (d) 与 (e)。必要时我们用 $ \|\cdot\|_{B(X,E)} $ 表示上确界范数。}

\[ \|f\|_\infty := \text{ess-sup}_{x \in X}|f(x)| := \inf\{\alpha \ge 0\ ;\ \mu([|f| > \alpha]) = 0\} . \]

4.1 注 (a) 设 $ f \in \mathcal{L}_0(X,\mu,E) $。以下各项等价：

(i) $ f $ 是 μ-本质有界的；

(ii) $ \|f\|_\infty < \infty $；

(iii) $ f $ μ-几乎处处有界。

证明 “$ \text{(i)} \Rightarrow \text{(ii)} \Rightarrow \text{(iii)} $” 是显然的。

“$ \text{(iii)} \Rightarrow \text{(i)} $” 设 $ N $ 是 μ-零集，并取 $ \alpha \ge 0 $ 使得对 $ x \in N^c $ 有 $ |f(x)| \le \alpha $。则 $ [|f| > \alpha] \subset N $，而 $ \mu $ 的完备性蕴含 $ \mu([|f| > \alpha]) = 0 $。■

(b) 设 $ f \in \mathcal{L}_0(X,\mu,E) $。则 $ |f| \le \|f\|_\infty $ μ-几乎处处。

证明 $ \|f\|_\infty = \infty $ 的情形是显然的。若 $ \|f\|_\infty < \infty $，则对每个 $ j \in \mathbb{N} $，$ [|f| > \|f\|_\infty + 2^{-j}] $ 是 μ-零集，从而集合 $ [|f| > \|f\|_\infty] = \bigcup_{j \in \mathbb{N}}[|f| > \|f\|_\infty + 2^{-j}] $ 也是 μ-零集。■

(c) 设 $ f $ 与 $ g $ 是 μ-本质有界的，且 $ \alpha \in \mathbb{K} $。则 $ \alpha f + g $ 也是 μ-本质有界的，且

\[ \|\alpha f + g\|_\infty \le |\alpha|\,\|f\|_\infty + \|g\|_\infty . \]

证明 由 (a) 与 (b)，存在 μ-零集 $ M $ 与 $ N $，使得对 $ x \in M^c $ 有 $ |f(x)| \le \|f\|_\infty $，对 $ x \in N^c $ 有 $ |g(x)| \le \|g\|_\infty $。因此

\[ |\alpha f(x) + g(x)| \le |\alpha|\,\|f\|_\infty + \|g\|_\infty \quad \text{对 } x \in (M \cup N)^c = M^c \cap N^c . \]

于是 $ \alpha f + g $ 是 μ-本质有界的，且 $ \|\alpha f + g\|_\infty \le |\alpha|\,\|f\|_\infty + \|g\|_\infty $。■

(d) 设 $ f \in \mathcal{L}_0(X,\mu,E) $ 是有界的。则 $ \|f\|_\infty \le \|f\|_{B(X,E)} $（上确界范数）。若 $ N $ 是非空的 μ-零集，则 $ \|\chi_N\|_\infty = 0 $ 而 $ \|\chi_N\|_{B(X,E)} = 1 $。

(e) 设 $ X $ 是 σ-紧度量空间，$ \mu $ 是 $ X $ 上的 massive 拉东测度。则

\[ \|f\|_\infty = \|f\|_{B(X,E)} \quad \text{对 } f \in BC(X,E) . \]

证明 由定理 1.17，任何 $ f \in BC(X,E) $ 都是 μ-可测的，而由 (d) 我们只需证明 $ \|f\|_{B(X,E)} \le \|f\|_\infty $。假定不然。则存在 $ x \in X $ 使得

\[ \|f\|_\infty < |f(x)| \le \|f\|_{B(X,E)} , \]

并且由 $ f $ 的连续性，存在 $ x $ 在 $ X $ 中的开邻域 $ O $ 使得对 $ y \in O $ 有 $ \|f\|_\infty < |f(y)| $。由 (b) 推出 $ \mu(O) = 0 $，这与 $ \mu $ 是 massive 的假设矛盾。■

##### 赫尔德不等式与闵可夫斯基不等式

设 $ f \in \mathcal{L}_0(X,\mu,E) $。对 $ p \in (0,\infty) $，令

\[ \|f\|_p := \left(\int_X |f|^p\,d\mu\right)^{1/p} \]

并约定 $ \infty^{1/p} := \infty $。我们定义 **$ X $ 上关于测度 $ \mu $ 的勒贝格空间**为\footnote{定理 3.9 表明，当 $ p = 1 $ 时记号 $ \mathcal{L}_p(X,\mu,E) $ 与第 2 节中的记号一致。以下我们集中讨论 $ p \in [1,\infty] $ 的勒贝格空间 $ \mathcal{L}_p $。$ p \in (0,1) $ 的情形将在习题 13 中处理。}

\[ \mathcal{L}_p(X,\mu,E) := \{f \in \mathcal{L}_0(X,\mu,E) ;\ \|f\|_p < \infty\} \quad \text{对 } p \in (0,\infty] . \]

对 $ p \in [1,\infty] $，我们定义 **$ p $ 的对偶指数**为

\[ p' := \begin{cases} \infty, & \text{若 } p = 1, \\ p/(p-1), & \text{若 } p \in (1,\infty), \\ 1, & \text{若 } p = \infty. \end{cases} \]

按此约定，显然有

\[ \frac{1}{p} + \frac{1}{p'} = 1 \quad \text{对 } p \in [1,\infty] . \]

现在我们可以陈述并证明两个重要的不等式。

4.2 定理 设 $ p \in [1,\infty] $。

(i) 对 $ f \in \mathcal{L}_p(X,\mu,\mathbb{K}) $ 与 $ g \in \mathcal{L}_{p'}(X,\mu,\mathbb{K}) $，有 $ fg \in \mathcal{L}_1(X,\mu,\mathbb{K}) $，且\footnote{当 $ p = 2 $ 时，这就是柯西–施瓦茨不等式。}

\[ \left|\int_X fg\,d\mu\right| \le \int_X |fg|\,d\mu \le \|f\|_p\|g\|_{p'} \qquad \text{（赫尔德不等式）} . \]

(ii) 设 $ f, g \in \mathcal{L}_p(X,\mu,E) $。则 $ f + g \in \mathcal{L}_p(X,\mu,E) $，且

\[ \|f + g\|_p \le \|f\|_p + \|g\|_p \qquad \text{（闵可夫斯基不等式）} . \]

证明 (i) 先考虑 $ p = 1 $ 的情形。由注 4.1(b)，存在 μ-零集 $ N $ 使得对 $ x \in N^c $ 有 $ |g(x)| \le \|g\|_\infty $。于是由注 1.2(d)、注 3.3(b) 与引理 2.15 得到

\[ \int_{N^c}|fg|\,d\mu \le \|g\|_\infty \int_{N^c}|f|\,d\mu = \|f\|_1\|g\|_\infty < \infty . \]

因此注 3.11(a)、定理 3.9 与引理 2.15 推出 $ fg $ 可积，而定理 2.11(i) 蕴含

\[ \left|\int_X fg\,d\mu\right| \le \int_X |fg|\,d\mu = \int_{N^c}|fg|\,d\mu \le \|f\|_1\|g\|_\infty . \]

现在设 $ p \in (1,\infty) $。若

\[ f = 0 \ \mu\text{-a.e.} \quad \text{或} \quad g = 0 \ \mu\text{-a.e.}, \tag{4.1} \]

则 $ fg $ 也 μ-几乎处处为零，结论由推论 2.16 推出。另一方面，若 (4.1) 不成立，推论 2.19 给出 $ \|f\|_p > 0 $ 与 $ \|g\|_{p'} > 0 $。此时令 $ \xi := |f|/\|f\|_p $、$ \eta := |g|/\|g\|_{p'} $，并由杨不等式（定理 IV.2.15）得到

\[ \frac{|fg|}{\|f\|_p\|g\|_{p'}} \le \frac{1}{p}\frac{|f|^p}{\|f\|_p^p} + \frac{1}{p'}\frac{|g|^{p'}}{\|g\|_{p'}^{p'}} . \]

由此推出

\[ \begin{aligned} \int_X |fg|\,d\mu &\le \frac{1}{p}\|f\|_p^{1-p}\|g\|_{p'}\int_X |f|^p\,d\mu + \frac{1}{p'}\|f\|_p\|g\|_{p'}^{1-p'}\int_X |g|^{p'}\,d\mu \\ &= \|f\|_p\|g\|_{p'} , \end{aligned} \]

于是由定理 3.9 可知 $ fg $ 属于 $ \mathcal{L}_1(X,\mu,E) $。因此

\[ \left|\int_X fg\,d\mu\right| \le \|fg\|_1 \le \|f\|_p\|g\|_{p'} . \]

$ p = \infty $ 的情形与 $ p = 1 $ 的情形类似处理。

(ii) 由推论 2.9 与注 4.1(c)，只需考虑 $ p \in (1,\infty) $ 的情形。此外，我们可以不妨设 $ \|f + g\|_p > 0 $。我们先证明 $ f + g $ 属于 $ \mathcal{L}_p(X,\mu,E) $。注意不等式

\[ |a + b|^p \le (2(|a| \vee |b|))^p \le 2^p(|a|^p + |b|^p) \quad \text{对 } a, b \in E, \tag{4.2} \]

我们得到

\[ \int_X |f + g|^p\,d\mu \le 2^p\left(\int_X |f|^p\,d\mu + \int_X |g|^p\,d\mu\right) < \infty , \]

因为 $ f, g \in \mathcal{L}_p(X,\mu,E) $。因此 $ \|f + g\|_p < \infty $。由于等价关系

\[ |f + g|^{p-1} \in \mathcal{L}_{p'}(X,\mu,\mathbb{R}) \iff |f + g| \in \mathcal{L}_p(X,\mu,\mathbb{R}) , \]

由赫尔德不等式推出，对 $ h \in \mathcal{L}_p(X,\mu,E) $ 有

\[ \int_X |h|\,|f + g|^{p-1}\,d\mu \le \|h\|_p\left\||f + g|^{p-1}\right\|_{p'} = \|h\|_p\|f + g\|_p^{p/p'} , \]

并且我们得到

\[ \begin{aligned} \int_X |f + g|^p\,d\mu &\le \int_X |f|\,|f + g|^{p-1}\,d\mu + \int_X |g|\,|f + g|^{p-1}\,d\mu \\ &\le (\|f\|_p + \|g\|_p)\|f + g\|_p^{p/p'} . \end{aligned} \tag{4.3} \]

结论随之成立，因为 $ \|f + g\|_p < \infty $ 且 $ p/p' = p - 1 $。■

4.3 推论 设 $ p \in [1,\infty] $。则 $ \mathcal{L}_p(X,\mu,E) $ 是 $ \mathcal{L}_0(X,\mu,E) $ 的向量子空间，且 $ \|\cdot\|_p $ 是 $ \mathcal{L}_p(X,\mu,E) $ 上的半范数。

4.4 注 (a) 令 $ \mathcal{N} := \{f \in \mathcal{L}_0(X,\mu,E) ;\ f = 0 \ \mu\text{-a.e.}\} $。对 $ f \in \mathcal{L}_0(X,\mu,E) $，以下命题等价：

(i) 对一切 $ p \in [1,\infty] $ 有 $ \|f\|_p = 0 $。

(ii) 对某个 $ p \in [1,\infty] $ 有 $ \|f\|_p = 0 $。

(iii) $ f \in \mathcal{N} $。

证明 “$ \text{(i)} \Rightarrow \text{(ii)} $” 是平凡的。“$ \text{(ii)} \Rightarrow \text{(iii)} $” 由推论 2.19 与注 4.1(b) 推出。

“$ \text{(iii)} \Rightarrow \text{(i)} $” 对 $ p \in [1,\infty) $，用引理 2.15。$ p = \infty $ 的情形是显然的。■

(b) 对每个 $ p \in [1,\infty] \cup \{0\} $，$ \mathcal{N} $ 是 $ \mathcal{L}_p(X,\mu,E) $ 的向量子空间。

证明 $ p = 0 $ 的情形是显然的；特别地，$ \mathcal{N} $ 是向量空间。对 $ p \in [1,\infty] $，结论随后由 (a) 的 “$ \text{(iii)} \Rightarrow \text{(i)} $” 推出。■

(c) 对 $ p \in [1,\infty] $，我们有下列向量子空间的包含关系：

\[ \mathcal{S}(X,\mu,E) \subset \mathcal{L}_p(X,\mu,E) \subset \mathcal{L}_0(X,\mu,E) . \]

证明 显然每个 μ-简单函数都是 μ-本质有界的。取 $ p \in [1,\infty) $，并设 $ \varphi \in \mathcal{S}(X,\mu,E) $ 的标准形为 $ \sum_{j=0}^{m} e_j\chi_{A_j} $。则 $ |\varphi|^p \le \sum_{j=0}^{m}|e_j|^p\chi_{A_j} $，故 $ \|\varphi\|_p < \infty $。结论由注 1.2(a) 与推论 4.3 推出。■

##### 勒贝格空间的完备性

我们现在推广定理 2.10(ii)，证明一切满足 $ p \in [1,\infty] $ 的勒贝格空间 $ \mathcal{L}_p(X,\mu,E) $ 都是完备的。对 $ p \in (1,\infty) $，这依赖于下面的引理。

4.5 引理 设 $ V $ 是向量空间，$ q $ 是 $ V $ 上的半范数。以下命题等价：

(i) $ (V,q) $ 是完备的。

(ii) 对每个满足 $ \sum_{j=0}^{\infty} q(v_j) < \infty $ 的序列 $ (v_j) \in V^{\mathbb{N}} $，级数 $ \sum_j v_j $ 在 $ V $ 中收敛。

证明 “$ \text{(i)} \Rightarrow \text{(ii)} $” 设 $ (v_j) \in V^{\mathbb{N}} $ 且 $ \sum_{j=0}^{\infty} q(v_j) < \infty $。对每个 $ \varepsilon > 0 $，存在 $ K \in \mathbb{N} $，使得对 $ \ell \ge K $ 有 $ \sum_{j=\ell+1}^{\infty} q(v_j) < \varepsilon $（见习题 II.7.4）。令 $ w_k := \sum_{j=0}^{k} v_j $（$ k \in \mathbb{N} $），得到

\[ q(w_m - w_\ell) = q\left(\sum_{j=\ell+1}^{m} v_j\right) \le \sum_{j=\ell+1}^{m} q(v_j) \le \sum_{j=\ell+1}^{\infty} q(v_j) < \varepsilon \quad \text{对 } m > \ell \ge K . \]

因此 $ (w_k) $ 是 $ V $ 中的柯西序列，由 $ V $ 的完备性它收敛于某个 $ v \in V $。于是级数 $ \sum_j v_j $ 收敛。

“$ \text{(ii)} \Rightarrow \text{(i)} $” 设 $ (v_j) $ 是 $ V $ 中的柯西序列。对 $ k \in \mathbb{N} $，取 $ j_k \in \mathbb{N} $ 使得 $ q(v_{j_{k+1}} - v_{j_k}) < 2^{-(k+1)} $。令 $ w_k := v_{j_{k+1}} - v_{j_k} $，则 $ \sum_{k=0}^{\infty} q(w_k) \le 1 $，且由假设可以找到 $ v \in V $，使得当 $ \ell \to \infty $ 时 $ q(v - \sum_{k=0}^{\ell} w_k) \to 0 $。取 $ \varepsilon > 0 $ 与 $ L \in \mathbb{N} $，使得对 $ \ell \ge L $ 有 $ q(v - \sum_{k=0}^{\ell} w_k) < \varepsilon/2 $。因为 $ (v_j) $ 是 $ V $ 中的柯西序列，存在 $ K \ge L $，使得对 $ k, \ell \ge K $ 有 $ q(v_{j_{\ell+1}} - v_k) < \varepsilon/2 $。最后令 $ \tilde{v} := v + v_{j_0} $，则对 $ k \ge K $ 有

\[ \begin{aligned} q(\tilde{v} - v_k) &= q(v + v_{j_0} - v_{j_{K+1}} + v_{j_{K+1}} - v_k) \\ &\le q\left(v - \sum_{k=0}^{K} w_k\right) + q(v_{j_{K+1}} - v_k) < \varepsilon . \end{aligned} \]

这表明 $ (v_k) $ 收敛于 $ \tilde{v} $。■

4.6 定理 对 $ p \in [1,\infty] $，$ \mathcal{L}_p(X,\mu,E) $ 是完备的。

证明 (i) 先考虑 $ p \in (1,\infty) $ 的情形。设 $ (f_j) $ 是 $ \mathcal{L}_p(X,\mu,E) $ 中满足 $ \sum_{j=0}^{\infty}\|f_j\|_p < \infty $ 的序列。令 $ g_k := \sum_{j=0}^{k}|f_j| $（$ k \in \mathbb{N} $）与 $ g := \sum_{k=0}^{\infty}|f_j| $。由推论 1.13(iii)，$ g $ 属于 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，且 $ |g_k|^p \to |g|^p $。由于

\[ \|g_k\|_p \le \sum_{j=0}^{k}\|f_j\|_p \le \sum_{j=0}^{\infty}\|f_j\|_p < \infty , \]

结论 3.10(a) 告诉我们 $ g \in \mathcal{L}_p(X,\mu,\mathbb{R}) $。于是由注 3.11(c)，存在 μ-零集 $ N $，使得对 $ x \in N^c $ 有 $ g(x) < \infty $。因此，对每个 $ x \in N^c $，$ f(x) := \sum_{j=0}^{\infty} f_j(x) $ 由魏尔斯特拉斯判别法（定理 V.1.6）有定义。又因为 $ |f|^p \le g^p $ μ-几乎处处且 $ g \in \mathcal{L}_p(X,\mu,\mathbb{R}) $，定理 3.14 蕴含 $ f $ 属于 $ \mathcal{L}_p(X,\mu,E) $。最后，法图引理表明

\[ \left\|\tilde{f} - \sum_{j=0}^{k} f_j\right\|_p^p = \int_X \left|\varliminf_{\ell \to \infty}\sum_{j=k+1}^{\ell} f_j\right|^p d\mu \le \varliminf_{\ell \to \infty}\int_X \left|\sum_{j=k+1}^{\ell} f_j\right|^p d\mu = \varliminf_{\ell \to \infty}\left\|\sum_{j=k+1}^{\ell} f_j\right\|_p^p , \]

并且我们得到

\[ \left\|\tilde{f} - \sum_{j=0}^{k} f_j\right\|_p \le \varliminf_{\ell \to \infty}\sum_{j=k+1}^{\ell}\|f_j\|_p = \sum_{j=k+1}^{\infty}\|f_j\|_p \quad \text{对 } k \in \mathbb{N} . \]

因为 $ \sum_{j=0}^{\infty}\|f_j\|_p < \infty $，序列 $ \left(\sum_{j=k+1}^{\infty}\|f_j\|_p\right)_{k \in \mathbb{N}} $ 收敛于零。因此 $ \left(\left\|\tilde{f} - \sum_{j=0}^{k} f_j\right\|_p\right)_{k \in \mathbb{N}} $ 也收敛于零。现在由引理 4.5 推出 $ \mathcal{L}_p(X,\mu,E) $ 是完备的。

(ii) 现在设 $ (f_j) $ 是 $ \mathcal{L}_\infty(X,\mu,E) $ 中的柯西序列。令

\[ A_j := [|f_j| > \|f_j\|_\infty] , \quad B_{k,\ell} := [|f_k - f_\ell| > \|f_k - f_\ell\|_\infty] \quad \text{对 } j, k, \ell \in \mathbb{N} \]

以及 $ N := \bigcup_j A_j \cup \bigcup_{k,\ell} B_{k,\ell} $。由注 4.1(b) 与注 IX.2.5(b)，$ N $ 是零集，且

\[ |f_j(x)| \le \|f_j\|_\infty , \quad |f_k(x) - f_\ell(x)| \le \|f_k - f_\ell\|_\infty \quad \text{对 } j, k, \ell \in \mathbb{N},\ x \in N^c . \]

因此 $ (f_j\,|\,N^c) $ 是巴拿赫空间 $ B(N^c,E) $ 中的柯西序列，我们可以找到 $ f \in B(N^c,E) $ 使得 $ (f_j\,|\,N^c) $ 一致收敛于 $ f $。于是 $ (f_j) $ μ-几乎处处收敛于 $ \tilde{f} $。我们知道函数 $ \tilde{f} $ 是 μ-本质有界的，因为 $ [|wtf| > \|f\|_{B(N^c,E)}] = \varnothing $，并且有

\[ |\tilde{f}(x) - f_j(x)| \le \|f - f_j\,|\,N^c\|_{B(N^c,E)} \quad \text{对 } x \in N^c \text{ 与 } j \in \mathbb{N} . \]

于是 $ (f_j) $ 在 $ \mathcal{L}_\infty(X,\mu,E) $ 中收敛于 $ \tilde{f} $。

(iii) $ p = 1 $ 的情形已在定理 2.10(ii) 中处理。■

4.7 推论 设 $ p \in [1,\infty] $，并设 $ f_j, f \in \mathcal{L}_p(X,\mu,E) $ 满足在 $ \mathcal{L}_p(X,\mu,E) $ 中 $ f_j \to f $。

(i) 若 $ p = \infty $，则 $ (f_j) $ μ-几乎处处收敛于 $ f $。

(ii) 若 $ p \in [1,\infty) $，则存在 $ (f_j) $ 的子列 $ (f_{j_k})_{k \in \mathbb{N}} $，它 μ-几乎处处收敛于 $ f $。

证明 因为 $ (f_j) $ 在 $ \mathcal{L}_p(X,\mu,E) $ 中收敛于 $ f $，我们知道 $ (f_j) $ 是 $ \mathcal{L}_p(X,\mu,E) $ 中的柯西序列。命题 (i) 现在可由定理 4.6 的证明直接推出。

若 $ p \in (1,\infty) $，选取 $ (f_j) $ 的子列 $ (f_{j_k})_{k \in \mathbb{N}} $ 使得 $ \|f_{j_{k+1}} - f_{j_k}\|_p < 2^{-(k+1)} $。则定理 4.6 的证明表明，存在 $ g \in \mathcal{L}_p(X,\mu,E) $，使得在 $ \mathcal{L}_p(X,\mu,E) $ 中 $ (f_{j_k} - f_{j_0}) \to g $，且当 $ k \to \infty $ 时 $ (f_{j_k} - f_{j_0}) \to g $ μ-几乎处处。因为 $ (f_j) $ 在 $ \mathcal{L}_p(X,\mu,E) $ 中收敛于 $ f $，我们有 $ \|f - (g + f_{j_0})\|_p = 0 $。注 4.4(a) 蕴含 $ f = g + f_{j_0} $ μ-几乎处处，由此即得结论。

$ p = 1 $ 的情形已在定理 2.18 中处理。■

4.8 命题 对 $ p \in [1,\infty) $，$ \mathcal{S}(X,\mu,E) $ 在 $ \mathcal{L}_p(X,\mu,E) $ 中稠密。\footnote{当 $ p = \infty $ 时该命题可能不成立；见习题 8（另见习题 9）。}

证明 设 $ f \in \mathcal{L}_p(X,\mu,E) $。则由注 4.4(c)，$ f $ 是 μ-可测的。因此存在 $ \mathcal{S}(X,\mu,E) $ 中的序列 $ (\varphi_j) $，使得当 $ j \to \infty $ 时 $ \varphi_j \to f $ μ-几乎处处。令 $ A_j := [|\varphi_j| \le 2|f|] $ 与 $ \psi_j := \chi_{A_j}\varphi_j $。则 $ (\psi_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中的序列，且 μ-几乎处处收敛于 $ f $。此外，

\[ |\psi_j - f|^p \le (|\psi_j| + |f|)^p \le 3^p|f|^p \quad \text{对 } j \in \mathbb{N} . \]

因为 $ 3^p|f|^p $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $，我们可以应用控制收敛定理，得到

\[ \|\psi_j - f\|_p^p = \int_X |\psi_j - f|^p\,d\mu \to 0 \quad \text{当 } j \to \infty , \]

由此即得结论。■

##### $ L_p $ 空间

我们在注 4.4(b) 中证明了

\[ \mathcal{N} := \{f \in \mathcal{L}_0(X,\mu,E) ;\ f = 0 \ \mu\text{-a.e.}\} \]

对 $ p \in \{0\} \cup [1,\infty] $ 是 $ \mathcal{L}_p(X,\mu,E) $ 的向量子空间。因此商空间

\[ L_p(X,\mu,E) := \mathcal{L}_p(X,\mu,E)/\mathcal{N} \quad \text{对 } p \in \{0\} \cup [1,\infty] \]

由例 I.12.3(i) 是 $ \mathbb{K} $ 上定义良好的向量空间。由注 4.4(c)，我们还有

\[ L_p(X,\mu,E) \subset L_0(X,\mu,E) \quad \text{对 } p \in [1,\infty] , \]

在向量子空间的意义下。设 $ [f] \in L_0(X,\mu,E) $，并设 $ g $ 是 $ [f] $ 的一个代表元。则 $ f - g \in \mathcal{N} $，即 $ f $ 与 $ g $ μ-几乎处处一致。由注 4.4(a)，映射

\[ |||\cdot||| : L_0(X,\mu,E) \to \overline{\mathbb{R}}^+ ,\quad [f] \mapsto \|f\|_p \]

对每个 $ p \in [1,\infty] $ 都是定义良好的，且对 $ [f] \in L_p(X,\mu,E) $ 我们有

\[ |||[f]|||_p = \|f\|_p = 0 \iff f = 0 \ \mu\text{-a.e.} \iff [f] = 0 . \tag{4.4} \]

由于 $ |||\cdot|||_p $ 显然继承了半范数 $ \|\cdot\|_p $ 的性质，(4.4) 表明 $ |||\cdot|||_p $ 是 $ L_p(X,\mu,E) $ 上的范数。因此 $ L_p(X,\mu,E) $ 是赋范向量空间，而我们所由构造它的空间 $ \mathcal{L}_p(X,\mu,E) $ 只是半范空间。所以 $ \mathcal{L}_p(X,\mu,E) $ 中的极限一般并不唯一，而 $ L_p(X,\mu,E) $ 中的极限是唯一的。\footnote{见注 2.3(b)。} 我们为 $ L_p(X,\mu,E) $ 更好的拓扑结构所付出的代价是：它的元素不是 $ X $ 上的函数，而是 $ \mathcal{L}_p(X,\mu,E) $ 的向量子空间 $ \mathcal{N} $ 的陪集。换言之，我们把 μ-几乎处处相等的函数等同起来。经验表明，以下的简化记号不会引起误解。
