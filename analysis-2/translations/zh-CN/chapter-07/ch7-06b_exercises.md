##### 习题

1 设 $ I = [\alpha, \beta] $，其中 $ -\infty < \alpha < \beta < \infty $，$ k \in C(I \times I, \mathbb{R}) $，$ \varphi \in C^{0,1}(I \times E, F) $。又令

\[ \Phi(u)(t) := \int_{\alpha}^{\beta} k(t, s)\varphi(s, u(s)) \, ds \quad \text{对 } t \in I \]

且 $ u \in C(I, E) $。证明 $ \Phi \in C^{1}(C(I, E), C(I, F)) $，且

\[ (\partial\Phi(u)h)(t) = \int_{\alpha}^{\beta} k(t, s)\partial_{2}\varphi(s, u(s))h(s) \, ds \quad \text{对 } t \in I \]

且 $ u, h \in C(I, E) $。

2 设 $ I $ 与 $ J := [\alpha, \beta] $ 是紧致完全区间，且 $ f \in C(I \times J, E) $。证明

\[ \int_{J} \left( \int_{I} f(s, t) \, ds \right) dt = \int_{I} \left( \int_{J} f(s, t) \, dt \right) ds . \]

（提示：考虑

\[ J \to E , \quad y \mapsto \int_{I} \left( \int_{\alpha}^{y} f(s, t) \, dt \right) ds \]

并应用命题 6.7 与推论 VI.4.14。）

3 对 $ f \in C([\alpha, \beta], E) $，证明

\[ \int_{\alpha}^{s} \left( \int_{\alpha}^{t} f(\tau) \, d\tau \right) dt = \int_{\alpha}^{s} (s - t)f(t) \, dt \quad \text{对 } s \in [\alpha, \beta] . \]

4 设 $ I $ 与 $ J $ 是紧致完全区间，且 $ \rho \in C(I \times J, \mathbb{R}) $。验证

\[ u(x, y) := \int_{I} \left( \int_{J} \log\left( (x - s)^{2} + (y - t)^{2} \right)\rho(s, t) \, dt \right) ds \quad \text{对 } (x, y) \in \mathbb{R}^{2}\setminus(I \times J) \]

是调和的。

5 定义

\[ h : \mathbb{R} \to [0, 1) , \quad s \mapsto \begin{cases} e^{-1/s^{2}} , & s > 0 , \\ 0 , & s \le 0 , \end{cases} \]

且对 $ -\infty < \alpha < \beta < \infty $，定义 $ k : \mathbb{R} \to \mathbb{R} $，$ s \mapsto h(s - \alpha)h(\beta - s) $，以及

\[ \ell : \mathbb{R} \to \mathbb{R} , \quad t \mapsto \int_{\alpha}^{t} k(s) \, ds / \int_{\alpha}^{\beta} k(s) \, ds . \]

然后证明

(a) $ \ell \in C^{\infty}(\mathbb{R}, \mathbb{R}) $；

(b) $ \ell $ 是递增的；

(c) 对 $ t \le \alpha $ 有 $ \ell(t) = 0 $，且对 $ t \ge \beta $ 有 $ \ell(t) = 1 $。

6 设 $ -\infty < \alpha_{j} < \beta_{j} < \infty $，其中 $ j = 1, \ldots, m $，且 $ A := \prod_{j=1}^{m}(\alpha_{j}, \beta_{j}) \subset \mathbb{R}^{m} $。证明存在 $ g \in C^{\infty}(\mathbb{R}^{m}, \mathbb{R}) $，使得对 $ x \in A $ 有 $ g(x) > 0 $，且对 $ x \in A^{c} $ 有 $ g(x) = 0 $。

（提示：考虑

\[ g(x_{1}, \ldots, x_{m}) := k_{1}(x_{1}) \cdots k_{m}(x_{m}) \quad \text{对 } (x_{1}, \ldots, x_{m}) \in \mathbb{R}^{m} , \]

其中 $ k_{j}(t) := h(t - \alpha_{j})h(\beta_{j} - t) $，$ t \in [\alpha_{j}, \beta_{j}] $，$ j = 1, \ldots, m $。）

7 设 $ K \subset \mathbb{R}^{m} $ 是紧致的，$ U $ 是 $ K $ 的开邻域。则证明存在 $ f \in C^{\infty}(\mathbb{R}^{m}, \mathbb{R}) $，使得

(a) 对 $ x \in \mathbb{R}^{m} $ 有 $ f(x) \in [0, 1] $；

(b) 对 $ x \in K $ 有 $ f(x) = 1 $；

(c) 对 $ x \in U^{c} $ 有 $ f(x) = 0 $。

（提示：对 $ x \in K $，存在 $ \varepsilon_{x} > 0 $ 使得 $ A_{x} := \overline{\mathbb{B}}(x, \varepsilon_{x}) \subset U $。然后选取 $ g_{x} \in C^{\infty}(\mathbb{R}^{m}, \mathbb{R}) $ 使得对 $ y \in A_{x} $ 有 $ g_{x}(y) > 0 $（见习题 6），并选取 $ x_{0}, \ldots, x_{n} \in K $ 使得 $ K \subset \bigcup_{j=0}^{n} A_{x_{j}} $。则 $ G := g_{x_{0}} + \cdots + g_{x_{n}} $ 属于 $ C^{\infty}(\mathbb{R}^{m}, \mathbb{R}) $，且数 $ \delta := \min_{x \in K} G(x) > 0 $。最后，令 $ \ell $ 如习题 5 中所定义，$ \alpha = 0 $，$ \beta = \delta $，并令 $ f := \ell \circ G $。）

8 定义 $ E_{0} := \left\{ u \in C^{1}([0, 1], \mathbb{R}) ;\ u(0) = 0, u(1) = 1 \right\} $，并对 $ u \in E_{0} $ 令 $ f(u) := \int_{0}^{1} [t\dot{u}(t)]^{2} \, dt $。则证明 $ \inf\left\{ f(u) ;\ u \in E_{0} \right\} = 0 $，尽管不存在 $ u_{0} \in E_{0} $ 使得 $ f(u_{0}) = 0 $。

9 对 $ a, b \in \mathbb{R}^{m} $，考虑具有固定边界条件的变分问题

\[ \int_{\alpha}^{\beta} |\dot{u}(t)| \, dt \Rightarrow \mathrm{Min} \quad \text{对 } u \in C^{1}([\alpha, \beta], \mathbb{R}^{m}) , \quad u(\alpha) = a , \quad u(\beta) = b . \tag{6.24} \]

(a) 求 (6.24) 的欧拉–拉格朗日方程的所有具有 $ |\dot{u}(t)| = \text{常数} $ 性质的解。

(b) 当 $ m = 2 $ 且在 $ \dot{u}_{1}(t) \ne 0 $ 与 $ \dot{u}_{2}(t) \ne 0 $（$ t \in [\alpha, \beta] $）的假设下，(6.24) 的欧拉–拉格朗日方程如何写？

10 求下列情形的欧拉–拉格朗日方程：

(a) $ \int_{\alpha}^{\beta} u\sqrt{1 + \dot{u}^{2}} \, dt \Rightarrow \mathrm{Min} \quad \text{对 } u \in C^{1}([\alpha, \beta], \mathbb{R}) $；

(b) $ \int_{\alpha}^{\beta} \sqrt{(1 + \dot{u}^{2})/u} \, dt \Rightarrow \mathrm{Min} \quad \text{对 } u \in C^{1}([\alpha, \beta], (0, \infty)) $。

11 设 $ f $ 由 (6.6) 定义，其中 $ L \in C^{0,2}([\alpha, \beta] \times (X \times \mathbb{R}^{m}), \mathbb{R}) $。证明 $ f \in C^{2}(U, \mathbb{R}) $，且

\[ \begin{aligned} \partial^{2} f(u)[h, k] &= \int_{\alpha}^{\beta} \Big\{ \partial_{2}^{2} L(\cdot, u, \dot{u})[h, k] + \partial_{2}\partial_{3} L(\cdot, u, \dot{u})[h, \dot{k}] \\ &\qquad{}+ \partial_{2}\partial_{3} L(\cdot, u, \dot{u})[\dot{h}, k] + \partial_{3}^{2} L(\cdot, u, \dot{u})[\dot{h}, \dot{k}] \Big\} dt . \end{aligned} \]

对 $ h, k \in E_{1} $。由此导出一个充分条件，以保证欧拉–拉格朗日方程的解 $ u $ 是 $ f $ 的局部极小值。

12 设 $ T(\dot{q}) := m|\dot{q}|^{2}/2 $，且对 $ q \in \mathbb{R}^{3} $ 有 $ U(t, q) = U(q) $。证明**总能量** $ E := T + U $ 沿变分问题

\[ \int_{t_{0}}^{t_{1}} [T(\dot{q}) - U(q)] \, dt \Rightarrow \mathrm{Min} \quad \text{对 } q \in C^{2}([t_{0}, t_{1}], \mathbb{R}^{3}) . \]

的欧拉–拉格朗日方程的每个解 $ q $ 保持常数。
