##### 习题

1  设 $ H $ 是有限维实希尔伯特空间，且设 $ \varphi : H \to H $ 是满足 $ \varphi(0) = 0 $ 的等距。验证：

(a) $ \varphi $ 是线性的；

(b) $ \varphi^{*}\varphi = \mathrm{id}_{H} $；

(c) $ \varphi \in \mathcal{L}\mathrm{aut}(H) $，且 $ \varphi^{-1} $ 是等距。

2  (a) 对 $ A \in \mathbb{R}^{n\times n} $，证明以下陈述等价：

(i) $ A $ 是等距；

(ii) $ A \in O(n) $；

(iii) $ \left|\det A\right| = 1 $；

(iv) 列向量 $ a^{\bullet}_{k} = (a^{1}_{k}, \ldots, a^{n}_{k}) $（$ k = 1, \ldots, n $）构成 $ \mathbb{R}^{n} $ 的一个标准正交基；

(v) 行向量 $ a^{j}_{\bullet} = (a^{j}_{1}, \ldots, a^{j}_{n}) $（$ k = 1, \ldots, n $）构成 $ \mathbb{R}^{n} $ 的一个 标准正交基。

(b) 证明 $ O(n) $ 是矩阵群。

3  证明例 9.1(c) 的陈述。

4  设 $ M $ 与 $ N $ 分别是 $ \mathbb{R}^{k} $ 与 $ \mathbb{R}^{\ell} $ 的 $ m $ 维与 $ n $ 维 $ C^{q} $ 子流形。证明 $ M \times N $ 是 $ \mathbb{R}^{k+\ell} $ 的一个 $ (m + n) $ 维 $ C^{q} $ 子流形。

5  判断 $ \mathcal{L}\mathrm{aut}(\mathbb{R}^{n}) $ 是否为 $ \mathcal{L}(\mathbb{R}^{n}) $ 的子流形。

6  通过下式定义 $ f : \mathbb{R}^{3} \to \mathbb{R}^{2} $：

\[ f(x, y, z) := (x^{2} + xy - y - z, 2x^{2} + 3xy - 2y - 3z) . \]

证明 $ f^{-1}(0) $ 是 $ \mathbb{R}^{3} $ 中的嵌入曲线。

7  设 $ f, g : \mathbb{R}^{4} \to \mathbb{R}^{3} $ 由下式给出：

\[ f(x, y, z, u) := (xz - y^{2}, yu - z^{2}, xu - yz) , \]

\[ g(x, y, z, u) := (2(xz + yu), 2(xu - yz), z^{2} + u^{2} - x^{2} - y^{2}) . \]

验证：

(a) $ f^{-1}(0)\setminus\{0\} $ 是 $ \mathbb{R}^{4} $ 中的嵌入曲面；

(b) 对每个 $ a \in \mathbb{R}^{3}\setminus\{0\} $，$ g^{-1}(a) $ 是 $ \mathbb{R}^{4} $ 中的嵌入曲线。

8  下列集合中哪些

(a) $ K := \{ (x, y) \in \mathbb{R}^{n} \times \mathbb{R} \;;\; \left|x\right|^{2} = y^{2} \} $，

(b) $ \{ (x, y) \in K \;;\; y > 0 \} $，

(c) $ K \setminus \{(0, 0)\} $

是 $ \mathbb{R}^{n+1} $ 的子流形？

9  对 $ A \in \mathbb{R}^{n\times n}_{\mathrm{sym}} $，证明 $ \{ x \in \mathbb{R}^{n} \;;\; (x|Ax) = 1 \} $ 是 $ \mathbb{R}^{n} $ 的光滑超曲面。对 $ n = 2 $ 的情形画出曲线，对 $ n = 3 $ 的情形画出曲面。（提示：习题 4.5。）

10  对**特殊正交群** $ SO(n) := \{ A \in O(n) \;;\; \det A = 1 \} $，证明：

(a) $ SO(n) $ 是 $ O(n) $ 的子群；

(b) $ SO(n) $ 是 $ \mathbb{R}^{n\times n} $ 的光滑子流形。它的维数是多少？

11  通过下式递归地定义 $ f_{n} \in C^{\infty}(\mathbb{R}^{n}, \mathbb{R}^{n}) $：

\[ f_{2}(y) := (y^{1}\cos y^{2}, y^{1}\sin y^{2}) \qquad \text{对 } y = (y^{1}, y^{2}) \in \mathbb{R}^{2} , \]

且

\[ f_{n+1}(y) := (f_{n}(y') \sin y^{n+1}, y^{1}\cos y^{n+1}) \qquad \text{对 } y = (y', y^{n+1}) \in \mathbb{R}^{n} \times \mathbb{R} . \]

又设 $ V_{2} := (0, \infty) \times (0, 2\pi) $，且对 $ n \ge 3 $ 有 $ V_{n} := V_{2} \times (0, \pi)^{n-2} $。

(a) 显式求出 $ f_{n} $。

(b) 证明：

(i) $ \left|f_{n}(1, y^{2}, \ldots, y^{n})\right| = 1 $ 且 $ \left|f_{n}(y)\right| = \left|y^{1}\right| $；

(ii) $ f_{n}(V_{n}) = \mathbb{R}^{n}\setminus H_{n} $，其中 $ H_{n} := \mathbb{R}^{+} \times \{0\} \times \mathbb{R}^{n-2} $；

(iii) $ f_{n}(\overline{V_{n}}) = \mathbb{R}^{n} $；

(iv) $ g_{n} := f_{n}|V_{n} : V_{n} \to \mathbb{R}^{n}\setminus H_{n} $ 是拓扑的；

(v) 对 $ y \in V_{n} $ 且 $ n \ge 3 $，有 $ \det\partial f_{n}(y) = (-1)^{n}(y^{1})^{n-1}\sin^{n-2}(y^{n}) \cdots \sin(y^{3}) $。

因此 $ g_{n} $ 是 $ V_{n} $ 到 $ \mathbb{R}^{n} $ 的 $ C^{\infty} $ 嵌入。由 $ f_{n} $ 诱导的坐标称为 **$ n $ 维极坐标（或球坐标）**（参见例 9.11(a)）。

12  用 $ f : \mathbb{R}^{3} \to \mathbb{R}^{3} $ 表示 $ \mathbb{R}^{3} $ 中的柱坐标（参见例 9.11(c)）。又设 $ V := (0, \infty) \times (0, 2\pi) \times \mathbb{R} $ 且 $ g := f|V $。证明：

(a) $ g $ 是 $ V $ 到 $ \mathbb{R}^{3} $ 的 $ C^{\infty} $ 嵌入；

(b) $ g(1, \cdot, \cdot) $ 是 $ (0, 2\pi) \times \mathbb{R} $ 到 $ \mathbb{R}^{3} $ 的 $ C^{\infty} $ 嵌入；

(c) $ f(V) = \mathbb{R}^{3}\setminus H_{3} $（参见习题 11）；

(d) $ f(\overline{V}) = \mathbb{R}^{3} $。

13  (a) 证明**椭圆柱面**\footnote{$ M_{a,a} $ 是通常的柱面。}

\[ M_{a,b} := \{ (x, y, z) \in \mathbb{R}^{3} \;;\; x^{2}/a^{2} + y^{2}/b^{2} = 1 \} \qquad \text{对 } a, b \in (0, \infty) , \]

是 $ \mathbb{R}^{3} $ 中的 $ C^{\infty} $ 超曲面。

(b) 设 $ W := (0, 2\pi) \times \mathbb{R} $，且

\[ f_{1} : W \to \mathbb{R}^{3} \quad \text{对 } (\varphi, z) \mapsto (a\cos\varphi, b\sin\varphi, z) , \]

\[ f_{2} : W \to \mathbb{R}^{3} \quad \text{对 } (\varphi, z) \mapsto (-a\sin\varphi, b\cos\varphi, z) . \]

又设对 $ j = 1, 2 $ 有 $ U_{j} := f_{j}|W $ 与 $ \varphi_{j} := (f_{j}|U_{j})^{-1} $。证明 $ \{(\varphi_{1}, \varphi_{2})\} $ 是 $ M $ 的一个图册，并计算过渡函数 $ \varphi_{1} \circ \varphi_{2}^{-1} $。

14  设 $ M $ 是 $ \mathbb{R}^{n} $ 的非空紧致 $ m $ 维 $ C^{1} $ 子流形，且 $ m \ge 1 $。证明 $ M $ 不存在只含一个坐标卡的图册。

15  证明由例 9.11(e) 中最后一个映射给出的曲面不是 $ \mathbb{R}^{3} $ 的子流形。

16  对 $ g : (-\pi/4, \pi/2) \to \mathbb{R}^{2} $，$ t \mapsto \sin(2t)(-\sin t, \cos t) $，验证：

(a) $ g $ 是单射的 $ C^{\infty} $ 浸入；

(b) $ \operatorname{im}(g) $ 不是 $ \mathbb{R}^{2} $ 中的嵌入曲线。

17  对图册 $ \{\varphi_{-}, \varphi_{+}\} $ 计算过渡函数 $ \varphi_{-} \circ \varphi_{+}^{-1} $，其中 $ \varphi_{\pm} $ 是 $ S^{n} $ 的球极投影。

18  设 $ M $ 与 $ N $ 分别是 $ \mathbb{R}^{m} $ 与 $ \mathbb{R}^{n} $ 的子流形，且设 $ \{ (\varphi_{\alpha}, U_{\alpha}) \;;\; \alpha \in \mathbf{A} \} $ 与 $ \{ (\psi_{\beta}, V_{\beta}) \;;\; \beta \in \mathbf{B} \} $ 分别是 $ M $ 与 $ N $ 的图册。验证：

\[ \{ (\varphi_{\alpha} \times \psi_{\beta}, U_{\alpha} \times V_{\beta}) \;;\; (\alpha, \beta) \in \mathbf{A} \times \mathbf{B} \} , \]

其中 $ \varphi_{\alpha} \times \psi_{\beta}(p, q) := (\varphi_{\alpha}(p), \psi_{\beta}(q)) $，是 $ M \times N $ 的一个图册。
