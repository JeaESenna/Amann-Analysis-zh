于是由 (7.23) 可得

\[ \int_X (\partial^\alpha \varphi) u \, dx = (-1)^{|\alpha|} \int_X \varphi u_\alpha \, dx \quad \text{对 } \varphi \in \mathcal{D}(X) . \]

这表明 $ u_\alpha $ 是 $ u $ 的 $ \alpha $ 阶弱导数，并且我们看到 $ u $ 是 $ m $ 次弱可微的。因为对 $ |\alpha| \le m $ 有 $ u_\alpha \in L_p(X) $，所以我们也有 $ u \in W_p^m(X) $，并且显然 $ u_j \to u $ 在 $ W_p^m(X) $ 中。因此 $ W_p^m(X) $ 是完备的。■

7.28 推论 $ W_2^m(X) $ 是希尔伯特空间，其内积为

\[ (u|v)_m := \sum_{|\alpha|\le m} (\partial^\alpha u|\partial^\alpha v) \quad \text{对 } u, v \in W_2^m(X) . \]

我们将通过证明 Sobolev 空间的所谓迹定理来结束本节。对 $ m \in \mathbb{N} $ 与 $ 1 \le p < \infty $，令

\[ \widehat{H}_p^m(X) := ( \{ u|X ; u \in C_c^m(\mathbb{R}^n) \}, \|\cdot\|_{m,p} ) . \]

显然 $ \widehat{H}_p^m(X) $ 是 $ W_p^m(X) $ 的向量子空间。若 $ X $ 的边界 $ \partial X $ 足够好（例如，若 $ \overline{X} \subset \mathbb{R}^n $ 是带边的 $ n $ 维子流形（见 XI.1 节））就可以证明 $ \widehat{H}_p^m(X) $ 在 $ W_p^m(X) $ 中稠密。特别地，$ X := \mathbb{R}^n $ 或 $ X := \mathbb{H}^n $ 即属此情形。

7.29 定理（迹定理） 设 $ 1 \le p < \infty $ 且 $ X = \mathbb{R}^n $ 或 $ X = \mathbb{H}^n $。则存在唯一的迹算子 $ \gamma \in \mathcal{L}(W_p^1(X), L_p(\mathbb{R}^{n-1})) $，使得对 $ u \in \mathcal{D}(\mathbb{R}^n) $ 有 $ \gamma u = u|\mathbb{R}^{n-1} $（更精确地说，对 $ u \in \widehat{H}_p^1(X) $）。这里 $ \mathbb{R}^{n-1} $ 与 $ \mathbb{R}^{n-1} \times \{0\} \subset \mathbb{R}^n $ 等同。

证明 因为 $ \widehat{H}_p^1(X) $ 在 $ W_p^1(X) $ 中稠密，所以结论由命题 6.24、注 6.25 与定理 VI.2.6 推出。■

本定理特别说明，每个元素 $ u \in W_p^1(\mathbb{H}^n) $ 都有边界值 $ \gamma u \in L_p(\partial\mathbb{H}^n) $。由于 $ u $ 在 $ \overline{\mathbb{H}}^n $ 上一般并不连续，$ \gamma u $ 不能简单地通过限制来确定。

迹的存在性是用泛函分析方法处理偏微分方程边值问题的基础。

##### 习题

1 对 $ a > 0 $，计算 $ \chi_{[-a,a]} * \chi_{[-a,a]} $ 与 $ \chi_{[-a,a]} * \chi_{[-a,a]} * \chi_{[-a,a]} $。

2 设 $ p, p' \in (1, \infty) $ 满足 $ 1/p + 1/p' = 1 $。证明：

(a) 对 $ (f, g) \in \mathcal{L}_p \times \mathcal{L}_{p'} $，$ f * g $ 属于 $ C_0 $，且 $ \|f * g\|_\infty \le \|f\|_p \|g\|_{p'} $。

(b) 卷积是从 $ L_p \times L_{p'} $ 到 $ C_0 $ 的良定义、双线性、连续映射。

3 设 $ p, q, r \in [1, \infty] $ 满足 $ 1/p + 1/q = 1 + 1/r $。验证

\[ * : \mathcal{L}_p \times \mathcal{L}_q \to \mathcal{L}_r , \quad (f, g) \mapsto f * g \]

是良定义、双线性、连续映射。并验证**广义杨不等式**

\[ \|f * g\|_r \le \|f\|_p \|g\|_q \quad \text{对 } (f, g) \in \mathcal{L}_p \times \mathcal{L}_q . \]

（提示：$ r = 1 $ 与 $ r = \infty $ 的情形分别由定理 7.3 与习题 2 覆盖。对 $ r \in (1, \infty) $，考虑

\[ |f(x - y)g(y)| = |f(x - y)|^{1-p/r} \left( |f(x - y)|^p |g(y)|^q \right)^{1/r} |g(y)|^{1-q/r} \]

然后应用赫尔德不等式。）

4 证明对 $ (f, g) \in C_c^k \times L_{1,\mathrm{loc}} $，$ f * g $ 属于 $ C^k $。

5 设 $ f \in \mathcal{L}_{1,\mathrm{loc}} $ 对给定的 $ \alpha \in \mathbb{N}^n $ 满足 $ \partial^\alpha f \in \mathcal{L}_{1,\mathrm{loc}} $。验证

\[ \partial^\alpha (f * \varphi) = (\partial^\alpha f) * \varphi = f * \partial^\alpha \varphi \quad \text{对 } \varphi \in BC^\infty . \]

6 给出 $ \mathrm{Funct} $ 的一个向量子空间，使得 $ (\mathbb{R}, +) $ 在其中不是线性可表示的。

7 给定 $ p \in [1, \infty) $，设 $ K \subset L_p $ 是紧的。证明对每个 $ \varepsilon > 0 $ 都存在 $ \delta > 0 $，使得对一切 $ f \in K $ 与一切满足 $ |a| < \delta $ 的 $ a \in \mathbb{R}^n $ 都有 $ \|\tau_a f - f\|_p < \varepsilon $。（提示：回忆定理 III.3.10 与定理 5.1(iv)。）

8 证明 $ (L_1, *) $ 的每个非平凡理想都在 $ L_1 $ 中稠密。

9 设 $ p \in [1, \infty] $，并用 $ k $ 表示例 7.12(a) 中的高斯核。证明：

(a) 对 $ \alpha \in \mathbb{N}^n $ 有 $ \partial^\alpha k \in \mathcal{L}_p $。

(b) 对 $ u \in L_p $ 有 $ k * u \in BUC^\infty $。

10 设 $ f \in \mathcal{L}_1 $，并设对某个 $ \alpha \in \mathbb{N}^n $ 有 $ \partial^\alpha f \in \mathcal{L}_1 $。证明

\[ \int (\partial^\alpha f) \varphi \, dx = (-1)^{|\alpha|} \int f \partial^\alpha \varphi \, dx \quad \text{对 } \varphi \in BC^\infty . \]

11 设 $ V \in \{ \mathrm{Funct}, B, L_p ; 1 \le p \le \infty \} $。证明 $ (\mathbb{R}^n, +) $ 通过平移在 $ V $ 上的线性表示是群同构。

12 设 $ f, g, h \in \mathcal{L}_0 $，假设 $ f $ 与 $ g $ 可卷积、$ g $ 与 $ h $ 可卷积。若 $ f * g $ 与 $ h $ 可卷积且 $ f $ 与 $ g * h $ 可卷积，证明 $ (f * g) * h = f * (g * h) $。于是卷积在 $ L_1 $ 上是结合的。

13 证明分布导数

\[ \partial^\alpha : \mathcal{D}'(X) \to \mathcal{D}'(X) , \quad T \mapsto \partial^\alpha T \]

对每个 $ \alpha \in \mathbb{N}^n $ 都是良定义的线性映射。

14 证明当 $ 1 \le p \le \infty $、$ m \in \mathbb{N} $ 且 $ u \in W_p^m(X) $ 时，$ (f \mapsto f u) \in \mathcal{L}(BC^m(X), W_p^m(X)) $。

15 设 $ (T_j) $ 是 $ \mathcal{D}'(X) $ 中的序列，且 $ T \in \mathcal{D}'(X) $。若

\[ \lim_{j} \langle T_j, \varphi \rangle = \langle T, \varphi \rangle \quad \text{对 } \varphi \in \mathcal{D}(X) , \]

则称 $ (T_j) $ **在 $ \mathcal{D}'(X) $ 中收敛**于 $ T $。设 $ \{ \varphi_\varepsilon ; \varepsilon > 0 \} $ 是一个恒等逼近，并设 $ (\varepsilon_j) $ 是零序列。证明 $ (\varphi_{\varepsilon_j}) $ 在 $ \mathcal{D}'(\mathbb{R}^n) $ 中收敛于 $ \delta $。
