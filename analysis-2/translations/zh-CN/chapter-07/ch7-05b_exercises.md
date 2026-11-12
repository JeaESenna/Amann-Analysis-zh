##### 习题

1 若 $ A \in \mathcal{L}(E, F) $，证明 $ A \in C^{\infty}(E, F) $ 且 $ \partial^{2}A = 0 $。

2 若 $ \varphi \in \mathcal{L}(E_{1}, \ldots, E_{m}; F) $，证明 $ \varphi \in C^{\infty}(E_{1} \times \cdots \times E_{m}, F) $ 且 $ \partial^{m+1}\varphi = 0 $。

3 设 $ X $ 是 $ \mathbb{R}^{m} $ 中的开集。（$ m $ 维）**拉普拉斯算子** $ \Delta $ 定义为

\[ \Delta : C^{2}(X, \mathbb{R}) \to C(X, \mathbb{R}) , \quad u \mapsto \Delta u := \sum_{j=1}^{m}\partial_{j}^{2}u . \]

若 $ \Delta u = 0 $，则称函数 $ u \in C^{2}(X, \mathbb{R}) $ 在 $ X $ 中**调和**。因此，调和函数构成线性映射 $ \Delta $ 的核。验证由下式定义的 $ g_{m} : \mathbb{R}^{m} \setminus \{0\} \to \mathbb{R} $

\[ g_{m}(x) := \begin{cases} \log|x| , & m = 2 , \\ |x|^{2-m} , & m > 2 , \end{cases} \]

在 $ \mathbb{R}^{m} \setminus \{0\} $ 中调和。

4 对 $ f, g \in C^{2}(X, \mathbb{R}) $，证明

\[ \Delta(fg) = g\Delta f + 2(\nabla f|\nabla g) + f\Delta g . \]

5 设 $ g : [0, \infty) \times \mathbb{R} \to \mathbb{R}^{2} $，$ (r, \varphi) \mapsto (r\cos\varphi, r\sin\varphi) $。验证下列各条：

(a) $ g \mid (0, \infty) \times (-\pi, \pi) \to \mathbb{R}^{2} \setminus H $（其中 $ H := \{(x, y) \in \mathbb{R}^{2} ; \ x \le 0, \ y = 0\} = (-\mathbb{R}^{+}) \times \{0\} $）是拓扑的。

(b) $ \operatorname{im}(g) = \mathbb{R}^{2} $。

(c) 若 $ X $ 是 $ \mathbb{R}^{2} \setminus H $ 中的开集且 $ f \in C^{2}(X, \mathbb{R}) $，则

\[ (\Delta f) \circ g = \frac{\partial^{2}(f \circ g)}{\partial r^{2}} + \frac{1}{r}\frac{\partial(f \circ g)}{\partial r} + \frac{1}{r^{2}}\frac{\partial^{2}(f \circ g)}{\partial \varphi^{2}} \]

在 $ g^{-1}(X) $ 上成立。

6 令 $ X := \mathbb{R}^{n} \times (0, \infty) $，且对 $ (x, y) \in X $ 令 $ p(x, y) := y/(|x|^{2} + y^{2}) $。计算 $ \Delta p $。

7 验证

\[ (\Delta u) \circ A = \Delta(u \circ A) \quad \text{对 } u \in C^{2}(\mathbb{R}^{n}, \mathbb{R}) \]

若 $ A \in \mathcal{L}(\mathbb{R}^{n}) $ 是**正交的**，即若 $ A^{*}A = 1 $。

8 设 $ X $ 是 $ \mathbb{R}^{m} $ 中的开集，$ E $ 是巴拿赫空间。对 $ k \in \mathbb{N} $，令

\[ BC^{k}(X, E) := \left( \left\{ u \in BC(X, E) ; \ \partial^{\alpha}u \in BC(X, E), \ |\alpha| \le k \right\}, \ \|\cdot\|_{k,\infty} \right) , \]

其中

\[ \|u\|_{k,\infty} := \max_{|\alpha| \le k}\|\partial^{\alpha}u\|_{\infty} . \]

验证下列各条：

(a) $ BC^{k}(X, E) $ 是巴拿赫空间；

(b) $ BUC^{k}(X, E) := \{u \in BC(X, E) ; \ \partial^{\alpha}u \in BUC(X, E), \ |\alpha| \le k\} $ 是 $ BC^{k}(X, E) $ 的闭向量子空间，因此自身也是巴拿赫空间。

9 令 $ q \in \mathbb{N} $，且对满足 $ |\alpha| \le q $ 的 $ \alpha \in \mathbb{N}^{m} $ 令 $ a_{\alpha} \in \mathbb{K} $。又设对某个满足 $ |\alpha| = q $ 的 $ \alpha \in \mathbb{N}^{m} $ 有 $ a_{\alpha} \ne 0 $。则称

\[ \mathcal{A}(\partial) : C^{q}(X, \mathbb{K}) \to C(X, \mathbb{K}) , \quad u \mapsto \mathcal{A}(\partial)u := \sum_{|\alpha| \le q}a_{\alpha}\partial^{\alpha}u \]

为一个 $ q $ 阶常系数**线性微分算子**。对 $ k \in \mathbb{N} $，证明

(a) $ \mathcal{A}(\partial) \in \mathcal{L}\left( BC^{k+q}(X, \mathbb{K}), BC^{k}(X, \mathbb{K}) \right) $；

(b) $ \mathcal{A}(\partial) \in \mathcal{L}\left( BUC^{k+q}(X, \mathbb{K}), BUC^{k}(X, \mathbb{K}) \right) $。

10 对 $ u \in C^{2}(\mathbb{R} \times \mathbb{R}^{m}, \mathbb{R}) $ 与 $ (t, x) \in \mathbb{R} \times \mathbb{R}^{m} $，令

\[ \square u := \partial_{t}^{2}u - \Delta_{x}u \]

以及

\[ (\partial_{t} - \Delta)u := \partial_{t}u - \Delta_{x}u , \]

其中 $ \Delta_{x} $ 是关于 $ x \in \mathbb{R}^{m} $ 的拉普拉斯算子。称 $ \square $ 为**波动算子**（或**达朗贝尔算子**）。称 $ \partial_{t} - \Delta $ 为**热算子**。

(a) 计算 $ (\partial_{t} - \Delta)k $ 在 $ (0, \infty) \times \mathbb{R}^{m} $ 上的值，其中

\[ k(t, x) := t^{-m/2}\exp\left( -|x|^{2}/4t \right) \quad \text{对 } (t, x) \in (0, \infty) \times \mathbb{R}^{m} . \]

(b) 设 $ g \in C^{2}(\mathbb{R}, \mathbb{R}) $、$ c > 0 $ 且 $ v \in S^{m-1} $。计算 $ \square w $，其中

\[ w(t, x) := g(v \cdot x - tc) \quad \text{对 } (t, x) \in \mathbb{R} \times \mathbb{R}^{m} . \]

11 设 $ X $ 是巴拿赫空间 $ E $ 的开凸子集，$ f \in C^{2}(X, \mathbb{R}) $。证明下列陈述等价：

(i) $ f $ 是凸的；

(ii) 对 $ a, x \in X $，$ f(x) \ge f(a) + \partial f(a)(x - a) $；

(iii) 对 $ a \in X $ 与 $ h \in E $，$ \partial^{2}f(a)[h]^{2} \ge 0 $。

若 $ E = \mathbb{R}^{m} $，则这些陈述还等价于

(iv) 对 $ a \in X $，$ H_{f}(a) $ 是半正定的。

12 对所有 $ \alpha \in \mathbb{R} $，把函数

\[ f_{\alpha} : \mathbb{R}^{2} \to \mathbb{R} , \quad (x, y) \mapsto x^{3} - y^{3} + 3\alpha xy , \]

的临界点分类为极大值、极小值或鞍点。

13 设 $ f : \mathbb{R}^{2} \to \mathbb{R} $，$ (x, y) \mapsto (y - x^{2})(y - 2x^{2}) $。证明下列各条：

(a) $ (0, 0) $ 不是 $ f $ 的局部极小值点。

(b) 对每个 $ (x_{0}, y_{0}) \in \mathbb{R}^{2} \setminus \{(0, 0)\} $，$ \mathbb{R} \to \mathbb{R} \quad t \mapsto f(tx_{0}, ty_{0}) $ 在 $ 0 $ 处有孤立局部极小值。

14 确定（到含二阶为止）函数

\[ (0, \infty) \times (0, \infty) \to \mathbb{R} , \quad (x, y) \mapsto (x - y)/(x + y) \]

在点 $ (1, 1) $ 处的泰勒展开。

15 设 $ X $ 是 $ \mathbb{R}^{m} $ 中的开集。对 $ f, g \in C^{1}(X, \mathbb{R}^{m}) $，由下式定义 $ [f, g] \in C(X, \mathbb{R}^{m}) $：

\[ [f, g](x) := \partial f(x)g(x) - \partial g(x)f(x) \quad \text{对 } x \in X . \]

称 $ [f, g] $ 为 $ f $ 与 $ g $ 的**李括号**。验证下列陈述：

(i) $ [f, g] = -[g, f] $；

(ii) 对 $ \alpha, \beta \in \mathbb{R} $ 与 $ h \in C^{1}(X, \mathbb{R}^{m}) $，$ [\alpha f + \beta g, h] = \alpha[f, h] + \beta[g, h] $；

(iii) 对 $ \varphi, \psi \in C^{1}(X, \mathbb{R}) $，$ [\varphi f, \psi g] = \varphi\psi[f, g] + (\nabla\varphi|f)\psi f - (\nabla\psi|g)\varphi g $；

(iv) **（雅可比恒等式）** 若 $ f, g, h \in C^{2}(X, \mathbb{R}^{m}) $，则 $ [[f, g], h] + [[g, h], f] + [[h, f], g] = 0 $。

16 证明

\[ \mathbb{R}^{n} \to \mathbb{R} , \quad x \mapsto \begin{cases} \exp\left( 1/(|x|^{2} - 1) \right) , & |x| < 1 , \\ 0 , & |x| \ge 1 , \end{cases} \]

是光滑的。

17 设 $ X $ 是 $ \mathbb{R}^{m} $ 中的开集，$ f : X \to F $ 是 $ m $ 次可微的。证明

\[ \partial^{q}f(x) \in \mathcal{L}_{\mathrm{sym}}^{q}(X, F) \quad \text{对 } x \in X \text{ 且 } 1 \le q \le m . \]

特别地，对每个置换 $ \sigma \in S_{q} $，证明

\[ \frac{\partial^{q}f(x)}{\partial x^{j_{1}} \cdot \ldots \cdot \partial x^{j_{q}}} = \frac{\partial^{q}f(x)}{\partial x^{j_{\sigma(1)}} \cdot \ldots \cdot \partial x^{j_{\sigma(q)}}} \quad \text{对 } x \in X . \]

（提示：只需考虑 $ q = m = 2 $ 的情形。对

\[ [0, 1] \to F , \quad t \mapsto f(x + tsh_{1} + tsh_{2}) - f(x + tsh_{1}) , \]

应用中值定理，并验证

\[ \lim_{\substack{s \to 0 \\ s > 0}}\frac{f(x + sh_{1} + sh_{2}) - f(x + sh_{1}) - f(x + sh_{2}) + f(x)}{s^{2}} = \partial^{2}f(x)[h_{1}, h_{2}] .) \]

18 设 $ H $ 是有限维希尔伯特空间，$ A \in \mathcal{L}(H) $ 正定 [或负定]。证明 $ A $ 属于 $ \mathcal{L}\mathrm{aut}(H) $，且 $ A^{-1} $ 正定 [或负定]。

19 设 $ H $ 是有限维希尔伯特空间，$ A \in C^{1}([0, T], \mathcal{L}(H)) $。又设对每个 $ t \in [0, T] $，$ A(t) $ 对称。证明下列各条：

(a) 对 $ t \in [0, T] $，$ \partial A(t) $ 对称。

(b) 若对每个 $ t \in [0, T] $，$ \partial A(t) $ 正定，则对 $ 0 \le \sigma < \tau \le T $，有

(i) $ A(\tau) - A(\sigma) $ 正定；

(ii) 若对每个 $ t \in [0, T] $，$ A(t) $ 是自同构，则 $ A^{-1}(\tau) - A^{-1}(\sigma) $ 负定。

（(ii) 的提示：对 $ t \mapsto A^{-1}(t)A(t) $ 求导。）

20 设 $ H $ 是有限维希尔伯特空间，且令 $ A, B \in \mathcal{L}(H) $。证明：若 $ A $、$ B $ 与 $ A - B $ 正定，则 $ A^{-1} - B^{-1} $ 负定。

（提示：考虑对 $ t \in [0, 1] $ 的 $ t \mapsto B + t(A - B) $，并研究习题 19。）

21 设 $ X $ 是 $ \mathbb{R}^{m} $ 中的开集，$ f, g \in C^{q}(X, \mathbb{K}) $。证明 $ fg $ 属于 $ C^{q}(X, \mathbb{K}) $，并证明**莱布尼茨法则**：

\[ \partial^{\alpha}(fg) = \sum_{\beta \le \alpha}\binom{\alpha}{\beta}\partial^{\beta}f\partial^{\alpha - \beta}g \quad \text{对 } \alpha \in \mathbb{N}^{m} \text{ 且 } |\alpha| \le q . \]

这里 $ \beta \le \alpha $ 表示对 $ 1 \le j \le m $ 有 $ \beta_{j} \le \alpha_{j} $，且

\[ \binom{\alpha}{\beta} := \binom{\alpha_{1}}{\beta_{1}} \cdot \ldots \cdot \binom{\alpha_{m}}{\beta_{m}} \]

对满足 $ \alpha = (\alpha_{1}, \ldots, \alpha_{m}) $ 与 $ \beta = (\beta_{1}, \ldots, \beta_{m}) $ 的 $ \alpha, \beta \in \mathbb{N}^{m} $。（提示：定理 IV.1.12(ii) 与归纳法。）
