## 6 涅梅茨基算子与变分法

尽管我们为一般的巴拿赫空间建立了微分学，但迄今为止我们几乎只用有限维的例子来演示它。在本节中，我们通过让你领略一般理论的范围来弥补这一点。为此，我们首先考虑函数空间之间最简单的非线性映射，即“覆盖算子”，它用一个固定的非线性映射把两个函数空间连接起来。我们限制在连续函数巴拿赫空间中的覆盖算子，并研究它们的连续性与可微性性质。

作为应用，我们将研究变分法的基本问题，即刻画并求出“无穷多个变量”的实值函数的极值的问题。特别地，我们导出欧拉–拉格朗日方程，满足该方程是变分问题具有局部极值的必要条件。

##### 涅梅茨基算子

设 $ T $、$ X $ 和 $ Y $ 是非空集合，$ \varphi $ 是从 $ T \times X $ 到 $ Y $ 的映射。那么我们通过下式定义**诱导涅梅茨基算子**或**覆盖算子** $ \varphi^{\sharp} $

\[ \varphi^{\sharp} : X^{T} \to Y^{T} , \quad u \mapsto \varphi(\cdot, u(\cdot)) . \]

这意味着 $ \varphi^{\sharp} $ 是把每个函数 $ u : T \to X $ 对应到函数 $ \varphi^{\sharp}(u) : T \to Y $，$ t \mapsto \varphi(t, u(t)) $ 的映射。

在下面假设

• $ T $ 是紧致度量空间；
  $ E $ 和 $ F $ 是巴拿赫空间；
  $ X $ 在 $ E $ 中开。

当不会引起混淆时，我们把 $ E $ 和 $ F $ 上的范数都记为 $ \left|\cdot\right| $。

6.1 引理 $ C(T, X) $ 在巴拿赫空间 $ C(T, E) $ 中是开的。

证明 由定理 V.2.6，我们知道 $ C(T, E) $ 是巴拿赫空间。

只需考虑 $ X \ne E $ 的情形。于是设 $ u \in C(T, X) $。那么，由于 $ u(T) $ 是紧致度量空间的连续像，它是 $ X $ 的紧致子集（见定理 III.3.6）。于是根据例 III.3.9(c)，存在 $ r > 0 $ 使得 $ d(u(T), X^{c}) \ge 2r $。于是，对于 $ v \in u + r\mathbb{B}_{C(T,E)} $，由 $ |u(t) - v(t)| < r $ 对 $ t \in T $ 成立可知 $ v(T) $ 落在 $ E $ 中 $ u(T) $ 的 $ r $ 邻域内，从而落在 $ X $ 中。因此 $ v $ 属于 $ C(T, X) $。 ■

##### 涅梅茨基算子的连续性

我们首先证明连续映射在连续函数空间中诱导出连续的涅梅茨基算子。

6.2 定理 设 $ \varphi \in C(T \times X, F) $。那么
(i) $ \varphi^{\sharp} \in C(C(T, X), C(T, F)) $；
(ii) 如果 $ \varphi $ 在有界集上有界，那么 $ \varphi^{\sharp} $ 也是如此。

证明 对于 $ u \in C(T, X) $，设 $ \tilde{u}(t) := (t, u(t)) $ 对 $ t \in T $。那么 $ \tilde{u} $ 显然属于 $ C(T, T \times X) $（见命题 III.1.10）。于是定理 III.1.8 蕴含 $ \varphi^{\sharp}(u) = \varphi \circ \tilde{u} $ 属于 $ C(T, F) $。

(i) 设 $ (u_{j}) $ 是 $ C(T, X) $ 中的序列，且在 $ C(T, X) $ 中 $ u_{j} \to u_{0} $。那么根据例 III.3.1(a)，集合 $ M := \{ u_{j} ;\ j \in \mathbb{N}^{\times} \} \cup \{u_{0}\} $ 在 $ C(T, X) $ 中是紧致的。

我们令 $ M(T) := \bigcup\{ m(T) ;\ m \in M \} $，并要证明 $ M(T) $ 在 $ X $ 中是紧致的。为此，设 $ (x_{j}) $ 是 $ M(T) $ 中的序列。那么存在 $ t_{j} \in T $ 和 $ m_{j} \in M $ 使得 $ x_{j} = m_{j}(t_{j}) $。由于 $ T $ 和 $ M $ 是序列紧致的，并且根据习题 III.3.1，我们找到 $ (t, m) \in T \times M $ 以及一个子序列 $ ((t_{j_{k}}, m_{j_{k}}))_{k \in \mathbb{N}} $，它在 $ T \times M $ 中收敛到 $ (t, m) $。由此我们得到

\[ \begin{aligned} |x_{j_{k}} - m(t)| &\le |m_{j_{k}}(t_{j_{k}}) - m(t_{j_{k}})| + |m(t_{j_{k}}) - m(t)| \\ &\le \|m_{j_{k}} - m\|_{\infty} + |m(t_{j_{k}}) - m(t)| \to 0 \end{aligned} \]

当 $ k \to \infty $ 时成立，因为 $ m $ 连续。于是 $ (x_{j_{k}}) $ 收敛到 $ M(T) $ 中的元素 $ m(t) $，这就证明了 $ M(T) $ 的序列紧致性，从而证明了它的紧致性。

于是，根据习题 III.3.1，$ T \times M(T) $ 是紧致的。现在定理 III.3.13 表明 $ \varphi $ 在 $ T \times M(T) $ 上的限制是一致连续的。由此我们得到

\[ \|\varphi^{\sharp}(u_{j}) - \varphi^{\sharp}(u_{0})\|_{\infty} = \max_{t \in T}\left|\varphi(t, u_{j}(t)) - \varphi(t, u_{0}(t))\right| \to 0 \]

当 $ j \to \infty $ 时成立，因为 $ \|u_{j} - u_{0}\|_{\infty} \to 0 $。我们还发现，对于 $ t \in T $ 和 $ j \in \mathbb{N} $，$ (t, u_{j}(t)) $ 和 $ (t, u_{0}(t)) $ 属于 $ T \times M(T) $。因此 $ \varphi^{\sharp} $ 是序列连续的，从而根据定理 III.1.4 是连续的。

(ii) 设 $ B \subset C(T, X) $，且存在 $ R > 0 $ 使得对 $ u \in B $ 有 $ \|u\|_{\infty} \le R $。那么

\[ B(T) := \bigcup\{ u(T) ;\ u \in B \} \subset X , \]

并且对 $ x \in B(T) $ 有 $ |x| \le R $。因此 $ B(T) $ 在 $ X $ 中有界。于是 $ T \times B(T) $ 在 $ T \times X $ 中有界。由于 $ \varphi $ 在有界集上有界，存在 $ r > 0 $ 使得对 $ (t, x) \in T \times B(T) $ 有 $ |\varphi(t, x)| \le r $。这蕴含对 $ u \in B $ 有 $ \|\varphi^{\sharp}(u)\|_{\infty} \le r $。因此 $ \varphi^{\sharp} $ 在有界集上有界，因为 $ \varphi $ 具有这一性质。 ■

6.3 注 当 $ E $ 是有限维时，每个 $ \varphi \in C(T \times X, F) $ 在形如 $ T \times B $ 的集合上都有界，其中 $ B $ 在 $ E $ 中有界，且 $ B $ 在 $ E $ 中的闭包 $ \overline{B} $ 落在 $ X $ 中。

证明 这由定理 III.3.5、推论 III.3.7 和定理 1.4 得到。 ■

##### 涅梅茨基算子的可微性

设 $ p \in \mathbb{N} \cup \{\infty\} $。那么我们写

\[ \varphi \in C^{0,p}(T \times X, F) \]

如果对每个 $ t \in T $，函数 $ \varphi(t, \cdot) : X \to F $ 是 $ p $ 次可微的，并且它的导数（我们记为 $ \partial_{2}^{q}\varphi $）满足

\[ \partial_{2}^{q}\varphi \in C(T \times X, \mathcal{L}^{q}(E, F)) \qquad \text{对 } q \in \mathbb{N} \text{ 且 } q \le p . \]

因而 $ C^{0,0}(T \times X, F) = C(T \times X, F) $。

6.4 定理 对于 $ \varphi \in C^{0,p}(T \times X, F) $，$ \varphi^{\sharp} $ 属于 $ C^{p}(C(T, X), C(T, F)) $，并且\footnote{这里以及在类似情形中，所有关于导数的陈述都适用于自然的情形 $ p \ge 1 $。}

\[ [\partial\varphi^{\sharp}(u)h](t) = \partial_{2}\varphi(t, u(t))h(t) \quad \text{对 } t \in T , \]

$ u \in C(T, X) $，$ h \in C(T, E) $。

证明 根据定理 6.2，我们可以假设 $ p \ge 1 $。首先我们令

\[ G : C(T, X) \times C(T, E) \to F^{T} , \quad (u, h) \mapsto \partial_{2}\varphi(\cdot, u(\cdot))h(\cdot) \]

为映射\footnote{$ C(T, X) \times C(T, E) $ 与 $ C(T, X \times E) $ 按显然的方式等同。}

\[ [(t, (x, \xi)) \mapsto \partial_{2}\varphi(t, x)\xi] \in C(T \times (X \times E), F) . \]

所诱导的涅梅茨基算子。那么定理 6.2 蕴含 $ G(u, h) $ 属于 $ C(T, F) $。显然

\[ \|G(u, h)\|_{C(T,F)} \le \max_{t \in T}\|\partial_{2}\varphi(t, u(t))\|_{\mathcal{L}(E,F)}\|h\|_{C(T,E)} , \tag{6.1} \]

且 $ G(u, \cdot) $ 是线性的。于是我们看到

\[ A(u) := G(u, \cdot) \in \mathcal{L}(C(T, E), C(T, F)) \quad \text{对 } u \in C(T, X) . \]

函数 $ \partial_{2}\varphi \in C(T \times X, \mathcal{L}(E, F)) $ 诱导出一个涅梅茨基算子 $ \widetilde{A} $。那么，由定理 6.2 和 1.1，

\[ \widetilde{A} \in C(C(T, X), C(T, \mathcal{L}(E, F))) . \tag{6.2} \]

现在设 $ u \in C(T, X) $。我们取 $ \varepsilon > 0 $ 使得 $ u(T) + \varepsilon\mathbb{B}_{E} \subset X $。那么对于每个满足 $ \|h\|_{\infty} < \varepsilon $ 的 $ h \in C(T, E) $，$ u + h $ 属于 $ C(T, X) $，并且积分形式的中值定理（定理 3.10）蕴含

\[ \begin{aligned} &\left|\varphi^{\sharp}(u + h)(t) - \varphi^{\sharp}(u)(t) - (A(u)h)(t)\right| \\ &\quad = \left|\varphi(t, u(t) + h(t)) - \varphi(t, u(t)) - \partial_{2}\varphi(t, u(t))h(t)\right| \\ &\quad = \left|\int_{0}^{1}[\partial_{2}\varphi(t, u(t) + \tau h(t)) - \partial_{2}\varphi(t, u(t))]h(t) d\tau\right| \\ &\quad \le \|h\|_{C(T,E)}\int_{0}^{1}\|\widetilde{A}(u + \tau h) - \widetilde{A}(u)\|_{C(T,\mathcal{L}(E,F))} d\tau . \end{aligned} \]

于是，由 (6.2) 可得

\[ \varphi^{\sharp}(u + h) - \varphi^{\sharp}(u) - A(u)h = o(\|h\|_{C(T,E)}) \quad (h \to 0) . \]

于是，$ \partial\varphi^{\sharp}(u) $ 存在且等于 $ A(u) $。与 (6.1) 类似，我们考虑

\[ \|\partial\varphi^{\sharp}(u) - \partial\varphi^{\sharp}(v)\|_{\mathcal{L}(C(T,E),C(T,F))} \le \|\widetilde{A}(u) - \widetilde{A}(v)\|_{C(T,\mathcal{L}(E,F))} , \]

由 (6.2)，这蕴含

\[ \partial\varphi^{\sharp} \in C(C(T, X), \mathcal{L}(C(T, E), C(T, F))) . \]

这证明了 $ p = 1 $ 时的定理。

一般情形现在简单地由归纳法得到，我们把它留给你。 ■

6.5 推论 如果 $ \partial_{2}\varphi $ 在有界集上有界，那么 $ \partial\varphi^{\sharp} $ 也是如此。

证明 这由 (6.1) 和定理 6.2(ii) 得到。 ■

6.6 例 (a) 设 $ \varphi(\xi) := \sin\xi $ 对 $ \xi \in \mathbb{R} $，且 $ T := [0, 1] $。那么涅梅茨基算子

\[ \varphi^{\sharp} : C(T) \to C(T) , \quad u \mapsto \sin u(\cdot) \]

由 $ \varphi $ 诱导的是 $ C^{\infty} $ 映射，

\[ (\partial\varphi^{\sharp}(u)h)(t) = [\cos u(t)]h(t) \quad \text{对 } t \in T \]

且 $ u, h \in C(T) $。这意味着在这种情况下，线性映射 $ \partial\varphi^{\sharp}(u) \in \mathcal{L}(C(T)) $ 就是被理解为**乘法算子**的函数 $ \cos u(\cdot) $，即

\[ C(T) \to C(T) , \quad h \mapsto [\cos u(\cdot)]h . \]

(b) 设 $ -\infty < \alpha < \beta < \infty $ 且 $ \varphi \in C^{0,p}([\alpha, \beta] \times X, F) $。再令

\[ f(u) := \int_{\alpha}^{\beta}\varphi(t, u(t)) dt \quad \text{对 } u \in C([\alpha, \beta], X) . \tag{6.3} \]

那么 $ f \in C^{p}(C([\alpha, \beta], X), F) $ 且

\[ \partial f(u)h = \int_{\alpha}^{\beta}\partial_{2}\varphi(t, u(t))h(t) dt \quad \text{对 } u \in C([\alpha, \beta], X) , \quad h \in C([\alpha, \beta], E) . \]

证明 令 $ T := [\alpha, \beta] $，定理 6.4 蕴含 $ \varphi^{\sharp} $ 属于 $ C^{p}(C(T, X), C(T, F)) $，且 $ \partial\varphi^{\sharp}(u) $ 是乘法算子

\[ C(T, E) \to C(T, F) , \quad h \mapsto \partial_{2}\varphi(\cdot, u(\cdot))h . \]

由第 VI.3 节，我们知道 $ \int_{\alpha}^{\beta} $ 属于 $ \mathcal{L}(C(T, F), F) $。因此，由链式法则（定理 3.3）和例 2.3(a) 可得

\[ f = \int_{\alpha}^{\beta} \circ\, \varphi^{\sharp} \in C^{p}(C(T, X), F) \]

且

\[ \partial f(u) = \int_{\alpha}^{\beta} \circ\, \partial\varphi^{\sharp}(u) \quad \text{对 } u \in C(T, X) . ■ \]

(c) 设 $ -\infty < \alpha < \beta < \infty $ 且 $ \varphi \in C^{0,p}([\alpha, \beta] \times (X \times E), F) $。那么 $ C^{1}([\alpha, \beta], X) $ 在 $ C^{1}([\alpha, \beta], E) $ 中开，并且对于由下式定义的映射

\[ \Phi(u)(t) := \varphi(t, u(t), \dot{u}(t)) \quad \text{对 } u \in C^{1}([\alpha, \beta], X) \text{ 且 } \alpha \le t \le \beta , \]

我们有

\[ \Phi \in C^{p}(C^{1}([\alpha, \beta], X), C([\alpha, \beta], F)) \]

且

\[ [\partial\Phi(u)h](t) = \partial_{2}\varphi(t, u(t), \dot{u}(t))h(t) + \partial_{3}\varphi(t, u(t), \dot{u}(t))\dot{h}(t) \]

对 $ t \in [\alpha, \beta] $，$ u \in C^{1}([\alpha, \beta], X) $，$ h \in C^{1}([\alpha, \beta], E) $。

证明 典范包含

\[ i : C^{1}([\alpha, \beta], E) \to C([\alpha, \beta], E) , \quad u \mapsto u \tag{6.4} \]

是线性且连续的。这是因为 $ C([\alpha, \beta], E) $ 在 $ C^{1}([\alpha, \beta], E) $ 上诱导的最大范数比 $ C^{1} $ 范数弱。因此，根据引理 6.1 和定理 III.2.20，

\[ C^{1}([\alpha, \beta], X) = i^{-1}(C([\alpha, \beta], X)) \]

在 $ C^{1}([\alpha, \beta], E) $ 中是开的。

由 (6.4) 可得

\[ \Psi := [u \mapsto (u, \dot{u})] \in \mathcal{L}(C^{1}(T, X), C(T, X) \times C(T, E)) \]

对 $ T := [\alpha, \beta] $。由于 $ \Phi = \varphi^{\sharp} \circ \Psi $，我们用定理 6.4 和链式法则得出结论。 ■

(d) 设 (c) 的假设满足，且

\[ f(u) := \int_{\alpha}^{\beta}\varphi(t, u(t), \dot{u}(t)) dt \quad \text{对 } u \in C^{1}([\alpha, \beta], X) . \]

那么

\[ f \in C^{p}(C^{1}([\alpha, \beta], X), F) \]

且

\[ \partial f(u)h = \int_{\alpha}^{\beta}\{\partial_{2}\varphi(t, u(t), \dot{u}(t))h(t) + \partial_{3}\varphi(t, u(t), \dot{u}(t))\dot{h}(t)\} dt \]

对 $ u \in C^{1}([\alpha, \beta], X) $ 和 $ h \in C^{1}([\alpha, \beta], E) $。

证明 由于 $ f = \int_{\alpha}^{\beta} \circ\, \Phi $，这由 (c) 和链式法则得到。 ■

##### 含参积分的可微性

作为上述例子的简单推论，我们将研究**含参积分**

\[ \int_{\alpha}^{\beta}\varphi(t, x) dt . \]

在第 III 卷中，我们将在勒贝格积分理论的框架下证明下面关于含参积分的连续性与可微性的定理的一般版本。

6.7 命题 设 $ -\infty < \alpha < \beta < \infty $ 且 $ p \in \mathbb{N} \cup \{\infty\} $。再假设 $ \varphi $ 属于 $ C^{0,p}([\alpha, \beta] \times X, F) $，并令

\[ \Phi(x) := \int_{\alpha}^{\beta}\varphi(t, x) dt \quad \text{对 } x \in X . \]

那么我们有 $ \Phi \in C^{p}(X, F) $ 且

\[ \partial\Phi = \int_{\alpha}^{\beta}\partial_{2}\varphi(t, \cdot) dt . \tag{6.5} \]

证明\footnote{我们也建议你构造一个不利用例 6.6 的直接证明。} 对于 $ x \in X $，设 $ u_{x} $ 是常值映射 $ [\alpha, \beta] \to E $，$ t \mapsto x $。那么对于由 $ x \mapsto u_{x} $ 定义的函数 $ \psi $，我们显然有

\[ \psi \in C^{\infty}(X, C([\alpha, \beta], X)) , \]

其中 $ \partial\psi(x)\xi = u_{\xi} $ 对 $ \xi \in E $。利用 (6.3)，我们得到 $ \Phi(x) = f(u_{x}) = f \circ \psi(x) $。因此，由例 6.6(b) 和链式法则，可得 $ \Phi \in C^{p}(X, F) $ 且\footnote{这里以及在下面的陈述中，我们理解关于导数的陈述适用于 $ p \ge 1 $ 的情形。}

\[ \partial\Phi(x)\xi = \partial f(\psi(x))\partial\psi(x)\xi = \partial f(u_{x})u_{\xi} = \int_{\alpha}^{\beta}\partial_{2}\varphi(t, x)\xi dt \]

对 $ x \in X $ 和 $ \xi \in E $。由于 $ \partial_{2}\varphi(\cdot, x) \in C([\alpha, \beta], \mathcal{L}(E, F)) $ 对 $ x \in X $，我们有

\[ \int_{\alpha}^{\beta}\partial_{2}\varphi(t, x) dt \in \mathcal{L}(E, F) , \]

从而

\[ \int_{\alpha}^{\beta}\partial_{2}\varphi(t, x) dt\,\xi = \int_{\alpha}^{\beta}\partial_{2}\varphi(t, x)\xi dt \quad \text{对 } \xi \in E \]

（见习题 VI.3.3）。由此我们得到

\[ \partial\Phi(x)\xi = \int_{\alpha}^{\beta}\partial\varphi(t, x) dt\,\xi \quad \text{对 } x \in X \text{ 且 } \xi \in E \]

从而得到 (6.5)。 ■

6.8 推论 设命题 6.7 的假设在 $ p \le 1 $ 和 $ E := \mathbb{R}^{m} $ 下满足，并且

\[ \Psi(x) := \int_{a(x)}^{b(x)}\varphi(t, x) dt \quad \text{对 } x \in X \]

且 $ a, b \in C(X, (\alpha, \beta)) $。那么 $ \Psi $ 属于 $ C^{p}(X, F) $，并且对 $ x \in X $ 我们有

\[ \partial\Psi(x) = \int_{a(x)}^{b(x)}\partial_{2}\varphi(t, x) dt + \varphi(b(x), x)\partial b(x) - \varphi(a(x), x)\partial a(x) . \]

证明 我们令

\[ \Phi(x, y, z) := \int_{y}^{z}\varphi(t, x) dt \quad \text{对 } (x, y, z) \in X \times (\alpha, \beta) \times (\alpha, \beta) . \]

命题 6.7 保证 $ \Phi(\cdot, y, z) \in C^{p}(X, F) $ 使得

\[ \partial_{1}\Phi(x, y, z) := \int_{y}^{z}\partial_{2}\varphi(t, x) dt \]

对每个 $ (x, y, z) \in X \times (\alpha, \beta) \times (\alpha, \beta) $ 成立，若 $ p = 1 $。

设 $ (x, y) \in X \times (\alpha, \beta) $。那么由定理 VI.4.12 可得 $ \Phi(x, y, \cdot) $ 属于 $ C^{p}((\alpha, \beta), F) $ 且

\[ \partial_{3}\Phi(x, y, z) = \varphi(z, x) \quad \text{对 } z \in (\alpha, \beta) . \]

类似地，注意到由 (VI.4.3) 有 $ (x, z) \in X \times (\alpha, \beta) $，我们发现 $ \Phi(x, \cdot, z) $ 属于 $ C^{p}((\alpha, \beta), F) $ 且

\[ \partial_{2}\Phi(x, y, z) = -\varphi(y, x) \quad \text{对 } y \in (\alpha, \beta) . \]

由此我们容易导出

\[ \partial_{k}\Phi \in C(X \times (\alpha, \beta) \times (\alpha, \beta), F) \quad \text{对 } 1 \le k \le 3 \]

并由定理 2.10 得到 $ \Phi \in C^{p}(X \times (\alpha, \beta) \times (\alpha, \beta), F) $。现在链式法则蕴含

\[ \Psi = \Phi(\cdot, a(\cdot), b(\cdot)) \in C^{p}(X, F) \]

且

\[ \begin{aligned} \partial\Psi(x) &= \partial_{1}\Phi(x, a(x), b(x)) + \partial_{2}\Phi(x, a(x), b(x))\partial a(x) \\ &\quad + \partial_{3}\Phi(x, a(x), b(x))\partial b(x) \\ &= \int_{a(x)}^{b(x)}\partial_{2}\varphi(t, x) dt + \varphi(b(x), x)\partial b(x) - \varphi(a(x), x)\partial a(x) \end{aligned} \]

对 $ x \in X $。 ■

由 $ \partial\Psi $ 的公式，简单的归纳法表明，若 $ \varphi $ 属于 $ C^{p-1,p}([0, 1] \times X, F) $，则 $ \Psi \in C^{p}(X, F) $ 对 $ p \ge 2 $ 成立，其中 $ C^{p-1,p} $ 按显然的方式定义。

##### 变分问题

在本节剩余部分，我们假设\footnote{在大多数应用中，$ L $ 只定义在形如 $ [\alpha, \beta] \times X \times Y $ 的集合上，其中 $ Y $ 在 $ \mathbb{R}^{m} $ 中开（见习题 10）。我们把纳入这种情形所需的简单修改留给你。}

• $ -\infty < \alpha < \beta < \infty $；
  $ X $ 在 $ \mathbb{R}^{m} $ 中开；
  $ a, b \in X $；
  $ L \in C^{0,1}([\alpha, \beta] \times (X \times \mathbb{R}^{m}), \mathbb{R}) $。

那么积分

\[ f(u) := \int_{\alpha}^{\beta}L(t, u(t), \dot{u}(t)) dt \tag{6.6} \]

对每个 $ u \in C^{1}([\alpha, \beta], X) $ 存在。当我们试图在 $ X $ 中所有的 $ C^{1} $ 函数 $ u $ 上最小化该积分时，定义 (6.6) 产生一个**自由边界条件的变分问题**。我们把该问题写为

\[ \int_{\alpha}^{\beta}L(t, u, \dot{u}) dt \Rightarrow \mathrm{Min} \quad \text{对 } u \in C^{1}([\alpha, \beta], X) . \tag{6.7} \]

于是，问题 (6.7) 变成在集合 $ U := C^{1}([\alpha, \beta], X) $ 上最小化 $ f $ 的问题。

当我们在一个约束集上最小化函数 $ f $ 时，定义 (6.6) 也可以是一个**固定边界条件的变分问题**的一部分

\[ U_{a,b} := \{ u \in C^{1}([\alpha, \beta], X) ;\ u(\alpha) = a ,\ u(\beta) = b \} . \]

我们把该问题写为

\[ \int_{\alpha}^{\beta}L(t, u, \dot{u}) dt \Rightarrow \mathrm{Min} \quad \text{对 } u \in C^{1}([\alpha, \beta], X) , \quad u(\alpha) = a , \quad u(\beta) = b . \tag{6.8} \]

（6.7）和（6.8）的每个解分别称为变分问题（6.7）和（6.8）的**极值曲线**\footnote{在变分法中，我们也用极值曲线这一术语来描述欧拉–拉格朗日方程的解。}。

为了有效地处理这个问题，我们需要如下内容：

6.9 引理 令 $ E := C^{1}([\alpha, \beta], \mathbb{R}^{m}) $ 且

\[ E_{0} := \{ u \in E ;\ u(\alpha) = u(\beta) = 0 \} =: C_{0}^{1}([\alpha, \beta], \mathbb{R}^{m}) . \]

那么 $ E_{0} $ 是 $ E $ 的闭向量子空间，因此它本身是巴拿赫空间。对于 $ \overline{u} \in U_{a,b} $，$ U_{a,b} - \overline{u} $ 在 $ E_{0} $ 中开。

证明 显然 $ E_{0} $ 是 $ E $ 的闭向量子空间。由于根据例 6.6(c)，$ U $ 在 $ E $ 中开，并且由于 $ U_{a,b} = U \cap (\overline{u} + E_{0}) $，我们知道 $ U_{a,b} $ 在仿射空间 $ \overline{u} + E_{0} $ 中开。现在显然 $ U_{a,b} - \overline{u} $ 在 $ E_{0} $ 中开。 ■

6.10 引理
(i) $ f \in C^{1}(U, \mathbb{R}) $ 且

\[ \partial f(u)h = \int_{\alpha}^{\beta}\{\partial_{2}L(t, u(t), \dot{u}(t))h(t) + \partial_{3}L(t, u(t), \dot{u}(t))\dot{h}(t)\} dt \]

对 $ u \in U $ 和 $ h \in E $。
(ii) 设 $ \overline{u} \in U_{a,b} $，并令 $ g(v) := f(\overline{u} + v) $ 对 $ v \in V := U_{a,b} - \overline{u} $。那么 $ g $ 属于 $ C^{1}(V, \mathbb{R}) $ 且

\[ \partial g(v)h = \partial f(\overline{u} + v)h \quad \text{对 } v \in V \text{ 且 } h \in E_{0} . \tag{6.9} \]

证明 (i) 是例 6.6(d) 的推论，(ii) 由 (i) 得到。 ■

6.11 引理 对于 $ u \in C([\alpha, \beta], \mathbb{R}^{m}) $，设

\[ \int_{\alpha}^{\beta}(u(t)|v(t)) dt = 0 \quad \text{对 } v \in C_{0}^{1}([\alpha, \beta], \mathbb{R}^{m}) . \tag{6.10} \]

那么 $ u = 0 $。

证明 设 $ u \ne 0 $。那么存在 $ k \in \{1, \ldots, m\} $ 和 $ t_{0} \in (\alpha, \beta) $ 使得 $ u_{k}(t_{0}) \ne 0 $。只需考虑 $ u_{k}(t_{0}) > 0 $ 的情形。由 $ u_{k} $ 的连续性，存在 $ \alpha < \alpha' < \beta' < \beta $ 使得对 $ t \in (\alpha', \beta') $ 有 $ u_{k}(t) > 0 $（见例 III.1.3(d)）。

取 $ v \in C_{0}^{1}([\alpha, \beta], \mathbb{R}^{m}) $ 使得对 $ j \ne k $ 有 $ v_{j} = 0 $，由 (6.10) 可得

\[ \int_{\alpha}^{\beta}u_{k}(t)w(t) dt = 0 \quad \text{对 } w \in C_{0}^{1}([\alpha, \beta], \mathbb{R}) . \tag{6.11} \]

现在设 $ w \in C_{0}^{1}([\alpha, \beta], \mathbb{R}) $ 使得对 $ t \in (\alpha', \beta') $ 有 $ w(t) > 0 $，并且对区间 $ (\alpha', \beta') $ 之外的 $ t $ 有 $ w(t) = 0 $（见习题 7）。那么我们有

\[ \int_{\alpha}^{\beta}u_{k}(t)w(t) dt = \int_{\alpha'}^{\beta'}u_{k}(t)w(t) dt > 0 , \]

这与 (6.11) 矛盾。 ■

##### 欧拉–拉格朗日方程

现在我们可以证明变分法的基本结果：

6.12 定理 设 $ u $ 是自由边界条件的变分问题 (6.7) 或（备选地）固定边界条件的变分问题 (6.8) 的极值曲线。再设

\[ [t \mapsto \partial_{3}L(t, u(t), \dot{u}(t))] \in C^{1}([\alpha, \beta], \mathbb{R}) . \tag{6.12} \]

那么 $ u $ 满足**欧拉–拉格朗日方程**

\[ \left[\partial_{3}L(\cdot, u, \dot{u})\right]^{\cdot} = \partial_{2}L(\cdot, u, \dot{u}) . \tag{6.13} \]

在自由边界条件的问题中，$ u $ 还满足**自然边界条件**

\[ \partial_{3}L(\alpha, u(\alpha), \dot{u}(\alpha)) = \partial_{3}L(\beta, u(\beta), \dot{u}(\beta)) = 0 . \tag{6.14} \]

对于固定边界条件，$ u $ 满足

\[ u(\alpha) = a \text{ 且 } u(\beta) = b . \tag{6.15} \]

证明 (i) 我们首先考虑问题 (6.7)。由假设，定义在 (6.6) 中的函数 $ f $ 在 $ u \in U $ 处取最小值。于是由引理 6.10(i)、定理 3.13 和命题 2.5 可得

\[ \int_{\alpha}^{\beta}\{\partial_{2}L(t, u(t), \dot{u}(t))h(t) + \partial_{3}L(t, u(t), \dot{u}(t))\dot{h}(t)\} dt = 0 \tag{6.16} \]

对 $ h \in E = C^{1}([\alpha, \beta], \mathbb{R}^{m}) $。利用假设 (6.12)，我们可以分部积分得到

\[ \int_{\alpha}^{\beta}\partial_{3}L(\cdot, u, \dot{u})\dot{h} dt = \partial_{3}L(\cdot, u, \dot{u})h\big|_{\alpha}^{\beta} - \int_{\alpha}^{\beta}\left[\partial_{3}L(\cdot, u, \dot{u})\right]^{\cdot}h dt . \]

然后由 (6.16) 我们得到

\[ \int_{\alpha}^{\beta}\left\{\partial_{2}L(\cdot, u, \dot{u}) - \left[\partial_{3}L(\cdot, u, \dot{u})\right]^{\cdot}\right\}h dt + \partial_{3}L(\cdot, u, \dot{u})h\big|_{\alpha}^{\beta} = 0 \tag{6.17} \]

对 $ h \in E $。特别地，我们有

\[ \int_{\alpha}^{\beta}\left\{\partial_{2}L(\cdot, u, \dot{u}) - \left[\partial_{3}L(\cdot, u, \dot{u})\right]^{\cdot}\right\}h dt = 0 \quad \text{对 } h \in E_{0} , \tag{6.18} \]

因为

\[ \partial_{3}L(\cdot, u, \dot{u})h\big|_{\alpha}^{\beta} = 0 \quad \text{对 } h \in E_{0} . \tag{6.19} \]

现在欧拉–拉格朗日方程 (6.13) 由 (6.18) 和引理 6.11 蕴含。于是，由 (6.17) 可得

\[ \partial_{3}L(\cdot, u, \dot{u})h\big|_{\alpha}^{\beta} = 0 \quad \text{对 } h \in E_{0} . \tag{6.20} \]

对于 $ \xi, \eta \in \mathbb{R}^{m} $，我们令

\[ h_{\xi,\eta}(t) := \frac{\beta - t}{\beta - \alpha}\xi + \frac{t - \alpha}{\beta - \alpha}\eta \quad \text{对 } \alpha \le t \le \beta . \]

那么 $ h_{\xi,\eta} $ 属于 $ E $，并且由 (6.20) 对 $ h = h_{\xi,\eta} $ 我们得到

\[ \partial_{3}L(\beta, u(\beta), \dot{u}(\beta))\eta - \partial_{3}L(\alpha, u(\alpha), \dot{u}(\alpha))\xi = 0 . \tag{6.21} \]

因为 (6.21) 对每个 $ \xi, \eta \in \mathbb{R}^{m} $ 都成立，所以自然边界条件 (6.14) 满足。

(ii) 现在我们考虑问题 (6.8)。我们固定一个 $ \overline{u} \in U_{a,b} $ 并令 $ v := u - \overline{u} $。那么由引理 6.10(ii) 可得，$ g $ 在巴拿赫空间 $ E_{0} $ 的开集 $ V := U_{a,b} - \overline{u} $ 的点 $ v $ 处取最小值。因此由引理 6.10(ii)、定理 3.13 和命题 2.5 可得 (6.16) 在这种情况下也成立，尽管只对 $ h \in E_{0} $ 成立。另一方面，由于 (6.19)，我们由 (6.17) 得到 (6.18) 的有效性，从而得到欧拉–拉格朗日方程。陈述 (6.15) 是平凡的。 ■

6.13 注 (a) 在定理 6.12 中，假设变分问题有解，即存在极值曲线 $ u $。在 (6.12) 中我们作了一个额外的假设，对极值曲线 $ u $ 施加一个隐含的正则性条件。只有在这个额外假设下，欧拉–拉格朗日方程才是存在极值曲线 $ u $ 的必要条件。

**变分法的间接方法**赋予欧拉–拉格朗日方程核心地位。在其中，我们试图验证存在函数 $ u $ 满足方程 (6.13) 和边界条件 (6.14) 或 (6.15)。由于欧拉–拉格朗日方程是（一般为非线性的）微分方程，这引向微分方程的**边值问题**这一主题。如果能够用边值问题的方法证明存在解，那么我们就在第二步从中选出那些实际上是极值曲线的解。

与之相对的是**变分法的直接方法**，在其中人们试图直接证明函数 $ f $ 在点 $ u \in U $（或函数 $ g $ 在点 $ v \in V $）处取最小值。那么定理 3.13 和命题 2.5 表明 $ \partial f(u) = 0 $（或 $ \partial g(v) = 0 $），从而关系式 (6.16) 对所有 $ h \in E_{1} $（或所有 $ h \in E_{0} $）成立。如果辅助的“正则性问题”能够解决——即能够证明极值曲线 $ u $ 满足条件 (6.12)——那么它也满足欧拉–拉格朗日微分方程。

因此定理 6.12 有两种可能的应用。在第一种情形中，我们可以用微分方程边值问题的理论来解欧拉–拉格朗日方程，即最小化积分。这是变分法的经典方法。

然而，一般说来，证明边值问题的存在性结果是非常困难的。因此第二种情形采取另一个观点：我们给定一个边值问题，然后试图找出产生它的变分问题，使得该微分方程可以解释为欧拉–拉格朗日方程。如果这样的变分问题存在，那么我们就试图证明它有一个满足正则性条件 (6.12) 的极值解。这样的证明就蕴含原来的边值问题也有解。这被证明是研究边值问题的一种有力方法。

遗憾的是，细节超出了本书的范围。欲知更多，你应查阅文献或修读变分方法、微分方程和（非线性）泛函分析的课程。

(b) 显然，如果 $ u $ 只是 $ f $（或 $ g $）的临界点，即如果 $ \partial f(u) = 0 $（或 $ \partial g(v) = 0 $，其中 $ v := u - \overline{u} $），定理 6.12 也成立。在这种情况下，人们称 $ u $ 是积分 (6.6) 的**驻值**。

(c) 设 $ E $ 是巴拿赫空间，$ Z $ 在 $ E $ 中开，$ F : Z \to \mathbb{R} $。如果 $ F $ 的方向导数对某个 $ h \in E \setminus \{0\} $ 在 $ z_{0} \in Z $ 存在，那么（在变分法中）我们称 $ D_{h}F(z_{0}) $ 为 $ F $ 沿方向 $ h $ 的第一变分，并把它写为 $ \delta F(z_{0}; h) $。如果 $ F $ 的第一变分在每个方向都存在，我们称

\[ \delta F(z_{0}) := \delta F(z_{0}; \cdot) : E \to \mathbb{R} \]

为 $ F $ 在 $ z_{0} $ 处的**第一变分**。

如果 $ F $ 在 $ z_{0} \in Z $ 处有局部极值且第一变分在该点存在，那么 $ \delta F(z_{0}) = 0 $。换句话说：第一变分的消失是存在局部极值的必要条件。

证明 这是定理 3.13 的重新表述。 ■

(d) 在我们的假设下，$ f $（或 $ g $）是连续可微的。因此第一变分存在，并与 $ \partial f $（或 $ \partial g $）一致。然而，在许多情况下，欧拉–拉格朗日方程已经可以从只保证第一变分存在的较弱假设推出。

(e) 在变分法中，通常分别把 $ \partial_{2}L $ 写成 $ L_{u} $，把 $ \partial_{3}L $ 写成 $ L_{\dot{u}} $。那么欧拉–拉格朗日方程取缩写形式

\[ \frac{d}{dt}(L_{\dot{u}}) = L_{u} , \tag{6.22} \]

即它失去了自变量。如果再假设 $ L $ 和极值曲线 $ u $ 是二次可微的，我们可以把 (6.22) 写为 $ L_{t,\dot{u}} + L_{u,\dot{u}}\dot{u} + L_{\dot{u},\dot{u}}\ddot{u} = L_{u} $，其中 $ L_{t,\dot{u}} = \partial_{1}\partial_{3}L $ 等等。 ■

##### 经典力学

变分法在物理学中很重要。为了说明这一点，我们考虑一个具有 $ m $ 个自由度的有质量质点系统，它由**（广义）坐标** $ q = (q^{1}, \ldots, q^{m}) $ 确定。经典力学的基本问题是，已知系统在时刻 $ t_{0} $ 的初始位置 $ q_{0} $，确定系统在给定时刻 $ t $ 的状态 $ q(t) $。

我们用 $ \dot{q} := dq/dt $ 表示（广义）**速度坐标**，用 $ T(t, q, \dot{q}) $ 表示**动能**，用 $ U(t, q) $ 表示**势能**。然后我们作出**哈密顿最小作用量原理**的基本假设。它说，在每一对时刻 $ t_{0} $ 和 $ t_{1} $ 之间，系统以最小化

\[ \int_{t_{0}}^{t_{1}}[T(t, q, \dot{q}) - U(t, q)] dt , \]

的方式从 $ q_{0} $ 到 $ q_{1} $；也就是说，系统实际选择的路径是在所有从 $ t_{0} $ 时刻的 $ q_{0} $ 出发、在 $ t_{1} $ 时刻到达 $ q_{1} $ 的（虚拟）路径中使这个积分最小化的那条。在此背景下，$ L := T - U $ 称为系统的**拉格朗日量**。

哈密顿原理意味着系统所走的路径 $ \{ q(t) ;\ t_{0} \le t \le t_{1} \} $ 是固定边界条件变分问题的极值

\[ \int_{t_{0}}^{t_{1}}L(t, q, \dot{q}) dt \Rightarrow \mathrm{Min} \quad \text{对 } q \in C^{1}([t_{0}, t_{1}], \mathbb{R}^{m}) , \quad q(t_{0}) = q_{0} , \quad q(t_{1}) = q_{1} . \]

然后由定理 6.12 可得 $ q $ 满足欧拉–拉格朗日方程

\[ \frac{d}{dt}(L_{\dot{q}}) = L_{q} \]

如果适当的正则性条件也满足。

在物理学、工程学以及使用变分方法的其他领域（例如经济学）中，通常预设正则性条件满足，并假设欧拉–拉格朗日方程成立（并且把极值路径的存在性视为物理上显然的）。然后利用欧拉–拉格朗日方程来提取极值路径的形式，进而理解系统的行为。

6.14 例 (a) 我们考虑一个质量为（正的）$ m $ 的无约束质点在与时间无关的势场 $ U(t, q) = U(q) $ 作用下的三维运动。我们假设动能只依赖于 $ \dot{q} $，且由下式给出

\[ T(\dot{q}) = m\left|\dot{q}\right|^{2}/2 . \]

欧拉–拉格朗日微分方程取形式

\[ m\ddot{q} = -\nabla U(q) . \tag{6.23} \]

由于 $ \ddot{q} $ 是系统的**加速度**，所以 (6.23) 与受**保守**\footnote{如果一个力场有势，则称其为保守的（见注 VIII.4.10(c)）。}力 $ -\nabla U $ 作用的质点的运动所满足的**牛顿运动方程**相同。

证明 我们用里斯表示定理把 $ (\mathbb{R}^{3})' = \mathcal{L}(\mathbb{R}^{3}, \mathbb{R}) $ 与 $ \mathbb{R}^{3} $ 等同。然后由 $ L(t, q, \dot{q}) = T(\dot{q}) - U(q) $ 我们得到关系式

\[ \partial_{2}L(t, q, \dot{q}) = -\nabla U(q) \text{ 且 } \partial_{3}L(t, q, \dot{q}) = \nabla T(\dot{q}) = m\dot{q} , \]

它们证明了结论。 ■

(b) 作为 (a) 的推广，我们考虑势场中 $ N $ 个无约束的有质量质点的运动。我们用 $ x = (x_{1}, \ldots, x_{N}) $ 表示坐标，其中 $ x_{j} \in \mathbb{R}^{3} $ 确定第 $ j $ 个质点的位置。再设 $ X $ 在 $ \mathbb{R}^{3N} $ 中开且 $ U \in C^{1}(X, \mathbb{R}) $。令 $ m_{j} $ 为第 $ j $ 个质点的质量，系统的动能为

\[ T(\dot{x}) := \sum_{j=1}^{N}\frac{m_{j}}{2}\left|\dot{x}_{j}\right|^{2} . \]

那么我们得到一个由 $ N $ 个欧拉–拉格朗日方程构成的方程组：

\[ -m_{j}\ddot{x}_{j} = \nabla_{x_{j}}U(x) \quad \text{对 } 1 \le j \le N . \]

这里，$ \nabla_{x_{j}} $ 表示 $ U $ 关于变量 $ x_{j} \in \mathbb{R}^{3} $ 的梯度。 ■
