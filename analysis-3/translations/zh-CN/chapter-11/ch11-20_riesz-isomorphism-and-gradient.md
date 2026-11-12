## 6 向量分析

向量场与普法夫形式可以借助里斯同构互相转换。向量场具有直接的几何解释，而微分形式的演算在计算中极有价值。外积与外微分服从相对简单的规则，而这些规则本身代表了一套更复杂的、关于如何从一个局部坐标系过渡到另一个局部坐标系的法则。在本节中，我们将用里斯同构把微分形式的一些概念与定理转译成经典向量分析的语言。在此过程中，我们将了解向量场的散度与旋度，它们在物理学与偏微分方程理论中具有根本的重要性。

本节自始至终作如下假定：

- $ M $ 是 $ m $ 维流形；$ N $ 是 $ n $ 维流形。
- 指标 $ i, j, k, \ell $ 除另有说明外总是从 $ 1 $ 取到 $ m $，而 $ \sum_{j} $ 表示 $ j $ 从 $ 1 $ 到 $ m $ 求和。

##### 里斯同构

设 $ g $ 是 $ M $ 上的伪黎曼度量。则我们如下定义**里斯同构** $ \Theta_{g} $：

\[ \Theta_{g}: \mathcal{V}(M) \to \Omega^{1}(M), \quad v \mapsto \Theta_{g}v \tag{6.1} \]

以及

\[ (\Theta_{g}v)(p) := \Theta_{g(p)}v(p) \quad \text{对 } p \in M, \]

其中 $ \Theta_{g(p)}: T_{p}M \to T_{p}^{*}M $ 是 (2.12)（或注 2.18(b)）中的里斯同构，它由下式定义：

\[ \langle \Theta_{g(p)}u, w \rangle = g(p)(u, w) \quad \text{对 } u, w \in T_{p}M. \]

在不致引起混淆时，我们可以用 $ \Theta $ 代替 $ \Theta_{g} $。

6.1 注 (a) 映射 (6.1) 是良定义的。

证明 我们须证明，对 $ v \in \mathcal{V}(M) $，$ \Theta v $ 属于 $ \Omega^{1}(M) $。在局部坐标下，有

\[ v|U = \sum_{j} v^{j}\frac{\partial}{\partial x^{j}} \]

其中 $ v^{j} \in \mathcal{E}(U) $。由此以及注 2.14(a) 与 2.18(b) 可得

\[ \Theta v(p) = \Theta_{g(p)}\sum_{j} v^{j}(p)\frac{\partial}{\partial x^{j}}\Big|_{p} = \sum_{j} v^{j}(p)\Theta_{g(p)}\frac{\partial}{\partial x^{j}}\Big|_{p} = \sum_{j} v^{j}(p)\sum_{k} g_{jk}(p)\,dx^{k}(p) = \sum_{j} a_{j}(p)\,dx^{j}(p), \]

其中

\[ a_{k} := \sum_{j} g_{kj}v^{j} \in \mathcal{E}(U). \]

现在由注 4.5(c) 与 5.4(e) 可得结论。■

(b) 在局部坐标下，

\[ \Theta\Big(\sum_{j} v^{j}\frac{\partial}{\partial x^{j}}\Big) = \sum_{j} a_{j}\,dx^{j} \qquad \text{其中 } a_{j} := \sum_{k} g_{jk}v^{k}. \tag{6.2} \]

我们常把 $ \Theta v $ 写成 $ v^{\flat} $ 或 $ g^{\flat}v $，因为如 (6.2) 所示，$ \Theta $ 实现的是“降低指标”（见注 2.14(d)）。

证明 这已在 (a) 的证明中说明。■

(c) 映射 $ \Theta: \mathcal{V}(M) \to \Omega^{1}(M) $ 是 $ \mathcal{E}(M) $-模同构。

证明 设 $ \alpha \in \Omega^{1}(M) $。则对 $ p \in M $ 有 $ \alpha(p) \in T_{p}^{*}M $。由第 2 节我们知道 $ \Theta_{g(p)} $ 是向量空间同构。因此 $ \Theta_{g(p)}^{-1}\alpha(p) \in T_{p}M $ 是良定义的。我们置

\[ (\overline{\Theta}_{g}\alpha)(p) := \Theta_{g(p)}^{-1}\alpha(p) \quad \text{对 } p \in M \text{ 与 } \alpha \in \Omega^{1}(M). \]

在局部坐标下，由注 2.14(a) 与 2.18(b) 知

\[ \overline{\Theta}_{g}\alpha(p) = \Theta_{g(p)}^{-1}\sum_{j} a_{j}(p)\,dx^{j}(p) = \sum_{j} a_{j}(p)\Theta_{g(p)}^{-1}dx^{j}(p) = \sum_{j} a_{j}(p)\sum_{k} g^{jk}(p)\frac{\partial}{\partial x^{k}}\Big|_{p} = \sum_{j} v^{j}(p)\frac{\partial}{\partial x^{j}}\Big|_{p}, \]

其中

\[ v^{j} := \sum_{k} g^{jk}a_{k} \in \mathcal{E}(U). \]

于是由注 4.3(c) 可知 $ \overline{\Theta}_{g}\alpha $ 属于 $ \mathcal{V}(M) $。由 $ \Theta_{g} $ 与 $ \overline{\Theta}_{g} $ 的定义立即得到 $ \Theta_{g}\overline{\Theta}_{g} = \operatorname{id}_{\Omega^{1}(M)} $ 与 $ \overline{\Theta}_{g}\Theta_{g} = \operatorname{id}_{\mathcal{V}(M)} $。因此 $ \Theta_{g} $ 是双射，且 $ \Theta_{g}^{-1} = \overline{\Theta}_{g} $。

最后我们看到，对 $ a \in \mathcal{E}(M) $ 与 $ v \in \mathcal{V}(M) $，有

\[ \Theta_{g}(av)(p) = \Theta_{g(p)}a(p)v(p) = a(p)\Theta_{g(p)}v(p) = (a\Theta_{g}v)(p) \quad \text{对 } p \in M. \]

因此 $ \Theta $ 是 $ \mathcal{E}(M) $-模同构。■

(d) 在局部坐标下，

\[ \Theta^{-1}\Big(\sum_{j} a_{j}\,dx^{j}\Big) = \sum_{j} v^{j}\frac{\partial}{\partial x^{j}} \qquad \text{其中 } v^{j} := \sum_{k} g^{jk}a_{k}. \tag{6.3} \]

我们常把 $ \Theta^{-1}\alpha $ 写成 $ \alpha^{\sharp} $ 或 $ g^{\sharp}\alpha $，因为 $ \Theta^{-1} $ “提升指标”。

证明 这已在 (c) 的证明中说明。■

(e)（正交坐标）若 $ (x^{1}, \dots, x^{m}) $ 是正交坐标，即若

\[ g\Big(\frac{\partial}{\partial x^{j}}, \frac{\partial}{\partial x^{k}}\Big) = 0 \quad \text{对 } j \neq k, \]

则 (6.2) 与 (6.3) 分别简化为

\[ \Theta v = \sum_{j} g_{jj}v^{j}\,dx^{j} \quad \text{与} \quad \Theta^{-1}\alpha = \sum_{j} g^{jj}a_{j}\frac{\partial}{\partial x^{j}} \]

其中 $ v = \sum_{j} v^{j}\partial/\partial x^{j} $，$ \alpha = \sum_{j} a_{j}\,dx^{j} $。

(f) 设 $ (N, \bar{g}) $ 是伪黎曼流形，又设 $ \varphi \in \operatorname{Diff}(M, N) $ 且对某个 $ \lambda \neq 0 $ 有 $ \varphi_{*}g = \lambda\bar{g} $。则下图交换。

\[ \begin{array}{ccc} \mathcal{V}(M) & \xleftarrow[\ \cong\ ]{\ \varphi^{*}\ } & \mathcal{V}(N) \\ \Theta_{M}\Big\downarrow\ \cong & & \cong\ \Big\downarrow\ \lambda\Theta_{N} \\ \Omega^{1}(M) & \xleftarrow[\ \cong\ ]{\ \varphi^{*}\ } & \Omega^{1}(N) \end{array} \]

因此 $ \Theta_{M}\varphi^{*} = \lambda\varphi^{*}\Theta_{N} $。

证明 利用向量场与形式的前推和拉回的定义与性质（特别见 (4.25)），我们对 $ v, w \in \mathcal{V}(N) $ 得到

\[ \lambda\bar{g}(v, w) = \varphi_{*}g(v, w) = g(\varphi^{*}v, \varphi^{*}w) = \langle \Theta_{M}\varphi^{*}v, \varphi^{*}w \rangle_{M} = \langle \varphi_{*}\Theta_{M}\varphi^{*}v, w \rangle_{N} = \bar{g}(\Theta_{N}^{-1}\varphi_{*}\Theta_{M}\varphi^{*}v, w). \]

由于 $ \bar{g} $ 非退化且为 $ \mathbb{R} $-线性的，由此可得

\[ \lambda v = \Theta_{N}^{-1}\varphi_{*}\Theta_{M}\varphi^{*}v \quad \text{对 } v \in \mathcal{V}(M), \]

这就证明了结论。■

(g)（正则性）设 $ k \in \mathbb{N} $ 且 $ M $ 是 $ C^{k+1} $ 流形。则当把光滑向量场、微分形式与函数分别换成 $ C^{k} $ 向量场、$ C^{k} $ 微分形式与 $ C^{k} $ 函数时，上述定义与陈述仍然成立。■

6.2 例 (a)（欧氏坐标）设 $ M $ 是 $ \mathbb{R}^{m} $ 中的开集。我们用 $ (x^{1}, \dots, x^{m}) $ 表示欧氏坐标，即 $ (\cdot|\cdot) = \sum_{j}(dx^{j})^{2} $。则

\[ \Theta\Big(\sum_{j} v^{j}\frac{\partial}{\partial x^{j}}\Big) = \sum_{j} a_{j}\,dx^{j} \qquad \text{其中 } a_{j} := v^{j}. \]

最后这个赋值意味着，在欧氏情形下我们无需引入新记号；我们通常把 $ \sum_{j} v^{j}\partial/\partial x^{j} $ 在 $ \Theta $ 下的像写成 $ \sum_{j} v^{j}\,dx^{j} $。也就是说，$ \Theta $ 使我们可以把向量场 $ \sum_{j} v^{j}\partial/\partial x^{j} $ 的分量 $ v^{j} $ 看作普法夫形式 $ \sum_{j} v^{j}\,dx^{j} $ 的分量。

证明 因为 $ g_{jk} = \delta_{jk} $，这由注 6.1(b) 即得。■

(b)（球坐标）设 $ V_{3} := (0, \infty) \times (0, 2\pi) \times (0, \pi) $，并令

\[ f: V_{3} \to \mathbb{R}^{3}, \quad (r, \varphi, \vartheta) \mapsto (x, y, z) \]

是例 VII.9.11(a) 中的球坐标变换。则关于标准度量，有

\[ \Theta\Big(v^{1}\frac{\partial}{\partial r} + v^{2}\frac{\partial}{\partial \varphi} + v^{3}\frac{\partial}{\partial \vartheta}\Big) = v^{1}\,dr + r^{2}\sin^{2}(\vartheta)v^{2}\,d\varphi + r^{2}v^{3}\,d\vartheta. \]

证明 这由注 6.1(b) 立得。■

(c)（闵可夫斯基度量）在 $ \mathbb{R}^{4}_{1,3} $ 上，有

\[ \Theta_{g}\Big(\sum_{\mu=0}^{3} v^{\mu}\frac{\partial}{\partial x^{\mu}}\Big) = v^{0}\,dx^{0} - \sum_{j=1}^{3} v^{j}\,dx^{j} \]

其中 $ g := (\cdot|\cdot)_{1,3} $。■

##### 梯度

若 $ f \in \mathcal{E}(M) $，则 $ df $ 属于 $ \Omega^{1}(M) $。因此

\[ \operatorname{grad}_{g} f := \Theta_{g}^{-1}df \in \mathcal{V}(M) \]

是 $ M $ 上良定义的向量场，称为 $ f $ 在（伪）黎曼流形 $ (M, g) $ 上（或关于 $ g $）的**梯度**。在不致引起误解时，我们也可以把它写成 $ \operatorname{grad}_{M} f $ 或 $ \operatorname{grad} f $。因此 $ \operatorname{grad} f $ 由下图的可交换性定义。

\[ \begin{array}{ccc} & \mathcal{E}(M) = \Omega^{0}(M) & \\ \operatorname{grad} & \swarrow \qquad \searrow & d \\ \mathcal{V}(M) & \xrightarrow[\ \cong\ ]{\ \Theta\ } & \Omega^{1}(M) \end{array} \tag{6.4} \]

6.3 注 (a) 映射 $ \operatorname{grad}: \mathcal{E}(M) \to \mathcal{V}(M) $，$ f \mapsto \operatorname{grad} f $ 是 $ \mathbb{R} $-线性的。

(b) 对 $ f \in \mathcal{E}(M) $，向量场 $ \operatorname{grad} f $ 由下述关系刻画：

\[ g(\operatorname{grad} f, w) = \langle df, w \rangle \quad \text{对 } w \in \mathcal{V}(M). \]

(c) 在局部坐标下，有

\[ \operatorname{grad} f = \sum_{j}\Big(\sum_{k} g^{jk}\frac{\partial f}{\partial x^{k}}\Big)\frac{\partial}{\partial x^{j}}. \tag{6.5} \]

证明 因为由 (4.5) 与 (4.8) 知 $ df = \sum_{j}\partial f/\partial x^{j}\,dx^{j} $，所以由注 6.1(d) 即得结论。■

(d)（正交坐标）在正交坐标下，(6.5) 简化为

\[ \operatorname{grad} f = \sum_{j} g^{jj}\frac{\partial f}{\partial x^{j}}\frac{\partial}{\partial x^{j}}. \]

因为此时 $ g $ 具有形式

\[ g = \sum_{j} g_{jj}(dx^{j})^{2}, \tag{6.6} \]

即因为基本矩阵是对角的，我们有 $ g^{jj} = 1/g_{jj} $。因此系数 $ g^{jj} $ 可以直接从表示式 (6.6) 读出。

(e) 设 $ (N, \bar{g}) $ 是伪黎曼流形，又设 $ \varphi \in \operatorname{Diff}(M, N) $ 且对某个 $ \lambda \neq 0 $ 有 $ \varphi_{*}g = \lambda\bar{g} $。则下图交换。

\[ \begin{array}{ccc} \mathcal{E}(M) & \xrightarrow{\ \lambda\operatorname{grad}_{M}\ } & \mathcal{V}(M) \\ \varphi^{*}\Big\uparrow & & \Big\uparrow\ \varphi^{*} \\ \mathcal{E}(N) & \xrightarrow{\ \operatorname{grad}_{N}\ } & \mathcal{V}(N) \end{array} \]

因此 $ \operatorname{grad}_{M} \circ \varphi^{*} = \lambda^{-1}\varphi^{*} \circ \operatorname{grad}_{N} $。

证明 因为由注 6.1(f) 可得关系 $ \lambda\Theta_{M}^{-1}\varphi^{*} = \varphi^{*}\Theta_{N}^{-1} $，所以对 $ f \in \mathcal{E}(N) $ 我们有

\[ \lambda\operatorname{grad}_{M}(\varphi^{*}f) = \lambda\Theta_{M}^{-1}d(\varphi^{*}f) = \lambda\Theta_{M}^{-1}\varphi^{*}df = \varphi^{*}\Theta_{N}^{-1}df = \varphi^{*}\operatorname{grad}_{N} f, \]

这里我们用到了 (4.19)。■

(f)（正则性）设 $ k \in \mathbb{N} $。对 $ f \in C^{k+1}(M) $，有 $ \operatorname{grad} f \in \mathcal{V}^{k}(M) $。这里只需假定 $ M $ 是 $ C^{k+1} $ 流形。■

6.4 例 (a)（欧氏坐标）设 $ M $ 是 $ \mathbb{R}^{m} $ 中的开集。用 $ (x^{1}, \dots, x^{m}) $ 表示欧氏坐标，则 $ g_{jk} = \delta_{jk} $，因此

\[ \operatorname{grad} f = \sum_{j}\frac{\partial f}{\partial x^{j}}\frac{\partial}{\partial x^{j}}. \]

这一表示显然与命题 VII.2.16 中的表示一致。对于任意的局部黎曼度量，我们已在注 VII.2.17(c) 中验证了 (6.4)。

(b)（球坐标）设 $ V_{3} \to \mathbb{R}^{3} $，$ (r, \varphi, \vartheta) \mapsto (x, y, z) $ 是球坐标映射。在这些坐标下，关于标准度量的梯度为

\[ \operatorname{grad} f = \frac{\partial f}{\partial r}\frac{\partial}{\partial r} + \frac{1}{r^{2}\sin^{2}\vartheta}\frac{\partial f}{\partial \varphi}\frac{\partial}{\partial \varphi} + \frac{1}{r^{2}}\frac{\partial f}{\partial \vartheta}\frac{\partial}{\partial \vartheta}. \]

证明 因为球坐标是正交坐标，这由例 5.5(g) 即得。■
