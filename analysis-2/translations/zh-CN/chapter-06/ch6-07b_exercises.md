##### 习题

1 设 $ f \in SC_{2\pi} $ 满足 $ \int_{0}^{2\pi} f = 0 $。证明存在 $ \xi \in [0, 2\pi] $ 使得 $ f(\xi) = 0 $。

2 验证：对由 $ f(t) := |\sin(t)| $（$ t \in [0, 2\pi] $）定义的 $ f \in C_{2\pi} $，有
\[ Sf = \frac{2}{\pi} - \frac{4}{\pi}\sum_{k=1}^{\infty}\frac{\cos(k\cdot)}{4k^{2} - 1} . \]

3 对 $ n \in \mathbb{N} $，
\[ D_{n} := \sqrt{2\pi}\sum_{k=-n}^{n}\mathrm{e}_{k} = 1 + 2\cos + 2\cos(2\cdot) + \cdots + 2\cos(n\cdot) \]
称为 $ n $ 次 **狄利克雷核**。证明
\[ D_{n}(t) = \frac{\sin((n + 1/2)t)}{\sin(t/2)} \quad \text{对 } t \in \mathbb{R} \qquad \text{且} \qquad \int_{0}^{2\pi} D_{n}(t)\, dt = 1 \quad \text{对 } n \in \mathbb{N} . \]

4 定义 $ f \in SC_{2\pi} $ 为
\[ f(t) := \begin{cases} \frac{\pi - t}{2} , & 0 < t < 2\pi , \\ 0 , & t = 0 . \end{cases} \]
证明
\[ Sf = \sum_{k=1}^{\infty}\frac{\sin(k\cdot)}{k} . \]
（提示：$ I_{n}(t) := \int_{\pi}^{t} D_{n}(s)\, ds = (t - \pi) + 2(\sin t + \cdots + \sin(nt)/n) $，其中 $ t \in (0, 2\pi) $。习题 3 与分部积分给出 $ |I_{n}(t)| \le 2[(n + 1/2)\sin(t/2)]^{-1} $，其中 $ t \in (0, 2\pi) $。）

5 证明 $ B_{n}(X)|[0, 1) $ 到 $ \mathbb{R} $ 的 1-周期延拓 $ \widetilde{B}_{n} $ 有如下傅里叶展开：
\[ \widetilde{B}_{2n} = 2\frac{(-1)^{n-1}(2n)!}{(2\pi)^{2n}}\sum_{k=1}^{\infty}\frac{\cos(2\pi k\cdot)}{k^{2n}} \qquad \text{对 } n \in \mathbb{N}^{\times} , \tag{7.24} \]
\[ \widetilde{B}_{2n+1} = 2\frac{(-1)^{n-1}(2n+1)!}{(2\pi)^{2n+1}}\sum_{k=1}^{\infty}\frac{\sin(2\pi k\cdot)}{k^{2n+1}} \qquad \text{对 } n \in \mathbb{N} . \tag{7.25} \]
（提示：只需在 $ [0, 1] $ 上证明 (7.24) 与 (7.25)。设 $ U_{2n} $ 与 $ U_{2n+1} $ 分别是 (7.24) 与 (7.25) 中级数在 $ [0, 1] $ 上的限制，证明对 $ m \in \mathbb{N}^{\times} $ 有 $ U'_{m+1} = (m + 1)U_{m} $。由习题 4 可得 $ U_{1}(t) = B_{1}(t) $。于是命题 6.6(iii) 表明，对 $ m \ge 2 $ 存在常数 $ c_{m} $，使得 $ U_{m}(t) = B_{m}(t) + c_{m} $ 对 $ t \in [0, 1] $ 成立。最后验证 $ \int_{0}^{1} U_{m}(t)\, dt = 0 $（命题 4.1(ii)）与 $ \int_{0}^{1} B_{m}(t)\, dt = 0 $（习题 6.4(iii)）。由此可得对 $ m \ge 2 $ 有 $ c_{m} = 0 $。）

6 验证渐近等价
\[ |B_{2n}| \sim 2\frac{(2n)!}{(2\pi)^{2n}} \sim 4\sqrt{\pi n}\left(\frac{n}{\pi e}\right)^{2n} . \]
（提示：习题 5 表明
\[ B_{2n} = \widetilde{B}_{2n}(0) = (-1)^{n-1}2\frac{(2n)!}{(2\pi)^{2n}}\sum_{k=1}^{\infty}\frac{1}{k^{2n}} . \]
再注意习题 6.6、应用 7.23(a) 与习题 6.3(a)。）

7 证明 **维尔廷格不等式**：对任意 $ -\infty < a < b < \infty $ 及满足 $ f(a) = f(b) = 0 $ 的 $ f \in C^{1}([a, b]) $，有
\[ \int_{a}^{b}|f|^{2} \le [(b - a)^{2}/\pi^{2}]\int_{a}^{b}|f'|^{2} . \]

常数 $ (b - a)^{2}/\pi^{2} $ 不能再减小。

（提示：作代换 $ x \mapsto \pi(x - a)/(b - a) $，只需考虑 $ a = 0 $ 与 $ b = \pi $。对满足 $ g(x) := f(x) $（$ x \in [0, \pi] $）与 $ g(x) := -f(-x) $（$ x \in [-\pi, 0] $）的 $ g : [-\pi, \pi] \to \mathbb{K} $，证明 $ g \in C^{1}([-\pi, \pi]) $ 且 $ g $ 为奇函数。于是由帕塞瓦尔定理与注 7.20(b) 可得
\[ \frac{1}{2\pi}\int_{-\pi}^{\pi}|g'|^{2} = \sum_{k \in \mathbb{Z}}|\widehat{g}'_{k}|^{2} \ge \sum_{k \ne 0}|\widehat{g}'_{k}|^{2} = \sum_{k \ne 0}|ik\widehat{g}_{k}|^{2} \ge \sum_{k \ne 0}|\widehat{g}_{k}|^{2} = \frac{1}{2\pi}\int_{-\pi}^{\pi}|g|^{2} \]
因为 $ \widehat{g}(0) = 0 $。结论由 $ g $ 的构造可得。）

8 对 $ f, g \in SC_{2\pi} $，
\[ f * g : \mathbb{R} \to \mathbb{K} , \quad x \mapsto \frac{1}{2\pi}\int_{0}^{2\pi} f(x - y)g(y)\, dy \]
称为 $ f $ 与 $ g $ 的 **卷积**。证明

(i) $ f * g = g * f $；

(ii) 若 $ f, g \in C_{2\pi} $，则 $ f * g \in C_{2\pi} $；

(iii) $ \mathrm{e}_{n} * \mathrm{e}_{m} = \delta_{nm}\mathrm{e}_{n} $，其中 $ m, n \in \mathbb{Z} $。

9 记 $ D_{n} $ 为 $ n $ 次狄利克雷核。证明若 $ f \in SC_{2\pi} $，则 $ S_{n}f = D_{n} * f $。

10 验证注 7.17(c) 的陈述：

(i) $ \ell_{2}(\mathbb{Z}) $ 是希尔伯特空间；

(ii) $ SC_{2\pi} \to \ell_{2}(\mathbb{Z}) $，$ f \mapsto (\sqrt{2\pi}\,\widehat{f}_{k})_{k \in \mathbb{Z}} $ 是线性等距。

11 证明 **广义帕塞瓦尔定理**：
\[ \frac{1}{2\pi}\int_{0}^{2\pi} f\overline{g}\, dt = \sum_{k=-\infty}^{\infty}\widehat{f}_{k}\overline{\widehat{g}_{k}} \quad \text{对 } f, g \in SC_{2\pi} . \]

（提示：注意
\[ z\overline{w} = \frac{1}{4}(|z + w|^{2} - |z - w|^{2} + i|z + iw|^{2} - i|z - iw|^{2}) \quad \text{对 } z, w \in \mathbb{C} , \]
并应用推论 7.16。）
