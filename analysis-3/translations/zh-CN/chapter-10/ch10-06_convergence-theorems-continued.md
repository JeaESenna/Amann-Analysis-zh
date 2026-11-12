(c) 若 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $ 关于 $ \mu $ 勒贝格可积，则 $ [|f| = \infty] $ 是 $ \mu $-零集。

证明 该假设蕴含 $ A := [|f| = \infty] $ 是 $ \mu $-可测的，并且也蕴含 $ \int_X |f| \, d\mu < \infty $。进一步有 $ \infty\chi_A \le |f| $，而由注 3.3(b) 与 (d) 我们得出

\[ \infty\mu(A) = \int_X (\infty\chi_A) \, d\mu \le \int_X |f| \, d\mu < \infty. \]

因此 $ \mu(A) = 0 $。■

##### 勒贝格控制收敛定理

我们现在证明一个关于交换极限与积分的极其通用而实用的定理，它由 Henri Lebesgue 证明。它是勒贝格积分理论的基石之一，有着不计其数的应用。

3.12 定理（控制收敛\footnote{也称为“勒贝格定理”。}） 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中的序列，并假设存在 $ g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 使得

\[ \text{(a)} \qquad |f_j| \le g \quad \mu\text{-几乎处处，对 } j \in \mathbb{N}. \]

还假设对某个 $ f \in E^X $，

\[ \text{(b)} \qquad f_j \to f \quad \mu\text{-几乎处处，对 } j \to \infty. \]

则 $ f $ 是 $ \mu $-可积的，$ f_j \to f $ 在 $ \mathcal{L}_1(X,\mu,E) $ 中，且 $ \int_X f_j \, d\mu \to \int_X f \, d\mu $ 在 $ E $ 中。

证明 定义

\[ g_j := \sup_{k,\ell \ge j} |f_k - f_\ell| \]

对 $ j \in \mathbb{N} $。由命题 1.11，$ (g_j) $ 是 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的序列，且 $ \mu $-几乎处处收敛到 0。又 $ |f_k - f_\ell| \le 2g $ $ \mu $-几乎处处对 $ k,\ell \in \mathbb{N} $，从而 $ |g_j| \le 2g $ $ \mu $-几乎处处对 $ j \in \mathbb{N} $。由推论 3.8 可得

\[ 0 \le \varliminf_{j} \int_X g_j \, d\mu \le \int_X \varlimsup_{j} g_j \, d\mu = 0. \]

因此 $ \left( \int_X g_j \, d\mu \right)_{j \in \mathbb{N}} $ 是一个（递减的）零序列。这意味着对每个 $ \varepsilon > 0 $ 存在 $ N \in \mathbb{N} $ 使得

\[ \int_X |f_k - f_\ell| \, d\mu \le \int_X \sup_{k,\ell \ge j} |f_k - f_\ell| \, d\mu < \varepsilon \quad \text{对 } k,\ell \ge j \ge N. \]

因此 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中的柯西序列，而结论由 $ \mathcal{L}_1(X,\mu,E) $ 的完备性与定理 2.18 得出。■

3.13 注 注 3.6(a) 中的例子表明，可积控制函数 $ g $ 的存在性对定理 3.12 是本质的。■

作为控制收敛定理的第一个应用，我们证明可测函数可积性的一个简单判别法。

3.14 定理（可积性判别法） 设 $ f \in \mathcal{L}_0(X,\mu,E) $ 与 $ g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 满足 $ |f| \le g $ $ \mu $-几乎处处。则 $ f $ 属于 $ \mathcal{L}_1(X,\mu,E) $。

证明 设 $ (\varphi_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中的序列，使得当 $ j \to \infty $ 时 $ \varphi_j \to f $ $ \mu $-几乎处处。令 $ A_j := [|\varphi_j| \le 2g] $ 与 $ f_j := \chi_{A_j}\varphi_j $，$ j \in \mathbb{N} $。则 $ (f_j) $ 是 $ \mathcal{S}(X,\mu,E) $ 中 $ \mu $-几乎处处收敛到 $ f $ 的序列（见定理 3.9 的证明）。因为 $ |f_j| \le 2g $ 对 $ j \in \mathbb{N} $，结论由控制收敛定理得出。■

3.15 推论

(i) 取 $ f \in \mathcal{L}_1(X,\mu,E) $、$ g \in \mathcal{L}_0(X,\mu,\mathbb{K}) $ 与 $ \alpha \in [0,\infty) $，满足 $ |g| \le \alpha $ $ \mu $-几乎处处。则 $ gf $ 是 $ \mu $-可积的，且

\[ \left| \int_X gf \, d\mu \right| \le \alpha \|f\|_1. \]

(ii) 取 $ f \in \mathcal{L}_0(X,\mu,E) $ 与 $ \alpha \in [0,\infty) $。若 $ |f| \le \alpha $ $ \mu $-几乎处处且 $ \mu(X) < \infty $，则 $ f $ 是 $ \mu $-可积的，且

\[ \left| \int_X f \, d\mu \right| \le \|f\|_1 \le \alpha\mu(X). \]

(iii) 设 $ X $ 是 $ \sigma $-紧度量空间，$ \mu $ 是 $ X $ 上完备的拉东测度。假设 $ f \in C(X,E) $ 且 $ K \subset X $ 紧。则 $ \chi_K f $ 属于 $ \mathcal{L}_1(X,\mu,E) $，且

\[ \left| \int_K f \, d\mu \right| \le \|\chi_K f\|_\infty \mu(K). \]

证明 (i) 由注 1.2(d)，$ gf $ 是 $ \mu $-可测的。又 $ |gf| \le \alpha|f| $ $ \mu $-几乎处处，且 $ \alpha|f| $ 是 $ \mu $-可积的。因此定理 3.14 表明 $ gf $ 是 $ \mu $-可积的；定理 2.11(i) 与推论 2.16(ii) 蕴含

\[ \left| \int_X gf \, d\mu \right| \le \int_X |gf| \, d\mu \le \int_X \alpha|f| \, d\mu = \alpha\|f\|_1. \]

(ii) 因为 $ \mu(X) $ 有限，$ \chi_X $ 属于 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $。由定理 1.7(i)，$ |f| $ 是 $ \mu $-可测的。因此 (i) 表明（取 $ g := |f| $ 与 $ f := \chi_X $）$ |f| $ 是 $ \mu $-可积的，且

\[ \int_X |f| \, d\mu \le \alpha\|\chi_X\|_1 = \alpha\mu(X) < \infty. \]

结论现在由定理 3.9 得出。

(iii) 由定理 1.17，$ f $ 是 $ \mu $-可测的。此外 $ \chi_K $ 是 $ \mu $-简单的，因为由注 IX.5.3(a) $ \mu(K) $ 有限。因此 $ \chi_K f $ 是 $ \mu $-可测的，而结论由 (ii) 取 $ \alpha := \max_{x \in K}|f(x)| $ 得出。■

在处理并非在整个 $ X $ 上有定义的函数时，积分理论中偶尔有用的是：在尚未定义之处把它定义为 0 来延拓其定义。可测性与可积性问题于是可以相对于测度空间 $ (X,\mathcal{A},\mu) $ 来讨论。为此我们提出以下约定。

对 $ f: \operatorname{dom}(f) \subset X \to E $，定义 $ f $ 到 $ X $ 的**平凡延拓** $ \tilde{f} \in E^X $ 为

\[ \tilde{f}(x) := \begin{cases} f(x), & \text{若 } x \in \operatorname{dom}(f), \\ 0, & \text{若 } x \notin \operatorname{dom}(f). \end{cases} \]

我们说 $ f $ 是 **$ \mu $-可测的**或 **$ \mu $-可积的**，如果 $ \tilde{f} $ 分别属于 $ \mathcal{L}_0(X,\mu,E) $ 或 $ \mathcal{L}_1(X,\mu,E) $。若 $ f $ 是 $ \mu $-可积的，我们令 $ \int_X f \, d\mu := \int_X \tilde{f} \, d\mu $。

3.16 定理（级数的逐项积分） 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中的序列，使得 $ \sum_{j=0}^{\infty} \int_X |f_j| \, d\mu < \infty $。则 $ \sum_j f_j $ $ \mu $-几乎处处绝对收敛，$ \sum_j f_j $ 是 $ \mu $-可积的，且

\[ \int_X \left( \sum_{j=0}^{\infty} f_j \right) d\mu = \sum_{j=0}^{\infty} \int_X f_j \, d\mu. \]

证明 (i) 由定理 1.7(i) 与推论 1.13(iii)，$ \overline{\mathbb{R}} $ 值函数 $ g := \sum_{j=0}^{\infty} |f_j| $ 是 $ \mu $-可测的。推论 3.5 蕴含

\[ \int_X g \, d\mu = \sum_{j=0}^{\infty} \int_X |f_j| \, d\mu < \infty. \]

因此由注 3.11(a) 与 (c) 可得，$ [g = \infty] $ 是 $ \mu $-零集，这证明了 $ \sum_j f_j $ 对几乎每个 $ x \in X $ 绝对收敛。

(ii) 令 $ g_k := \sum_{j=0}^{k} f_j $，并对 $ x \in [g < \infty] $ 令 $ f(x) := \sum_{j=0}^{\infty} f_j(x) $。序列 $ (g_k) $ $ \mu $-几乎处处收敛到 $ f $，且我们有估计 $ |g_k| \le \sum_{j=0}^{k} |f_j| \le g $。由控制收敛定理，$ f $ 属于 $ \mathcal{L}_1(X,\mu,E) $，且

\[ \sum_{j=0}^{\infty} \int_X f_j \, d\mu = \lim_{k \to \infty} \int_X g_k \, d\mu = \int_X \lim_{k \to \infty} g_k \, d\mu = \int_X \left( \sum_{j=0}^{\infty} f_j \right) d\mu. \ \blacksquare \]

##### 含参积分

作为控制收敛定理的另一个应用，我们研究含参积分的连续性与可微性。

3.17 定理（含参积分的连续性） 设 $ M $ 是度量空间，$ f: X \times M \to E $ 满足

(a) 对每个 $ m \in M $，$ f(\cdot,m) \in \mathcal{L}_1(X,\mu,E) $；

(b) 对 $ \mu $-几乎每个 $ x \in X $，$ f(x,\cdot) \in C(M,E) $；

(c) 存在 $ g \in \mathcal{L}_1(X,\mu,E) $ 使得 $ |f(x,m)| \le g(x) $ 对 $ (x,m) \in X \times M $。

则

\[ F: M \to E, \quad m \mapsto \int_X f(x,m) \, \mu(dx) \]

是良定义且连续的。

证明 第一个断言立即由 (a) 得出。设 $ m \in M $，并设 $ (m_j) $ 是 $ M $ 中收敛到 $ m $ 的序列。我们令 $ f_j := f(\cdot,m_j) $，$ j \in \mathbb{N} $。由 (b) 可得 $ f_j \to f $ $ \mu $-几乎处处。因此由 (a) 与 (c)，我们可以对序列 $ (f_j) $ 应用控制收敛定理，并得到

\[ \lim_{j \to \infty} F(m_j) = \lim_{j \to \infty} \int_X f_j \, d\mu = \int_X \lim_{j \to \infty} f_j \, d\mu = \int_X f(x,m) \, \mu(dx) = F(m). \]

结论现在由定理 III.1.4 得出。■

3.18 定理（含参积分的可微性） 设 $ U $ 在 $ \mathbb{R}^n $ 中开，或 $ U \subset \mathbb{K} $ 是完全且凸的，并设 $ f: X \times U \to E $ 满足

(a) 对每个 $ y \in U $，$ f(\cdot,y) \in \mathcal{L}_1(X,\mu,E) $；

(b) 对 $ \mu $-几乎每个 $ x \in X $，$ f(x,\cdot) \in C^1(U,E) $；

(c) 存在 $ g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 使得

\[ \left| \frac{\partial}{\partial y^j} f(x,y) \right| \le g(x) \quad \text{对 } (x,y) \in X \times U \text{ 与 } 1 \le j \le n. \]

则

\[ F: U \to E, \quad y \mapsto \int_X f(x,y) \, \mu(dx) \]

是连续可微的，且

\[ \partial_j F(y) = \int_X \frac{\partial}{\partial y^j} f(x,y) \, \mu(dx) \quad \text{对 } y \in U \text{ 与 } 1 \le j \le n. \]

证明 取 $ y \in U $ 与 $ j \in \{1,\ldots,n\} $。设 $ (h_k) $ 是 $ \mathbb{K} $ 中的零序列，使得 $ h_k \ne 0 $ 且 $ y + h_k e_j \in U $ 对 $ k \in \mathbb{N} $。最后令

\[ f_k(x) := \frac{f(x, y + h_k e_j) - f(x, y)}{h_k} \quad \text{对 } x \in X \text{ 与 } k \in \mathbb{N}, \]

中值定理（定理 VII.3.9）于是给出

\[ |f_k(x)| \le \sup_{z \in U} \left| \frac{\partial}{\partial y^j} f(x,z) \right| \le g(x) \quad \mu\text{-几乎处处}. \]

因为 $ (f_k) $ $ \mu $-几乎处处收敛到 $ \partial f(\cdot,y)/\partial y^j $，由定理 3.12 可得

\[ \lim_{k \to \infty} \frac{F(y + h_k e_j) - F(y)}{h_k} = \lim_{k \to \infty} \int_X f_k \, d\mu = \int_X \frac{\partial}{\partial y^j} f(x,y) \, \mu(dx). \]

因此 $ F $ 是偏可微的，且 $ \partial_j F(y) = \int_X (\partial/\partial y^j) f(x,y) \, \mu(dx) $。结果现在由定理 3.17 与 VII.2.10 得出。■

3.19 推论 设 $ U $ 在 $ \mathbb{C} $ 中开，$ f: X \times U \to \mathbb{C} $ 满足

(a) 对每个 $ z \in U $，$ f(\cdot,z) \in \mathcal{L}_1(X,\mu,\mathbb{C}) $；

(b) 对 $ \mu $-几乎每个 $ x \in X $，$ f(x,\cdot) \in C^{\omega}(U,\mathbb{C}) $；

(c) 存在 $ g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 使得 $ |f(x,z)| \le g(x) $ 对 $ (x,z) \in X \times U $。

则

\[ F: U \to \mathbb{C}, \quad z \mapsto \int_X f(x,z) \, \mu(dx) \]

是全纯的，且

\[ F^{(n)}(z) = \int_X \frac{\partial^n}{\partial z^n} f(x,z) \, \mu(dx) \tag{3.1} \]

对每个 $ n \in \mathbb{N} $。

证明 取 $ z_0 \in U $ 与 $ r > 0 $ 使得 $ \overline{\mathbb{D}}(z_0,r) \subset U $。柯西导数公式（推论 VIII.5.12）给出

\[ \frac{\partial}{\partial z} f(x,z) = \frac{1}{2\pi i} \int_{\partial\mathbb{D}(z,r)} \frac{f(x,\zeta)}{(\zeta - z)^2} \, d\zeta \quad \text{对 } \mu\text{-几乎每个 } x \in X \text{ 与 } z \in \mathbb{D}(z_0,r), \]

并由 (c) 与命题 VIII.4.3(iv) 得出

\[ \left| \frac{\partial}{\partial z} f(x,z) \right| \le \frac{g(x)}{r} \quad \text{对 } \mu\text{-几乎每个 } x \in X \text{ 与 } z \in \mathbb{D}(z_0,r). \]

定理 3.18 现在表明 $ F|\mathbb{D}(z_0,r) $ 属于 $ C^1(\mathbb{D}(z_0,r),\mathbb{C}) $ 且满足

\[ F'(z) = \int_X \frac{\partial}{\partial z} f(x,z) \, \mu(dx) \quad \text{对 } z \in \mathbb{D}(z_0,r). \]

全纯性是一个局部性质，因此定理 VIII.5.11 蕴含 $ F $ 属于 $ C^{\omega}(U,\mathbb{C}) $。(3.1) 的有效性现在由一个简单的归纳论证得出。■
