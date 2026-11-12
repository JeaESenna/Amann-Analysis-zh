## 3 紧致性

我们已经看到，开集的连续像未必是开的，闭集的连续像未必是闭的。在接下来的两节中，我们研究拓扑空间的某些性质，这些性质与上述情形相反，在连续函数下得以保持。这些性质具有深远的重要意义，并且对实值函数的研究特别有用。

##### 覆盖

下面，$X := (X, d)$ 是一个度量空间。

集合族 $\{A_\alpha \subseteq X; \alpha \in \mathbb{A}\}$ 称为子集 $K \subseteq X$ 的一个**覆盖**，若 $K \subseteq \bigcup_\alpha A_\alpha$。若每个 $A_\alpha$ 在 $X$ 中都是开集，则称该覆盖为**开的**。若 $K$ 的每个开覆盖都有一个有限子族也构成 $K$ 的覆盖，则称子集 $K \subseteq X$ 为**紧致的**。换句话说，若 $K$ 的每个开覆盖都有一个有限**子覆盖**，则 $K \subseteq X$ 是紧致的。

3.1 例 (a) 设 $ (x_k) $ 是 $ X $ 中收敛于极限 $ a $ 的序列。则集合 $ K := \{a\} \cup \{x_k\;;\;k \in \mathbb{N}\} $ 是紧致的。

证明 设 $\{O_\alpha; \alpha \in \mathbb{A}\}$ 是 $K$ 的一个开覆盖。则存在 $\alpha$ 与 $\alpha_k \in \mathbb{A}$，使得 $a \in O_\alpha$ 且对所有 $k \in \mathbb{N}$ 有 $x_k \in O_{\alpha_k}$。因为 $\lim x_k = a$，存在某个 $N \in \mathbb{N}$，使得对所有 $k > N$ 有 $x_k \in O_\alpha$。则 $\{O_{\alpha_k}; 0 \leq k \leq N\} \cup \{O_\alpha\}$ 是所给 $K$ 的覆盖的一个有限子覆盖。

(b) 一般地，若极限 a 不包含在 K 中，则 (a) 的断言为假。

证明 设 $X := \mathbb{R}$ 且 $A := \{1/k; k \in \mathbb{N}^\times\}$。令 $O_1 := (1/2,2)$，并对所有 $k \geq 2$，令 $O_k := (1/(k+1), 1/(k-1))$。则 $\{O_k; k \in \mathbb{N}^\times\}$ 是 $A$ 的一个开覆盖，且具有如下性质：每个 $O_k$ 恰好包含 $A$ 的一个元素。因此 $\{O_k; k \in \mathbb{N}\}$ 没有 $A$ 的有限子覆盖。

(c) 自然数集合 N 在 $ \mathbb{R} $ 中不是紧致的。

证明 同样只需构造 $\mathbb{N}$ 的一个开覆盖 $\{O_k; k \in \mathbb{N}\}$，使得每个 $O_k$ 恰好包含一个自然数，例如，对所有 $k \in \mathbb{N}$，$O_k := (k - 1/3, k + 1/3)$。

3.2 命题 任意紧致集 $ K \subseteq X $ 在 X 中是闭的且是有界的。

证明 设 $ K \subseteq X $ 是紧致的。

(i) 首先证明 $K$ 在 $X$ 中是闭的。显然只需考虑情形 $K \neq X$，因为 $X$ 在 $X$ 中是闭的。于是假设 $x_0$ 在 $K^c$ 中。由于豪斯多夫性质，对每个 $y \in K$，存在开邻域 $U_y \in \mathcal{U}(y)$ 与 $V_y \in \mathcal{U}(x_0)$，使得 $U_y \cap V_y = \emptyset$。因为 $\{U_y ; \, y \in K\}$ 是 $K$ 的一个开覆盖，存在 $K$ 中有限多个点 $y_0, \ldots, y_m$，使得 $K \subseteq \bigcup_{j=0}^m U_{y_j} =: U$。

由命题 2.4，$U$ 与 $V := \bigcap_{j=0}^{m} V_{y_j}$ 是开的且不交。因此 $V$ 是 $x_0$ 的一个邻域，使得 $V \subseteq K^c$，即 $x_0$ 是 $K^c$ 的内点。由于这对每个 $x_0 \in K^c$ 都成立，$K^c$ 是开集且 $K$ 是闭集。

(ii) 为验证 $K$ 的有界性，取定 $X$ 中某个 $x_0$。由于由例 2.2，$\mathbb{B}(x_0, k)$ 是开的且 $K \subseteq \bigcup_{k=1}^{\infty} \mathbb{B}(x_0, k) = X$，$K$ 的紧致性蕴含存在 $k_0, \ldots, k_m \in \mathbb{N}$，使得 $K \subseteq \bigcup_{j=0}^{m} \mathbb{B}(x_0, k_j)$。特别地，$K \subseteq \mathbb{B}(x_0, N)$，其中 $N := \max\{k_0, \ldots, k_m\}$。因此 $K$ 是有界的。

### 紧致集的刻画

命题 3.2 的逆命题在一般度量空间中为假（见习题 15），因此紧致集不仅仅是闭集与有界集。取而代之，我们在下一个定理中用聚点给出紧致性的一个刻画。为证明该定理，我们需要下述概念，它在定理 3.10 中再次出现：$ X $ 的子集 $ K $ 是**完全有界的**，若对每个 $ r > 0 $，存在 $ m \in \mathbb{N} $ 与 $ x_0, \ldots, x_m \in K $，使得 $ K \subseteq \bigcup_{k=0}^{m} \mathbb{B}(x_k, r) $。显然任何完全有界集都是有界的。

3.3 定理 子集 $K \subseteq X$ 是紧致的，当且仅当 $K$ 中每个序列都在 $K$ 中有聚点。

证明 (i) 首先假设 $K$ 是紧致的，且 $K$ 中存在一个在 $K$ 中没有聚点的序列。于是对每个 $x \in K$，存在 $x$ 的开邻域 $U_x$，它至多包含该序列的有限多项。因为 $\{U_x; x \in K\}$ 是 $K$ 的一个开覆盖，存在 $x_0, \ldots, x_m \in K$，使得 $\{U_{x_k}; k = 0, \ldots, m\}$ 是 $K$ 的一个覆盖。因此 $K$ 至多包含该序列的有限多项。这一矛盾表明 $K$ 中每个序列都在 $K$ 中有聚点。

(ii) 逆命题的证明分两步进行：

(a) 设 K 是 X 的子集，具有如下性质：K 中每个序列都在 K 中有聚点。我们断言 K 是完全有界的。

反设 $K$ 不是完全有界的。则存在某个 $r > 0$，具有如下性质：对任何有限集 $x_0, \ldots, x_m \in K$，$K$ 都不包含在 $\bigcup_{k=0}^{m}\mathbb{B}(x_k, r)$ 中。特别地，存在某个 $x_0 \in K$，使得 $K$ 不包含在 $\mathbb{B}(x_0, r)$ 中。因此存在某个 $x_1 \in K \setminus \mathbb{B}(x_0, r)$。由于 $K$ 不包含在 $\mathbb{B}(x_0, r) \cup \mathbb{B}(x_1, r)$ 中，存在某个 $x_2 \in K \setminus \left[\mathbb{B}(x_0, r) \cup \mathbb{B}(x_1, r)\right]$。迭代这一过程，我们构造 $K$ 中的序列 $(x_k)$，使得对所有 $n$，$x_{n+1}$ 不在 $\bigcup_{k=0}^{n}\mathbb{B}(x_k, r)$ 中。由假设，序列 $(x_k)$ 在 $K$ 中有聚点 $x$，因此特别地，存在 $m, N \in \mathbb{N}^\times$，使得 $d(x_N, x) < r/2$ 且 $d(x_{N+m}, x) < r/2$。三角不等式蕴含 $d(x_N, x_{N+m}) < r$，即 $x_{N+m}$ 在 $\mathbb{B}(x_N, r)$ 中。这与序列 $(x_k)$ 的上述性质矛盾，于是我们证明了 $K$ 是完全有界的。

(b) 现在设 $\{O_\alpha : \alpha \in \mathbb{A}\}$ 是 $K$ 的一个开覆盖。与我们的断言相反，假设 $\{O_\alpha : \alpha \in \mathbb{A}\}$ 没有有限子覆盖。由于 $K$ 是完全有界的，对每个 $k \in \mathbb{N}^\times$，存在以 $K$ 中点为圆心、半径为 $1/k$ 的有限个开球，它们构成 $K$ 的一个覆盖。则其中一个开球，记作 $B_k$，具有如下性质：$\{O_\alpha : \alpha \in \mathbb{A}\}$ 的任意有限子集都不是 $K \cap B_k$ 的覆盖。对 $k \in \mathbb{N}^\times$，设 $x_k$ 是 $B_k$ 的圆心。由假设，序列 $(x_k)$ 在 $K$ 中有聚点 $\overline{x}$。

现在设 $ \overline{\alpha} \in \mathbb{A} $ 使得 $ \overline{x} \in O_{\overline{\alpha}} $。由于 $ O_{\overline{\alpha}} $ 是开集，存在某个 $ \varepsilon > 0 $，使得 $ \mathbb{B}(\overline{x}, \varepsilon) \subseteq O_{\overline{\alpha}} $。由于 $ \overline{x} $ 是序列 $ (x_k) $ 的聚点，存在某个 $ M > 2/\varepsilon $，使得 $ d(x_M, \overline{x}) < \varepsilon/2 $。于是对每个 $ x \in B_M $，我们有

 \[ d(x,\overline{{x}})\leq d(x,x_{M})+d(x_{M},\overline{{x}})<\frac{1}{M}+\frac{\varepsilon}{2}<\frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon, \] 

即 $ B_M \subseteq \mathbb{B}(\overline{x}, \varepsilon) \subseteq O_{\overline{\alpha}} $。这与我们对 $ B_M $ 的选取矛盾，因此覆盖 $ \{O_\alpha : \alpha \in \mathsf{A}\} $ 必有有限子覆盖。■

##### 序列紧致性

若 K 中每个序列都有一个收敛于 K 的某个元素的子序列，则称子集 $ K \subseteq X $ 是序列紧致的。

序列的聚点与收敛子序列之间的关系（见命题 II.1.17）使我们能用序列紧致性重新表述定理 3.3。

3.4 定理 度量空间的子集是紧致的，当且仅当它是序列紧致的。

作为定理 3.3 的一个重要应用，我们描述 $ \mathbb{K}^n $ 的紧致子集。

3.5 定理（海涅-博雷尔）$ \mathbb{K}^n $ 的子集是紧致的，当且仅当它是闭的且是有界的。特别地，区间是紧致的，当且仅当它是闭的且是有界的。

证明 由命题 3.2，任何紧致集都是闭的且是有界的。逆命题由波尔查诺-魏尔斯特拉斯定理（见定理 II.5.8）、命题 2.11 与定理 3.4 得出。

##### 紧致空间上的连续函数

下述定理表明紧致性在连续函数下得以保持。

3.6 定理 设 $X$ 与 $Y$ 是度量空间，$f: X \to Y$ 连续。若 $X$ 是紧致的，则 $f(X)$ 是紧致的。也就是说，紧致集的连续像是紧致的。

证明 设 $\{O_\alpha; \alpha \in \mathsf{A}\}$ 是 $f(X)$ 在 $Y$ 中的一个开覆盖。由定理 2.20，对每个 $\alpha \in \mathsf{A}$，$f^{-1}(O_\alpha)$ 是 $X$ 的开子集。因此 $\{f^{-1}(O_\alpha); \alpha \in \mathsf{A}\}$ 是紧致空间 $X$ 的一个开覆盖，且存在 $\alpha_0, \ldots, \alpha_m \in \mathsf{A}$，使得 $X = \bigcup_{k=0}^m f^{-1}(O_{\alpha_k})$。由此可得 $f(X) \subseteq \bigcup_{k=0}^m O_{\alpha_k}$，即 $\{O_{\alpha_0}, \ldots, O_{\alpha_m}\}$ 是 $\{O_\alpha; \alpha \in \mathsf{A}\}$ 的一个有限子覆盖。因此 $f(X)$ 是紧致的。

3.7 推论 设 X 与 Y 是度量空间，$ f: X \to Y $ 连续。若 X 是紧致的，则 $ f(X) $ 是有界的。

证明 这直接由定理 3.6 与命题 3.2 得出。

##### 极值定理

对于实值函数，定理 3.6 有一个重要推论：紧致集上的实值连续函数能取得它的最小值与最大值。

3.8 推论（极值定理）设 $X$ 是紧致度量空间，$f: X \to \mathbb{R}$ 连续。则存在 $x_0, x_1 \in X$，使得

 \[ f(x_{0})=\min_{x\in X}f(x)\quad\text{且}\quad f(x_{1})=\max_{x\in X}f(x). \] 

证明 由定理 3.6 与命题 3.2 我们知道 $f(X)$ 在 $\mathbb{R}$ 中是闭的且是有界的。因此 $m := \inf\left(f(X)\right)$ 与 $M := \sup\left(f(X)\right)$ 在 $\mathbb{R}$ 中存在。由命题 I.10.5，$f(X)$ 中存在序列 $(y_n)$ 与 $(z_n)$，它们在 $\mathbb{R}$ 中分别收敛于 $m$ 与 $M$。由于 $f(X)$ 是闭集，命题 2.11 蕴含 $m$ 与 $M$ 在 $f(X)$ 中，即存在 $x_0, x_1 \in X$，使得 $f(x_0) = m$ 且 $f(x_1) = M$。

这一结果的重要性可见于下列例子。

3.9 例 (a) $ \mathbb{K}^{n} $ 上的所有范数都等价。

证明 (i) 设 $ |\cdot| $ 是 $ \mathbb{K}^n $ 上的欧几里得范数，$ \|\cdot\| $ 是 $ \mathbb{K}^n $ 上的任意范数。则只需证明这两个范数的等价性，即存在正常数 $ C $，使得

 \[ C^{-1}\left|x\right|\leq\left\|x\right\|\leq C\left|x\right|,\qquad x\in\mathbb{K}^{n}. \] 

(ii) 令 $ S := \{ x \in \mathbb{K}^n ; \, |x| = 1 \} $。由例 1.3(j) 我们知道函数 $ |\cdot| : \mathbb{K}^n \to \mathbb{R} $ 是连续的，因此由例 2.22(a)，$ S $ 在 $ \mathbb{K}^n $ 中是闭的。当然，$ S $ 在 $ \mathbb{K}^n $ 中也是有界的。由海涅-博雷尔定理，$ S $ 是 $ \mathbb{K}^n $ 的紧致子集。

(iii) 我们接下来证明 $f: S \to \mathbb{R}$，$x \mapsto \|x\|$ 是连续的。\footnote{这里不能使用例 1.3(j)。为什么？} 设 $\{e_k; 1 \leq k \leq n\}$ 是 $\mathbb{K}^n$ 的标准基。对每个 $x = (x_1, \ldots, x_n) \in \mathbb{K}^n$，我们有 $x = \sum_{k=1}^n x_k e_k$（见例 I.12.4(a) 与注 I.12.5）。由 $\|\cdot\|$ 的三角不等式可得

 \[ \left\|x\right\|=\left\|\sum_{k=1}^{n}x_{k}e_{k}\right\|\leq\sum_{k=1}^{n}\left|x_{k}\right|\left\|e_{k}\right\|\leq C_{0}\left|x\right|\mathrm{,}\qquad x\in\mathbb{K}^{n}, \] 

其中我们已令 $C_0 := \sum_{k=1}^n \|e_k\|$，并使用了不等式 $|x_k| \leq |x|$。这证明了 (3.1) 的第二个不等式。此外，由 (3.2) 与 $\|\cdot\|$ 的反向三角不等式，可得

 \[ |f(x)-f(y)|=\left|\|x\|-\|y\|\right|\leq\|x-y\|\leq C_{0}\left|x-y\right|,\qquad x,y\in S, \] 

这证明了 f 的利普希茨连续性。

(iv) 对所有 $ x \in S $，我们有 $ f(x) > 0 $，因此由极值定理，我们知道 $ m := \min f(S) $ 是正的，即

 \[ 0<m=\min f(S)\leq f(x)=\|x\|,\qquad x\in S. \] 

最后设 $ x \in \mathbb{K}^n \setminus \{0\} $。则 $ x/|x| $ 在 $ S $ 中，因此由 (3.3)，我们有 $ m \leq \|x/|x|\| $。即，

 \[ m\left|x\right|\leq\left\|x\right\|\;,\qquad x\in\mathbb{K}^{n} \] 

断言现在由 (3.2) 与 (3.4) 以及 $ C := \max\{C_0, 1/m\} $ 得出。■

(b) 代数学基本定理\footnote{代数学基本定理对实数域 $ \mathbb{R} $ 不成立，例如 $ p = 1 + X^2 $。}任何非常数多项式 $ p \in \mathbb{C}[X] $ 在 $ \mathbb{C} $ 中都有一个零点。

证明 (i) 设 p 是这样一个多项式。不失一般性，我们可以假设 p 的首项系数为 1，从而把 p 写成如下形式

 \[ p=X^{n}+a_{n-1}X^{n-1}+\cdots+a_{1}X+a_{0} \] 

其中 $ n \in \mathbb{N}^{\times} $ 且 $ a_k \in \mathbb{C} $。若 $ n = 1 $，结论显然，因此我们假设 $ n \geq 2 $。令

 \[ R:=1+\sum_{k=0}^{n-1}\left|a_{k}\right|. \] 

则对每个满足 $ |z| > R \geq 1 $ 的 $ z \in \mathbb{C} $，我们有

 \[ \begin{align*}\left|p(z)\right|&\geq\left|z\right|^{n}-\left|a_{n-1}\right|\left|z\right|^{n-1}-\cdots-\left|a_{1}\right|\left|z\right|-\left|a_{0}\right|\\&\geq\left|z\right|^{n}-\left(\left|a_{n-1}\right|+\cdots+\left|a_{1}\right|+\left|a_{0}\right|\right)\left|z\right|^{n-1}\\&=\left|z\right|^{n-1}\left(\left|z\right|-(R-1)\right)\geq\left|z\right|^{n-1}>R^{n-1}\geq R.\end{align*} \] 

因此 $p$ 在球 $\bar{\mathbb{B}}_{\mathbb{C}}(0,R)$ 之外的绝对值大于 $R$。因为 $|p(0)| = |a_0| < R$，这意味着

 \[ \operatorname*{i n f}_{z\in\mathbb{C}}|p(z)|=\operatorname*{i n f}_{|z|\leq R}|p(z)|. \] 

(ii) 我们接下来考虑函数

 \[ |p|:\bar{\mathbb{B}}_{\mathbb{C}}(0,R)\to\mathbb{R}~,\quad z\mapsto|p(z)|~, \] 

它是连续函数 $ |\cdot| $ 与 $ p $ 的复合的限制，因此是连续的（见例 1.3(k) 与 1.9(a)，以及推论 1.6）。由海涅-博雷尔定理与例 2.19(d)，闭球 $ \bar{\mathbb{B}}_{\mathbb{C}}(0,R) $ 是紧致的。因此，把极值定理应用于 $ |p| $，存在某个 $ z_0 \in \bar{\mathbb{B}}_{\mathbb{C}}(0,R) $，使得函数 $ |p| $ 在 $ z_0 $ 处取最小值。

(iii) 假设 $p$ 在 $\bar{\mathbb{B}}_{\mathbb{C}}(0,R)$ 中没有零点。则特别地，$p(z_0) \neq 0$，且 $q := p(X + z_0)/p(z_0)$ 是次数为 $n$ 的多项式，使得

 \[ |q(z)|\geq1\;,\quad z\in\mathbb{C}\;,\qquad\text{且}\qquad q(0)=1\;. \] 

因此我们可以把 q 写成如下形式

 \[ q=1+\alpha X^{k}+X^{k+1}r \] 

其中 $ \alpha \in \mathbb{C}^{\times} $，$ k \in \{1, \ldots, n-1\} $ 且 $ r \in \mathbb{C}[X] $ 适当。

(iv) 在这一点上，我们利用复数根的存在性，这一结果我们稍后在第 6 节证明（当然，不使用代数学基本定理）。特别地，该定理说，存在某个 $ z_1 \in \mathbb{C} $\footnote{注意，这一断言对 $ \mathbb{R} $ 不成立。事实上，这是证明中唯一用到 $ \mathbb{C} $ 的特殊性质的地方。}使得 $ z_1^k = -1/\alpha $。因此

 \[ q(t z_{1})=1-t^{k}+t^{k+1}z_{1}^{k+1}r(t z_{1}),\qquad t\in[0,1], \] 

从而

 \[ |q(t z_{1})|\leq1-t^{k}+t^{k}\cdot t\left|z_{1}^{k+1}r(t z_{1})\right|,\qquad t\in[0,1]~. \] 

(v) 最后我们考虑函数

 \[ h\colon[0,1]\to\mathbb{R}~,\quad t\mapsto|z_{1}^{k+1}r(t z_{1})|~. \] 

不难看出 $h$ 是连续的（见命题 1.5(ii)、推论 1.6、定理 1.8 与例 1.9(a)）。由海涅-博雷尔定理与推论 3.7，存在某个 $M \geq 1$，使得

 \[ h(t)=|z_{1}^{k+1}r(t z_{1})|\leq M~,\qquad t\in[0,1]~. \] 

如果我们在 (3.6) 中使用这个界，我们得到

 \[ |q(t z_{1})|\leq1-t^{k}(1-t M)\leq1-t^{k}/2<1~,\qquad t\in\left(0,1/(2M)\right)~, \] 

这与 (3.5) 的第一个断言矛盾。因此 p 在 $ \bar{\mathbb{B}}_{\mathbb{C}}(0, R) $ 中必有一个零点。 $ \blacksquare $

推论 设

 \[ p=a_{n}X^{n}+a_{n-1}X^{n-1}+\cdots+a_{1}X+a_{0} \] 

其中 $ a_0, \ldots, a_n \in \mathbb{C} $，$ a_n \neq 0 $ 且 $ n \geq 1 $。则存在 $ z_1, \ldots, z_n \in \mathbb{C} $，使得

 \[ p=a_{n}\prod_{k=1}^{n}(X-z_{k}). \] 

因此 $\mathbb{C}$ 上每个多项式 $p$ 恰好有 $\deg(p)$ 个（计重数）零点。

证明 由代数学基本定理，对某个 $ z_1 \in \mathbb{C} $ 有 $ p(z_1) = 0 $。由定理 I.8.17，存在某个 $ p_1 \in \mathbb{C}[X] $，使得 $ p = (X - z_1)p_1 $ 且 $ \deg(p_1) = \deg(p) - 1 $。一个简单的归纳论证完成证明。

(c) 设 A 与 K 是度量空间的不交子集，其中 K 是紧致的，A 是闭的。则从 K 到 A 的距离 $ d(K, A) $ 是正的，即

 \[ d(K,A):=\inf_{k\in K}d(k,A)>0. \] 

证明 由例 1.3(k) 与 (l)，实值函数 $ d(\cdot, A) $ 在 K 上连续，因此由极值定理，存在某个 $ k_0 \in K $，使得 $ d(k_0, A) = d(K, A) $。假设

 \[ d(k_{0},A)=\inf_{a\in A}d(k_{0},a)=0. \] 

则存在 $A$ 中的序列 $(a_k)$，使得对所有 $k \to \infty$ 有 $d(k_0, a_k) \to 0$。因此序列 $(a_k)$ 收敛于 $k_0$。因为 $A$ 是闭集，$k_0$ 在 $A$ 中，这与 $A \cap K = \emptyset$ 矛盾。因此我们有 $d(k_0, A) = d(K, A) > 0$。

(d) K 的紧致性在 (c) 中是必要的。

证明 集合 $ A := \mathbb{R} \times \{0\} $ 与 $ B := \{(x, y) \in \mathbb{R}^2; xy = 1\} $ 在 $ \mathbb{R}^2 $ 中是闭的但不是紧致的。由于对 $ n \in \mathbb{N}^\times $ 有 $ d((n,0), (n,1/n)) = 1/n $，我们有 $ d(A, B) = 0 $。 $ \blacksquare $

##### 完全有界性

鉴于紧致性概念的实际重要性已由上述例子充分展示，我们现在给出紧致集的另一个刻画，它使用完备性与完全有界性。

3.10 定理 度量空间的子集是紧致的，当且仅当它是完备的且是完全有界的。

证明 ‘$\Rightarrow$’ 设 $ K \subseteq X $ 是紧致的，$ (x_j) $ 是 $ K $ 中的柯西序列。由于 $ K $ 是序列紧致的，$ (x_j) $ 有一个在 $ K $ 中收敛的子序列。因此由命题 II.6.4，序列 $ (x_j) $ 本身在 $ K $ 中收敛。这蕴含 $ K $ 是完备的。

对每个 $ r > 0 $，集合 $ \{\mathbb{B}(x, r) : x \in K\} $ 是 $ K $ 的一个开覆盖。由于 $ K $ 是紧致的，这个覆盖有有限子覆盖。因此我们证明了 $ K $ 是完全有界的。

‘⇐’ 设 $K$ 是完备的且是完全有界的。设 $(x_j)$ 是 $K$ 中的序列。由于 $K$ 是完全有界的，对每个 $n \in \mathbb{N}^\times$，存在以 $K$ 中点为圆心、半径为 $1/n$ 的有限个开球，它们构成 $K$ 的一个覆盖。特别地，$(x_j)$ 有一个子序列 $(x_{1,j})_{j \in \mathbb{N}}$，它包含在一个半径为 1 的球中。则 $(x_{1,j})_{j \in \mathbb{N}}$ 有一个子序列 $(x_{2,j})_{j \in \mathbb{N}}$，它包含在一个半径为 $1/2$ 的球中。进一步，$(x_{2,j})_{j \in \mathbb{N}}$ 有一个子序列 $(x_{3,j})_{j \in \mathbb{N}}$，它包含在一个半径为 $1/3$ 的球中。

迭代这一构造，对每个 $ n \in \mathbb{N}^\times $，得到 $ (x_{n,j})_{j \in \mathbb{N}} $ 的子序列 $ (x_{n+1,j})_{j \in \mathbb{N}} $，它包含在一个半径为 $ 1/(n+1) $ 的球中。

现在对所有 $ n \in \mathbb{N}^\times $ 令 $ y_n := x_{n,n} $。容易验证 $ (y_n) $ 是 $ K $ 中的柯西序列（见注 3.11(a)）。由于 $ K $ 是完备的，序列 $ (y_n) $ 在 $ K $ 中收敛。

因此序列 $ (x_{j}) $ 有一个子序列，即 $ (y_{n}) $，它在 K 中收敛。这表明 K 是序列紧致的，并且由定理 3.4，K 是紧致的。 $ \blacksquare $

3.11 注 (a) 在前述证明的第二部分，我们使用了一个在许多其他情形中都有用的技巧：从给定的序列 $ (x_{0,j})_{j\in\mathbb{N}} $ 出发，逐次选取子序列 $ (x_{n+1,j})_{j\in\mathbb{N}} $，使得对所有 $ n\in\mathbb{N} $，$ (x_{n+1,j})_{j\in\mathbb{N}} $ 是 $ (x_{n,j}) $ 的子序列。然后构造对角序列：对每个 $ n\in\mathbb{N} $，选取第 $ n $ 个子序列的第 $ n $ 个元素。

 \[ \begin{array}{r l r l}&{\scriptstyle\bigcirc\scriptstyle{x_{0,0}},}&{\scriptstyle x_{0,1},}&{\scriptstyle x_{0,2},}&{\scriptstyle x_{0,3},}&{\scriptstyle \cdots}\\ &{\scriptstyle x_{1,0},}&{\scriptstyle\bigcirc\scriptstyle{x_{1,1}},}&{\scriptstyle x_{1,2},}&{\scriptstyle x_{1,3},}&{\scriptstyle \cdots}\\ &{\scriptstyle x_{2,0},}&{\scriptstyle x_{2,1},}&{\scriptstyle\bigcirc\scriptstyle{x_{2,2}},}&{\scriptstyle x_{2,3},}&{\scriptstyle \cdots}\\ &{\scriptstyle x_{3,0},}&{\scriptstyle x_{3,1},}&{\scriptstyle x_{3,2},}&{\scriptstyle\bigcirc\scriptstyle{x_{3,3}},}&{\scriptstyle \cdots}\\ &{\vdots}&{\vdots}&{\vdots}&{\vdots}&{\vdots\vdots}\\ &{\qquad}&{\qquad}&{\vdots}&{\vdots}&{\vdots\vdots}\end{array} \] 

对角序列 $ (y_n) := (x_{n,n})_{n \in \mathbb{N}} $ 显然具有如下性质：对每个 $ N \in \mathbb{N} $，$ (y_n)_{n \geq N} $ 是 $ (x_{N,j})_{j \in \mathbb{N}} $ 的子序列，因此它与每个子序列 $ (x_{n,j})_{j \in \mathbb{N}} $ 具有同样的‘在无穷远处’的性质。

(b) 度量空间 X 的子集 K 是紧致的，当且仅当 K 连同诱导度量是一个紧致度量空间。

证明 这是相对拓扑的定义与命题 2.26 的直接推论。

由于注 3.11(b)，本可以只对 X 而不是对 X 的子集 K 表述定理 3.3 与 3.4。然而，在应用中通常给定一个‘底层的’度量空间 X，例如 X 常常是巴拿赫空间，此时要研究的正是 X 的某些子集。因此上述稍长的表述‘更接近实际’。

##### 一致连续性

设 $X$ 与 $Y$ 是度量空间，$f: X \to Y$ 连续。则由命题 1.1，对每个 $x_0 \in X$ 与每个 $\varepsilon > 0$，存在某个 $\delta(x_0, \varepsilon) > 0$，使得对每个满足 $d(x, x_0) < \delta$ 的 $x \in X$，我们有 $d(f(x_0), f(x)) < \varepsilon$。正如我们在命题 1.1 之后所注明的，并在例 1.3(a) 中明确看到的，数 $\delta(x_0, \varepsilon)$ 一般依赖于 $x_0 \in X$。另一方面，例 1.3(e) 表明存在这样的连续函数，对其而言数 $\delta$ 可以不依赖于 $x_0 \in X$ 而选取。这样的函数称为一致连续的，并具有重大的实际重要性。具体地，函数 $f: X \to Y$ 称为一致连续的，若对每个 $\varepsilon > 0$，存在某个 $\delta(\varepsilon) > 0$，使得

 \[ d\big(f(x),f(y)\big)<\varepsilon\quad\text{对所有 }x,y\in X\text{ 使得 }d(x,y)<\delta(\varepsilon). \] 

3.12 例 (a) 利普希茨连续函数是一致连续的（见例 1.3(e)）。

(b) 函数 $ r: (0, \infty) \to \mathbb{R} $，$ x \mapsto 1/x $ 是连续的，但不是一致连续的。

证明 由于 $r$ 是有理函数的限制，它当然是连续的。现在设 $\varepsilon > 0$。假设存在某个 $\delta := \delta(\varepsilon) > 0$，使得对所有满足 $|x - y| < \delta$ 的 $x, y \in (0,1)$ 有 $|r(x) - r(y)| < \varepsilon$。选取 $x := \delta/(1 + \delta\varepsilon)$ 与 $y := x/2$。则 $x, y \in (0,1)$ 且 $|x - y| = \delta/\left[2(1 + \delta\varepsilon)\right] < \delta$ 且 $|r(x) - r(y)| = (1 + \delta\varepsilon)/\delta > \varepsilon$。这与我们对 $\delta$ 的选取矛盾。

下述重要定理表明，在许多情形中，连续函数自动是一致连续的。

3.13 定理 假设 X 与 Y 是度量空间，且 X 是紧致的。若 $f: X \to Y$ 是连续的，则 $f$ 是一致连续的。也就是说，紧致集上的连续函数是一致连续的。

证明 假设 $f$ 是连续的但不是一致连续的。则存在某个 $\varepsilon > 0$，具有如下性质：对每个 $\delta > 0$，存在 $x, y \in X$，使得 $d(x, y) < \delta$ 但 $d(f(x), f(y)) \geq \varepsilon$。特别地，$X$ 中存在序列 $(x_n)$ 与 $(y_n)$，使得

 \[ d(x_{n},y_{n})<1/n\quad\text{且}\quad d\bigl(f(x_{n}),f(y_{n})\bigr)\geq\varepsilon~,\qquad n\in\mathbb{N}^{\times}. \] 

由于 $X$ 是紧致的，由定理 3.4，$(x_n)$ 存在子序列 $(x_{n_k})_{k\in\mathbb{N}}$，使得 $\lim_{k\to\infty}x_{n_k}=\overline{x}\in X$。对 $(y_n)$ 的相应子序列 $(y_{n_k})_{k\in\mathbb{N}}$，我们有

 \[ d(\overline{{x}},y_{n_{k}})\leq d(\overline{{x}},x_{n_{k}})+d(x_{n_{k}},y_{n_{k}})\leq d(\overline{{x}},x_{n_{k}})+1/n_{k}~,\qquad k\in\mathbb{N}^{\times}~. \] 

因此 $(y_{n_k})_{k \in \mathbb{N}}$ 也收敛于 $\overline{x}$。由于 $f$ 是连续的，这两个序列的像收敛于 $f(\overline{x})$，特别地，存在某个 $K \in \mathbb{N}$，使得

 \[ d\big(f(x_{n_{K}}),f(\overline{{x}})\big)<\varepsilon/2\quad\text{且}\quad d\big(f(y_{n_{K}}),f(\overline{{x}})\big)<\varepsilon/2. \] 

这导致矛盾

 \[ \varepsilon\leq d\big(f(x_{n_{K}}),f(y_{n_{K}})\big)\leq d\big(f(x_{n_{K}}),f(\overline{{x}})\big)+d\big(f(\overline{{x}}),f(y_{n_{K}})\big)<\varepsilon. \] 

因此 f 是一致连续的。

##### 一般拓扑空间中的紧致性

正如上一节末尾那样，我们想简要考虑一般拓扑空间的情形。诚然，一般情形不再简单，我们这里的讨论必须限于对结果的描述。关于（集合论的）拓扑的证明与更深入的探讨，强烈推荐 Dugundji 的著作 [Dug66]。

3.14 注 (a) 设 $ X = (X, \mathcal{T}) $ 是一个拓扑空间。若 $ X $ 是豪斯多夫空间且 $ X $ 的每个开覆盖都有有限子覆盖，则 $ X $ 是紧致的。若 $ X $ 是豪斯多夫空间且每个序列都有收敛子序列，则空间 $ X $ 是序列紧致的。若拓扑子空间 $ (Y, \mathcal{T}_Y) $ 是紧致的（或序列紧致的），则子集 $ Y \subseteq X $ 是紧致的（或序列紧致的）。由命题 2.17 与 2.26 以及注 3.11(b)，这些定义推广了度量空间中紧致子集与序列紧致子集的概念。

(b) 豪斯多夫空间 $ X $ 的任何紧致子集 $ K $ 都是闭的。对每个 $ x_0 \in K^c $，$ X $ 中存在不交的开集 $ U $ 与 $ V $，使得 $ K \subseteq U $ 且 $ x_0 \in V $。换句话说，豪斯多夫空间的紧致子集与不在该子集中的点可以被开邻域分离。

证明 这由命题 3.2 证明的第一部分得出 ■

(c) 紧致空间的任何闭子集都是紧致的。

证明 见习题 2。

(d) 设 X 是紧致的，Y 是豪斯多夫的。则任何连续函数 $ f: X \to Y $ 的像都是紧致的。

证明 定理 3.6 的证明与相对拓扑的定义表明 $ f(X) $ 的每个开覆盖都有有限子覆盖。由于豪斯多夫空间的子空间本身是豪斯多夫空间，断言成立。

(e) 在一般拓扑空间中，紧致性与序列紧致性是不同的概念。也就是说，紧致空间未必是序列紧致的，序列紧致空间也未必是紧致的。

(f) 在一般拓扑空间中，一致连续性没有定义，因为上面给出的定义本质地使用了度量。

##### 习题

1 设 $ X_j $，$ j = 1, \ldots, n $，是度量空间。证明 $ X_1 \times \cdots \times X_n $ 是紧致的，当且仅当每个 $ X_j $ 都是紧致的。

2 设 X 是紧致度量空间，Y 是 X 的子集。证明 Y 是紧致的，当且仅当 Y 是闭的。

3 设 X 与 Y 是度量空间。若 f 与 $ f^{-1} $ 都连续，则称双射 $ f: X \to Y $ 为同胚。证明下列命题：

(a) 若 $f: X \to Y$ 是同胚，则对所有 $x \in X$ 有 $\mathcal{U}(f(x)) = f(\mathcal{U}(x))$，即‘$f$ 把邻域映为邻域’。

(b) 假设 $X$ 是紧致的且 $f: X \to Y$ 是连续的。

(i) f 是闭映射（见习题 2.14）。

(ii) 若 f 是双射，则它是同胚。

4 若非空集合的子集族 M 的每个有限子族都有非空交集，则称 M 具有有限交性质。

证明下列命题等价：

(a) X 是紧致度量空间。

(b) $ X $ 的每个具有有限交性质的闭子集族 $ \mathcal{A} $ 都有非空交集，即 $ \bigcap \mathcal{A} \neq \emptyset $。

5 设 $ (A_j) $ 是 $ X $ 的非空闭子集的序列，且对所有 $ j \in \mathbb{N} $ 有 $ A_j \supseteq A_{j+1} $。证明：若 $ A_0 $ 是紧致的，则 $ \bigcap A_j \neq \emptyset $。\footnote{参见习题 2.9。}

6 设 E 与 F 是有限维赋范向量空间，$ A: E \to F $ 是线性的。证明 A 是利普希茨连续的。（提示：例 3.9(a)。）

7 证明所有实正交矩阵的集合 $ O(n) $ 是 $ \mathbb{R}^{(n^2)} $ 的紧致子集。

8 设

 \[ C_{0}:=[0,1]~,\quad C_{1}:=C_{0}\backslash(1/3,2/3)~,\quad C_{2}:=C_{1}\setminus\bigl((1/9,2/9)\cup(7/9,8/9)\bigr)~,\quad\ldots. \] 

一般地，$ C_{n+1} $ 由去掉组成 $ C_n $ 的 $ 2^n $ 个区间中每一个的中间的开三分之一而形成。交集 $ C := \bigcap C_n $ 称为**康托尔集**。证明下列命题：

(a) C 是紧致的且具有空的内部。

(b) $C$ 由 $[0,1]$ 中所有这样的数组成，其三进制展开为 $\sum_{k=1}^{\infty} a_k 3^{-k}$，其中 $a_k \in \{0,2\}$。

(c) C 的每个点都是 C 的极限点，即 C 是完全集。

(d) 对具有三进制展开 $ \sum_{k=1}^{\infty} a_k 3^{-k} $ 的 $ x \in C $，定义

 \[ \varphi(x):=\sum_{k=1}^{\infty}a_{k}2^{-(k+1)}. \] 

则 $ \varphi: C \to [0,1] $ 是递增的、满射的且连续的。

(e) C 是不可数的。

(f) $ \varphi $ 有一个连续延拓 $ f:[0,1] \to [0,1] $，它在 $ [0,1]\backslash C $ 中的每个区间上都是常数。函数 $ f $ 称为 $ C $ 的**康托尔函数**。

9 设 $X$ 是度量空间。若对 $X$ 中每个满足 $\lim x_n = a$ 的序列 $(x_n)$，都有 $f(a) \leq \varliminf f(x_n)$，则称函数 $f: X \to \mathbb{R}$ 在 $a \in X$ 处下半连续。若 $-f$ 在 $a$ 处下半连续，则称 $f$ 在 $a$ 处上半连续。最后，若 $f$ 在 $X$ 的每个点处都下半连续（或上半连续），则称 $f$ 是下半连续的（或上半连续的）。

(a) 证明下列命题的等价性：

(i) f 是下半连续的。

(ii) 对每个 $ a \in X $ 与 $ \varepsilon > 0 $，存在某个 $ U \in \mathcal{U}(a) $，使得对所有 $ x \in U $ 有 $ f(x) > f(a) - \varepsilon $。

(iii) 对每个 $ \alpha \in \mathbb{R} $，$ f^{-1}\left((\alpha, \infty)\right) $ 是开集。

(iv) 对每个 $ \alpha \in \mathbb{R} $，$ f^{-1}\big((-\infty, \alpha]\big) $ 是闭集。

(b) f 是连续的，当且仅当 f 是下半连续且上半连续的。

(c) 设 $ \chi_A $ 是 $ A \subseteq X $ 的特征函数。则 $ A $ 是开集，当且仅当 $ \chi_A $ 是下半连续的。

(d) 设 $X$ 是紧致的，$f: X \to \mathbb{R}$ 是下半连续的。则 $f$ 取得它的最小值，即存在某个 $x \in X$，使得对所有 $y \in X$ 有 $f(x) \leq f(y)$。（提示：考虑 $X$ 中满足 $f(x_n) \to \inf f(X)$ 的序列 $(x_n)$。）

10 设 $ f, g\colon [0,1] \to \mathbb{R} $ 由下式定义

 \[ f(x):=\left\{\begin{array}{c l}{1/n\;,}&{\quad x\in\mathbb{Q}\text{，其中 }x=m/n\text{ 为既约分数}\;,}\\ {0\;,}&{\quad x\notin\mathbb{Q}\;,}\end{array}\right. \] 

且

 \[ g(x):=\left\{\begin{array}{c l}{(-1)^{n}n/(n+1)\;,}&{\quad x\in\mathbb{Q}\text{，其中 }x=m/n\text{ 为既约分数}\;,}\\ {0\;,}&{\quad x\notin\mathbb{Q}\;.}\\ \end{array}\right. \] 

证明或否定下列命题：

(a) f 是上半连续的。

(b) f 是下半连续的。

(c) g 是上半连续的。

(d) g 是下半连续的。

11 设 $X$ 是度量空间，$f:[0,1)\to X$ 连续。证明：若 $\lim_{t\to1}f(t)$ 存在，则 $f$ 是一致连续的。

12 下列函数中哪些

 \[ f\colon(0,\infty)\to\mathbb{R}~,\quad t\mapsto(1+t^{2})^{-1}~,\qquad g\colon(0,\infty)\to\mathbb{R}~,\quad t\mapsto t^{-2} \] 

是一致连续的？

13 证明赋范向量空间的有限维子空间是闭的。

（提示：设 $E$ 是赋范向量空间，$F$ 是 $E$ 的有限维子空间。设 $(v_n)$ 是 $F$ 中的序列，$v \in E$ 使得在 $E$ 中 $\lim v_n = v$。由于注 I.12.5、命题 1.10 与波尔查诺-魏尔斯特拉斯定理，存在 $(v_n)$ 的某个子序列 $(v_{n_k})_{k \in \mathbb{N}}$ 与 $w \in F$，使得在 $F$ 中 $\lim_k v_{n_k} = w$。现在利用命题 2.11 与 2.17 证明 $v = w \in F$。）

14 假设 $X$ 是度量空间，$f: X \to \mathbb{R}$ 是有界的。证明 $\omega_f: X \to \mathbb{R}$ 是上半连续的（见习题 1.17 与 2.20）。

15 证明 $ \ell_{\infty} $ 中的闭单位球（见注 II.3.6(a)）不是紧致的。

（提示：考虑‘单位向量’ $ e_n $ 构成的序列 $ (e_n) $，其中对所有 $ j \in \mathbb{N} $ 有 $ e_n(j) := \delta_{nj} $。）

