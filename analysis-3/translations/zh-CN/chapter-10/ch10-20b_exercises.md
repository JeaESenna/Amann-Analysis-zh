力学（例如 [RS72]）。关于海森堡不确定性关系的解释，我们请读者参阅物理学文献。

##### 习题

1 设 $ a > 0 $。求下列函数的傅里叶变换：

(i) $ \sin(ax)/x $，(ii) $ 1/(a^2 + x^2) $，(iii) $ e^{-a|x|} $，(iv) $ (1 - |x|/a)\chi_{[-a,a]}(x) $，(v) $ (\sin(ax)/x)^2 $。

（提示：见 §VIII.6。）

2 设 $ f(x) := (\sin(x)/x)^2 $，$ g(x) := e^{2ix}f(x) $，$ x \in \mathbb{R}^\times $。试证 $ f * g = 0 $。

（提示：应用习题 1 与定理 9.16。）

3 证明：若 $ f \in \mathcal{L}_1 $ 满足 $ f * f = f $ 或 $ f * f = 0 $，则 $ f = 0 $。

4 设 $ \{\varphi_\varepsilon ; \varepsilon > 0\} $ 是恒等逼近，$ (\varepsilon_j) $ 是零序列。证明 $ (\mathcal{F}(\varphi_{\varepsilon_j})) $ 在 $ \mathcal{D}'(\mathbb{R}^n) $ 中收敛到 $ (2\pi)^{-n/2}\mathbf{1} $。

5 设 $ a, f \in \mathcal{S} $，证明 $ a(D)f = \widehat{a} * f $。

6 设 $ s \ge 0 $，定义 $ H^s := \{u \in L_2 ; \Lambda^s \widehat{u} \in L_2\} $，并对 $ u, v \in H^s $ 定义 $ (u|v)_{H^s} := (\Lambda^s \widehat{u} | \widehat{v})_{L_2} $。证明

(i) $ H^s := (H^s ; (\cdot|\cdot)_{H^s}) $ 是满足 $ H^0 = L_2 $ 的 Hilbert 空间，且

\[ \mathcal{S} \overset{d}{\hookrightarrow} H^s \overset{d}{\hookrightarrow} H^t \overset{d}{\hookrightarrow} L_2 \qquad \text{当 } s > t > 0 \text{ 时} ; \]

(ii) 对 $ m \in \mathbb{N} $，$ H^m = W_2^m $。

7 设 $ s > n/2 $，证明

(i) $ \mathcal{F}(H^s) \subset L_1 $，以及

(ii) $ H^2 \overset{d}{\hookrightarrow} C_0 $（索伯列夫嵌入定理）。

（提示：(i) 对 $ \Lambda^s |\widehat{u}| \Lambda^{-s} $ 应用柯西–施瓦茨不等式。(ii) 黎曼–勒贝格定理。）

8 设 $ \sigma \ge 0 $，$ \{k_\varepsilon ; \varepsilon > 0\} $ 是高斯逼近核。证明：

(i) $ T(t) := [f \mapsto k_{\sqrt{t}} * f] $ 对每个 $ t > 0 $ 属于 $ \mathcal{L}(H^\sigma) $。

(ii) $ T(t + s) = T(t)T(s) $，$ s, t > 0 $。

(iii) 对 $ f \in H^\sigma $，$ \lim_{t \to 0} T(t)f = f $。

(iv) $ T(t)(L_2) \subset \mathcal{S} $，$ t > 0 $。

(v) 设 $ f \in L_2 \cap C $，$ u(t, x) := T(t)f(x) $，$ (t, x) \in [0, \infty) \times \mathbb{R}^n $。证明 $ u $ 求解 $ \mathbb{R}^n $ 中热方程的初值问题，即

\[ \partial_t u - \Delta u = 0 \quad \text{在 } (0, \infty) \times \mathbb{R}^n \text{ 中} \quad \text{且} \quad u(0, \cdot) = f \quad \text{在 } \mathbb{R}^n \text{ 上}, \tag{9.20} \]

其中 $ u \in C^\infty((0, \infty) \times \mathbb{R}^n) \cap C(\mathbb{R}^+ \times \mathbb{R}^n) $，且 $ u $ 逐点满足 (9.20)。

注 令 $ T(0) := \operatorname{id}_{H^\sigma} $。则称 $ \{T(t) ; t \ge 0\} $ 为（$ H^\sigma $ 的）**高斯–魏尔斯特拉斯半群**。

（提示：(v) 为得到常微分方程的初值问题，对 (9.20) 关于 $ x \in \mathbb{R}^n $ 作傅里叶变换。）

9 设 $ n = 1 $，$ p_y(x) := \sqrt{2/\pi}\, y/(x^2 + y^2) $，$ (x, y) \in \mathbb{H}^2 $。又设 $ \sigma \ge 0 $。证明下列命题：

(i) $ P(y) := [f \mapsto p_y * f] $ 对每个 $ t > 0 $ 属于 $ \mathcal{L}(H^\sigma) $。

(ii) 对 $ y, z > 0 $，$ P(y + z) = P(y)P(z) $。

(iii) 对 $ f \in H^\sigma $，$ \lim_{y \to 0} P(y)f = f $。

(iv) $ P(y)(L_2) \subset \mathcal{S} $。

(v) 设 $ f \in L_2 \cap C $，令

\[ u(x, y) := (P(y)f)(x) \qquad \text{对 } (x, y) \in \mathbb{H}^2 . \]

则 $ u $ 属于 $ C^2(\mathbb{H}^2) \cap C(\overline{\mathbb{H}^2}) $，且求解半平面的 Dirichlet 边值问题：

\[ \Delta u = 0 \quad \text{在 } \mathbb{H}^2 \text{ 中} \quad \text{且} \quad u(\cdot, 0) = f \quad \text{在 } \mathbb{R} \text{ 上} . \]

注 令 $ P(0) := \operatorname{id}_{H^\sigma} $，则称 $ \{P(y) ; y \ge 0\} $ 为（$ H^\sigma $ 的）**泊松半群**。

（提示：(ii) 习题 1。(v) 例 9.21(b)。）

10 设 $ X $ 是 $ \mathbb{R}^n $ 中的开集，$ (X_k) $ 是 $ X $ 的递增相对紧开子集序列，且 $ X = \bigcup_k X_k $（见注 1.16(d) 与 (e)）。又设

\[ q_k(f) := \max_{|\alpha| \le k} \|\partial^\alpha f\|_{\infty, \overline{X}_k} \qquad \text{对 } f \in C^\infty(X) \text{ 与 } k \in \mathbb{N} , \]

以及

\[ d(f, g) := \sum_{k=0}^{\infty} 2^{-k} \frac{q_k(f - g)}{1 + q_k(f - g)} \qquad \text{对 } f, g \in C^\infty(X) . \]

证明 $ (C^\infty(X), d) $ 是完备度量空间。（提示：为证明完备性，应用对角线序列原理（注 III.3.11(a)）。）

11 证明 $ \mathcal{D} \overset{d}{\hookrightarrow} C^\infty $ 与 $ \mathcal{S} \overset{d}{\hookrightarrow} C^\infty $。

（提示：考虑 $ \varphi(\varepsilon \cdot) $，其中 $ \varphi $ 是 $ \overline{\mathbb{B}}^n $ 的截断函数。）

12 对 $ f \in \mathcal{D} $，令

\[ F(z) := \int e^{-i(z|x)_{\mathbb{C}^n}} f(x) \, dx \qquad \text{对 } z \in \mathbb{C} . \]

证明 $ F $ 属于 $ C^\omega(\mathbb{C}, \mathbb{C}) $。

（提示：参照注 V.3.4(c)，应用推论 3.19。）

13 证明：对 $ f \in \mathcal{D} \setminus \{0\} $，$ \widehat{f} $ 不属于 $ \mathcal{D} $。（提示：回忆习题 12 以及解析函数的唯一性定理（定理 V.3.13）。）
