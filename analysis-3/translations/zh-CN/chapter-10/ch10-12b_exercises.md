又，对 $ \xi,\eta \in [0,\infty) $，Young 不等式给出 $ \xi^{p-1}\eta \le \frac{p-1}{p}\xi^p + \frac{1}{p}\eta^p $，故

\[ |v(x,0)|^p \le (p-1)\int_0^\infty |v(x,y)|^p dy + \int_0^\infty |\partial_n v(x,y)|^p dy . \]

令 $ c_p := \max\{p-1,1\} $，则由富比尼–托内利定理可得

\[ \int_{\mathbb{R}^{n-1}} |v(x,0)|^p dx \le c_p \left( \int_{\mathbb{R}^{n-1}\times\mathbb{R}} |v(x,y)|^p d(x,y) + \int_{\mathbb{R}^{n-1}\times\mathbb{R}} |\partial_n v(x,y)|^p d(x,y) \right) . \tag{6.25} \]

因此

\[ \|\gamma v\|_{L_p(\mathbb{R}^{n-1})} \le c \|v\|_{\widehat{H}_p^1(\mathbb{R}^n)} \quad \text{对 } v \in \widehat{H}_p^1(\mathbb{R}^n) , \]

其中 $ c := c_p^{1/p} $。这证明了定理。■

6.25 注 记 $ \mathbb{H}^n $ 为 $ \mathbb{R}^n $ 的上半空间：

\[ \mathbb{H}^n := \mathbb{R}^{n-1}\times(0,\infty) = \{ (x,y) \in \mathbb{R}^{n-1}\times\mathbb{R} ; y > 0 \} . \]

则 $ \Gamma = \mathbb{R}^{n-1}\times\{0\} = \partial\mathbb{H}^n $。若令

\[ \widehat{H}_p^1(\mathbb{H}^n) := ( \{ u|_{\mathbb{H}^n} ; u \in C_c^1(\mathbb{R}^n) \}, \|\cdot\|_{1,p} ) , \]

则 $ \widehat{H}_p^1(\mathbb{H}^n) $ 是 $ L_p(\mathbb{H}^n) $ 的向量子空间，且由一条与 (6.25) 类似的陈述可得

\[ \gamma \in \mathcal{L}(\widehat{H}_p^1(\mathbb{H}^n), L_p(\mathbb{R}^{n-1})) . \]

此时，对 $ u \in \widehat{H}_p^1(\mathbb{R}^n) $，$ \gamma u $ 是 $ u $ 在**边界** $ \partial\mathbb{H}^n $ 上的**迹**。■

##### 习题

1 设 $ B \in \mathcal{L}(n) $，$ a \in \mathbb{R}^{n+1} $。记

\[ Z_a(B) := \{ (x,0) + ta \in \mathbb{R}^{n+1} ; x \in B,\ t \in [0,1] \} \]

为以 $ B $ 为底、$ a $ 为棱的柱体，并令

\[ K_a(B) := \{ (1-t)(x,0) + ta \in \mathbb{R}^{n+1} ; x \in B,\ t \in [0,1] \} \]

为以 $ B $ 为底、$ a $ 为顶点的锥体。证明：

(a) $ \lambda_{n+1}(Z_a(B)) = |a_{n+1}|\lambda_n(B) $；

(b) $ \lambda_{n+1}(K_a(B)) = |a_{n+1}|\lambda_n(B)/(n+1) $。

若把 $ |a_{n+1}| $ 解释为柱体 $ Z_a(B) $ 或锥体 $ K_a(B) $ 的高，则 (b) 说明 $ n $ 维锥体的体积等于 $ n $ 个具有相同底与高的柱体的体积之和。

2 设 $ 0 < r < a $，$ V_{a,r} $ 是 $ \mathbb{R}^3 $ 中由 2-环面 $ \mathbb{T}^2_{a,r} $ 围成的区域。证明 $ V_{a,r} = 2\pi^2 ar^2 $。

3 设 $ J \subset \mathbb{R} $ 是以 $ a := \inf J $ 与 $ b := \sup J $ 为端点的区间。又设 $ f \in \mathcal{L}_0(J, \mathbb{R}^+) $，并记

\[ R_f := \{ (x,t) \in \mathbb{R}^n \times J ; |x| \le f(t) \} \]

为 $ f $ 的图像绕 $ t $ 轴旋转所得的**旋转体**。证明

\[ \lambda_{n+1}(R_f) = \omega_n \int_a^b (f(t))^n dt , \]

其中 $ \omega_n $ 是 $ \mathbb{B}^n $ 的体积。在 $ n = 2 $ 的情形从几何上解释这个公式。

4 设 $ K $ 是 $ \mathbb{R}^n $ 中的紧集，且对 $ \rho \in \mathcal{L}_1(K, \mathbb{R}^+) $ 有 $ \rho_K := \int_K \rho(x) dx > 0 $。则

\[ S(K,\rho) := \frac{1}{\rho_K} \int_K x\rho(x) dx \in \mathbb{R}^n \]

是 $ K $ 关于密度 $ \rho $ 的**形心**。我们令 $ S(K) := S(K,1) $。现在设 $ J := [a,b] $ 是 $ \mathbb{R} $ 中的紧致完全区间，并令 $ f \in \mathcal{L}_0(J, \mathbb{R}^+) $。再令

\[ A_f := \{ (x,y) \in \mathbb{R}^2 ; 0 \le y \le f(x),\ x \in J \} , \]

并记 $ R_f $ 为 $ f $ 生成的 $ \mathbb{R}^3 $ 中的旋转体（绕 $ x $ 轴旋转）。证明：

(a) 对 $ f \in \mathcal{L}_1(J, \mathbb{R}^+) $，

\[ S(A_f) = (S_1(A_f), S_2(A_f)) = \frac{1}{\|f\|_1} \left( \int_a^b xf(x) dx, \frac{1}{2}\int_a^b (f(x))^2 dx \right) . \]

(b) 对 $ f \in \mathcal{L}_2(J, \mathbb{R}^+) $，

\[ S(R_f) = \left( \frac{1}{\|f\|_2^2} \int_a^b t(f(t))^2 dt, 0, 0 \right) . \]

(c) 对 $ f \in \mathcal{L}_1(J, \mathbb{R}^+) $，有**古尔丁第一法则**

\[ \lambda_3(R_f) = \pi \int_a^b (f(x))^2 dx = 2\pi S_2(A_f)\lambda_2(A_f) . \]

换言之，旋转体的体积等于一个子午截面的面积\footnote{即与包含旋转轴的平面的交。}乘以该截面的形心在整周旋转中画出的圆的周长\footnote{对并非由某个图像旋转得到的旋转体，古尔丁第一法则同样成立；见习题 XII.1.11。}。

5 (a) 对 $ \alpha \in [0,\pi/2) $，令 $ a := (\cos\alpha, 0, \sin\alpha) $。确定柱体 $ Z_a(\mathbb{B}_2) $ 与锥体 $ K_a(\mathbb{B}_2) $ 关于密度 $ 1 $ 的形心。

(b) 对 $ \lambda > 0 $，令 $ A_\lambda := \{ (x,y) \in \mathbb{R}^2 ; 0 \le y \le e^{-\lambda x},\ x \ge 0 \} $。证明 $ S(A_\lambda) \in A_\lambda $。

(c) 给出一个 $ S(A_f) \notin A_f $ 的例子。

6 设 $ K \subset \mathbb{R}^n $ 是凸紧集。验证对 $ \rho \in \mathcal{L}_1(K, \mathbb{R}^+) $ 有 $ S(K,\rho) \in K $。

7 记 $ \Delta_n := \{ x \in \mathbb{R}^n ; x_j \ge 0,\ \sum_{j=1}^n x_j \le 1 \} $ 为 $ \mathbb{R}^n $ 中的**标准单纯形**。证明：

(a) $ \lambda_n(\Delta_n) = 1/n! $。

(b) $ S(\Delta_n) = (1/(n+1), 1/(n+1), \ldots, 1/(n+1)) $。

8 给定 $ f \in \mathcal{L}_1(\mathbb{R}^m, \mathbb{K}) $、$ g \in \mathcal{L}_1(\mathbb{R}^n, E) $，定义 $ F(x,y) := f(x)g(y) $，$ (x,y) \in \mathbb{R}^m\times\mathbb{R}^n $。证明 $ F $ 属于 $ \mathcal{L}_1(\mathbb{R}^{m+n}, E) $，且

\[ \int_{\mathbb{R}^{m+n}} F(x,y) d(x,y) = \int_{\mathbb{R}^m} f(x) dx \int_{\mathbb{R}^n} g(y) dy . \]

9 对 $ D := \{ (x,y) \in \mathbb{R}^2 ; x,y \ge 0,\ x+y \le 1 \} $，证明

\[ \int_D x^m y^n d(x,y) = \frac{1}{n+1} \mathrm{B}(m+1, n+2) \quad \text{对 } m,n \in \mathbb{N} . \]

10 证明 $ \int_{[0,1]\times[0,1]} y/\sqrt{x} d(x,y) = 1 $。

11 证明对 $ \varphi \in C_c^1(\mathbb{R}^n, E) $ 与 $ j \in \{1,\ldots,n\} $ 有 $ \int_{\mathbb{R}^n} \partial_j\varphi dx = 0 $。

12 对下列每个映射 $ f: (0,1)\times(0,1) \to \mathbb{R} $，计算

\[ \int_0^1\int_0^1 f(x,y) dx dy , \quad \int_0^1\int_0^1 f(x,y) dy dx , \quad \int_0^1\int_0^1 |f(x,y)| dx dy , \quad \int_0^1\int_0^1 |f(x,y)| dy dx . \]

(a) $ f(x,y) := (x-y)/(x^2+y^2)^{3/2} $。

(b) $ f(x,y) := 1/(1-xy)^\alpha $，$ \alpha > 0 $。

13 设 $ p,q \in [1,\infty] $。证明：

(a) 当 $ p \ne q $ 时 $ L_p(\mathbb{R}^n) \not\subset L_q(\mathbb{R}^n) $。

(b) 若 $ X \subset \mathbb{R}^n $ 是开集且有界，则当 $ p > q $ 时 $ L_p(X) \subseteq L_q(X) $。
