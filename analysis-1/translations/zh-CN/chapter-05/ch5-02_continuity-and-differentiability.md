## 2 函数序列的连续性与可微性

在本节中，我们考虑其项为连续或连续可微函数的收敛函数序列，并研究极限函数在何种条件下“继承”这些相同性质。

在下文中，$ X := (X, d) $ 是度量空间，$ E := (E, |\cdot|) $ 是巴拿赫空间，$ (f_n) $ 是 $ X $ 上 $ E $ 值函数的序列。

##### 连续性

例 1.2(a) 表明，连续（甚至无限次可微）函数序列的逐点极限可能不是连续的。然而，如果收敛是一致收敛，那么极限函数的连续性就得到保证，如下面的定理所示。

2.1 定理 若 $ (f_n) $ 一致收敛到 $ f $，且几乎所有 $ f_n $ 在 $ a \in X $ 处连续，则 $ f $ 在 $ a $ 处也连续。

证明 设 $ \varepsilon > 0 $。因为 $ f_n $ 一致收敛到 $ f $，由注 1.3(e)，存在某个 $ N \in \mathbb{N} $，使得对所有 $ n \geq N $ 有 $ \|f_n - f\|_\infty < \varepsilon/3 $。由于几乎所有 $ f_n $ 在 $ a $ 处连续，我们可以假设 $ f_N $ 在 $ a $ 处连续。于是存在 $ a $ 在 $ X $ 中的邻域 $ U $，使得对所有 $ x \in U $ 有 $ |f_N(x) - f_N(a)| < \varepsilon/3 $。那么，对每个 $ x \in U $，我们有

\[ \begin{align*}\left|f(x)-f(a)\right|&\leq\left|f(x)-f_{N}(x)\right|+\left|f_{N}(x)-f_{N}(a)\right|+\left|f_{N}(a)-f(a)\right|\\&\leq2\left\|f-f_{N}\right\|_{\infty}+\left|f_{N}(x)-f_{N}(a)\right|<\varepsilon,\end{align*} \]

这证明了 $ f $ 在 $ a $ 处的连续性。

2.2 注 显然，若将 $ X $ 换为任意拓扑空间、将 $ E $ 换为度量空间，则定理 2.1 及其证明仍然成立。这对本节只涉及连续性的任何陈述也都成立。

##### 局部一致收敛

检查定理 2.1 的证明可以看出，如果存在 $a$ 的邻域 $U$ 使得 $(f_n)$ 在 $U$ 上一致收敛，那么该定理仍然成立。$(f_n)$ 在 $U$ 之外的行为与 $f$ 在 $a$ 处的连续性无关，因为连续性是“局部”性质。这就促使我们定义一致收敛的“局部”版本。

如果每个 $x \in X$ 都有邻域 $U$ 使得 $(f_n|U)$ 一致收敛，则称函数序列 $(f_n)$ 是局部一致收敛的。如果部分和序列 $(s_n)$ 局部一致收敛，则称函数级数 $\sum f_n$ 是局部一致收敛的。

2.3 注 (a) 任何一致收敛的函数序列都是局部一致收敛的。

(b) 任何局部一致收敛的函数序列都逐点收敛。

(c) 若 $X$ 是紧致的且 $(f_{n})$ 局部一致收敛，则 $(f_{n})$ 一致收敛。

证明 由 (b)，$(f_n)$ 的（逐点）极限函数 $f$ 是良定义的。设 $\varepsilon > 0$。因为 $(f_n)$ 局部一致收敛，对每个 $x \in X$，存在 $x$ 的开邻域 $U_x$ 和某个 $N(x) \in \mathbb{N}$ 使得

\[ |f_{n}(y)-f(y)|<\varepsilon\;,\qquad y\in U_{x}\;,\quad n\geq N(x)\;. \]

族 $\{U_x; x \in X\}$ 是紧致空间 $X$ 的开覆盖，因此存在有限多个点 $x_0, \ldots, x_m \in X$，使得 $X$ 被 $U_{x_j}$（$0 \leq j \leq m$）覆盖。对于 $N := \max\{N(x_0), \ldots, N(x_m)\}$，我们有

\[ |f_{n}(x)-f(x)|<\varepsilon\;,\qquad x\in X\;,\quad n\geq N\;. \]

这表明 $ (f_{n}) $ 一致收敛到 $ f $。

2.4 定理（函数序列极限的连续性）若连续函数序列 $ (f_n) $ 局部一致收敛到 $ f $，则 $ f $ 也连续。换句话说，连续函数的局部一致极限是连续的。

证明 由于 $ f $ 的连续性是局部性质，该断言直接由定理 2.1 得出。■

2.5 注 (a) 若函数序列 $ (f_{n}) $ 逐点收敛到 $ f $，且所有 $ f_{n} $ 与 $ f $ 都连续，则一般而言不能推出 $ (f_{n}) $ 局部一致收敛到 $ f $。

证明 对于例 1.2(b) 中的函数序列 $ (f_n) $，我们有 $ f_n \in C(\mathbb{R}) $，且 $ f_n \xrightarrow[\text{pointw}]{} 0 $。即便如此，也不存在 $ 0 $ 的邻域使得 $ (f_n) $ 在其上一致收敛。

(b) 定理 2.4 可以解释为关于交换极限的陈述：若函数序列 $ (f_n) $ 局部一致收敛到 $ f $，则对所有 $ a \in X $，

\[ \lim_{x\to a}\lim_{n\to\infty}f_{n}(x)=\lim_{n\to\infty}\lim_{x\to a}f_{n}(x)=\lim_{n\to\infty}f_{n}(a)=f(a). \]

类似地，对于局部一致收敛的函数级数，我们有

\[ \lim_{x\to a}\sum_{k=0}^{\infty}f_{k}(x)=\sum_{k=0}^{\infty}\lim_{x\to a}f_{k}(x)=\sum_{k=0}^{\infty}f_{k}(a),\qquad a\in X. \]

这些事实可以表述为：“局部一致收敛尊重取极限的运算”。

证明 这是定理 III.1.4 之后那个注的推论。

(c) 收敛半径为正的幂级数在其收敛圆盘上表示一个连续函数。\footnote{我们将在下一节证明，这样的函数事实上是无穷次可微的。}

证明 由定理 1.8，幂级数在其收敛圆盘上局部一致收敛。于是该断言由定理 2.4 得出。

##### 有界连续函数的巴拿赫空间

空间 $B(X,E)$（$X$ 上的有界 $E$ 值函数空间）的一个特别重要的子空间是空间

\[ BC(X,E):=B(X,E)\cap C(X,E) \]

，即从 $ X $ 到 $ E $ 的有界连续函数空间。显然，$ BC(X,E) $ 是 $ B(X,E) $（也是 $ C(X,E) $）的子空间，并且也是赋范空间，以上确界范数

\[ \left\|\cdot\right\|_{B C}:=\left\|\cdot\right\|_{\infty}, \]

，即具有由 $ B(X,E) $ 诱导的子空间拓扑。下面的定理表明 $ BC(X,E) $ 是巴拿赫空间。

2.6 定理

(i) $BC(X,E)$ 是 $B(X,E)$ 的闭子空间，因而是巴拿赫空间。

(ii) 若 $ X $ 是紧致的，则

\[ BC(X,E)=C(X,E), \]

且上确界范数 $ \|\cdot\|_{\infty} $ 与最大值范数

\[ f\mapsto\max_{x\in X}|f(x)|. \]

证明 (i) 设 $(f_n)$ 是 $BC(X,E)$ 中在 $B(X,E)$ 中收敛到 $f$ 的序列。则由注 1.3(e)，$(f_n)$ 一致收敛到 $f$，且由定理 2.4，$f$ 连续，即 $f$ 在 $BC(X,E)$ 中。这表明 $BC(X,E)$ 是 $B(X,E)$ 的闭子空间，也表明 $BC(X,E)$ 是完备的（见习题 II.6.4）。

(ii) 若 $X$ 是紧致的，则由极值定理（推论 III.3.8），我们有 $C(X,E)\subseteq B(X,E)$，且

\[ \max_{x\in X}|f(x)|=\sup_{x\in X}|f(x)|=\|f\|_{\infty}, \]

这证明了该断言。■

2.7 注 若 $X$ 是并非紧致的度量空间，例如 $\mathbb{K}^n$ 的开子集，则不可能用范数来刻画 $C(X, E)$ 中的局部一致收敛。换句话说，若 $X$ 不是紧致的，则 $C(X, E)$ 不是赋范向量空间。关于这一事实的证明，我们必须请读者参考泛函分析文献。

##### 可微性

我们现在研究可微函数序列的逐点极限在何种条件下本身可微。

2.8 定理（函数序列极限的可微性）设 $X$ 是 $\mathbb{K}$ 的开（或凸）的完全子集，且对所有 $n \in \mathbb{N}$ 有 $f_n \in C^1(X, E)$。假设存在 $f, g \in E^X$ 使得

(i) $(f_{n})$ 逐点收敛到 $f$，且

(ii) $ (f_{n}^{\prime}) $ 局部一致收敛到 $ g $。

则 $f$ 在 $C^{1}(X,E)$ 中，且 $f'=g$。此外，$(f_{n})$ 局部一致收敛到 $f$。

证明 设 $ a \in X $。则存在某个 $ r > 0 $，使得 $ (f_n') $ 在 $ B_r := \mathbb{B}_{\mathbb{K}}(a, r) \cap X $ 上一致收敛到 $ g $。若 $ X $ 是开的，我们可以选取 $ r > 0 $ 使得 $ \mathbb{B}(a, r) $ 包含于 $ X $。因此在我们的任一假设下，$ B_r $ 是凸的且完全的。于是，对每个 $ x \in B_r $，我们可以对函数

\[ [0,1]\to E~,\quad t\mapsto f_{n}\big(a+t(x-a)\big)-t f_{n}^{\prime}(a)(x-a) \]

应用中值定理（定理 IV.2.18），得到

\[ \left|f_{n}(x)-f_{n}(a)-f_{n}^{\prime}(a)(x-a)\right|\leq\sup_{0<t<1}\left|f_{n}^{\prime}\left(a+t(x-a)\right)-f_{n}^{\prime}(a)\right|\left|x-a\right|. \]

令 $ n \to \infty $ 取极限，我们得到

\[ \left|f(x)-f(a)-g(a)(x-a)\right|\leq\sup_{0<t<1}\left|g\big(a+t(x-a)\big)-g(a)\right|\left|x-a\right| \]

对每个 $ x \in B_r $ 成立。定理 2.4 表明 $ g $ 在 $ C(X, E) $ 中，因此由 (2.1) 可得

\[ f(x)-f(a)-g(a)(x-a)=o(|x-a|)\quad(x\to a). \]

因此 $f$ 在 $a$ 处可微，且 $f'(a) = g(a)$。由于这对所有 $a \in X$ 都成立，我们已经证明了 $f \in C^1(X, E)$。

还需证明 $ (f_{n}) $ 局部一致收敛到 $ f $。对函数

\[ [0,1]\to E~,\quad t\mapsto(f_{n}-f)\big(a+t(x-a)\big) \]

应用中值定理，我们得到不等式

\[ \begin{align*}\left|f_{n}(x)-f(x)\right|&\leq\left|f_{n}(x)-f(x)-\left(f_{n}(a)-f(a)\right)\right|+\left|f_{n}(a)-f(a)\right|\\&\leq r\sup_{0<t<1}\left|f_{n}^{\prime}\big(a+t(x-a)\big)-f^{\prime}\big(a+t(x-a)\big)\right|+\left|f_{n}(a)-f(a)\right|\\&\leq r\left\|f_{n}^{\prime}-f^{\prime}\right\|_{\infty,B_{r}}+\left|f_{n}(a)-f(a)\right|\end{align*} \]

对每个 $x \in B_r$ 成立。该不等式右端与 $x \in B_r$ 无关，且由 (ii) 与 $f' = g$ 这一事实，当 $n \to \infty$ 时收敛到 $0$。因此 $(f_n)$ 在 $B_r$ 上一致收敛到 $f$。

2.9 推论（函数级数极限的可微性）假设 $X \subseteq \mathbb{K}$ 是开的（或凸的）且完全的，且 $(f_n)$ 是 $C^1(X, E)$ 中的序列，使得 $\sum f_n$ 逐点收敛且 $\sum f'_n$ 局部一致收敛。则和 $\sum_{n=0}^{\infty} f_n$ 在 $C^1(X, E)$ 中，且

\[ \Bigl(\sum_{n=0}^{\infty}f_{n}\Bigr)^{\prime}=\sum_{n=0}^{\infty}f_{n}^{\prime}. \]

此外，$ \sum f_n $ 局部一致收敛。

证明 这直接由定理 2.8 得出。

2.10 注 (a) 设 $ (f_n) $ 是 $ C^1(X, E) $ 中一致收敛到 $ f $ 的序列。即使 $ f $ 连续可微，$ (f'_n) $ 一般也不逐点收敛到 $ f' $。

证明 设 $ X := \mathbb{R} $，$ E := \mathbb{R} $，且对所有 $ n \in \mathbb{N}^{\times} $ 有 $ f_n(x) := (1/n) \sin(nx) $。因为

\[ |f_{n}(x)|=|\sin(n x)|/n\leq1/n\;,\qquad x\in X\;, \]

$ (f_n) $ 一致收敛到 $ 0 $。由于 $ \lim f_n'(0) = 1 $，序列 $ (f_n'(0)) $ 不收敛到极限函数在点 $ 0 $ 处的导数。■

(b) 设 $ (f_n) $ 是 $ C^1(X, E) $ 中的序列，使得 $ \sum f_n $ 一致收敛。则一般而言，$ \sum f'_n $ 甚至不逐点收敛。

证明 假设 $X := \mathbb{R}$，$E := \mathbb{R}$，且对所有 $n \in \mathbb{N}^\times$ 有 $f_n(x) := (1/n^2) \sin(nx)$。则 $\|f_n\|_\infty = 1/n^2$，因此由魏尔斯特拉斯优级数判别法，级数 $\sum f_n$ 一致收敛。由于 $f_n'(x) = (1/n) \cos(nx)$，$\sum f_n'(0)$ 不收敛。

##### 习题

1 证明下列各题：

(a) 若 $ (f_{n}) $ 一致收敛且每个 $ f_{n} $ 都一致连续，则极限函数也一致连续。

(b) $ BUC(X, E) := \left( \left\{ f \in BC(X, E) ; f \text{ 是一致连续的} \right\} , \|\cdot\|_\infty \right) $ 是巴拿赫空间。

(c) 若 $ X $ 是紧致的，则 $ BUC(X,E)=C(X,E) $。

2 考虑 $ E $ 中的二重序列 $ (x_{jk}) $，使得

(i) 对每个 $ j \in \mathbb{N} $，$ (x_{jk})_{k \in \mathbb{N}} $ 收敛。

(ii) 对每个 $ \varepsilon > 0 $，存在某个 $ N \in \mathbb{N} $ 使得

\[ |x_{m k}-x_{n k}|<\varepsilon\;,\qquad m,n\ge N\;,\quad k\in\mathbb{N}\;. \]

证明对每个 $k\in\mathbb{N}$，$(x_{jk})_{j\in\mathbb{N}}$ 收敛。证明序列 $(\lim_{k}x_{jk})_{j\in\mathbb{N}}$ 与 $(\lim_{j}x_{jk})_{k\in\mathbb{N}}$ 收敛，且

\[ \lim_{j}(\lim_{k}x_{jk})=\lim_{k}(\lim_{j}x_{jk}). \]

3 假设 $X$ 是紧致的，且 $(f_n)$ 是 $X$ 上实值连续函数的逐点收敛序列。证明：若极限函数连续且 $(f_n)$ 是单调的，则 $(f_n)$ 一致收敛（迪尼定理）。

(提示：若 $ f_{n} $) 是递增的，则

\[ 0\leq f(y)-f_{N_{x}}(y)=\left(f(y)-f(x)\right)+\left(f(x)-f_{N_{x}}(x)\right)+\left(f_{N_{x}}(x)-f_{N_{x}}(y)\right) \]

对所有 $ x, y \in X $ 和 $ N_x \in \mathbb{N} $ 成立。)

4 举例说明，在迪尼定理中，极限函数的连续性与单调收敛是必要的假设。

5 设 $ (f_n) $ 是紧致区间 $ I $ 上单调函数的序列，它逐点收敛到连续函数 $ f $。证明 $ f $ 是单调的，且 $ (f_n) $ 一致收敛到 $ f $。

6 考虑 $ X $ 上满足下列条件的实值函数序列 $ (f_{n}) $：

(i) 对每个 $ x \in X $，$ (f_n(x)) $ 是递减的。

(ii) $ (f_{n}) $ 一致收敛到 $ 0 $。

证明 $ \sum(-1)^n f_n $ 一致收敛。

7 设 $ (f_n) $ 是 $ X $ 上的实值函数序列，$ (g_n) $ 是 $ X $ 上的 $ \mathbb{K} $ 值函数序列，它们满足下列条件：

(i) 对每个 $ x \in X $，$ (f_n(x)) $ 是递减的。

(ii) $ (f_{n}) $ 一致收敛到 $ 0 $。

(iii) $ \sup_n\|\sum_{k=0}^{n} g_k\|_\infty < \infty $。

证明 $ \sum g_n f_n $ 一致收敛。

(提示：令 $ \alpha_k := \sum_{j=0}^k g_j $，我们有)

\[ \sum_{k=m+1}^{n}g_{k}f_{k}=\sum_{k=m}^{n-1}\alpha_{k}(f_{k}-f_{k+1})+\alpha_{n}f_{n}-\alpha_{m}f_{m} \]

对所有 $m < n$ 成立。对于给定的 $\varepsilon > 0$ 和 $M := \sup_k \|\alpha_k\|_\infty$，存在某个 $N \in \mathbb{N}$，使得对所有 $n \geq N$ 有 $\|f_n\|_\infty < \varepsilon/2M$。由此可得

\[ \bigg|\sum_{k=m+1}^{n}g_{k}(x)f_{k}(x)\bigg|\leq M\sum_{k=m}^{n-1}(f_{k}-f_{k+1})(x)+M(f_{n}+f_{m})(x)<\varepsilon \]

对所有 $ x \in X $ 和 $ n > m \geq N $ 成立。现在使用命题 1.4。)

8 借助上一道习题证明，对每个 $\alpha\in(0,\pi)$，级数 $\sum_{k}e^{ikx}/k$ 在 $[\alpha,2\pi-\alpha]$ 上一致收敛。

\[ |e^{i x}-1|\geq\sqrt{2(1-\operatorname{c o s}\alpha)}\;,\qquad x\in[\alpha,2\pi-\alpha]\;, \]

从而

\[ \left|\sum_{k=0}^{n}e^{i k x}\right|=\frac{\left|e^{i n x}-1\right|}{\left|e^{i x}-1\right|}\leq\sqrt{2/(1-\cos\alpha)} \]

对所有 $ x \in [\alpha, 2\pi - \alpha] $ 成立。)

9 假设 $ A: E \to E $ 是线性的，且 $ \alpha \geq 0 $ 满足对所有 $ x \in E $ 有 $ \|Ax\| \leq \alpha \|x\| $。固定 $ x_0 \in E $ 并定义

\[ u(z):=\sum_{k=0}^{\infty}\frac{z^{k}}{k!}A^{k}x_{0},\qquad z\in\mathbb{K}. \]

这里 $ A^k $ 表示 $ A $ 的第 $ k $ 次迭代。证明 $ u \in C^\infty(\mathbb{K}, E) $，并对所有 $ n \in \mathbb{N}^\times $ 确定 $ \partial^n u $。

(提示：级数 $ \sum(z^k/k!)A^k x_0 $ 以 $ \|x_0\| e^{|z|\alpha} $ 为收敛优级数。我们还有 $ \sum A(z^k/k!)A^k x_0 = Au(z) $。)

10 设 $X$ 在 $\mathbb{K}$ 中是开的，$n \in \mathbb{N}^\times$，且

\[ B C^{n}(X,E):=\left(\left\{f\in C^{n}(X,E);\partial^{j}f\in B(X,E),j=0,\ldots,n\right\},\|\cdot\|_{B C^{n}}\right) \]

其中 $ \|f\|_{BC^n} := \max_{1 \leq j \leq n} \|\partial^j f\|_\infty $。证明下列各题：

(a) $ BC^{n}(X,E) $ 不是 $ BC(X,E) $ 的闭子空间。

(b) $ BC^{n}(X,E) $ 是巴拿赫空间。

11 设 $ -\infty < a < b < \infty $，且对所有 $ n \in \mathbb{N} $ 有 $ f_n \in C^1([a, b], E) $。假设序列 $ (f_n') $ 一致收敛，且存在某个 $ x_0 \in [a, b] $ 使得 $ (f_n(x_0))_{n \in \mathbb{N}} $ 收敛。证明 $ (f_n) $ 一致收敛。（提示：使用定理 IV.2.18。）

