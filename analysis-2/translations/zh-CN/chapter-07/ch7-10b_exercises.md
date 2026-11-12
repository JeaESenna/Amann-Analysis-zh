##### 习题

1  用 $ (g_{n},V_{n}) $ 记 $ F_{n} := \mathbb{R}^{n}\setminus H_{n} $ 的由 $ n $ 维极坐标给出的正则参数化（见习题 9.11）。

(a) 证明 $ F_{n} $ 关于 $ g_{n} $ 的第一基本矩阵 $ [(g_{n})_{jk}] $ 由

\[ \begin{bmatrix} 1 & 0 \\ 0 & r^{2} \end{bmatrix} \quad \text{对 } n = 2 , \]

给出，或当 $ n \ge 3 $ 时由

\[ \operatorname{diag}\left( 1, r^{2}\sin^{2}(y^{3}) \cdot \cdots \cdot \sin^{2}(y^{n}), r^{2}\sin^{2}(y^{3}) \cdot \cdots \cdot r^{2}\sin^{2}(y^{n-1}), \ldots, r^{2}\sin^{2}(y^{3}), r^{2} \right) \]

给出，其中 $ (r,y^{2},\ldots,y^{n}) \in V_{n} $。

(b) 设 $ f \in C^{1}(F_{n},\mathbb{R}) $，并令 $ \varphi_{n} $ 记属于 $ g_{n} $ 的坐标卡。计算 $ \nabla_{p}f $ 在 $ n $ 维极坐标下，即在由 $ \varphi_{n} $ 诱导的局部坐标下的表示。

2  设 $ (g,V) $ 是 $ \mathbb{R}^{n} $ 的 $ m $ 维 $ C^{1} $ 子流形 $ M $ 的一个参数化。又用

\[ \sqrt{g}(y) := \sqrt{\det\left[ g_{jk}(y) \right]} \quad \text{对 } y \in V \]

记 $ M $ 关于 $ g $ 的**格拉姆行列式**。验证下列陈述：

(a) 若 $ m = 1 $，则 $ \sqrt{g} = |\dot{g}| $。

(b) 若 $ m = 2 $ 且 $ n = 3 $，则

\[ \sqrt{g} = \sqrt{\left( \frac{\partial(g^{2},g^{3})}{\partial(x,y)} \right)^{2} + \left( \frac{\partial(g^{3},g^{1})}{\partial(x,y)} \right)^{2} + \left( \frac{\partial(g^{1},g^{2})}{\partial(x,y)} \right)^{2}} = |\partial_{1}g \times \partial_{2}g| , \]

其中 $ \times $ 表示叉积（或向量积）（另见第 VIII.2 节）。

(c) 设 $ V $ 在 $ \mathbb{R}^{n} $ 中开且 $ f \in C^{1}(V,\mathbb{R}) $。对 $ f $ 的图像的参数化 $ g : V \to \mathbb{R}^{n+1} $，$ x \mapsto (x,f(x)) $，证明 $ \sqrt{g} = \sqrt{1 + |\nabla f|^{2}} $。

3  求 $ T_{p}S^{2} $ 在 $ p = (0,1,0) $ 处，分别用

(a) 球坐标（见例 9.11(b)）；

(b) 由球极投影给出的坐标。

4  求 $ T_{p}\mathrm{T}_{2,1}^{2} $ 在 $ p = (\sqrt{2},\sqrt{2},1) $ 处。

5  设 $ M $ 是 $ \mathbb{R}^{n} $ 的 $ m $ 维 $ C^{q} $ 子流形，且 $ (\varphi,U) $ 是 $ p \in M $ 附近的一个坐标卡。证明

(a) $ M $ 的每个开子集都是 $ \mathbb{R}^{n} $ 的 $ m $ 维 $ C^{q} $ 子流形；

(b) 若把 $ U $ 理解为流形，则 $ \varphi $ 属于 $ \operatorname{Diff}^{q}(U,\varphi(U)) $，且坐标卡的切向 $ T_{p}\varphi $ 与 $ \varphi \in C^{q}(U,\varphi(U)) $ 在点 $ p $ 处的切向一致。

6  对 $ A \in GL(n) := \mathcal{L}\mathrm{aut}(\mathbb{R}^{n}) $，求 $ T_{A}GL(n) $。

7  证明正交群 $ O(n) $ 在 $ 1_{n} $ 处的切空间是斜对称 $ (n \times n) $ 矩阵所成的向量空间，即

\[ T_{1_{n}}O(n) = (1_{n}, \{ A \in \mathbb{R}^{n\times n} \; ; \; A + A^{\top} = 0 \}) . \]

（提示：利用例 9.5(c) 与定理 10.7。）

8  证明特殊正交群 $ SO(n) $ 在 $ 1_{n} $ 处的切空间为

\[ T_{1_{n}}SO(n) = (1_{n}, \{ A \in \mathbb{R}^{n\times n} \; ; \; \operatorname{tr}(A) = 0 \}) . \]

（提示：对满足 $ \operatorname{tr}(A) = 0 $ 的 $ A \in \mathbb{R}^{n\times n} $，注意到 $ \gamma(t) = e^{tA} $（$ t \in \mathbb{R} $），并见定理 10.6。）

9  证明

(a) 对 $ \psi \in \operatorname{Diff}^{q}(M,N) $ 与 $ p \in M $，有 $ T_{p}\psi \in \mathcal{L}\mathrm{is}(T_{p}M,T_{\psi(p)}N) $；

(b) 若 $ M $ 与 $ N $ 是 $ \mathbb{R}^{n} $ 的微分同胚的 $ C^{q} $ 子流形，则它们的维数相同。

10  证明

(a) $ S^{1} \times \mathbb{R} $（见习题 9.4）与 $ \{ (x,y,z) \in \mathbb{R}^{3} \; ; \; x^{2} + y^{2} = 1 \} $ 微分同胚；

(b) $ S^{1} \times S^{1} $ 与 $ \mathrm{T}_{2,1}^{2} $ 微分同胚；

(c) $ S^{n} $ 与 $ rS^{n} $（$ r > 0 $）微分同胚。

11  设 $ M := \{ (x,y,z) \in \mathbb{R}^{3} \; ; \; x^{2} + y^{2} = 1 \} $，且

\[ \nu : M \to S^{2} , \quad (x,y,z) \mapsto (x,y,0) . \]

则 $ \nu \in C^{\infty}(M,S^{2}) $。又 $ T_{p}\nu $ 对 $ p \in M $ 对称，且其特征值为 0 和 1。

12  设 $ X $ 在 $ \mathbb{R}^{n} $ 中开且 $ f \in C^{1}(X,\mathbb{R}) $。又设 $ \nu : M \to S^{n} $ 是 $ M := \operatorname{graph}(f) $ 上的单位法向量。证明 $ \nu $ 属于 $ C^{\infty}(M,S^{n}) $，且 $ T_{p}\nu $ 对 $ p \in M $ 对称。

13  设 $ M $ 与 $ \nu $ 同习题 12。又设

\[ \varphi_{\alpha} : M \to \mathbb{R}^{n+1} , \quad p \mapsto p + \alpha\nu(p) \]

其中 $ \alpha \in \mathbb{R} $。证明存在 $ \alpha_{0} > 0 $，使得对每个 $ \alpha \in (-\alpha_{0},\alpha_{0}) $，$ \varphi_{\alpha}(M) $ 是与 $ M $ 微分同胚的光滑超曲面。

14  求含于椭球面 $ \{ (x,y,z) \in \mathbb{R}^{3} \; ; \; (x/a)^{2} + (y/b)^{2} + (z/c)^{2} = 1 \} $（$ a,b,c > 0 $）的最大长方体的体积。
