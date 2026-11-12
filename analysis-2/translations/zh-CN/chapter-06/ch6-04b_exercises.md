##### 习题

1 证明注 4.7(b) 中的结论。

2 对 $ f \in S(I) $，证明 $ \overline{\int_{\alpha}^{\beta} f} = \int_{\alpha}^{\beta} \overline{f} $。

3 两个分段连续函数 $ f_1, f_2 : I \to E $ 仅在其间断点处不同。证明 $ \int_{\alpha}^{\beta} f_1 = \int_{\alpha}^{\beta} f_2 $。

4 对 $ f \in S(I, \mathbb{K}) $ 与 $ p \in [1, \infty) $，设
\[ \|f\|_p := \left( \int_{\alpha}^{\beta} |f(x)|^p \, dx \right)^{1/p} , \]
并令 $ p' := p/(p - 1) $ 表示 $ p $ 的**对偶指数**（其中 $ 1/0 = \infty $）。
证明下列结论：
(i) 对 $ f, g \in S(I, \mathbb{K}) $，**赫尔德不等式**成立，即
\[ \left| \int_{\alpha}^{\beta} f g \, dx \right| \le \int_{\alpha}^{\beta} |f g| \, dx \le \|f\|_p \|g\|_{p'} . \]
(ii) 对 $ f, g \in S(I, \mathbb{K}) $，**闵可夫斯基不等式**成立，即
\[ \|f + g\|_p \le \|f\|_p + \|g\|_p . \]
(iii) $ (C(I, \mathbb{K}), \|\cdot\|_p) $ 是赋范向量空间。
(iv) $ (C(I, \mathbb{K}), \|\cdot\|_2) $ 是内积空间。
(v) 对 $ f \in C(I, \mathbb{K}) $ 与 $ 1 \le p \le q \le \infty $，有
\[ \|f\|_p \le (\beta - \alpha)^{1/p - 1/q} \|f\|_q . \]
（提示：(i) 与 (ii) 参看应用 IV.2.16(b) 与 (c) 的证明。(v) 利用 (i)。）

5 证明若 $ q \ge p $，则 $ C(I, \mathbb{K}) $ 上的范数 $ \|\cdot\|_q $ 比 $ \|\cdot\|_p $ **强**\footnote{若 $ \|\cdot\|_1 $ 与 $ \|\cdot\|_2 $ 是向量空间 $ E $ 上的范数，若存在常数 $ K \ge 1 $ 使得对所有 $ x \in E $ 有 $ \|x\|_2 \le K \|x\|_1 $，则称 $ \|\cdot\|_1 $ 比 $ \|\cdot\|_2 $ 强。在相反的情形下称其为弱。}。当 $ p \ne q $ 时这些范数不等价

6 证明对 $ 1 \le p < \infty $，$ (C(I, \mathbb{K}), \|\cdot\|_p) $ 不完备。因此对 $ 1 \le p < \infty $，$ (C(I, \mathbb{K}), \|\cdot\|_p) $ 不是巴拿赫空间，且 $ (C(I, \mathbb{K}), \|\cdot\|_2) $ 不是希尔伯特空间。

7 设 $ f \in C^1(I, \mathbb{R}) $ 满足 $ f(\alpha) = f(\beta) = 0 $。证明
\[ \|f\|_\infty^2 \le \frac{1}{2} \int_{\alpha}^{\beta} (f^2 + (f')^2) \, dx . \tag{4.10} \]
当 $ f \in C^1(I, \mathbb{R}) $ 但仅有 $ f(\alpha) = 0 $ 时，(4.10) 应如何修改？
（提示：设 $ x_0 \in I $ 满足 $ f^2(x_0) = \|f\|_\infty^2 $。证明 $ f^2(x_0) = \int_{\alpha}^{x_0} f f' \, dx - \int_{x_0}^{\beta} f f' \, dx $。然后应用习题 I.10.10。）

8 设 $ f \in C^1(I, \mathbb{K}) $ 满足 $ f(\alpha) = 0 $。证明
\[ \int_{\alpha}^{\beta} |f f'| \, dx \le \frac{\beta - \alpha}{2} \int_{\alpha}^{\beta} |f'|^2 \, dx . \]
（提示：若 $ F(x) := \int_{\alpha}^{x} |f'(\xi)| \, d\xi $，则 $ |f(x)| \le F(x) $ 且 $ \int_{\alpha}^{\beta} 2 F F' \, dx = F^2(\beta) $。）

9 设函数 $ f \in C^2(I, \mathbb{R}) $ 满足 $ f \le f'' $ 且 $ f(\alpha) = f(\beta) = 0 $。证明
\[ 0 \le \max_{x \in I} f'(x) \le \frac{1}{\sqrt{2}} \int_{\alpha}^{\beta} (f^2 + (f')^2) \, dx . \]
（提示：令 $ x_0 \in I $ 使得 $ f'(x_0) = \|f'\|_\infty $。然后证明 $ f'(x_0) \le 0 $，从而 $ f = 0 $。若 $ f'(x_0) > 0 $，则存在 $ \xi \in (x_0, \beta) $ 使得对 $ x \in [x_0, \xi) $ 有 $ f'(x) > 0 $ 且 $ f'(\xi) = 0 $（见定理 IV.2.3）。然后考虑 $ \int_{x_0}^{\xi} (f f' - f' f'') \, dx $ 并应用习题 7。）

10 证明**积分第二中值定理**：设 $ f \in C(I, \mathbb{R}) $ 且 $ g \in C^1(I, \mathbb{R}) $ 单调。\footnote{可以证明，当 $ g $ 仅假定为单调、因而一般不是正则的时候，积分第二中值定理仍然成立。}则存在 $ \xi \in I $ 使得
\[ \int_{\alpha}^{\beta} f(x) g(x) \, dx = g(\alpha) \int_{\alpha}^{\xi} f(x) \, dx + g(\beta) \int_{\xi}^{\beta} f(x) \, dx . \]
（提示：令 $ F(x) := \int_{\alpha}^{x} f(s) \, ds $，证明
\[ \int_{\alpha}^{\beta} f(x) g(x) \, dx = F g \big|_{\alpha}^{\beta} - \int_{\alpha}^{\beta} F(x) g'(x) \, dx . \]
命题 4.16 可用于右侧的积分。）

11 设 $ a > 0 $ 且 $ f \in C([-a, a], E) $。证明
(i) 若 $ f $ 为奇，则 $ \int_{-a}^{a} f(x) \, dx = 0 $；
(ii) 若 $ f $ 为偶，则 $ \int_{-a}^{a} f(x) \, dx = 2 \int_{0}^{a} f(x) \, dx $。

12 通过下式定义 $ F : [0, 1] \to \mathbb{R} $：
\[ F(x) := \begin{cases} x^2 \sin(1/x^2) , & x \in (0, 1] , \\ 0 , & x = 0 . \end{cases} \]
验证：
(i) $ F $ 可微；
(ii) $ F' \notin S(I, \mathbb{R}) $。
也就是说，存在既非跳跃连续、却仍有原函数的函数。（(ii) 的提示：注 1.1(d)。）

13 设 $ f \in C([a, b], \mathbb{R}) $ 且 $ g, h \in C^1([\alpha, \beta], [a, b]) $。进一步设
\[ F : [\alpha, \beta] \to \mathbb{R} , \quad x \mapsto \int_{g(x)}^{h(x)} f(\xi) \, d\xi . \]
证明 $ F \in C^1([\alpha, \beta], \mathbb{R}) $。$ F' $ 又如何？

14 设 $ n \in \mathbb{N}^\times $ 且 $ a_1, \ldots, a_n \in \mathbb{R} $。证明存在 $ \alpha \in (0, \pi) $ 使得
\[ \sum_{k=1}^{n} a_k \cos(k\alpha) = 0 . \]
（提示：利用推论 4.17，其中 $ f(x) := \sum_{k=1}^{n} a_k \cos(kx) $ 且 $ I := [0, \pi] $。）

15 证明
\[ \mathrm{(i)}\quad \lim_{n \to \infty} n \left( \frac{1}{n^2} + \frac{1}{(n+1)^2} + \cdots + \frac{1}{(2n-1)^2} \right) = \frac{1}{2} , \]
\[ \mathrm{(ii)}\quad \lim_{n \to \infty} \sum_{k=nq}^{np-1} \frac{1}{k} = \log \frac{p}{q} \quad \text{对 } p, q \in \mathbb{N} \text{ 且 } q < p . \]
（提示：考虑 $ f(x) := 1/(1+x)^2 $ 在 $ [0, 1] $ 上的适当黎曼和，或对 (ii)，考虑 $ f(x) := 1/x $ 在 $ [q, p] $ 上的黎曼和。）

16 设 $ f \in C(I \times I, E) $ 且
\[ g : I \to E , \quad x \mapsto \int_I f(x, y) \, dy . \]
证明 $ g \in C(I, E) $。
