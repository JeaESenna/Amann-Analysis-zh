##### 习题

1  设 $ E, F $ 与 $ G $ 为巴拿赫空间；又令 $ A \in \mathcal{L}(E, F) $ 与 $ B \in \mathcal{L}(G, E) $。证明

(a) $ (AB)^{\top} = B^{\top}A^{\top} $；

(b) 对 $ A \in \mathcal{L}\mathrm{is}(E, F) $，有 $ A^{\top} \in \mathcal{L}\mathrm{is}(F', E') $ 且 $ [A^{\top}]^{-1} = [A^{-1}]^{\top} $。

2  这些 1-形式中哪些是闭的？

(a) $ 2xy^{3}\,dx + 3x^{2}y^{2}\,dy \in \Omega_{(\infty)}(\mathbb{R}^{2}) $。

(b) $ \frac{2(x^{2} - y^{2} - 1)\,dy - 4xy\,dx}{(x^{2} + y^{2} - 1)^{2} + 4y^{2}} \in \Omega_{(\infty)}(X) $，其中 $ X := \mathbb{R}^{2}\setminus\{(-1,0),(1,0)\} $。

3  设 $ X := \mathbb{R}^{2}\setminus\{(-1,0),(1,0)\} $，

\[ \varphi : X \to \mathbb{R}^{2}\setminus\{(0,0)\} , \quad (x, y) \mapsto (x^{2} + y^{2} - 1, 2y) \]

并且

\[ \alpha := \frac{u\,dv - v\,du}{u^{2} + v^{2}} \in \Omega(\mathbb{R}^{2}\setminus\{(0,0)\}) . \]

证明 $ \varphi^{*}\alpha $ 与习题 2(b) 的 1-形式相同。

4  设 $ X $ 在 $ \mathbb{R}^{n} $ 中为开集且 $ \alpha \in \Omega_{(1)}(X) $。用 $ a \in C^{1}(X, \mathbb{R}^{n}) $ 表示 $ \Theta^{-1}\alpha $ 的余切部分。证明 $ \alpha $ 是闭的当且仅当对每个 $ x \in X $，$ \partial a(x) $ 对称。

5  设

\[ \alpha := x\,dy - y\,dx \in \Omega_{(\infty)}(\mathbb{R}^{2}) \quad \text{且} \quad \beta := \alpha/(x^{2} + y^{2}) \in \Omega_{(\infty)}(\mathbb{R}^{2}\setminus\{(0,0)\}) \]

并且

\[ \varphi : (0,\infty)\times(0,2\pi) \to \mathbb{R}^{2}\setminus\{(0,0)\} , \quad (r, \theta) \mapsto (r\cos\theta, r\sin\theta) . \]

计算 $ \varphi^{*}\alpha $ 与 $ \varphi^{*}\beta $。

6  对 $ \alpha := x\,dy - y\,dx - (x + y)\,dz \in \Omega_{(\infty)}(\mathbb{R}^{3}) $ 与

\[ \varphi : (0,2\pi)\times(0,\pi) \to \mathbb{R}^{3} , \quad (\theta_{1}, \theta_{2}) \mapsto (\cos\theta_{1}\sin\theta_{2}, \sin\theta_{1}\sin\theta_{2}, \cos\theta_{2}) \]

确定 $ \varphi^{*}\alpha $。

7  设 $ X $ 与 $ Y $ 在 $ \mathbb{R}^{n} $ 中为开集，$ \varphi \in \operatorname{Diff}^{q}(X, Y) $，且对某 $ q \ge 1 $，$ \alpha \in \Omega_{(q-1)}(Y) $。证明

(a) $ \alpha $ 是恰当的当且仅当 $ \varphi^{*}\alpha $ 是恰当的；

(b) 对 $ q \ge 2 $，$ \alpha $ 是闭的当且仅当 $ \varphi^{*}\alpha $ 是闭的。

8  设 $ X $ 在 $ \mathbb{R}^{2} $ 中为开集且 $ \alpha \in \Omega_{(1)}(X) $。函数 $ h \in C^{1}(X) $ 称为 $ \alpha $ 的**欧拉乘子**（或**积分因子**），如果 $ h\alpha $ 是闭的且对 $ (x, y) \in X $ 有 $ h(x, y) \ne 0 $。

(a) 证明若 $ h \in C^{1}(X) $ 满足对 $ (x, y) \in X $ 有 $ h(x, y) \ne 0 $，则 $ h $ 是 $ \alpha = a\,dx + b\,dy $ 的欧拉乘子当且仅当

\[ a h_{y} - b h_{x} + (a_{y} - b_{x})h = 0 . \tag{3.11} \]

(b) 设 $ a, b, c, e > 0 $，并令

\[ \beta := (c - ex)y\,dx + (a - by)x\,dy . \]

证明 $ \beta $ 在 $ X = (0,\infty)^{2} $ 上具有形如 $ h(x, y) = m(xy) $ 的积分因子。（提示：应用 (3.11) 求出 $ m $ 的微分方程，并猜测其解。）

9  设 $ J $ 与 $ D $ 为开区间，$ f \in C(J\times D, \mathbb{R}) $ 且 $ \alpha := dx - f\,dt \in \Omega_{(0)}(J\times D) $。进一步设 $ u \in C^{1}(J, D) $，并定义 $ \varphi_{u} : J \to \mathbb{R}^{2} $，$ t \mapsto (t, u(t)) $。证明 $ \varphi^{*}_{u}\alpha = 0 $ 当且仅当 $ u $ 满足 $ \dot x = f(t, x) $。

10  验证 $ \mathcal{V}^{q}(X) $ 与 $ \Omega_{(q)}(X) $ 是 $ C^{q}(X) $-模，且 $ \mathcal{V}^{q+1}(X) $ 与 $ \Omega_{(q+1)}(X) $ 分别是 $ \mathcal{V}^{q}(X) $ 与 $ \Omega_{(q)}(X) $ 的子模。

11  设 $ R $ 是带单位元的交换环且 $ a \in R $。证明

(a) $ aR $ 是 $ R $ 的子模；

(b) $ aR \ne 0 \iff a \ne 0 $；

(c) $ aR \ne R \iff a $ 没有逆元。

$ R $-模 $ M $ 的子模 $ U $ 称为**非平凡的**，如果 $ U \ne \{0\} $ 且 $ U \ne M $。$ \mathbb{Z}_{2} $ 与 $ \mathbb{Z}_{6} $ 的非平凡子模是什么？

12  证明例 3.16(d) 的陈述。

13  设 $ M $ 与 $ N $ 是 $ R $-模且 $ T : M \to N $ 是模同态。验证 $ \ker(T) := \{v \in M \ ; \ Tv = 0\} $ 与 $ \operatorname{im}(T) $ 分别是 $ M $ 与 $ N $ 的子模。
