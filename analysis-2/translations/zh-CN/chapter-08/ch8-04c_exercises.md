##### 习题

1 计算

\[ \int_{\Gamma}(x^{2} - y^{2})\,dx + 3z\,dy + 4xy\,dz \]

沿螺旋线的一圈。

2 设 $ \varphi \in C^{1}((0,\infty),\mathbb{R}) $ 且

\[ \alpha(x,y) := x\varphi\left(\sqrt{x^{2} + y^{2}}\right)dy - y\varphi\left(\sqrt{x^{2} + y^{2}}\right)dx \qquad \text{对 } (x,y) \in \mathbb{R}^{2} . \]

当 $ \Gamma $ 是以 $ 0 $ 为心、半径为 $ R > 0 $ 的正向\footnote{按约定，当圆沿逆时针方向被遍历时，它是正向的（见注 5.8）。}圆时，$ \int_{\Gamma}\alpha $ 的值是多少？

3 计算

\[ \int_{\Gamma}2xy^{3}\,dx + 3x^{2}y^{2}\,dy , \]

其中 $ \Gamma $ 由 $ [\alpha, \beta] \to \mathbb{R}^{2} $，$ t \mapsto (t, t^{2}/2) $ 参数化。

4 设 $ \Gamma_{+} $ 是 $ \Gamma_{-} $ 是半径为 1 的正向圆，分别以 $ (1,0) $ 和 $ (-1,0) $ 为心。又设

\[ \alpha := \frac{2(x^{2} - y^{2} - 1)\,dy - 4xy\,dx}{(x^{2} + y^{2} - 1)^{2} + 4y^{2}} \in \Omega_{(\infty)}\left(\mathbb{R}^{2}\setminus\{(-1,0),(1,0)\}\right) . \]

证明

\[ \frac{1}{2\pi}\int_{\Gamma_{\pm}}\alpha = \pm 1 . \]

（提示：习题 3.3。）

5 设 $ X $ 是 $ \mathbb{R}^{n} $ 中的开集，$ \Gamma $ 是 $ X $ 中的 $ C^{1} $ 曲线。对 $ q \ge 0 $，证明或否定

\[ \int_{\Gamma} : \Omega_{(q)}(X) \to \mathbb{R} , \quad \alpha \mapsto \int_{\Gamma}\alpha \]

是一个 $ C^{q}(X) $ 模同态。

6 设 $ X $ 与 $ Y $ 分别在 $ \mathbb{R}^{n} $ 与 $ \mathbb{R}^{m} $ 中是开集，且 $ \alpha \in \Omega_{(q)}(X\times Y) $。进一步设 $ \Gamma $ 是 $ X $ 中的 $ C^{1} $ 曲线。证明

\[ f : Y \to \mathbb{R} , \quad y \mapsto \int_{\Gamma}\alpha(\cdot,y) \]

属于 $ C^{q}(Y,\mathbb{R}) $。对 $ q \ge 1 $ 计算 $ \nabla f $。

7 设 $ -\infty \le \alpha_{j} < \beta_{j} \le \infty $ 对 $ j = 1,\ldots,n $，且 $ X := \prod_{j=1}^{n}(\alpha_{j},\beta_{j}) $。又设 $ \alpha = \sum_{j=1}^{n}a_{j}dx^{j} \in \Omega_{(1)}(X) $ 是闭的。确定（以简单方式）$ \alpha $ 的所有原函数。

8 设 $ X := (0,\infty)^{2} $ 且 $ a,b,c,e > 0 $。根据习题 3.8(b)，

\[ \alpha := (c - ex)y\,dx + (a - by)x\,dy \]

具有形如 $ h(x,y) = m(xy) $ 的积分因子 $ h $。确定 $ h\alpha $ 的所有原函数。（提示：习题 7。）

9 设 $ X $ 是 $ \mathbb{R}^{n} $ 中的开集，$ \Gamma $ 是 $ X $ 中具有参数化 $ \gamma $ 的紧致分段 $ C^{1} $ 曲线。又设 $ f, f_{k} \in C(X,\mathbb{R}^{n}) $ 对 $ k \in \mathbb{N} $。证明

(a) 若 $ (\gamma^{*}f_{k}) $ 一致收敛到 $ \gamma^{*}f $，

\[ \lim_{k}\int_{\Gamma}\sum_{j=1}^{n}f_{k}^{j}\,dx^{j} = \int_{\Gamma}\sum_{j=1}^{n}f^{j}\,dx^{j} ; \]

(b) 若 $ \sum_{k}\gamma^{*}f_{k} $ 一致收敛到 $ \gamma^{*}f $，

\[ \sum_{k}\int_{\Gamma}\sum_{j=1}^{n}f_{k}^{j}\,dx^{j} = \int_{\Gamma}\sum_{j=1}^{n}f^{j}\,dx^{j} . \]

10 设 $ a_{j} \in C^{1}(\mathbb{R}^{n},\mathbb{R}) $ 是 $ \lambda \ne -1 $ 次正齐次的，且 1-形式 $ \alpha := \sum_{j=1}^{n}a_{j}dx^{j} $ 是闭的。证明

\[ f(x) := \frac{1}{\lambda + 1}\sum_{j=1}^{n}x^{j}a_{j}(x) \quad \text{对 } x = (x^{1},\ldots,x^{n}) \in \mathbb{R}^{n} \]

定义了 $ \alpha $ 的一个原函数。（提示：应用欧拉齐次性关系（见习题 VII.3.2）。）

11 证明：若 $ \gamma \in C(I,X) $ 是一条闭路，则存在一个参数变换 $ \varphi : [0,1] \to I $ 使得 $ \gamma \circ \varphi $ 是一条闭路。

12 (a) 设 $ X $ 是 $ \mathbb{R}^{n} $ 中的开集，$ \gamma $ 是 $ X $ 中的一条闭路。证明 $ \gamma $ 同伦于 $ X $ 中的一条折线闭路。

(b) 证明对 $ a \in \mathbb{R}^{n}\setminus\{0\} $，$ \mathbb{R}^{n}\setminus\mathbb{R}^{+}a $ 是单连通的。

(c) 设 $ \gamma $ 是 $ \mathbb{R}^{n}\setminus\{0\} $（$ n \ge 3 $）中的一条折线闭路。证明存在一条半射线 $ \mathbb{R}^{+}a $，其中 $ a \in \mathbb{R}^{n}\setminus\{0\} $，它与 $ \gamma $ 的像不相交。

(d) 证明 $ \mathbb{R}^{n}\setminus\{0\} $ 对 $ n \ge 3 $ 是单连通的。

13 证明或否定：对 $ n \ge 3 $，$ \mathbb{R}^{n}\setminus\{0\} $ 中的每个闭 1-形式都是恰当的。

14 设 $ X \subset \mathbb{R}^{n} $ 非空且道路连通。对满足 $ \gamma_{1}(1) = \gamma_{2}(0) $ 的 $ \gamma_{1},\gamma_{2} \in C([0,1],X) $，

\[ \gamma_{2}\oplus\gamma_{1} : [0,1] \to X , \quad t \mapsto \begin{cases} \gamma_{1}(2t) , & 0 \le t \le 1/2 , \\ \gamma_{2}(2t - 1) , & 1/2 \le t \le 1 \end{cases} \]

是将 $ \gamma_{2} $ 与 $ \gamma_{1} $ **连接起来的道路**。对 $ x_{0} \in X $，定义

\[ S_{x_{0}} := \{\, \gamma \in C([0,1],X) ;\ \gamma(0) = \gamma(1) = x_{0} \,\} . \]

又用 $ \sim $ 表示由 $ S_{x_{0}} $ 的闭路同伦诱导的等价关系（见例 I.4.2(d)）。

验证：

(a) 映射

\[ (S_{x_{0}}/\!\sim)\times(S_{x_{0}}/\!\sim) \to S_{x_{0}}/\!\sim , \quad ([\gamma_{1}],[\gamma_{2}]) \mapsto [\gamma_{2}\oplus\gamma_{1}] \]

是 $ S_{x_{0}}/\!\sim $ 上的一个良定义的运算，且 $ \Pi_{1}(X,x_{0}) := (S_{x_{0}}/\!\sim,\oplus) $ 是一个群，即 $ X $ 关于 $ x_{0} $ 的**基本群**，或**第一同伦群**；

(b) 对 $ x_{0},x_{1} \in X $，群 $ \Pi_{1}(X,x_{0}) $ 与 $ \Pi_{1}(X,x_{1}) $ 同构。

**注** (b) 部分使得我们可以说 $ X $ 的“基本群” $ \Pi_{1}(X) $；见例 I.7.8(g) 中的构造。集合 $ X $ 是单连通的当且仅当 $ \Pi_{1}(X) $ 是平凡的，即它只由单位元组成。

（(b) 的提示：设 $ w \in C([0,1],X) $ 是 $ X $ 中满足 $ w(0) = x_{0} $ 与 $ w(1) = x_{1} $ 的一条道路。则映射 $ [\gamma] \mapsto [w\oplus\gamma\oplus w^{-}] $ 是从 $ \Pi_{1}(X,x_{0}) $ 到 $ \Pi_{1}(X,x_{1}) $ 的群同构。）
