设 $ \varphi: M \to \mathbb{R}^{2} $，$ \varphi = (u, v) $ 为属于 $ h $ 的坐标卡，即 $ h = i_{M} \circ \varphi^{-1} $。采用经典记号

\[ \mathrm{E} := |\partial_{1}h|^{2} , \quad \mathrm{F} := (\partial_{1}h \mid \partial_{2}h) , \quad \mathrm{G} := |\partial_{2}h|^{2} , \]

则

\[ \omega_{M} = \sqrt{\mathrm{EG} - \mathrm{F}^{2}} du \wedge dv . \]

证明 这由 $ \varphi_{*}\mathrm{G} = \mathrm{EG} - \mathrm{F}^{2} $ 推出。■

(g)（边界）设 $ M $ 是带边的定向流形，$ \nu(p) $ 是 $ \partial M $ 在 $ p \in \partial M $ 处的向外（单位）法向量。若 $ (\nu(p), v_{1}, \ldots, v_{m-1}) $ 是 $ T_{p}M $ 的正基，则称 $ T_{p}\partial M $ 的基 $ (v_{1}, \ldots, v_{m-1}) $ 为正的。这又确定了 $ \partial M $ 上的一个定向，即由外法向量诱导的定向。$ \partial M $ 的体积元 $ \omega_{\partial M} $ 满足

\[ \omega_{\partial M} = (\nu \lrcorner \omega_{M}) \mid \partial M = i^{*}_{\partial M}(\nu \lrcorner \omega_{M}) , \]

其中 $ i_{\partial M}: \partial M \hookrightarrow M $ 是自然嵌入。

显然 (c) 是这种情形的特殊情形。还要注意，若 $ \partial M $ 能像 (b) 中那样表示为正则映射的纤维，则由外法向量诱导的定向不必与由 $ \nabla f $ 诱导的定向一致。

证明 由定理 1.15 与注 1.16(a) 知，$ \nu $ 可以局部写成 $ \nu(p) = \nabla f(p)/|\nabla f(p)| $ 的形式，其中 $ f $ 是满足 $ \nabla f(p) \ne 0 $ 的光滑函数。这表明单位法向量场是光滑的。由此容易推出 $ (\nu \lrcorner \omega_{M}) \mid \partial M $ 属于 $ \Omega^{m-1}(\partial M) $。若 $ (v_{1}, \ldots, v_{m-1}) $ 是 $ T_{p}\partial M $ 的标准正交基，则 $ (\nu(p), v_{1}, \ldots, v_{m-1}) $ 是 $ T_{p}M $ 的标准正交基。当 $ (\nu(p), v_{1}, \ldots, v_{m-1}) $ 是 $ T_{p}M $ 的正标准正交基时，

\[ 1 = \omega_{M}(\nu(p), v_{1}, \ldots, v_{m-1}) = (\nu \lrcorner \omega_{M})(p)(v_{1}, \ldots, v_{m-1}) . \quad \blacksquare \]

(h) 设 $ m \ge 2 $。则 $ \partial\mathbb{H}^{m} = \mathbb{R}^{m-1} $ 由外法向量 $ \nu = -e_{m} $ 诱导的定向与 $ \mathbb{R}^{m-1} $ 的自然定向一致，当且仅当 $ m $ 为偶数。

证明 这可以从下式读出：

\[ \det[\nu, e_{1}, \ldots, e_{m-1}] = (-1)^{m-1}\det[e_{1}, \ldots, e_{m-1}, -e_{m}] = (-1)^{m} . \quad \blacksquare \]

##### 黎曼流形

命题 5.1 的证明依赖于如下事实：每个切空间 $ T_{p}M $ 都自然地带有一个随 $ p \in M $ 可微变化的内积。这种情形出现得相当频繁，尽管 $ TM $ 上的内积常常以另一种方式生成。因此，更精确地考察这些问题是有益的。

$ M $ 上的**黎曼度量**是张量 $ g \in \mathcal{T}^{0}_{2}(M) $，使得对每个 $ p \in M $，$ g(p) $ 都是 $ T_{p}M $ 上的内积。此时 $ (M, g) $ 称为**黎曼流形**。

设 $ (M, g) $ 是黎曼流形。我们常把 $ M $ 的坐标卡 $ (\varphi, U) $（其中 $ \varphi = (x^{1}, \ldots, x^{m}) $）写作 $ ((x^{1}, \ldots, x^{m}), U) $。然后令

\[ g_{jk} := g\left(\frac{\partial}{\partial x^{j}}, \frac{\partial}{\partial x^{k}}\right) \in \mathcal{E}(U) \tag{5.3} \]

并置

\[ [g^{jk}] := [g_{jk}]^{-1} \in C^{\infty}(U, \mathbb{R}^{m \times m}_{\mathrm{sym}}) \quad \text{且} \quad G := \det[g_{jk}] \in \mathcal{E}(U) . \tag{5.4} \]

我们也把 $ g $ 称为（**第一**）基本张量。这里 $ [g_{jk}] $ 是 $ g $ 在局部坐标 $ (x^{1}, \ldots, x^{m}) $ 下的表示矩阵（或简称矩阵）；它也称为（**第一**）基本矩阵\footnote{见注 VII.10.3(b)。}。如前，$ G $ 称为**格拉姆行列式**。

5.4 注 (a) 若 $ g $ 是 $ M $ 上的黎曼度量，则映射

\[ \mathcal{V}(M) \times \mathcal{V}(M) \to \mathcal{E}(M) , \quad (v, w) \mapsto g(v, w) \tag{5.5} \]

是良定义的、双线性的、对称的，并且是**正**的，即

\[ g(v, v) \ge 0 \quad \text{且} \quad g(v, v) = 0 \iff v = 0 . \tag{5.6} \]

证明 映射 (5.5) 是良定义的，这由注 4.18(c) 立即推出。其余断言是内积性质的直接推论。■

(b) 设 $ ((x^{1}, \ldots, x^{m}), U) $ 是黎曼流形 $ (M, g) $ 的坐标卡。则

\[ g \mid U = \sum_{j,k} g_{jk} dx^{j} \otimes dx^{k} . \]

在此上下文中，我们通常把 $ dx^{j} \otimes dx^{k} $ 写作 $ dx^{j}dx^{k} $。

证明 根据 (4.8)，任意 $ v \in \mathcal{V}(U) $ 都有基表示

\[ v = \sum_{j} \langle dx^{j}, v \rangle \frac{\partial}{\partial x^{j}} . \]

该断言由此、映射 (5.5) 的双线性以及 $ dx^{j} \otimes dx^{k} $ 与 $ g_{jk} $ 的定义推出。■

(c) 设 $ ((x^{1}, \ldots, x^{m}), U) $ 是定向黎曼流形 $ (M, g) $ 的正坐标卡。则 $ M $ 的体积元 $ \omega_{M} $ 满足

\[ \omega_{M} \mid U = \sqrt{G} dx^{1} \wedge \cdots \wedge dx^{m} . \]

证明 这由命题 2.13 推出。■

(d) 设 $ g $ 是 $ M $ 上的黎曼度量，$ (x^{1}, \ldots, x^{m}) $ 与 $ (y^{1}, \ldots, y^{m}) $ 是 $ M $ 的开集 $ U $ 上的局部坐标。则

\[ g \mid U = \sum_{j,k} g_{jk} dx^{j} \otimes dx^{k} = \sum_{r,s} \overline{g}_{rs} dy^{r} \otimes dy^{s} \]

其中

\[ \overline{g}_{rs} = \sum_{j,k} \frac{\partial x^{j}}{\partial y^{r}} \frac{\partial x^{k}}{\partial y^{s}} g_{jk} \quad \text{对 } 1 \le r, s \le m . \]

证明 因为

\[ dx^{j} = \sum_{r} \frac{\partial x^{j}}{\partial y^{r}} dy^{r} \quad \text{对 } 1 \le r \le m , \]

所以这是 (b) 的推论。■

(e) 若我们只要求 $ g \in \mathcal{T}^{0}_{2}(M) $ 使得双线性形式 $ g(p) $ 在 $ T_{p}M $ 上对每个 $ p \in M $ 都对称且非退化，则称 $ g $ 为**不定黎曼度量**，$ (M, g) $ 为**伪黎曼流形**。此时我们仍使用记号 (5.3) 与 (5.4)。则除 (5.6) 外，(a)、(b) 与 (d) 仍然成立。每个黎曼流形也是伪黎曼流形。

(f) 设 $ (M, g) $ 是（伪）黎曼流形，$ W $ 是 $ M $ 中的开集。若 $ v_{1}, \ldots, v_{m} \in \mathcal{V}(W) $ 满足

\[ g(v_{j}, v_{k}) = \pm\delta_{jk} \quad \text{对 } 1 \le j, k \le m , \]

则称 $ (v_{1}, \ldots, v_{m}) $ 是 $ W $ 上的**标准正交标架**。当然，对黎曼流形有 $ g(v_{j}, v_{j}) = 1 $，$ 1 \le j \le m $。因此 $ W $ 上的标准正交标架 $ (v_{1}, \ldots, v_{m}) $ 是 $ W $ 上（光滑）向量场的 $ m $ 元组，它们在每一点 $ p \in W $ 都构成 $ T_{p}M $ 的（不定）内积 $ g(p) $ 下的标准正交基。这种标准正交标架一般并不存在，因为根据注 4.5(d)，一般找不到 $ m $ 个处处线性无关的向量场。

若 $ (\varphi, U) $ 是 $ M $ 的坐标卡，则 $ U $ 上存在标准正交标架。

证明 基向量场 $ \partial_{1}, \ldots, \partial_{m} \in \mathcal{V}(U) $ 在每一点线性无关。由于 $ g $ 非退化，格拉姆–施密特正交化过程（例如见 [Art93, §§ 7.1 与 7.2]）便生成一个标准正交标架。细节留给你们。■

(g) 设 $ (M, g) $ 是定向伪黎曼流形。若 $ (\varphi, U) $ 是 $ M $ 的正坐标卡，$ \varphi = (x^{1}, \ldots, x^{m}) $，则令

\[ \omega_{M} \mid U := \sqrt{|G|} dx^{1} \wedge \cdots \wedge dx^{m} . \]

这便在 $ M $ 上定义了体积形式 $ \omega_{M} \in \Omega^{m}(M) $，我们称之为 $ M $ 的**体积元**。$ U $ 上的每个正标准正交标架 $ (v_{1}, \ldots, v_{m}) $ 都满足

\[ \omega_{M}(v_{1}, \ldots, v_{m}) = 1 . \]

证明 我们先证明 $ \omega_{M} \in \Omega^{m}(M) $ 是良定义的。设 $ (e_{1}, \ldots, e_{m}) $ 是 $ U $ 上任一标准正交标架，$ (\varepsilon^{1}, \ldots, \varepsilon^{m}) $ 是其对偶标架；即 $ \varepsilon^{j} \in \Omega^{1}(U) $ 且 $ \langle \varepsilon^{j}, e_{k} \rangle = \delta^{j}_{k} $，$ 1 \le j, k \le m $。则由注 2.18(d) 推出

\[ \varepsilon^{1} \wedge \cdots \wedge \varepsilon^{m} = \sqrt{|G|} dx^{1} \wedge \cdots \wedge dx^{m} . \]

由于这对 $ U $ 上每个正坐标系 $ (x^{1}, \ldots, x^{m}) $ 都成立，故 $ \omega_{M} \mid U \in \Omega^{m}(U) $ 是良定义的，且与局部坐标的特殊选取无关。现在设 $ \{(\varphi_{\alpha}, U_{\alpha}); \alpha \in A\} $ 是 $ M $ 的正图册，$ (v_{\alpha,1}, \ldots, v_{\alpha,m}) $ 是 $ U_{\alpha} $ 上的正标准正交标架，其对偶标架为 $ (\varepsilon^{1}_{\alpha}, \ldots, \varepsilon^{m}_{\alpha}) $。于是我们在 $ M $ 上定义 $ \omega_{M} $ 为 $ \omega_{M} \mid U_{\alpha} := \varepsilon^{1}_{\alpha} \wedge \cdots \wedge \varepsilon^{m}_{\alpha} $。由前面的讨论推出，$ \omega_{M} $ 是良定义的且属于 $ \Omega^{m}(M) $。最后一个断言现在显然成立。■

(h)（正则性）设 $ k \in \mathbb{N} $，$ M $ 是 $ C^{k+1} $ 流形。则上面的定义与陈述在把 $ \mathcal{V}(M) $ 与 $ \mathcal{E}(M) $ 处处分别换成 $ \mathcal{V}^{k}(M) $ 与 $ C^{k}(M) $ 之后仍然成立。■

设 $ (N, \tilde{g}) $ 是黎曼流形，$ f: M \to N $ 是浸入。则 $ f^{*}\tilde{g} $（$ \tilde{g} $ 经 $ f $ 的拉回）是 $ M $ 上的黎曼度量。若 $ M $ 是 $ N $ 的子流形，$ i: M \hookrightarrow N $ 是自然嵌入，则 $ i^{*}\tilde{g} $ 是**由 $ N $ 诱导的黎曼度量**（更确切地说，由 $ (N, \tilde{g}) $ 诱导）。

设 $ (M, g) $ 与 $ (N, \tilde{g}) $ 是黎曼流形。若 $ g = f^{*}\tilde{g} $，则称浸入 $ f: M \to N $ 为**等距**。若 $ f $ 是等距微分同胚，即既是等距又是微分同胚，则 $ M $ 与 $ N $ 是**等距同构**的。

5.5 例 (a) 设 $ (M, g) $ 是黎曼流形，$ (\varphi, U) $ 是坐标卡，$ \varphi = (x^{1}, \ldots, x^{m}) $。则 $ (U, g) $ 与 $ (\varphi(U), \varphi_{*}g) $ 等距同构，且

\[ \varphi_{*}g = \sum_{j,k} g_{jk} dx^{j} dx^{k} . \]

证明 这由基本矩阵的定义立即推出。■

(b) $ \mathbb{R}^{\overline{m}} $ 是带有欧几里得度量 $ g_{\overline{m}} := (\,\cdot \mid \cdot\,) $ 的黎曼流形，该度量称为标准度量。因此 $ \mathbb{R}^{\overline{m}} $ 在 $ M $ 上诱导一个黎曼度量 $ g $，我们也称其为**标准度量**。它显然与 $ \mathbb{R}^{\overline{m}} $ 无关，其意义是：当 $ M $ 位于 $ \mathbb{R}^{n} $ 中时，$ \mathbb{R}^{n} $ 在 $ M $ 上诱导相同的度量。特别地，对 $ p \in M $ 有 $ g(p) = (\,\cdot \mid \cdot\,)_{p} $（采用我们一直使用的记号），即 $ T_{p}M $ 中由 $ (\,\cdot \mid \cdot\,) $ 诱导的内积。

若 $ (\varphi, U) $ 是 $ M $ 的坐标卡，$ \varphi = (x^{1}, \ldots, x^{m}) $，而 $ h := i \circ \varphi^{-1} $，其中 $ i: M \hookrightarrow \mathbb{R}^{\overline{m}} $ 是相应的参数化，则

\[ \varphi_{*}g = \sum_{j,k} (\partial_{j}h \mid \partial_{k}h) dx^{j} dx^{k} . \]

换言之，第一基本矩阵 $ [g_{jk}] $ 在局部坐标 $ (x^{1}, \ldots, x^{m}) $ 下由下式给出：

\[ [(\partial_{j}h \mid \partial_{k}h)] \in C^{\infty}(\varphi(U), \mathbb{R}^{m \times m}) . \]

这与注 5.4(b) 一致，也表明命题 5.1 是注 5.4(c) 的特殊情形。

证明 由 $ g = i^{*}g_{\overline{m}} $ 推出 $ \varphi_{*}g = (\varphi^{-1})^{*}i^{*}g_{\overline{m}} = h^{*}g_{\overline{m}} $。设 $ (y^{1}, \ldots, y^{\overline{m}}) $ 是 $ \mathbb{R}^{\overline{m}} $ 的欧几里得坐标。则

\[ g_{\overline{m}} = \sum_{j=1}^{\overline{m}} (dy^{j})^{2} \quad \text{且} \quad h^{*}g_{\overline{m}} = \sum_{j=1}^{\overline{m}} h^{*}(dy^{j} \otimes dy^{j}) = \sum_{j=1}^{\overline{m}} dh^{j} \otimes dh^{j} , \]

它们容易由 $ (0, 2) $ 张量 $ dy^{j} \otimes dy^{j} $ 的拉回定义以及例 3.4(a) 推出。现在该断言容易由 $ (\alpha, \beta) \mapsto \alpha \otimes \beta $（$ \alpha, \beta \in \Omega^{1}(\varphi(U)) $）的双线性以及 $ dh^{j} = \sum_{k} \partial_{k}h^{j} dx^{k} $ 推出。■

(c)（图像）设 $ X $ 是 $ \mathbb{H}^{m} $ 中的开集，$ f \in C^{\infty}(X, \mathbb{R}^{n}) $。设 $ M $ 是 $ f $ 的图像，并令

\[ \varphi: M \to \mathbb{R}^{m} , \quad (x, f(x)) \mapsto x \]

为自然坐标卡 $ (\varphi, M) $。则 $ M $ 的标准度量 $ g $ 满足

\[ g = \sum_{j} (dx^{j})^{2} + \sum_{j,k} (\partial_{j}f \mid \partial_{k}f) dx^{j} dx^{k} . \]

特别地，在曲面（$ m = 2 $）的情形，

\[ g = (1 + |\partial_{1}f|^{2})(dx)^{2} + 2(\partial_{1}f \mid \partial_{2}f) dxdy + (1 + |\partial_{2}f|^{2})(dy)^{2} . \]

证明 因为 $ g_{jk} = \delta_{jk} + (\partial_{j}f \mid \partial_{k}f) $，$ 1 \le j, k \le m $，这由 (b) 推出。■

(d)（参数化曲面）设 $ X $ 是 $ \mathbb{H}^{2} $ 中的开集，$ h: X \to \mathbb{R}^{n} $ 是嵌入。则曲面 $ M := h(X) $ 的标准度量为

\[ g = \mathrm{E}(du)^{2} + 2\mathrm{F} dudv + \mathrm{G}(dv)^{2} , \]

其中我们使用了例 5.3(f) 的记号。

(e)（平面极坐标）令 $ V_{2} := (0, \infty) \times (0, 2\pi) $。则极坐标映射

\[ f_{2}: V_{2} \to \mathbb{R}^{2} , \quad (r, \varphi) \mapsto (x, y) := (r \cos \varphi, r \sin \varphi) \]

是嵌入，$ M := f_{2}(V_{2}) = \mathbb{R}^{2} \setminus (\mathbb{R}^{+} \times \{0\}) $，且

\[ g_{2} \mid M = (dx)^{2} + (dy)^{2} = (dr)^{2} + r^{2}(d\varphi)^{2} . \]

证明 这容易由 (d) 推出。■

(f)（圆周坐标）关于参数化

\[ h: (0, 2\pi) \to \mathbb{R}^{2} , \quad t \mapsto (\cos t, \sin t) \]

在 $ S^{1} \setminus \{(1, 0)\} $ 上，圆的标准度量满足 $ g_{S^{1}} = (dt)^{2} $。

证明 因为 $ |\partial h| = 1 $，这由 (b) 推出。■

(g)（$ m $ 维极坐标）设 $ m \ge 3 $，令\footnote{我们使用 (X.8.11)–(X.8.24) 的记号。}

\[ f_{m}: V_{m} \to \mathbb{R}^{m} , \quad (r, \varphi, \vartheta_{1}, \ldots, \vartheta_{m-2}) \mapsto (x^{1}, x^{2}, x^{3}, \ldots, x^{m}) \]

为（限制在 $ V_{m} $ 上的）极坐标映射 (X.8.17)。则 $ f_{m} $ 是 $ \mathbb{R}^{m} \setminus H_{m-1} $ 的参数化，且

\[ \sum_{j=1}^{m} (dx^{j})^{2} = (dr)^{2} + r^{2}\left[ a_{m,0}(d\varphi)^{2} + \sum_{k=1}^{m-2} a_{m,k}(d\vartheta_{k})^{2} \right] \]

其中

\[ a_{m,k} := \prod_{i=k+1}^{m-2} \sin^{2}\vartheta_{i} \quad \text{对 } 0 \le k \le m-3 \quad \text{且} \quad a_{m,m-2} := 1 . \]

特别地，球坐标满足（$ m = 3 $）

\[ (dx)^{2} + (dy)^{2} + (dz)^{2} = (dr)^{2} + r^{2}\left[\sin^{2}\vartheta (d\varphi)^{2} + (d\vartheta)^{2}\right] . \]

证明 设 $ y = (r, z) \in \mathbb{R} \times \mathbb{R}^{m-1} $，由 (X.8.14) 读出

\[ \partial_{1}f_{m}(y) = h_{m-1}(z) \quad \text{且} \quad \partial_{j}f_{m}(y) = r\partial_{j-1}h_{m-1}(z) \quad \text{对 } 2 \le j \le m . \tag{5.7} \]

因此 (X.8.13) 蕴含

\[ |\partial_{1}f_{m}|^{2} = 1 . \tag{5.8} \]

对 $ |h_{m-1}|^{2} = 1 $ 求导得 $ (h_{m-1} \mid \partial_{k}h_{m-1}) = 0 $，$ 1 \le k \le m-1 $。于是由 (5.7) 推出

\[ (\partial_{1}f_{m}(y) \mid \partial_{k}f_{m}(y)) = r(h_{m-1}(z) \mid \partial_{k-1}h_{m-1}(z)) = 0 \quad \text{对 } 2 \le k \le m . \tag{5.9} \]

由 (5.7) 我们还得到

\[ (\partial_{j}f_{m}(y) \mid \partial_{k}f_{m}(y)) = r^{2}(\partial_{j-1}h_{m-1}(z) \mid \partial_{k-1}h_{m-1}(z)) \quad \text{对 } 2 \le j, k \le m . \tag{5.10} \]

以 $ z = (z', z_{m-1}) \in \mathbb{R}^{m-2} \times \mathbb{R} $ 代入递推公式 (X.8.12) 得到

\[ \partial_{j}h_{m-1}(z) = \left(\partial_{j}h_{m-2}(z') \sin z_{m-1}, 0\right) \quad \text{对 } 1 \le j \le m-2 , \tag{5.11} \]

以及

\[ \partial_{m-1}h_{m-1}(z) = \left(h_{m-2}(z') \cos z_{m-1}, -\sin z_{m-1}\right) . \]

由此及 (X.8.13) 推出

\[ |\partial_{m-1}h_{m-1}(z)|^{2} = |h_{m-2}(z')|^{2}\cos^{2} z_{m-1} + \sin^{2} z_{m-1} = 1 , \]

并且与上面类似，我们有

\[ (\partial_{j}h_{m-1}(z) \mid \partial_{m-1}h_{m-1}(z)) = \sin z_{m-1}\cos z_{m-1}(h_{m-2}(z') \mid \partial_{j}h_{m-2}(z')) = 0 \]
