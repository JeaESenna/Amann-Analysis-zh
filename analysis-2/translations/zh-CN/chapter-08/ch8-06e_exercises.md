##### 习题

1 设 $ f $ 在 $ U $ 中全纯，且 $ z_{0} \in U $ 满足 $ f'(z_{0}) \ne 0 $。此外，设 $ g : \mathbb{C} \to \mathbb{C} $ 亚纯，且在 $ w_{0} := f(z_{0}) $ 处有单极点。证明 $ g \circ f $ 在 $ z_{0} $ 处有单极点，且 $ \operatorname{Res}(g \circ f, z_{0}) = \operatorname{Res}(g, w_{0})/f'(z_{0}) $。

2 设函数 $ f $ 在 $ \mathbb{C} $ 中亚纯，且在 $ \Omega(r_{0}, r_{1}) $（$ r_{0} > 0 $）中具有洛朗展开 $ \sum_{n=-\infty}^{\infty}c_{n}z^{n} $，对 $ n \in \mathbb{N} $ 满足 $ c_{-n} \ne 0 $。证明或反驳 $ f $ 有本性奇点。（提示：考虑 $ z \mapsto 1/(z - 1) $ 在 $ \Omega(1, 2) $ 中的情形。）

3 设 $ a, b \in \mathbb{C} $ 满足 $ 0 < \left|a\right| < \left|b\right| $，且

\[ f : \mathbb{C}\setminus\{a,b\} \to \mathbb{C} , \quad z \mapsto \frac{a - b}{(z - a)(z - b)} . \]

(a) 确定 $ f $ 在 $ \Omega(0,\left|a\right|) $、$ \Omega(\left|a\right|,\left|b\right|) $ 与 $ \Omega(\left|b\right|,\infty) $ 中关于 $ 0 $ 的洛朗展开。

(b) $ f $ 在 $ a $ 处的洛朗展开是什么？（提示：几何级数。）

4 计算

\[ \int_{\partial\mathbb{D}}\frac{4\,dz}{1 + 4z^{2}} \quad \text{与} \quad \int_{\partial\mathbb{D}}\frac{e^{z}\sin z}{(1 - e^{z})^{2}}\,dz . \]

5 全纯函数 $ f : U\setminus\{z_{0}\} \to \mathbb{C} $ 在 $ z_{0} \in U $ 处有孤立奇点。证明下列陈述等价：

(i) $ z_{0} $ 是 $ n $ 阶极点。

(ii) $ g : U\setminus\{z_{0}\} \to \mathbb{C} $，$ z \mapsto (z - z_{0})^{n}f(z) $ 在 $ z_{0} $ 处有可去奇点，且 $ g(z_{0}) \ne 0 $。

(iii) 存在 $ \varepsilon, M_{1}, M_{2} > 0 $ 使得 $ \mathbb{D}(z_{0},\varepsilon) \subset U $，且

\[ M_{1}\left|z - z_{0}\right|^{-n} \le \left|f(z)\right| \le M_{2}\left|z - z_{0}\right|^{-n} \quad \text{对 } z \in \mathbb{D}^{\bullet}(z_{0},\varepsilon) . \]

6 证明：$ z_{0} \in U $ 是在 $ U\setminus\{z_{0}\} $ 中全纯的函数 $ f $ 的极点，当且仅当 $ z \to z_{0} $ 时 $ \left|f(z)\right| \to \infty $。

7 设 $ z_{0} $ 是 $ f $ 的孤立奇点，$ f $ 在 $ U\setminus\{z_{0}\} $ 中全纯。证明下列陈述等价：

(i) $ z_{0} $ 是本性奇点。

(ii) 对每个 $ w_{0} \in \mathbb{C} $，存在 $ U\setminus\{z_{0}\} $ 中的序列 $ (z_{n}) $ 使得 $ \lim z_{n} = z_{0} $ 且 $ \lim f(z_{n}) = w_{0} $。

（提示：“(i)$\Rightarrow$(ii)” 若该陈述为假，则存在 $ w_{0} \in \mathbb{C} $ 与 $ r, s > 0 $ 使得 $ f(\mathbb{D}(z_{0},r)) \cap \mathbb{D}(w_{0},s) = \varnothing $。于是 $ g : \mathbb{D}^{\bullet}(z_{0},r) \to \mathbb{C} $，$ z \mapsto 1/(f(z) - w_{0}) $ 全纯且有界。借助定理 6.6 与习题 6，排除 $ g(z_{0}) = 0 $ 与 $ g(z_{0}) \ne 0 $ 这两种情形。）

8 确定

\[ z \mapsto e^{1/(z - 1)}/(e^{z} - 1) , \quad z \mapsto (z + 1)\sin(1/(z - 1)) . \]

的奇点。它们是极点还是本性奇点？

9 验证 $ i $ 是 $ z \mapsto \sin(\pi/(z^{2} + 1)) $ 的本性奇点。（提示：习题 7。）

10 设 $ U $ 单连通，$ a \in U $ 是 $ f $ 的孤立奇点，$ f $ 是 $ U\setminus\{a\} $ 中的全纯函数。证明 $ f $ 在 $ U\setminus\{a\} $ 中有原函数当且仅当 $ \operatorname{Res}(f,a) = 0 $。

11 证明注 6.21(a)。

12 对 $ p \in (0, 1) $，证明

\[ PV\int_{-\infty}^{\infty}\frac{e^{rx}}{1 + e^{x}}\,dx = \frac{\pi}{\sin(p\pi)} . \]

（提示：沿以 $ \pm R $ 与 $ \pm R + 2\pi i $ 为顶点的矩形路径逆时针对 $ z \mapsto e^{pz}(1 + e^{z})^{-1} $ 积分。）

13 设 $ \Gamma_{j} $ 是分段 $ C^{1} $ 曲线，由 $ \gamma_{j} \in C(I,\mathbb{C}) $ 参数化，$ j = 0, 1 $。又设 $ z \in \mathbb{C} $ 满足对 $ t \in I $ 有 $ \left|\gamma_{0}(t) - \gamma_{1}(t)\right| < \left|\gamma_{0}(t) - z\right| $。证明 $ w(\Gamma_{0},z) = w(\Gamma_{1},z) $。（提示：对 $ \gamma := (\gamma_{1} - z)/(\gamma_{0} - z) $，证明

\[ w([\gamma],0) = w(\Gamma_{1},z) - w(\Gamma_{0},z) \]

且对 $ t \in I $ 有 $ \left|1 - \gamma(t)\right| < 1 $。）

14 令 $ N(f) := \{\, z \in U\setminus P(f) \ ;\ f(z) = 0 \,\} $ 定义亚纯函数 $ f $ 的**零点集**。证明下列结论：

(i) 若 $ f \ne 0 $，则 $ N(f) $ 是 $ U $ 的离散子集。

(ii) 函数

\[ 1/f : U\setminus N(f) \to \mathbb{C} , \quad z \mapsto 1/f(z) \]

在 $ U $ 中亚纯，且 $ P(1/f) = N(f) $、$ N(1/f) = P(f) $。

（提示：(i) 解析函数的唯一性定理。(ii) 习题 6。）

15 证明 $ U $ 中亚纯函数的全体关于逐点加法与乘法构成一个域。

16 证明

\[ \int_{-\infty}^{\infty}\frac{x^{2}}{1 + x^{4}}\,dx = \frac{\pi}{\sqrt{2}} . \]

（提示：命题 6.23。）

17 验证

\[ \int_{0}^{\infty}\frac{\cos x}{x^{2} + a^{2}}\,dx = \frac{\pi e^{-a}}{2a} \quad \text{对 } a > 0 . \]

（提示：例 6.24(a)。）

18 设 $ f $ 在 $ U $ 中亚纯，$ f \ne 0 $，且 $ g := f'/f $。证明

(i) $ g $ 在 $ U $ 中亚纯且只有单极点；

(ii) 若 $ z_{0} $ 是 $ f $ 的 $ m $ 阶零点，则 $ \operatorname{Res}(g,z_{0}) = m $；

(iii) 若 $ z_{0} $ 是 $ f $ 的 $ m $ 阶极点，则 $ \operatorname{Res}(g,z_{0}) = -m $。

19 设 $ f $ 在 $ U $ 中亚纯，$ P $ 是 $ U\setminus\left(N(f) \cup P(f)\right) $ 中在 $ U $ 内同调于零的曲线。对 $ z \in N(f) \cup P(f) $，用 $ \nu(z) $ 表示 $ z $ 的重数。则

\[ \frac{1}{2\pi i}\int_{\Gamma}\frac{f'(z)}{f(z)}\,dz = \sum_{n\in N(f)}w(\Gamma,n)\nu(n) - \sum_{p\in P(f)}w(\Gamma,p)\nu(p) . \]

20 对 $ 0 < a < b < 1 $，计算

\[ \frac{1}{2\pi i}\int_{\partial\mathbb{D}}\frac{2z - (a + b)}{z^{2} - (a + b)z + ab}\,dz . \]

21 确定 $ \int_{-\infty}^{\infty}dx/(x^{4} + 4x^{2} + 3) $。
