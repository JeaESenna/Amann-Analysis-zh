## 3 解析函数

本节我们再次研究幂级数。这些当然是一类具有特别简单形式的函数级数。我们已经知道幂级数在其收敛圆盘上局部一致收敛。本节我们将证明这样的级数可以“逐项”求导，且结果仍是一个与原来级数具有相同收敛半径的幂级数。由此直接可得，幂级数在其收敛圆盘上表示一个光滑函数。

这些观察引导我们去研究解析函数，即可以局部地用幂级数表示的函数。这些函数具有非常丰富的“内在”结构，其优美与重要性我们将在后面的章节中进一步探讨。

##### 幂级数的可微性

设 $ a = \sum_k a_k X^k \in \mathbb{K}[\![X]\!] $ 是收敛半径为 $ \rho = \rho_a > 0 $ 的幂级数，$ \underline{a} $ 是 $ a $ 在 $ \rho \mathbb{B}_{\mathbb{K}} $ 上表示的函数。当不会引起误解时，我们把 $ \mathbb{B}_{\mathbb{K}} $ 写作 $ \mathbb{B} $。

3.1 定理（幂级数的可微性）设 $ a = \sum_k a_k X^k $ 是幂级数。则 $ \underline{a} $ 在 $ \rho \mathbb{B} $ 上连续可微。“逐项求导”后的级数 $ \sum_{k \geq 1} ka_k X^{k-1} $ 的收敛半径为 $ \rho $，并且

\[ \underline{{a}}^{\prime}(x)=\Bigl(\sum_{k=0}^{\infty}a_{k}x^{k}\Bigr)^{\prime}=\sum_{k=1}^{\infty}k a_{k}x^{k-1}~,\qquad x\in\rho \mathbb{B}~. \]

证明 设 $ \rho' $ 是幂级数 $ \sum k a_k X^{k-1} $ 的收敛半径。由阿达马公式 (II.9.3)、例 II.4.2(d) 与习题 II.5.2(d) 我们有

\[ \rho^{\prime}=\frac{1}{\varlimsup\sqrt[k]{k\left|a_{k}\right|}}=\frac{1}{\lim\sqrt[k]{k}\varlimsup\sqrt[k]{\left|a_{k}\right|}}=\frac{1}{\varlimsup\sqrt[k]{\left|a_{k}\right|}}=\rho. \]

由定理 1.8，幂级数 $ \sum_{k \geq 1} ka_k X^{k-1} $ 在 $ \rho\mathbb{B} $ 上局部一致收敛，因此结论由推论 2.9 得出。■

3.2 推论 若 $a = \sum a_k X^k$ 是收敛半径 $\rho$ 为正的幂级数，则 $\underline{a} \in C^\infty(\rho\mathbb{B},\mathbb{K})$ 且 $\underline{a} = \mathcal{T}(\underline{a},0)$。换言之，$\sum a_k X^k$ 是 $\underline{a}$ 在 0 处的泰勒级数，并且 $a_k = \underline{a}^{(k)}(0)/k!$。

证明 用归纳法，由定理 3.1 可得 $ \underline{a} $ 在 $ \rho\mathbb{B} $ 上光滑，且对一切 $ x\in\rho\mathbb{B} $，

\[ \underline{{a}}^{(k)}(x)=\sum_{n=k}^{\infty}n(n-1)\cdots(n-k+1)a_{n}x^{n-k},\qquad k\in\mathbb{N}. \]

因此对一切 $ k \in \mathbb{N} $ 有 $ \underline{a}^{(k)}(0) = k! a_k $，我们已证得该结论。■

##### 解析性

设 $D$ 在 $\mathbb{K}$ 中开。函数 $f: D \to \mathbb{K}$ 称为 $\text{解析的}$（在 $D$ 上），如果对每个 $x_0 \in D$，存在某个 $r = r(x_0) > 0$ 使得 $\mathbb{B}(x_0, r) \subseteq D$，且存在收敛半径 $\rho \geq r$ 的幂级数 $\sum_k a_k X^k$，使得

\[ f(x)=\sum_{k=0}^{\infty}a_{k}(x-x_{0})^{k},\qquad x\in\mathbb{B}(x_{0},r). \]

此时，我们说 $ \sum_k a_k(X - x_0)^k $ 是 $ f $ 在 $ x_0 $ 处的**幂级数展开**。$ D $ 上全体解析函数之集记作 $ C^\omega(D, \mathbb{K}) $，在不会引起误解时也记作 $ C^\omega(D) $。进一步，若 $ \mathbb{K} = \mathbb{R} $（或 $ \mathbb{K} = \mathbb{C} $），则 $ f \in C^\omega(D) $ 称为**实**（或 **复**）**解析的**。

3.3 例 (a) 多项式函数在 $ \mathbb{K} $ 上是解析的。

证明 这可由 (IV.3.1) 得出。

(b) 函数 $ \mathbb{K}^{\times} \to \mathbb{K}^{\times} $，$ x \mapsto 1/x $ 是解析的。

证明 设 $ x_0 \in \mathbb{K}^\times $。则由例 II.7.4，对每个 $ x \in \mathbb{B}(x_0, |x_0|) $，我们有

\[ \frac{1}{x}=\frac{1}{x_{0}}\frac{1}{1+(x-x_{0})/x_{0}}=\frac{1}{x_{0}}\sum_{k=0}^{\infty}(-1)^{k}\Big(\frac{x-x_{0}}{x_{0}}\Big)^{k}=\sum_{k=0}^{\infty}\frac{(-1)^{k}}{x_{0}^{k+1}}\big(x-x_{0}\big)^{k}. \]

这证明了 $ x \mapsto 1/x $ 在 $ \mathbb{K}^\times $ 上是解析的。■

3.4 注 设 $D$ 在 $\mathbb{K}$ 中开且 $f \in \mathbb{K}^D$。

(a) 若 f 是解析的，则 f 在 $x_0$ 处的幂级数展开是唯一的。

证明 这可由推论 II.9.9 得出。

(b) $f$ 是解析的当且仅当 $f$ 属于 $C^\infty(D)$ 且每个 $x_0 \in D$ 在 $D$ 中有邻域 $U$，使得

\[ f(x)=\mathcal{T}(f,x_{0})(x),\qquad x\in U, \]

也就是说，在每个 $ x_0 \in D $ 处，$ f \in C^\infty(D) $ 可以局部地由其泰勒级数表示。

证明 这直接由推论 3.2 得出。

(c) 解析性是局部性质，也就是说，$f$ 在 $D$ 上解析当且仅当每个 $x_0 \in D$ 有邻域 $U$ 使得 $f|U \in C^\omega(U)$。

(d) 由例 IV.1.17，由下式定义的函数 $ f: \mathbb{R} \to \mathbb{R} $

\[ f(x):=\left\{\begin{array}{c l}{e^{-1/x}\;,}&{\quad x>0\;,}\\ {0\;,}&{\quad x\leq0\;,}\\ \end{array}\right. \]

满足 $ f \in C^\infty(\mathbb{R}) $，且对一切 $ x > 0 $ 有 $ f(x) \neq \mathcal{T}(f,0)(x) = 0 $。因此不存在 0 的邻域使得函数 $ f $ 在其上由其泰勒级数表示，从而 $ f $ 不是解析的。

(e) $ C^\omega(D,\mathbb{K}) $ 是 $ C^\infty(D,\mathbb{K}) $ 的子代数，且 $ \mathbf{1} \in C^\omega(D,\mathbb{K}) $。

证明 由定理 IV.1.12 我们知道 $ C^\infty(D, \mathbb{K}) $ 是一个 $ \mathbb{K} $-代数，因此该结论由命题 II.9.7 得出。$ \blacksquare $

接下来我们证明幂级数在其收敛圆盘上表示一个解析函数。鉴于注 3.4(b) 与推论 3.2，只需证明幂级数可以局部地由其泰勒级数表示。

3.5 命题 假设 $ a = \sum a_k X^k $ 是收敛半径为 $ \rho > 0 $ 的幂级数。则 $ \underline{a} \in C^\omega(\rho\mathbb{B}, \mathbb{K}) $，且

\[ {\underline{{a}}}(x)={\mathcal{T}}({\underline{{a}}},x_{0})(x)~,\qquad x_{0}\in\rho{\mathbb{B}}~,\quad x\in{\mathbb{B}}(x_{0},\rho-|x_{0}|)~. \]

幂级数在其收敛圆盘上表示一个解析函数。

证明 (i) 与推论 3.2 的证明相同，我们有

\[ \underline{a}^{(k)}(x_{0})=\sum_{n=k}^{\infty}n(n-1)\cdots(n-k+1)a_{n}x_{0}^{n-k}=k!\sum_{n=k}^{\infty}\binom{n}{k}a_{n}x_{0}^{n-k} \]

对一切 $ x_0 \in \rho\mathbb{B} $。注意到对一切 $ k > n $ 有 $ \binom{n}{k} = 0 $，我们有

\[ \mathcal{T}(\underline{{a}},x_{0})=\sum_{k=0}^{\infty}\Bigl(\sum_{n=0}^{\infty}\binom{n}{k}a_{n}x_{0}^{n-k}\Bigr)(X-x_{0})^{k}\;. \]

(ii) 令 $ r := \rho - |x_0| > 0 $，且

\[ b_{n,k}(x):=\binom{n}{k}a_{n}x_{0}^{n-k}(x-x_{0})^{k}~,\qquad n,k\in\mathbb{N}~,\quad x\in\mathbb{B}(x_{0},r)~, \]

由二项式定理（定理 I.8.4）可得

\[ \sum_{n,k=0}^{m}|b_{n,k}(x)|=\sum_{n=0}^{m}|a_{n}|\left(|x_{0}|+|x-x_{0}|\right)^{n},\qquad m\in\mathbb{N},\quad x\in\mathbb{B}(x_{0},r). \]

对 $ x \in \rho\mathbb{B} $，我们有 $ |x_0| + |x - x_0| < \rho $，又由于幂级数 $ a $ 在 $ \rho\mathbb{B} $ 上绝对收敛，

\[ M(x):=\sum_{n=0}^{\infty}\left|a_{n}\right|\left(\left|x_{0}\right|+\left|x-x_{0}\right|\right)^{n}<\infty. \]

结合 (3.2)，我们现在有

\[ \operatorname*{s u p}_{m\in\mathbb{N}}\sum_{n,k=0}^{m}|b_{n,k}(x)|\leq M(x)~,\qquad x\in\mathbb{B}(x_{0},r)~. \]

这意味着二重级数 $ \sum_{n,k}\binom{n}{k}a_n x_0^{n-k}(x - x_0)^k $ 对每个 $ x \in \mathbb{B}(x_0, r) $ 都是可求和的。由定理 II.8.10(ii) 与 (3.1) 我们现在得到

\[ \begin{align*}\mathcal{T}(\underline{a},x_{0})(x)&=\sum_{k=0}^{\infty}\sum_{n=0}^{\infty}\binom{n}{k}a_{n} x_{0}^{n-k}(x-x_{0})^{k}\\&=\sum_{n=0}^{\infty}\Big(\sum_{k=0}^{n}\binom{n}{k}x_{0}^{n-k}(x-x_{0})^{k}\Big)a_{n}=\sum_{n=0}^{\infty}a_{n} x^{n}=\underline{a}(x)\end{align*} \]

对一切 $ x \in \mathbb{B}(x_0, r) $，这里我们对一切 $ k > n $ 置 $ \binom{n}{k} = 0 $，并再次用到了二项式定理。由推论 3.2 与注 3.4(b)，证明完成。■

3.6 推论

(i) 函数 $ \exp $、$ \cos $ 与 $ \sin $ 在 $ \mathbb{K} $ 上是解析的。

(ii) 若 $ f \in C^\omega(D, \mathbb{K}) $，则 $ f' \in C^\omega(D, \mathbb{K}) $。

证明 第一个结论直接由命题 3.5 得出。由定理 3.1，(ii) 也由命题 3.5 得出。■

##### 解析函数的原函数

假设 $D$ 在 $\mathbb{K}$ 中开，$E$ 是赋范向量空间，$f: D \to E$。若 $F$ 可微且 $F' = f$，则称 $F: D \to E$ 是 $f$ 的 $\text{原函数}$。

度量空间的非空开连通子集称为区域。

3.7 注 (a) 设 $ D \subseteq \mathbb{K} $ 是区域，$ f: D \to E $。若 $ F_1, F_2 \in E^D $ 是 $ f $ 的原函数，则 $ F_2 - F_1 $ 是常数。也就是说，原函数在相差一个加法常数意义下唯一。

证明 (i) 令 $F := F_2 - F_1$。则 $F$ 可微且 $F' = 0$。我们需要证明 $F$ 是常数。固定 $x_0 \in D$，并定义 $Y := \{ x \in D ; F(x) = F(x_0) \}$。这个集合非空，因为它含有 $x_0$。

(ii) 我们断言 $Y$ 在 $D$ 中开。设 $y \in Y$。由于 $D$ 是开集，存在某个 $r > 0$ 使得 $\mathbb{B}(y, r) \subseteq D$。对 $x \in \mathbb{B}(y, r)$，定义 $\varphi(t) := F(y + t(x - y))$，$t \in [0,1]$。则 $\varphi: [0,1] \to E$ 可微，且由于 $F' = 0$，其导数满足

\[ \varphi^{\prime}(t)=F^{\prime}\big(y+t(x-y)\big)(x-y)=0,\qquad t\in[0,1]. \]

由注 IV.2.6(a)，$ \varphi $ 是常数，从而 $ F(x) = \varphi(1) = \varphi(0) = F(y) = F(x_0) $。这意味着 $ \mathbb{B}(y, r) $ 包含于 Y，且 Y 在 D 中开。

(iii) 函数 $F$ 可微，因而是连续的。由于 $Y$ 是 $F$ 在点 $F(x_0)$ 处的纤维，即 $Y = F^{-1}(F(x_0))$，故 $Y$ 在 $D$ 中闭（见例 III.2.22(a)）。

(iv) 由于 $D$ 连通，由注 III.4.3 可得 $Y = D$，即 $F$ 是常数。

(b) 设 $ a = \sum a_k X^k $ 是收敛半径为 $ \rho > 0 $ 的幂级数。则 $ \underline{a} $ 在 $ \rho\mathbb{B} $ 上有由幂级数 $ \sum(a_k/(k+1))X^{k+1} $ 表示的原函数，且这个原函数在相差一个加法常数意义下唯一。

证明 由于 $\rho\mathbb{B}$ 连通，由 (a)，只需证明所给幂级数在 $\rho\mathbb{B}$ 上表示 $\underline{a}$ 的一个原函数。这直接由定理 3.1 得出。

3.8 命题 若 $ f \in C^\omega(D, \mathbb{K}) $ 有原函数 $ F $，则 $ F $ 也是解析的。

证明 设 $ x_0 \in D $。则存在某个 $ r > 0 $ 使得

\[ f(x)=\sum_{k=0}^{\infty}\frac{f^{(k)}(x_{0})}{k!}(x-x_{0})^{k},\qquad x\in\mathbb{B}(x_{0},r)\subseteq D. \]

由注 3.7(b)，存在某个 $ a \in \mathbb{K} $ 使得

\[ F(x)=a+\sum_{k=0}^{\infty}\frac{f^{(k)}(x_{0})}{(k+1)!}(x-x_{0})^{k+1},\qquad x\in\mathbb{B}(x_{0},r). \]

由命题 3.5 可得，$F$ 在 $\mathbb{B}(x_0, r)$ 上解析。由于解析性是局部性质，结论得证。

##### 对数的幂级数展开

在下一个定理中，我们加强例 IV.3.5 与应用 IV.3.9(d) 的结果。

3.9 定理 对数函数在 $ \mathbb{C}\backslash(-\infty,0] $ 上解析，且对一切 $ z \in \mathbb{B}_{\mathbb{C}} $，

\[ \log(1+z)=\sum_{k=1}^{\infty}(-1)^{k-1}z^{k}/k~. \]

证明 由例 IV.1.13(e) 我们知道对数函数在 $ \mathbb{C}\backslash(-\infty,0] $ 上是 $ z \mapsto 1/z $ 的原函数。因此第一个结论由命题 3.8 与例 3.3(b) 得出。

由幂级数展开

\[ \frac{1}{z}=\sum_{k=0}^{\infty}\frac{(-1)^{k}}{z_{0}^{k+1}}(z-z_{0})^{k},\qquad z_{0}\in\mathbb{C}^{\times},\quad z\in\mathbb{B}_{\mathbb{C}}(z_{0},|z_{0}|), \]

与注 3.7(b) 可得

\[ \log z=c+\sum_{k=0}^{\infty}\frac{(-1)^{k}}{(k+1)z_{0}^{k+1}}(z-z_{0})^{k+1},\qquad z,z_{0}\in\mathbb{C}\backslash(-\infty,0],\quad|z-z_{0}|<|z_{0}|, \]

其中 c 是某个适当的常数。令 $ z = z_0 $，我们得到 $ c = \log z_0 $，于是取 $ z_0 = 1 $ 即得所求的幂级数展开。

##### 二项级数

对 $ \alpha \in \mathbb{C} $ 与 $ n \in \mathbb{N} $，（广义）二项系数定义为

\[ \binom{\alpha}{n}:=\frac{\alpha(\alpha-1)\cdot\cdots\cdot(\alpha-n+1)}{n!},\quad n\in\mathbb{N}^{\times},\qquad\binom{\alpha}{0}:=1. \]

当 $ \alpha \in \mathbb{N} $ 时，这个定义显然与第 I.5 节的定义一致。此外，公式

\[ \binom{\alpha}{n}=\binom{\alpha-1}{n}+\binom{\alpha-1}{n-1}\quad\text{且}\quad\alpha\binom{\alpha-1}{n}=(n+1)\binom{\alpha}{n+1} \]

对一切 $ \alpha \in \mathbb{C} $ 与 $ n \in \mathbb{N} $ 成立（见习题 7）。幂级数

\[ \sum_{k}\binom{\alpha}{k}X^{k}\in\mathbb{C}[\![X]\!] \]

称为指数 $ \alpha $ 的二项级数。若 $ \alpha \in \mathbb{N} $，则对一切 $ k > \alpha $ 有 $ \binom{\alpha}{k} = 0 $，且二项级数化为多项式

\[ \sum_{k=0}^{\alpha}\binom{\alpha}{k}X^{k}=(1+X)^{\alpha}. \]

在下面的定理中，我们把这一陈述推广到任意指数的情形。

3.10 定理 设 $ \alpha \in \mathbb{C} \backslash \mathbb{N} $。

(i) 二项级数的收敛半径为 1，且

\[ \sum_{k=0}^{\infty}{\binom{\alpha}{k}}z^{k}=(1+z)^{\alpha}\;,\qquad z\in\mathbb{B}_{\mathbb{C}}\;. \]

(ii) 幂函数 $ z \mapsto z^\alpha $ 在 $ \mathbb{C}\backslash(-\infty,0] $ 上解析，且

\[ z^{\alpha}=\sum_{k=0}^{\infty}\binom{\alpha}{k}z_{0}^{\alpha-k}(z-z_{0})^{k},\qquad z,z_{0}\in\mathbb{C}\backslash(-\infty,0],\quad|z-z_{0}|<|z_{0}|. \]

(iii) 对一切满足 $ z + w \in \mathbb{C} \setminus (-\infty, 0] $ 与 $ |z| > |w| $ 的 $ z, w \in \mathbb{C} \setminus (-\infty, 0] $，

\[ (z+w)^{\alpha}=\sum_{k=0}^{\infty}\binom{\alpha}{k}z^{\alpha-k}w^{k}. \]

(iv) 对一切 $ \alpha \in (0, \infty) $，二项级数在 $ \bar{\mathbb{B}}_{\mathbb{C}} $ 上依范数收敛。

证明 下面令 $ a_{k} := \binom{\alpha}{k} $。

(i) 由于 $ \alpha \notin \mathbb{N} $，我们有 $ \lim |a_k/a_{k+1}| = \lim_k \left((k+1)/|\alpha - k|\right) = 1 $，因此由命题 II.9.4，二项级数的收敛半径为 1。

对一切 $ z \in \mathbb{B}_{\mathbb{C}} $，定义 $ f(z) := \sum_{k=0}^{\infty} a_k z^k $。由定理 3.1 与 (3.4) 可得

\[ f^{\prime}(z)=\sum_{k=1}^{\infty}k\binom{\alpha}{k}z^{k-1}=\sum_{k=0}^{\infty}(k+1)\binom{\alpha}{k+1}z^{k}=\alpha\sum_{k=0}^{\infty}\binom{\alpha-1}{k}z^{k}, \]

并且，利用 (3.4) 的第一个公式，

\[ \begin{align*}(1+z)f^{\prime}(z)&=\alpha\biggl(\sum_{k=0}^{\infty}\binom{\alpha-1}{k}z^{k}+\sum_{k=0}^{\infty}\binom{\alpha-1}{k}z^{k+1}\biggr)\\&=\alpha\biggl\{1+\sum_{k=1}^{\infty}\biggl(\binom{\alpha-1}{k}+\binom{\alpha-1}{k-1}\biggr)z^{k}\biggr\}=\alpha f(z)\end{align*} \]

对一切 $ z \in \mathbb{B}_{\mathbb{C}} $。因此

\[ (1+z)f^{\prime}(z)-\alpha f(z)=0~,\qquad z\in\mathbb{B}_{\mathbb{C}}~, \]

由此可得

\[ \bigl[(1+z)^{-\alpha}f(z)\bigr]^{\prime}=(1+z)^{-\alpha-1}\bigl[(1+z)f^{\prime}(z)-\alpha f(z)\bigr]=0~,\qquad z\in\mathbb{B}_{\mathbb{C}}~. \]

由于 $\mathbb{B}_{\mathbb{C}}$ 是区域，注 3.7(a) 蕴含对某个常数 $c\in\mathbb{C}$ 有 $(1+z)^{-\alpha}f(z)=c$。由于 $f(0)=1$，我们有 $c=1$，从而对一切 $z\in\mathbb{B}_{\mathbb{C}}$ 有 $f(z)=(1+z)^{\alpha}$。

(ii) 设 $ z, z_0 \in \mathbb{C} \setminus (-\infty, 0] $ 满足 $ |z - z_0| < |z_0| $。则由 (3.5) 可得

\[ \begin{align*}z^{\alpha}&=\left(z_{0}+(z-z_{0})\right)^{\alpha}=z_{0}^{\alpha}\Big(1+\frac{z-z_{0}}{z_{0}}\Big)^{\alpha}\\&=z_{0}^{\alpha}\sum_{k=0}^{\infty}\binom{\alpha}{k}\frac{(z-z_{0})^{k}}{z_{0}^{k}}=\sum_{k=0}^{\infty}\binom{\alpha}{k}z_{0}^{\alpha-k}(z-z_{0})^{k}\;.\end{align*} \]

特别地，$ z \mapsto z^\alpha $ 在 $ \mathbb{C}\backslash(-\infty,0] $ 上解析。

(iii) 由于 $ |w/z| < 1 $，(3.5) 蕴含

\[ (z+w)^{\alpha}=z^{\alpha}\Big(1+\frac{w}{z}\Big)^{\alpha}=z^{\alpha}\sum_{k=0}^{\infty}\binom{\alpha}{k}\Big(\frac{w}{z}\Big)^{k}=\sum_{k=0}^{\infty}\binom{\alpha}{k}z^{\alpha-k}w^{k}. \]

(iv) 对一切 $ k \in \mathbb{N} $ 令 $ \alpha_k := \left| \binom{\alpha}{k} \right| $。则

\[ k\alpha_{k}-(k+1)\alpha_{k+1}=\alpha\alpha_{k}>0,\qquad k>\alpha>0. \]

因此对一切 $ k > \alpha $，序列 $ (k\alpha_k) $ 递减，且存在某个 $ \beta \geq 0 $ 使得 $ \lim k\alpha_k = \beta $。这蕴含

\[ \lim_{n}\sum_{k=0}^{n}\left(k\alpha_{k}-(k+1)\alpha_{k+1}\right)=-\lim_{n}\left((n+1)\alpha_{n+1}\right)=-\beta. \]

由 (3.6) 我们现在得到

\[ \sum_{k>\alpha}\alpha_{k}=\frac{1}{\alpha}\sum_{k>\alpha}\left(k\alpha_{k}-(k+1)\alpha_{k+1}\right)<\infty. \]

因为对一切 $ |z| \leq 1 $ 有 $ |a_k z^k| \leq \alpha_k $，故结论是魏尔斯特拉斯优级数判别法（定理 1.6）的结果。$ \blacksquare $

3.11 例 下面我们进一步研究特殊值 $ \alpha = 1/2 $ 与 $ \alpha = -1/2 $ 的二项级数。

(a)（$ \alpha = 1/2 $ 的情形）首先我们计算二项系数：

\[ \begin{aligned}\binom{1/2}{k}&=\frac{1}{k!}\frac{1}{2}\Big(\frac{1}{2}-1\Big)\cdot\cdots\cdot\Big(\frac{1}{2}-k+1\Big)\\&=\frac{(-1)^{k-1}}{k!}\frac{1\cdot3\cdot\cdots\cdot(2k-3)}{2^{k}}\\&=(-1)^{k-1}\frac{1\cdot3\cdot\cdots\cdot(2k-3)}{2\cdot4\cdot\cdots\cdot2k}\end{aligned} \]

对一切 k > 2。由定理 3.10 我们得到级数展开

\[ \sqrt{1+z}=1+\frac{z}{2}+\sum_{k=2}^{\infty}(-1)^{k-1}\frac{1\cdot3\cdot\cdots\cdot(2k-3)}{2\cdot4\cdot\cdots\cdot2k}z^{k},\qquad z\in\bar{\mathbb{B}}_{\mathbb{C}}. \]

(b)（平方根的计算）把 (3.7) 写成如下形式

\[ \sqrt{1+z}=1+\frac{z}{2}-z^{2}\sum_{k=0}^{\infty}(-1)^{k}b_{k}z^{k},\qquad z\in\bar{\mathbb{B}}_{\mathbb{C}}, \]

其中

\[ b_{0}:=1/8~,\quad b_{k+1}:=b_{k}(2k+3)/(2k+6)~,\qquad k\in\mathbb{N}~, \]

并在区间 [0, 1] 上考虑这个级数。由交错级数的误差估计（推论 II.7.9）可得

\[ 1+\frac{x}{2}-x^{2}\Big(\sum_{k=0}^{2n}(-1)^{k}b_{k}x^{k}\Big)\leq\sqrt{1+x}\leq1+\frac{x}{2}-x^{2}\Big(\sum_{k=0}^{2n+1}(-1)^{k}b_{k}x^{k}\Big) \]

对一切 $ n \in \mathbb{N} $ 与 $ x \in [0,1] $。

这提供了计算平方根数值近似的又一种方法。例如，对 n = 2 与 x = 1，我们有

\[ 1+\frac{1}{2}-\frac{1}{8}+\frac{1}{16}-\frac{5}{128}=1.39843\ldots\leq\sqrt{2}\leq1.39843\ldots+\frac{7}{256}=1.42578\ldots \]

这个方法可用于计算区间 $ [0,2] $ 中数的平方根的近似值。

一个简单的技巧可以把这种方法推广到大于 2 的数：

为确定 $ a > 2 $ 的平方根，找出 $ m \in \mathbb{N} $ 使得 $ m^2 < a \leq 2m^2 $，并

令 $ x := (a - m^2)/m^2 $。则 $ x \in (0,1) $ 且 $ a = m^2(1 + x) $。因此

\[ \sqrt{a}=m\sqrt{1+x}=m\Big(1+\frac{x}{2}-\frac{x^{2}}{8}+\frac{x^{3}}{16}\mp\cdots\Big), \]

并且

\[ m\Big[1+\frac{x}{2}-x^{2}\sum_{k=0}^{2n}(-1)^{k}b_{k}x^{k}\Big]\leq\sqrt{a}\leq m\Big[1+\frac{x}{2}-x^{2}\sum_{k=0}^{2n+1}(-1)^{k}b_{k}x^{k}\Big]. \]

例如，$ \sqrt{10} $ 有级数展开

\[ \sqrt{10}=3\Big(1+\frac{1}{2\cdot9}-\frac{1}{8\cdot81}+\frac{1}{16\cdot729}-\frac{5}{128\cdot6561}\pm\cdots\Big) \]

由此得到不等式

\[ \begin{aligned}3\Big(1+\frac{1}{18}-\frac{1}{648}+\frac{1}{11664}-\frac{5}{839808}\Big)&=3.16227637\cdots\leq\sqrt{10}\\&\leq3.16227637\cdots+\frac{21}{15116544}\\&=3.16227776\cdots\end{aligned} \]

作为比较，$ \sqrt{10} $ 的精确十进制展开以 3.162277660... 开头

(c)（$ \alpha = -1/2 $ 的情形）此时我们有

\[ \binom{-1/2}{k}=(-1)^{k}\frac{1\cdot3\cdot\cdots\cdot(2k-1)}{2\cdot4\cdot\cdots\cdot2k},\qquad k\geq2. \]

由定理 3.10 我们得到

\[ \frac{1}{\sqrt{1+z}}=1-\frac{z}{2}+\sum_{k=2}^{\infty}(-1)^{k}\frac{1\cdot3\cdot\cdots\cdot(2k-1)}{2\cdot4\cdot\cdots\cdot2k}z^{k},\qquad z\in\bar{\mathbb{B}}_{\mathbb{C}}. \]

若 $ |z| < 1 $，则 $ |-z^2| < 1 $，因此我们可以把 z 代换为 $ -z^2 $ 得到

\[ \frac{1}{\sqrt{1-z^{2}}}=1+\frac{z^{2}}{2}+\sum_{k=2}^{\infty}\frac{1\cdot3\cdot\cdots\cdot(2k-1)}{2\cdot4\cdot\cdots\cdot2k}z^{2k},\qquad z\in\bar{\mathbb{B}}_{\mathbb{C}}. \]

特别地，由命题 3.5 可得，函数 $ z \mapsto 1 / \sqrt{1 - z^2} $ 在 $ \mathbb{B}_\mathbb{C} $ 上解析。$ \blacksquare $

对实自变量，(3.8) 给出了反正弦函数的幂级数展开。

3.12 推论 反正弦函数在 $ (-1,1) $ 上是实解析的，且

\[ \arcsin(x)=x+\sum_{k=1}^{\infty}\frac{1\cdot3\cdot\cdots\cdot(2k-1)}{2\cdot4\cdot\cdots\cdot2k}\frac{x^{2k+1}}{2k+1},\qquad x\in(-1,1). \]

证明 由注 3.7(b) 与 (3.8)，

\[ F(x):=x+\frac{x^{3}}{2\cdot3}+\sum_{k=2}^{\infty}\frac{1\cdot3\cdot\cdots\cdot(2k-1)}{2\cdot4\cdot\cdots\cdot2k}\frac{x^{2k+1}}{2k+1},\qquad x\in(-1,1), \]

是 $f: (-1,1) \to \mathbb{R}$，$x \mapsto 1/\sqrt{1-x^2}$ 的原函数。由于反正弦函数是 $f$ 的另一个原函数（应用 IV.2.10），且 $F(0) = 0 = \arcsin(0)$，由注 3.4(a) 可得 $F = \arcsin$。最后，命题 3.5 表明 $\arcsin$ 在 $(-1,1)$ 上解析。

##### 解析函数的唯一性定理

作为本节的结尾，我们证明解析函数的一个重要整体性质：若解析函数在其区域 $D$ 的一个开子集上为零，则它在整个 $D$ 上为零。

3.13 定理（解析函数的唯一性定理）设 $D$ 是 $\mathbb{K}$ 中的区域，$f \in C^\omega(D, \mathbb{K})$。若 $f$ 的零点集在 $D$ 中有极限点，则 $f$ 在 $D$ 上为零。

证明 令

\[ Y:=\left\{x\in D\;;\;\exists\left(x_{n}\right)\text{ 在 }D\backslash\{x\}\text{ 中 }\text{ 使得 }\lim x_{n}=x\text{ 且 }f(x_{n})=0\text{ 对 }n\in\mathbb{N}\right\} \]

由假设，$Y$ 非空。由于 $f$ 连续，对一切 $y \in Y$ 有 $f(y) = 0$。因此 $Y$ 的每个极限点都含于 $Y$，由命题 III.2.11，$Y$ 在 $D$ 中闭。设 $x_0 \in Y$。由于 $f$ 解析，存在 $x_0$ 在 $D$ 中的某个邻域 $V$ 与幂级数 $\sum a_k X^k$，使得对一切 $x \in V$ 有 $f(x) = \sum a_k (x - x_0)^k$。由于 $x_0$ 属于 $Y$，存在 $\mathbb{V}\setminus\{x_0\}$ 中的序列 $(y_n)$，使得 $y_n \to x_0$ 且对一切 $n \in \mathbb{N}$ 有 $f(y_n) = 0$。于是由幂级数的唯一性定理（推论 II.9.9）可得，对一切 $k \in \mathbb{N}$ 有 $a_k = 0$，即 $f$ 在 $V$ 上为零，且 $V$ 含于 $Y$。因此我们已经证明了 $Y$ 在 $D$ 中开。

由于 Y 是区域 D 的非空开且闭的子集，而 D 连通，我们有 Y = D（见注 III.4.3）。■

3.14 注 (a) 设 $D$ 是 $\mathbb{K}$ 中的区域，$f, g \in C^\omega(D, \mathbb{K})$。若存在在 $D$ 中收敛的序列 $(x_n)$，使得对一切 $n \in \mathbb{N}$ 有 $x_n \neq x_{n+1}$ 且 $f(x_n) = g(x_n)$，则 $f = g$。

证明 函数 $ h := f - g $ 在 $ D $ 上解析，且 $ \lim x_n $ 是 $ h $ 的零点集在 $ D $ 中的极限点，因此结论由定理 3.13 得出。

(b) 若 $D$ 在 $\mathbb{R}$ 中开，则 $C^\omega(D,\mathbb{R})$ 是 $C^\infty(D,\mathbb{R})$ 的真子代数。

证明 由于可微性与解析性都是局部性质，我们可以假设 $D$ 是有界开区间。容易看出，对一切 $x_0 \in D$ 与 $f \in C^\omega(D,\mathbb{R})$，函数 $x \mapsto f(x-x_0)$ 在 $x_0 + D$ 上解析。因此只需考虑对某个 $a > 0$ 的 $D := (-a,a)$ 的情形。设 $f$ 是例 IV.1.17 中函数在 $D$ 上的限制。则 $f \in C^\infty(D,\mathbb{R})$ 且 $f|(-a,0) = 0$，但 $f \neq 0$。因此由 (a) 可得 $f$ 不是解析的。

(c) 非零解析函数可能有无限多个零点，余弦函数即为一例。定理 3.13 只是说，这些零点在该函数的区域内不能有极限点。

(d) (b) 的证明表明，在实情形下，定理 3.13 中 $f$ 的解析性是必要的。在复情形下，情况完全不同。我们以后会看到，“复可微性”与“复解析性”这两个概念是相同的，因此对 $\mathbb{C}$ 的每个开子集 $D$，$C^1(D,\mathbb{C})$ 与 $C^\omega(D,\mathbb{C})$ 相同。

3.15 注 假设 $D$ 在 $\mathbb{R}$ 中开且 $f: D \to \mathbb{R}$ 是（实）解析的。则对每个 $x \in D$，存在某个 $r_x > 0$ 使得

\[ f(y)=\sum_{k=0}^{\infty}\frac{f^{(k)}(x)}{k!}(y-x)^{k},\qquad y\in\mathbb{B}_{\mathbb{R}}(x,r_{x})\cap D. \]

集合

\[ D_{\mathbb{C}}:=\bigcup_{x\in D}\mathbb{B}_{\mathbb{C}}(x,r_{x}) \]

是 $D$ 在 $\mathbb{C}$ 中的开邻域。由命题 3.5，对每个 $x \in D$，

\[ f_{\mathbb{C},x}(z):=\sum_{k=0}^{\infty}\frac{f^{(k)}(x)}{k!}(z-x)^{k},\qquad z\in\mathbb{B}_{\mathbb{C}}(x,r_{x}), \]

在 $\mathbb{B}_{\mathbb{C}}(x,r_x)$ 上定义了一个解析函数。解析函数的唯一性定理蕴含，任意两个这样的函数 $f_{\mathbb{C},x}$ 与 $f_{\mathbb{C},y}$ 在其定义域的交上相同。这意味着

\[ f_{\mathbb{C}}(z):=f_{\mathbb{C},x}(z),\qquad z\in\mathbb{B}_{\mathbb{C}}(x,r_{x}),\quad x\in D, \]

定义了一个解析函数 $ f_{\mathbb{C}}: D_{\mathbb{C}} \to \mathbb{C} $，使得 $ f_{\mathbb{C}} \supseteq f $。函数 $ f_{\mathbb{C}} $ 称为 $ f $ 在 $ D_{\mathbb{C}} $ 上的解析延拓。

现在假设 $D$ 在 $\mathbb{C}$ 中开。令 $D_{\mathbb{R}} := D \cap \mathbb{R} \neq \emptyset$。若 $f \in C^\omega(D, \mathbb{C})$ 且 $f(D_{\mathbb{R}}) \subseteq \mathbb{R}$，则 $f|D_{\mathbb{R}}$ 是实解析的。

这些考虑表明，在我们对解析函数的进一步研究中，我们可以局限于复情形。■

##### 习题

1 设 $D$ 在 $\mathbb{C}$ 中开，$D_{\mathbb{R}} := D \cap \mathbb{R} \neq \emptyset$，且 $f \in C^\omega(D, \mathbb{C})$。证明下列结论：(a) (Re $f$) | $D_{\mathbb{R}}$ 与 (Im $f$) | $D_{\mathbb{R}}$ 是实解析的。

(b) 设 $ f = \sum a_k(X - x_0)^k $ 是 $ f $ 在 $ x_0 \in D_R $ 处的幂级数展开，收敛半径为 $ \rho > 0 $。令 $ \widetilde{D} := D_R \cap (x_0 - \rho, x_0 + \rho) $。则下列各条等价：

(i) $ f|\tilde{D} \in C^{\omega}(\tilde{D}, \mathbb{R}) $。

(ii) 对每个 $ k \in \mathbb{N} $ 有 $ a_k \in \mathbb{R} $。

2 假设 $ f \in C^\omega(D, \mathbb{K}) $ 没有零点。证明 $ 1/f $ 也是解析的。

（提示：利用习题 II.9.9 的带余除法。）

3 由下式定义 $h: \mathbb{C} \to \mathbb{C}$：

\[ h(z):=\left\{\begin{array}{c l}{(e^{z}-1)/z\;,}&{\quad z\in\mathbb{C}^{\times}\;,}\\ {1\;,}&{\quad z=0\;.}\\ \end{array}\right. \]

证明 $ h \in C^\omega(\mathbb{C}, \mathbb{C}) $，且若 $ |z| < 1/(e - 1) $ 则 $ h(z) \neq 0 $。

（提示：关于解析性，考虑级数 $ \sum X^k/(k+1)! $。由注 II.8.2(c)，我们得到不等式

\[ |h(z)|=\left|\frac{e^{z}-1}{z}\right|\geq1-\sum_{k=1}^{\infty}\frac{|z|^{k}}{(k+1)!} \]

对一切 $ z \in \mathbb{C} $。）

4 设 $ h: \mathbb{C} \to \mathbb{C} $ 同习题 3。由习题 2 与习题 3，函数 $ 1/h $ 在 $ \mathbb{B}(0,1/(e-1)) $ 上解析，因此存在 $ \rho > 0 $ 与 $ B_k \in \mathbb{C} $ 使得

\[ \frac{1}{h}=\sum_{k=0}^{\infty}\frac{B_{k}}{k!}z^{k},\qquad z\in\rho\mathbb{B}. \]

计算 $B_{0},\ldots,B_{10}$，并证明所有的 $B_{k}$ 都是有理数。

5 假设 $D$ 是 $\mathbb{C}$ 中的区域，$f \in C^\omega(D,\mathbb{C})$ 满足下列条件之一：

(i) Re f = const.

(ii) $ \mathrm{Im} f = \mathrm{const} $

(iii) $ \overline{f} \in C^\omega(D, \mathbb{C}) $。

(iv) $ |f| = \mathrm{const}. $

证明 $f$ 是常数。（提示：(i) 利用适当的差商证明 $f'(z) \in i\mathbb{R} \cap \mathbb{R}$。(iii) $2\operatorname{Re}f = f + \overline{f}$ 与 (i)。(iv) $|f|^2 = f\overline{f}$ 与习题 2。）

6 设 $ f \in C^\omega(\rho\mathbb{B}) $ 对某个 $ \rho > 0 $ 在 $ \rho\mathbb{B} $ 上由 $ \sum a_k X^k $ 表示。假设 $ (x_n) $ 是 $ (\rho\mathbb{B})\setminus\{0\} $ 中的零序列。证明下列各条等价：

(i) f 是偶函数。

(ii) $ f(x_n) = f(-x_n), \ n \in \mathbb{N} $。

(iii) $ a_{2m+1}=0 $，$ m\in\mathbb{N} $。

对 $ \rho\mathbb{B} $ 上的奇解析函数给出类似的刻画。

7 证明公式 (3.4)。

8 证明

\[ \binom{\alpha+\beta}{k}=\sum_{\ell=0}^{k}\binom{\alpha}{\ell}\binom{\beta}{k-\ell} \]

对一切 $ \alpha, \beta \in \mathbb{C} $ 与 $ k \in \mathbb{N} $。

9 验证下列函数

(a) $ \sinh: \mathbb{C} \to \mathbb{C} $、$ \cosh: \mathbb{C} \to \mathbb{C} $、$ \tanh: \mathbb{C} \setminus i\pi(\mathbb{Z} + 1/2) \to \mathbb{C} $；

(b) $ \tan: \mathbb{C} \backslash \pi(\mathbb{Z} + 1/2) \to \mathbb{C} $、$ \cot: \mathbb{C} \backslash \pi\mathbb{Z} \to \mathbb{C} $；

是解析的。（提示：利用命题 3.8。）

10 证明函数

\[ \ln(\cos)\ ,\quad\ln(\cosh)\ ,\quad x\mapsto\ln^{2}(1+x) \]

在 0 的邻域内解析。它们在 0 处的相应幂级数展开是什么？（提示：先求导数的幂级数展开。）

11 证明，对 $ x \in [-1, 1] $，

\[ \arctan x=\sum_{k=0}^{\infty}(-1)^{k}\frac{x^{2k+1}}{2k+1}=x-\frac{x^{3}}{3}+\frac{x^{5}}{5}-\frac{x^{7}}{7}+\cdots\ , \]

并由此（莱布尼茨公式）

\[ \frac{\pi}{4}=\sum_{k=0}^{\infty}\frac{(-1)^{k}}{2k+1}=1-\frac{1}{3}+\frac{1}{5}-\frac{1}{7}+\cdots\;. \]

（提示：$ \arctan' x = 1/(1 + x^2) $。对 $ x = \pm 1 $，收敛性由莱布尼茨判别法（定理 II.7.8）得出。）
