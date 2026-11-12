## 4 多项式逼近

解析函数可由幂级数局部表示，因此在给定点  $ x_{0} $ 附近，它能够被多项式以任意精度逼近，也就是说，只要允许多项式具有足够高的次数，并把逼近限制在该点  $ x_{0} $ 的充分小的邻域内，误差就可以任意小。这里的逼近多项式，即泰勒多项式，由待逼近函数及其各阶导数在该点  $ x_{0} $ 处的值显式给出。此外，逼近误差可以利用泰勒级数余项的各种公式加以控制。这一事实正是泰勒定理之所以极为重要的原因，尤其是对于研究函数逼近与方程求解的有效算法的数值数学而言。

本节研究用多项式对函数作整体逼近的问题。本节的主要结果，斯通–魏尔斯特拉斯定理，保证了对于  $ \mathbb{R}^n $ 的紧致子集上的任意连续函数，这样的多项式是存在的。

##### 巴拿赫代数

一个代数 A，如果它同时也是一个巴拿赫空间，并且满足

\[ \left\| \mathbf{a} \mathbf{b} \right\|\leq \left\| \mathbf{a} \right\| \left\| \mathbf{b} \right\| ~, \quad \mathbf{a},\mathbf{b}\in \mathbf{A}~, \]

则称其为巴拿赫代数。如果  $ A $ 含有单位元  $ e $，我们还要求  $ \|e\| = 1 $。

4.1 例 (a) 设 $X$ 为非空集合。则 $B(X,\mathbb{K})$ 是一个以 1 为单位元的巴拿赫代数。

证明 由定理 II.6.6 我们知道  $ B(X,\mathbb{K}) $ 是巴拿赫空间。此外

\[ \begin{array}{r}{\|f g\|_{\infty}=\underset{x\in X}{\operatorname*{s u p}}|f(x)g(x)|\leq\underset{x\in X}{\operatorname*{s u p}}|f(x)|\underset{x\in X}{\operatorname*{s u p}}|g(x)|=\|f\|_{\infty}\left\|g\right\|_{\infty},\qquad f,g\in B(X,\mathbb{K}).}\end{array} \]

这表明  $ B(X, \mathbb{K}) $ 是  $ \mathbb{K}^X $ 的子代数。对于  $ \mathbb{K}^X $ 的单位元 1，我们有  $ \mathbf{1} \in B(X, E) $ 且  $ \|\mathbf{1}\|_{\infty} = 1 $。 $ \blacksquare $

(b) 设 $X$ 为度量空间。则 $BC(X, \mathbb{K})$ 是 $B(X, \mathbb{K})$ 的一个含 1 的闭子代数，因而是具有单位元的巴拿赫代数。

证明 由定理 2.6， $ BC(X, \mathbb{K}) $ 是  $ B(X, \mathbb{K}) $ 的闭子空间，从而它本身是一个巴拿赫空间。于是结论由 (a) 与命题 III.1.5 推出。■

(c) 设 $X$ 为紧致度量空间。则 $C(X,\mathbb{K})$ 是一个以 1 为单位元的巴拿赫代数。

证明 在定理 2.6 中我们已证得，在这种情形下巴拿赫空间  $ C(X, \mathbb{K}) $ 与  $ BC(X, \mathbb{K}) $ 相同。

(d) 在巴拿赫代数  $ A $ 中，乘法运算  $ A \times A \to A $， $ (a, b) \mapsto ab $ 是连续的。

证明 对于  $ A\times A $ 中所有的  $ (a,b) $ 与  $ (a_{0},b_{0}) $，我们有

\[ \left\|a b-a_{0}b_{0}\right\|\leq\left\|a-a_{0}\right\|\left\|b\right\|+\left\|a_{0}\right\|\left\|b-b_{0}\right\|, \]

由此结论容易推出（参见例 III.1.3(m) 的证明）。■

(e) 如果 $B$ 是巴拿赫代数 $A$ 的子代数，则 $\overline{B}$ 是巴拿赫代数。

证明 对于 $a, b \in \overline{B}$，存在序列 $(a_n)$ 与 $(b_n)$ 使得在 $A$ 中 $a_n \to a$ 且 $b_n \to b$。由命题 II.2.2 与注 II.3.1(c) 可得

\[ a+\lambda b=\lim a_{n}+\lambda\lim b_{n}=\lim(a_{n}+\lambda b_{n})\in\overline{B} \]

对所有的 $\lambda \in \mathbb{K}$ 成立。因此 $\overline{B}$ 是 $A$ 的闭子空间，从而也是一个巴拿赫空间。由 (d)，我们还有 $a_n b_n \to ab$，故 $ab$ 属于 $\overline{B}$。于是 $\overline{B}$ 是 $A$ 的子代数，因而是巴拿赫代数。

##### 稠密性与可分性

度量空间 $X$ 的子集 $D$ 在 $X$ 中稠密，如果 $\overline{D} = X$。如果一个度量空间含有一个可数稠密子集，则称其为可分的。

4.2 注 (a) 下列各命题等价：

(i) D 在 X 中稠密。

(ii) 对于每个  $ x \in X $ 以及  $ x $ 的每个邻域  $ U $，我们有  $ U \cap D \neq \emptyset $。

(iii) 对于每个  $ x \in X $，存在  $ D $ 中的序列  $ (d_n) $ 使得  $ d_n \to x $。

(b) 假设  $ X_1, \ldots, X_m $ 是度量空间，且对于  $ 1 \leq j \leq m $， $ D_j $ 在  $ X_j $ 中稠密。则  $ D_1 \times \cdots \times D_m $ 在  $ X_1 \times \cdots \times X_m $ 中稠密。

证明 这是 (a) 与例 II.1.8(e) 的直接推论。■

(c) 稠密性与可分性的定义显然对一般拓扑空间也成立。(a) 中的命题 (i) 与 (ii) 在一般拓扑空间中彼此等价，但与 (iii) 不等价。

(d) 设 X 与 Y 是度量空间，且  $ h: X \to Y $ 是同胚。则 D 在 X 中稠密当且仅当  $ h(D) $ 在 Y 中稠密。

证明 这直接由 (a) 中的刻画 (ii) 以及同胚把邻域映成邻域这一事实（见习题 III.3.3）推出。■

4.3 例 (a) Q 在  $ \mathbb{R} $ 中稠密。特别地， $ \mathbb{R} $ 是可分的。

证明 这由命题 I.10.8 与 I.9.4 推出。

(b) 无理数  $ \mathbb{R} \backslash Q $ 构成  $ \mathbb{R} $ 的稠密子集。

证明 这在命题 I.10.11 中已证得。

(c) 对于 X 的任意子集 A，A 在  $ \overline{A} $ 中稠密。

(d) Q + iQ 在 C 中稠密。特别地，C 是可分的。

证明 这由 (a) 与注 4.2(b) 推出（另见注 II.3.13(e)）。

(e) 任何有限维赋范向量空间都是可分的。特别地， $ \mathbb{K}^{n} $ 是可分的。

证明 设 $V$ 是 $\mathbb{K}$ 上的赋范向量空间，且 $(b_1, \ldots, b_n)$ 是 $V$ 的一个基。由 (a) 与 (d)，$\mathbb{K}$ 是可分的。设 $D$ 是 $\mathbb{K}$ 的可数稠密子集，且

\[ V_{D}:=\left\{\textstyle\sum_{k=1}^{n}\alpha_{k}b_{k}\;;\;\alpha_{k}\in D\right\}. \]

则 $V_{D}$ 是可数的，且在 $V$ 中稠密（见习题 6）。■

在下面的命题中，我们汇集了稠密性的几个有用的等价表述。

4.4 命题 设 $X$ 为度量空间，$D \subseteq X$。则下列各命题等价：

(i) D 在 X 中稠密。

(ii) 如果 $A$ 是闭集且 $D \subseteq A \subseteq X$，则 $A = X$。因此 $X$ 是 $X$ 的唯一闭稠密子集。

(iii) 对于每个  $ x \in X $ 与  $ \varepsilon > 0 $，存在某个  $ y \in D $ 使得  $ d(x, y) < \varepsilon $。

(iv) $D$ 的补集具有空的内部，即 $(D^{c})^{\circ} = \emptyset$。

证明 ‘(i)⇒(ii)’ 设 $A$ 为闭集且 $D \subseteq A \subseteq X$。由推论 III.2.13 可得 $X = \overline{D} \subseteq \overline{A} = A$，即 $A = X$。

 $ ^(\text{ii}) \Rightarrow (\text{iii})' $ 我们用反证法。如果  $ x \in X $ 与  $ \varepsilon > 0 $ 使得  $ D \cap \mathbb{B}(x, \varepsilon) = \emptyset $，则  $ D \subseteq [\mathbb{B}(x, \varepsilon)]^c $。这与 ( $ \text{ii} $) 矛盾，因为  $ [\mathbb{B}(x, \varepsilon)]^c $ 是  $ X $ 的闭子集且  $ [\mathbb{B}(x, \varepsilon)]^c \neq X $。

‘(iii)⇒(iv)’ 假设 $(D^c)^\circ$ 非空。由于 $(D^c)^\circ$ 是开集，存在 $x\in(D^c)^\circ$ 与 $\varepsilon>0$ 使得 $\mathbb{B}(x,\varepsilon)\subseteq(D^c)^\circ\subseteq D^c$。这蕴含 $D\cap\mathbb{B}(x,\varepsilon)=\emptyset$，与 (iii) 矛盾。

 $ ^{‘}(iv)\Rightarrow(i) $ 由习题 III.2.5，对于  $ X $ 的任意子集  $ V $ 我们有  $ \mathring{V} = X \setminus \overline{(X \setminus V)} $。由 (iv) 可得

\[ \emptyset=(D^{c})^{\circ}=X\setminus\overline{{(D^{c})^{c}}}=X\setminus\overline{{D}}\;, \]

即  $ \overline{D} = X $。证明完成。■

当然，条件 (iii) 也与注 4.2(a) 的条件 (ii) 等价。

##### 斯通–魏尔斯特拉斯定理

作为证明斯通–魏尔斯特拉斯定理的准备，我们证明下面两个引理。

4.5 引理

\[ |t|=\sum_{k=0}^{\infty}\binom{1/2}{k}(t^{2}-1)^{k},\qquad t\in[-1,1], \]

且该级数在  $ [-1,1] $ 上依范数收敛。

证明 对于  $ t \in [-1,1] $，设  $ x := t^2 - 1 $。则

\[ \left|t\right|=\sqrt{t^{2}}=\sqrt{1+t^{2}-1}=\sqrt{1+x}, \]

于是结论由定理 3.10 推出。

4.6 引理 设 $X$ 为紧致度量空间，$A$ 是含 1 的 $C(X, \mathbb{R})$ 的闭子代数。如果 $f$ 与 $g$ 属于 $A$，则 $|f|$、$f \vee g$ 与 $f \wedge g$ 也属于 $A$。

证明 设  $ f, g \in A $。由习题 I.8.11 我们有

\[ f\vee g=\frac{1}{2}(f+g+|f-g|),\quad f\wedge g=\frac{1}{2}(f+g-|f-g|). \]

因此只需证明：如果 $f$ 属于 $A$，则 $|f|$ 也属于 $A$。此外，我们只需考虑 $f \neq 0$ 的情形。由引理 4.5 我们有

\[ \left||t|-\sum_{k=0}^{m}\binom{1/2}{k}(t^{2}-1)^{k}\right|\leq\sum_{k=m+1}^{\infty}\left|\binom{1/2}{k}\right|,\qquad t\in[-1,1], \]

其中右边当  $ m \to \infty $ 时收敛到零。因此，对于每个  $ \varepsilon > 0 $，存在某个  $ P_\varepsilon \in \mathbb{R}[t] $ 使得

\[ \left|\left|t\right|-P_{\varepsilon}(t)\right|<\varepsilon/\|f\|_{\infty},\qquad t\in[-1,1]. \]

令  $ t := f(x)/\|f\|_\infty $，我们得到

\[ \|f\|_{\infty}\left|\left|f(x)/\|f\|_{\infty}\right|-P_{\varepsilon}\bigl(f(x)/\|f\|_{\infty}\bigr)\right|<\varepsilon,\qquad x\in X. \]

定义 $g_\varepsilon := \| f \|_\infty P_\varepsilon(f/\| f\|_\infty)$。由于 $A$ 是含 $\mathbf{1}$ 的 $C(X, \mathbb{R})$ 的子代数，$g_\varepsilon$ 属于 $A$。因此我们已经证得：对于每个 $\varepsilon > 0$，存在某个 $g \in A$ 使得 $\big\|\|f\|-g\big\|_\infty < \varepsilon$。于是 $|f|$ 属于 $\overline{A}$。由假设，$A$ 是闭的，故结论成立。■

如果对于每个 $(x, y) \in X \times X$ 且 $x \neq y$，存在某个 $m \in M$ 使得 $m(x) \neq m(y)$，则称 $C(X, \mathbb{K})$ 的子集 $M$ 分离 $X$ 的点。如果 $m \in M$ 蕴含 $\overline{m} \in M$，则称集合 $M$ 是自伴的。\footnote{在实情形这一条件总成立：$C(X, \mathbb{R})$ 的任何子集都是自伴的。}

经过这些准备，我们现在可以证明本节的主要定理了。

4.7 定理（斯通–魏尔斯特拉斯定理）设 $X$ 为紧致度量空间，$A$ 是含 1 的 $C(X, \mathbb{K})$ 的子代数。如果 $A$ 分离 $X$ 的点且是自伴的，则 $A$ 在 $C(X, \mathbb{K})$ 中稠密。也就是说，对于每个 $f \in C(X, \mathbb{K})$ 与 $\varepsilon > 0$，存在某个 $a \in A$ 使得 $\|f - a\|_\infty < \varepsilon$。

证明 我们分别证明  $ \mathbb{K} = \mathbb{R} $ 与  $ \mathbb{K} = \mathbb{C} $ 两种情形。

(a) 假设  $ f \in C(X, \mathbb{R}) $ 且  $ \varepsilon > 0 $。

(i) 我们断言，对于每一对  $ y, z \in X $，存在某个  $ h_{y,z} \in A $ 使得

\[ h_{y,z}(y)=f(y)\quad\text{ 且 }\quad h_{y,z}(z)=f(z). \]

事实上，如果 $y = z$，则常值函数 $h_{y,z} := f(y)\mathbf{1}$ 满足 (4.1)。如果 $y \neq z$，那么由于 $A$ 分离 $X$ 的点，存在某个 $g \in A$ 使得 $g(y) \neq g(z)$。现在定义

\[ h_{y,z}:=f(y)\mathbf{1}+\frac{f(z)-f(y)}{g(z)-g(y)}\big(g-g(y)\mathbf{1}\big)~. \]

由于 $h_{y,z}$ 属于 $A$ 且 $h_{y,z}(y)=f(y)$ 与 $h_{y,z}(z)=f(z)$，故 (4.1) 成立。

(ii) 对于  $ y, z \in X $，设

\[ U_{y,z}:=\left\{x\in X;h_{y,z}(x)<f(x)+\varepsilon\right\},\quad V_{y,z}:=\left\{x\in X;h_{y,z}(x)>f(x)-\varepsilon\right\}. \]

由于  $ h_{y,z} - f $ 连续，由例 III.2.22(c) 我们知道  $ U_{y,z} $ 与  $ V_{y,z} $ 在 X 中是开集。由 (4.1)， $ y $ 属于  $ U_{y,z} $ 且  $ z $ 属于  $ V_{y,z} $。现在固定某个  $ z \in X $。则  $ \{U_{y,z}, y \in X\} $ 是紧致空间 X 的开覆盖，故存在 X 中的  $ y_0, \ldots, y_m $ 使得  $ \bigcup_{j=0}^m U_{y_j,z} = X $。设

\[ h_{z}:=\min_{0\leq j\leq m}h_{y_{j},z}:=h_{y_{0},z}\wedge\cdots\wedge h_{y_{m},z}. \]

由引理 4.6， $ h_{z} $ 属于  $ \overline{A} $。此外，我们有

\[ h_{z}(x)<f(x)+\varepsilon,\qquad x\in X, \]

因为对于每个  $ x \in X $，存在某个  $ j \in \{0, \ldots, m\} $ 使得  $ x \in U_{y_j,z} $。

(iii) 对于  $ z \in X $，令  $ V_z := \bigcap_{i=0}^{m} V_{y_i,z} $。则我们有

\[ h_{z}(x)>f(x)-\varepsilon,\qquad x\in V_{z}. \]

由 (4.1)，$\{V_z; z \in X\}$ 是 $X$ 的开覆盖。由于 $X$ 是紧致的，存在 $X$ 中的 $z_0, \ldots, z_n$ 使得 $X = \bigcup_{k=0}^n V_{z_k}$。设

\[ h:=\max_{0\leq k\leq n}h_{z_{k}}:=h_{z_{0}}\lor\cdots\lor h_{z_{n}}. \]

则引理 4.6 与例 4.1(e) 表明 $h$ 属于 $\overline{A}$。此外，由 (4.2) 与 (4.3) 可得不等式

\[ f(x)-\varepsilon<h(x)<f(x)+\varepsilon,\qquad x\in X. \]

于是  $ \|f - h\|_\infty < \varepsilon $。由于  $ h $ 属于  $ \overline{A} $，存在某个  $ a \in A $ 使得  $ \|h - a\|_\infty < \varepsilon $，从而  $ \|f - a\|_\infty < 2\varepsilon $。由于  $ \varepsilon > 0 $ 是任意的，结论现在由命题 4.4 推出。

(b) 设  $ K = C $。

(i) 设 $A_{\mathbb{R}}$ 为 $A$ 中所有实值函数的集合。则 $A_{\mathbb{R}}$ 是域 $\mathbb{R}$ 上的一个代数。因为 $A$ 是自伴的，对于每个 $f \in A$，函数 $\mathrm{Re}f = (f + \overline{f})/2$ 与 $\mathrm{Im}f = (f - \overline{f})/2$ 属于 $A_{\mathbb{R}}$。因此 $A \subseteq A_{\mathbb{R}} + iA_{\mathbb{R}}$。由于也有 $A_{\mathbb{R}} + iA_{\mathbb{R}} \subseteq A$，我们已证得 $A = A_{\mathbb{R}} + iA_{\mathbb{R}}$。

(ii) 假设 $y, z \in X$ 使得 $y \neq z$。因为 $A$ 分离 $X$ 的点，存在某个 $f \in A$ 使得 $f(y) \neq f(z)$，即要么 $\operatorname{Re} f(y) \neq \operatorname{Re} f(z)$ 要么 $\operatorname{Im} f(y) \neq \operatorname{Im} f(z)$。因此 $A_{\mathbb{R}}$ 也分离 $X$ 的点。利用 (a) 中已证的结果，我们现在有 $C(X, \mathbb{R}) = \overline{A}_{\mathbb{R}}$，从而

\[ \overline{{A}}\subseteq C(X,\mathbb{C})=C(X,\mathbb{R})+i C(X,\mathbb{R})=\overline{{A}}_{\mathbb{R}}+i\overline{{A}}_{\mathbb{R}}~. \]

(iii) 最后，设  $ f \in \overline{A}_{\mathbb{R}} + i\overline{A}_{\mathbb{R}} $。则存在  $ g, h \in \overline{A}_{\mathbb{R}} $ 使得  $ f = g + ih $，从而存在  $ A $ 中的序列  $ (g_k) $ 与  $ (h_k) $ 使得在  $ C(X, \mathbb{R}) $ 中  $ g_k \to g $ 且  $ h_k \to h $。由于序列  $ (g_k + ih_k) $ 在  $ C(X, \mathbb{C}) $ 中收敛到  $ g + ih = f $，这蕴含  $ f $ 属于  $ \overline{A} $，从而  $ C(X, \mathbb{C}) = \overline{A}_{\mathbb{R}} + i\overline{A}_{\mathbb{R}} \subseteq \overline{A} $。这连同 (4.4) 一起完成了证明。

4.8 推论 设  $ M \subseteq \mathbb{R}^n $ 是紧致的。

(a) $M$ 上任何连续的  $\mathbb{K}$ 值函数都可以用一个  $n$ 元多项式一致逼近，也就是说， $\mathbb{K}[X_1, \ldots, X_n] \mid M$ 在  $C(M, \mathbb{K})$ 中稠密。

(b) 巴拿赫空间  $C(M, \mathbb{K})$ 是可分的。

证明 (a) 设  $A := \mathbb{K}[X_1, \ldots, X_n] | M$。则  $A$ 显然是含 1 的  $C(M, \mathbb{K})$ 的子代数。此外， $A$ 分离  $M$ 的点且是自伴的（见习题 7）。于是结论由斯通–魏尔斯特拉斯定理推出。

(b) 如果  $\mathbb{K} = \mathbb{R}$，则  $\mathbb{Q}[X_1, \ldots, X_n] \mid M$ 是  $C(M, \mathbb{R})$ 的可数稠密子集。如果  $\mathbb{K} = \mathbb{C}$，则  $(\mathbb{Q} + i\mathbb{Q})[X_1, \ldots, X_n] \mid M$ 具有所需性质。

4.9 推论（魏尔斯特拉斯逼近定理）设  $-\infty < a < b < \infty$。则对于每个  $f \in C([a, b], \mathbb{K})$ 与  $\varepsilon > 0$，存在一个系数在  $\mathbb{K}$ 中的多项式  $p$ 使得对所有  $x \in [a, b]$ 有  $|f(x) - p(x)| < \varepsilon$。

利用斯通–魏尔斯特拉斯定理，我们可以容易地构造一个不完备的赋范向量空间的例子。

4.10 例 (a) 设 I 为紧致完全区间， $\mathcal{P}$ 是  $C(I)$ 中由 I 上所有（多项式的限制）组成的子代数。则  $\mathcal{P}$ 是赋范向量空间，但不是巴拿赫空间。

证明 由推论 4.9， $\mathcal{P}$ 在  $C(I)$ 中稠密。由于  $ \exp |X $\ 属于  $ C(I) $，但不属于  $ \mathcal{P} $， $\mathcal{P}$ 是  $C(I)$ 的真子空间。由命题 4.4 可得  $\mathcal{P}$ 不是闭的，因而不完备。 $ \blacksquare $

(b) 设 I 为紧致区间，且  $ \epsilon := \exp |I $。则

\[ {A}:=\left\{\left.\sum_{k=0}^{n}a_{k}\epsilon^{k}\right.~;~a_{k}\in\mathbb{K},~n\in\mathbb{N}\right\} \]

是 $C(I, \mathbb{K})$ 的稠密子代数。因此 $I$ 上任何连续函数都可以被形如 $t \mapsto \sum_{k=0}^{n} a_k e^{tk}$ 的“指数函数的和”一致逼近。

证明 显然  $A$ 是  $C(I, \mathbb{K})$ 的子代数且  $\mathbf{1} \in A$。由于当  $s \neq t$ 时  $\epsilon(s) \neq \epsilon(t)$， $A$ 分离  $I$ 的点。由于  $A$ 是自伴的，结论由定理 4.7 推出。 $ \blacksquare $

(c) 设  $S := S^1 := \{ z \in \mathbb{C} ; \, |z| = 1 \}$，且对于  $z \in S$ 设  $\chi(z) := z$。定义

\[ \mathcal{P}(S):=\mathcal{P}(S,\mathbb{C}):=\left\{\textstyle\sum_{k=-n}^{n}c_{k}\chi_{k}\;;\;c_{k}\in\mathbb{C},\;n\in\mathbb{N}\right\} \]

其中对于所有  $k \in \mathbb{Z}$ 有  $\chi_k := \chi^k$。则  $\mathcal{P}(S)$ 是  $C(S) := C(S, \mathbb{C})$ 的稠密子代数。

**证明** 显然， $\mathcal{P} := \mathcal{P}(S)$ 是含  $\mathbf{1} \in \mathcal{P}$ 的  $C(S)$ 的子代数。因为当  $z \neq w$ 时  $\chi(z) \neq \chi(w)$， $\mathcal{P}$ 分离  $S$ 的点，并且由于  $\overline{\chi}_k = \chi_{-k}$， $\mathcal{P}$ 是自伴的。于是结论再次由定理 4.7 推出。 $ \blacksquare $

斯通–魏尔斯特拉斯定理的极大一般性是以非构造性证明为代价得到的。在经典魏尔斯特拉斯逼近定理的背景下，也就是用多项式对连续函数作一致逼近，逼近多项式的构造有一个显式的方法（见习题 11 与 12）。

##### 三角多项式

我们再次考虑例 4.10(c)，作代换  $z = e^{it}$，其中  $t \in \mathbb{R}$。则对于所有  $k \in \mathbb{N}$ 与  $c_k, c_{-k} \in \mathbb{C}$，欧拉公式 (III.6.1) 蕴含

\[ c_{k}z^{k}+c_{-k}z^{-k}=\left(c_{k}+c_{-k}\right)\cos(k t)+i\left(c_{k}-c_{-k}\right)\sin(k t). \]

令

\[ a_{k}:=c_{k}+c_{-k},\quad b_{k}:=i(c_{k}-c_{-k}) \]

我们可以把  $p := \sum_{k=-n}^{n} c_k \chi_k \in \mathcal{P}(S)$ 写成

\[ p(e^{i t})=\frac{a_{0}}{2}+\sum_{k=1}^{n}\left[a_{k}\cos(k t)+b_{k}\sin(k t)\right]. \]

这启示出如下定义：对于  $n \in \mathbb{N}$ 与  $a_k, b_k \in \mathbb{K}$，函数

\[ T_{n}\colon\mathbb{R}\to\mathbb{K},\quad t\mapsto\frac{a_{0}}{2}+\sum_{k=1}^{n}\bigl[a_{k}\operatorname{c o s}(k t)+b_{k}\operatorname{s i n}(k t)\bigr] \]

称为（K 值）三角多项式。如果  $\mathbb{K} = \mathbb{R}$（或  $\mathbb{K} = \mathbb{C}$），则称  $T_n$ 为**实**的（或 **复**的）。如果  $(a_n, b_n) \neq (0, 0)$，则  $T_n$ 是  $n$ 次三角多项式。

4.11 注 (a) 设

\[ \begin{array}{r}{\mathcal{P}(S,\mathbb{R}):=\big\{p=\sum_{k=-n}^{n}c_{k}\chi_{k}\;;\;c_{-k}=\overline{{c}}_{k},\;-n\le k\le n,\;n\in\mathbb{N}\big\}.}\end{array} \]

则  $\mathcal{P}(S,\mathbb{R}) = \mathcal{P}(S,\mathbb{C}) \cap C(S,\mathbb{R})$，且  $\mathcal{P}(S,\mathbb{R})$ 是  $C(S,\mathbb{R})$ 的实子代数。

证明 对于  $p \in \mathcal{P}(S, \mathbb{R})$ 我们有

\[ \overline{{\boldsymbol{p}}}=\sum_{k=-n}^{n}\overline{{\boldsymbol{c}}}_{k}\overline{{\boldsymbol{\chi}}}_{k}=\sum_{k=-n}^{n}\boldsymbol{c}_{-k}\boldsymbol{\chi}_{-k}=\boldsymbol{p}. \]

这表明  $\mathcal{P}(S,\mathbb{R}) \subseteq \mathcal{P}(S) \cap C(S,\mathbb{R})$。如果  $p \in \mathcal{P}(S)$ 是实值的，则由  $\overline{\chi}_k = \chi_{-k}$ 可得

\[ \sum_{k=-n}^{n}\overline{c}_{k}\chi_{-k}=\overline{p}=p=\sum_{k=-n}^{n}c_{k}\chi_{k}=\sum_{k=-n}^{n}c_{-k}\chi_{-k}, \]

即

\[ \sum_{k=-n}^{n}(c_{-k}-\overline{c}_{k})\chi_{-k}=0. \]

由于  $\chi_{-n}$ 无处为零，由  $\chi_{-k} = \chi_{-n} \chi_{n-k}$ 可得 (4.8) 等价于

\[ \varphi:=\sum_{k=0}^{2n}a_{k}\chi_{k}=0 \]

其中对于所有  $-n \leq k \leq n$ 有  $a_{n-k} := c_{-k} - \overline{c}_k$。由于  $\varphi$ 是多项式在  $S$ 上的限制，由多项式的唯一性定理（注 I.8.19(c)）可得对所有  $0 \leq k \leq 2n$ 有  $a_k = 0$。因此  $p$ 属于  $\mathcal{P}(S, \mathbb{R})$，这证明了第一个断言。第二个断言现在是显然的。 $ \blacksquare $

(b) 设  $\mathcal{TP}(\mathbb{R},\mathbb{K})$ 是所有 K 值三角多项式的集合。则  $\mathcal{TP}(\mathbb{R},\mathbb{K})$ 是  $\mathcal{BC}(\mathbb{R},\mathbb{K})$ 的子代数，且

\[ \mathrm{c i s}^{*}:{\mathcal{P}}(S,{\mathbb{K}})\to T{\mathcal{P}}({\mathbb{R}},{\mathbb{K}}),\quad p\mapsto p\circ\mathrm{c i s} \]

是一个代数同构。

证明 由 (4.5)、(4.6) 与 (a) 容易推出函数 cis* 是良定义的。 $\mathcal{TP}(\mathbb{R}, \mathbb{K})$ 是  $BC(\mathbb{R}, \mathbb{K})$ 的子空间且 cis* 是线性单射也是显然的。设  $T_n \in \mathcal{TP}(\mathbb{R}, \mathbb{K})$ 如 (4.7) 中所示，并设  $p := \sum_{k=-n}^{n} c_k \chi_k$，其中

\[ c_{0}:=a_{0}/2~,\quad c_{k}:=(a_{k}-i b_{k})/2~,\quad c_{-k}:=(a_{k}+i b_{k})/2~,\qquad1\leq k\leq n~. \]

则由 (a) 可得 $p$ 属于 $\mathcal{P}(S,\mathbb{K})$，且 (4.5) 与 (4.6) 蕴含 $T_n = p \circ \mathrm{cis}$。因此 $\mathrm{cis}^*$ 是满射，从而也是向量空间同构。此外

\[ \mathrm{c i s}^{*}(p q)=(p q)\circ\mathrm{c i s}=(p\circ\mathrm{c i s})(q\circ\mathrm{c i s})=(\mathrm{c i s}^{*}p)(\mathrm{c i s}^{*}q)~,\qquad p,q\in\mathcal{P}(S,\mathbb{K})~, \]

因此 cis $ ^{*} $： $\mathcal{P}(S,\mathbb{K}) \to BC(\mathbb{R},\mathbb{K})$ 是代数同态。由此可得， $\mathcal{TP}(\mathbb{R},\mathbb{K})$，即  $\mathcal{P}(S,\mathbb{K})$ 在 cis $ ^{*} $ 下的像，是  $BC(\mathbb{R},\mathbb{K})$ 的子代数，且 cis $ ^{*} $ 是从  $\mathcal{P}(S,\mathbb{K})$ 到  $\mathcal{TP}(\mathbb{R},\mathbb{K})$ 的同构。 $ \blacksquare $

(c) 子代数  $\mathcal{TP}(\mathbb{R},\mathbb{K})$ 在  $BC(\mathbb{R},\mathbb{K})$ 中不稠密。

证明 通过如下方式定义  $f \in BC(\mathbb{R}, \mathbb{K})$：

\[ f(t):=\left\{\begin{array}{r l}{-2\pi~,}&{\quad-\infty<t<-2\pi~,}\\ {t,}&{\quad-2\pi\leq t\leq2\pi~,}\\ {2\pi,}&{\quad2\pi<t<\infty~.}\end{array}\right. \]

假设与断言相反，$\mathcal{TP}(\mathbb{R},\mathbb{K})$ 在 $BC(\mathbb{R},\mathbb{K})$ 中稠密。则存在某个 $T\in\mathcal{TP}(\mathbb{R},\mathbb{K})$ 使得 $\|f-T\|_\infty<2\pi$。特别地，$|T(2\pi)-f(2\pi)|<2\pi$，从而 $T(2\pi)>0$。由于 $T(2\pi)=T(0)=T(-2\pi)$ 且 $f(-2\pi)=-2\pi$，这蕴含

\[ |T(-2\pi)-f(-2\pi)|=|T(2\pi)+2\pi|>2\pi, \]

这与  $\|f - T\|_{\infty} < 2\pi$ 矛盾。■

由例 4.1(e)， $\mathcal{TP}(\mathbb{R},\mathbb{K})$ 在  $BC(\mathbb{R},\mathbb{K})$ 中的闭包是一个巴拿赫代数。下面我们证明，这个巴拿赫代数恰好就是  $\mathbb{R}$ 上连续的  $2\pi$ 周期 K 值函数代数。

##### 周期函数

首先我们证明周期函数的几个一般性质。设 $M$ 为集合且 $p \neq 0$。则如果对所有 $t \in \mathbb{R}$ 有 $f(t + p) = f(t)$，就称 $f: \mathbb{R} \to M$ 为以 $p$ 为周期的\footnote{这是推论 III.6.14 的脚注中所给定义的特殊情形。}（或简称为 $p$ 周期的）。

4.12 注 (a) 一个 $p$ 周期函数完全由它限制在任何长度为 $p$ 的区间上的限制所确定。

(b) 设  $f: \mathbb{R} \to M$ 是 $p$ 周期的，且  $q > 0$。则函数

\[ \mathbb{R}\to M\;,\quad t\mapsto f(t p/q) \]

是 $q$ 周期的。因此，对于固定周期 $p$ 的周期函数的研究，只需考虑  $p = 2\pi$ 的情形。

(c) 设  $\mathrm{Funct}_{2\pi}(\mathbb{R}, M)$ 是从  $\mathbb{R}$ 到  $M$ 的  $2\pi$ 周期函数的集合。则

\[ \mathrm{c i s}^{*}\colon M^{S}\to\mathrm{F u n c t}_{2\pi}({\mathbb R},M)~,\quad g\mapsto g\circ\mathrm{c i s} \]

是双射。利用这个双射，我们可以把  $2\pi$ 周期函数与单位圆上的函数集合等同起来。

证明 由于 cis： $\mathbb{R} \to S$ 以  $2\pi$ 为周期，对于每个  $g \in M^S$，函数  $g \circ \mathrm{cis}$ 也是  $2\pi$ 周期的。由命题 III.6.15， $\varphi := \mathrm{cis} \mid [0, 2\pi)$ 是从  $[0, 2\pi)$ 到  $S$ 的双射。因此，对于  $f \in \mathrm{Funct}_{2\pi}(\mathbb{R}, M)$， $g := f \circ \varphi^{-1}$ 是从  $S$ 到  $M$ 的良定义函数，且  $g \circ \mathrm{cis} = f$。于是  $\mathrm{cis}^*$ 是双射。 $ \blacksquare $

(d) 假设 $M$ 是度量空间，$f \in C(\mathbb{R}, M)$ 是周期且非常数的。则 $f$ 有最小正周期 $p$，即 $\text{最小的}$ 周期，且 $p\mathbb{Z}^\times$ 是 $f$ 的全部周期之集。

证明 对于 $t \in \mathbb{R}$，令 $P_t := \left\{ p \in \mathbb{R} ; f(t+p) = f(t) \right\}$ 且 $P := \bigcap_{t \in \mathbb{R}} P_t$。则 $P \setminus \{0\}$ 是 $f$ 的全部周期之集。由于 $f$ 连续，函数 $p \mapsto f(t+p)$ 在 $\mathbb{R}$ 上也连续。因为 $P_t$ 是函数 $p \mapsto f(t+p)$ 在点 $f(t)$ 处的纤维，由例 III.2.22(a) 可得 $P_t$ 在 $\mathbb{R}$ 中是闭集。因此 $P$，作为闭集的交，本身也是闭的。此外，由于 $f$ 是周期的，$P \neq \{0\}$，又由于 $f$ 非常数，$P \neq \mathbb{R}$。对于 $p_1, p_2 \in P$，对所有 $t \in \mathbb{R}$ 我们有 $f(t + p_1 - p_2) = f(t + p_1) = f(t)$，这意味着 $p_1 - p_2$ 属于 $P$。在此令 $p_1 = 0$，我们看到：如果 $p$ 属于 $P$，则 $-p$ 也属于 $P$。把 $p_2$ 换成 $-p_2$，我们看到 $p_1 + p_2 \in P$。因此 $P$ 是 $(\mathbb{R}, +)$ 的闭子群。

因为 $P \neq \mathbb{R}$，$P$ 中必有最小正元素 $p_0$。否则，对于每个 $\varepsilon > 0$，会存在某个 $p \in P \cap (0, \varepsilon)$，从而对于每个 $s \in \mathbb{R}$，存在某个 $k \in \mathbb{Z}$ 使得 $|s - kp| < \varepsilon$。于是 $P$ 会在 $\mathbb{R}$ 中稠密，由命题 4.4 这会蕴含 $P = \mathbb{R}$。显然 $p_0 \mathbb{Z}$ 是 $P$ 的子群。假设 $q \in P \setminus p_0 \mathbb{Z}$ 且不失一般性 $q > 0$。则存在 $r \in (0, p_0)$ 与 $k \in \mathbb{N}^*$ 使得 $q = kp_0 + r$。由此可得 $r = q - kp_0 \in P$，这与 $p_0$ 的最小性矛盾。这表明 $P = p_0 \mathbb{Z}$。\footnote{这一证明表明，若 $ G $ 是 $ (\mathbb{R}, +) $ 的闭子群，则或者 $ G = \{0\} $，或者 $ G = (\mathbb{R}, +) $，或者 $ G $ 是无限\textbf{循环}群（即由单个元素生成的无限群）。}$ \blacksquare $

设 M 为度量空间，且

\[ C_{2\pi}(\mathbb{R},M):=\bigl\{f\in C(\mathbb{R},M)\;;\ f\text{ 是 }2\pi\text{-周期的}\bigr\}. \]

下面的讨论表明，注 4.11(b) 中的函数 cis $ ^{*} $ 在  $C(S, \mathbb{K})$ 上有连续延拓。这一结果是注 4.12(c) 的一个相当大的加强

，蕴含我们可以把连续的  $2\pi$ 周期函数与 S 上的连续函数等同起来。

4.13 命题 如果 $M$ 是度量空间，则 cis* 是从 $C(S,M)$ 到 $C_{2\pi}(\mathbb{R},M)$ 的双射。

证明 由注 4.12(c) 与 cis 的连续性可得，cis* 是从 $C(S,M)$ 到 $C_{2\pi}(\mathbb{R},M)$ 的单射。由于 cis* 是从 $M^S$ 到 $\operatorname{Funct}_{2\pi}(\mathbb{R},M)$ 的双射，只需证明：对于所有 $f\in C_{2\pi}(\mathbb{R},M)$，函数 $(\mathrm{cis}^*)^{-1}(f)$ 在 $S$ 上连续。首先注意到，对于所有 $\varphi=\mathrm{cis}\mid[0,2\pi)$，我们有 $\varphi^{-1}=\arg|S$。由习题 III.6.9 可得，$\varphi^{-1}$ 把集合 $S^\bullet:=S\backslash\{-1\}$ 连续地映到 $(-\pi,\pi)$ 中。因此 $g:=(\mathrm{cis}^*)^{-1}(f)=f\circ\varphi^{-1}$ 把集合 $S^\bullet$ 连续地映到 $M$ 中。当 $t\in(-\pi,\pi)$ 趋于 $\pm\pi$ 时，我们有 $\mathrm{cis}(t)\to-1$，故 $f$ 的 $2\pi$ 周期性蕴含

\[ \lim_{z\to-1\atop z\in S^\bullet}g(z)=f(\pi)=(\mathrm{cis}^{*})^{-1}(f)(-1). \]

于是  $(cis^{*})^{-1}(f)$ 在 S 上连续。■

4.14 推论 设  $E := (E, |\cdot|)$ 为巴拿赫空间。则  $C_{2\pi}(\mathbb{R}, E)$ 是巴拿赫空间  $BC(\mathbb{R}, E)$ 的闭子空间，从而是一个具有最大值范数

\[ \|f\|_{C_{2\pi}}:=\max_{-\pi\leq t\leq\pi}|f(t)|, \]

的巴拿赫空间，且 cis $ ^{*} $ 是从  $C(S,E)$ 到  $C_{2\pi}(\mathbb{R},E)$ 的等距同构\footnote{自然，在向量空间的情形，“同构”是指“向量空间同构”。}。

证明 由注 4.12(a)， $C_{2\pi}(\mathbb{R}, E)$ 是  $BC(\mathbb{R}, E)$ 的子空间，且  $\|\cdot\|_{\infty}$ 诱导范数  $\|\cdot\|_{C_{2\pi}}$，这是显然的。同样显然的是， $2\pi$ 周期函数序列的逐点极限（因此特别地，一致极限）也是  $2\pi$ 周期的。因此  $C_{2\pi}(\mathbb{R}, E)$ 是巴拿赫空间  $BC(\mathbb{R}, E)$ 的闭子空间，从而它本身是一个巴拿赫空间。由命题 4.13，cis* 是从  $C(S, E)$ 到  $C_{2\pi}(\mathbb{R}, E)$ 的双射，它显然是线性的。由于 cis，由命题 III.6.15，是从  $(-\pi, \pi)$ 到  $S$ 的双射，可得

\[ \|\mathrm{c i s}^{*}(f)\|_{C_{2\pi}}=\max_{-\pi\leq t\leq\pi}\left|f\big(\mathrm{c i s}(t)\big)\right|=\max_{z\in S}|f(z)|=\|f\|_{C(S,E)} \]

对所有  $f \in C(S, E)$ 成立。因此 cis $ ^{*} $ 是等距的。■

4.15 注 对于每个  $a \in \mathbb{R}$，我们有

\[ \|f\|_{C_{2\pi}}=\max_{a\leq t\leq a+2\pi}|f(t)|. \]

证明 这直接由 f 的周期性推出。

##### 三角逼近定理

在对周期函数作过这些讨论之后，我们现在可以容易地证明魏尔斯特拉斯逼近定理的三角形式了。

4.16 定理 $C_{2\pi}(\mathbb{R},\mathbb{K})$ 是一个以 1 为单位元的巴拿赫代数，三角多项式子代数 $\mathcal{TP}(\mathbb{R},\mathbb{K})$ 在 $C_{2\pi}(\mathbb{R},\mathbb{K})$ 中稠密。此外，cis* 是从 $C(S,\mathbb{K})$ 到 $C_{2\pi}(\mathbb{R},\mathbb{K})$ 的等距代数同构。

证明 由推论 4.14，cis* 是从 $C:=C(S,\mathbb{K})$ 到 $C_{2\pi}:=C_{2\pi}(\mathbb{R},\mathbb{K})$ 的等距向量空间同构。例 4.10(c) 与注 4.11(a) 蕴含 $\mathcal{P}:=\mathcal{P}(S,\mathbb{K})$ 是 $C$ 的稠密子代数。注 4.11(b) 说明 cis*$|\mathcal{T}\mathcal{P}$ 是从 $\mathcal{P}$ 到 $\mathcal{T}\mathcal{P}:=\mathcal{T}\mathcal{P}(\mathbb{R},\mathbb{K})$ 的代数同构。现在设 $f,g\in C$。则存在 $\mathcal{P}$ 中的序列 $(f_n)$ 与 $(g_n)$ 使得在 $C$ 中 $f_n\to f$ 且 $g_n\to g$。由 cis* 的连续性与乘法的连续性可得

\[ \mathrm{c i s}^{*}(f g)=\lim\mathrm{c i s}^{*}(f_{n}g_{n})=\lim(\mathrm{c i s}^{*}f_{n})(\mathrm{c i s}^{*}g_{n})=(\mathrm{c i s}^{*}f)(\mathrm{c i s}^{*}g). \]

因此 cis* 是从 $C$ 到 $C_{2\pi}$ 的代数同构。由于 $\mathcal{P}$ 在 $C$ 中稠密且 cis* 是从 $C$ 到 $C_{2\pi}$ 的同胚，$\mathcal{P}$ 在 cis* 下的像 $\mathcal{TP}$ 在 $C_{2\pi}$ 中稠密（见注 4.2(d)）。

4.17 推论（魏尔斯特拉斯逼近定理的三角形式）

对于  $f \in C_{2\pi}(\mathbb{R}, \mathbb{K})$ 与  $\varepsilon > 0$，存在  $n \in \mathbb{N}$ 与  $a_k, b_k \in \mathbb{K}$ 使得

\[ \left|f(t)-\frac{a_{0}}{2}-\sum_{k=1}^{n}\left[a_{k}\cos(k t)+b_{k}\sin(k t)\right]\right|<\varepsilon \]

对所有  $t \in \mathbb{R}$ 成立。

定理 4.16 特别地说明，巴拿赫代数  $C(S, \mathbb{K})$ 与  $C_{2\pi}(\mathbb{R}, \mathbb{K})$ 是同构且等距的。这意味着，无论是对于应用，还是对于连续性与极限的问题，我们可以使用这两个空间中更方便的那个。对于代数运算与抽象考虑，这常常是代数  $C(S, \mathbb{K})$，而对于  $2\pi$ 周期函数的具体表示，通常更偏好空间  $C_{2\pi}(\mathbb{R}, \mathbb{K})$。

推论 4.17 引发几个问题：

• 系数 $(a_{k})$ 与 $(b_{k})$ 满足什么条件能保证三角级数

\[ \frac{a_{0}}{2}+\sum_{k}\left[a_{k}\cos(k\cdot)+b_{k}\sin(k\cdot)\right] \]

在  $\mathbb{R}$ 上一致收敛？当这发生时，该级数显然表示一个周期为  $2\pi$ 的连续周期函数。

• 在  $f \in C_{2\pi}(\mathbb{R}, \mathbb{K})$ 可由三角级数表示的情形下，系数  $a_k$ 与  $b_k$ 如何计算？它们是否由  $f$ 唯一确定？是否每个  $2\pi$ 周期连续函数都可以这样表示？

对于这些问题中的第一个，魏尔斯特拉斯优级数判别法给出一个容易的充分条件。我们将在后面的章节中回到第二个问题。

##### 习题

1 验证习题 2.10 中的巴拿赫空间  $BC^k(X, \mathbb{K})$ 是一个含单位元的代数，且乘法是连续的。对于哪些  $k$， $BC^k(X, \mathbb{K})$ 是巴拿赫代数？

2 设  $x_0, \ldots, x_k \in \mathbb{K}^n$ 非零。证明  $\{x \in \mathbb{K}^n; \prod_{j=0}^k (x | x_j) \neq 0\}$ 在  $\mathbb{K}^n$ 中是开且稠密的。

3 设 M 为度量空间。证明或反驳下列命题：

(a) M 的稠密子集的有限交在 M 中稠密。

(b) M 的开稠密子集的有限交在 M 中是开且稠密的。

4 设  $D_k$， $k \in \mathbb{N}$，是  $\mathbb{K}^n$ 的开稠密子集，且  $D := \bigcap_k D_k$。证明下列命题：\footnote{(a) 是贝尔纲定理的特殊情形。}

(a) $D$ 在 $\mathbb{K}^{n}$ 中稠密

(b) D 是不可数的。

（提示：(a) 设 $F_k := \bigcap_{\ell=0}^{k} D_k$。则 $F_k$ 是开且稠密的，且 $F_0 \supseteq F_1 \supseteq \cdots$。设 $x \in \mathbb{K}^n$ 且 $r > 0$。则存在 $x_0 \in F_0$ 与 $r_0 > 0$ 使得 $\bar{\mathbb{B}}(x_0, r_0) \subseteq \mathbb{B}(x, r) \cap F_0$。归纳地选取 $x_k \in F_k$ 与 $r_k > 0$ 使得对所有 $k \in \mathbb{N}$ 有 $\bar{\mathbb{B}}(x_{k+1}, r_{k+1}) \subseteq \mathbb{B}(x_k, r_k) \cap F_k$。现在利用习题 III.3.4。(b) 如果 $D$ 是可数的，则存在 $x_m \in \mathbb{K}^n$ 使得 $D = \{ x_m : m \in \mathbb{N} \}$。考虑 $\bigcap_m \{ x_m \}^c \cap \bigcap_k D_k$。

5 证明不存在从  $\mathbb{R}$ 到  $\mathbb{R}$ 的函数，它在每个有理点连续而在每个无理点不连续。（提示：设  $f$ 是这样的函数。对于所有  $k \in \mathbb{N}^\times$ 考虑  $D_k := \{ x \in \mathbb{R} ; \, \omega_f(x) < 1/k \}$，其中  $\omega_f$ 是习题 III.1.17 中的连续模。由习题 III.2.20， $D_k$ 是开集。但此时  $\mathbb{Q} \subseteq D_k$ 且  $\bigcap_k D_k = \mathbb{Q}$，与  $4(b)$ 矛盾。）

6 设 $V$ 为具有基 $\{b_1, \ldots, b_n\}$ 的有限维赋范向量空间，$D$ 是 $\mathbb{K}$ 的可数稠密子集。证明 $\left\{ \sum_{k=1}^{n} \alpha_k b_k ; \, \alpha_k \in D \right\}$ 是可数的，且在 $V$ 中稠密。

7 设  $M \subseteq \mathbb{R}^n$ 且  $A := \mathbb{K}[X_1, \ldots, X_n] | M$。证明  $A$ 分离  $M$ 的点且是自伴的。

8 假设  $-\infty < a < b < \infty$ 且  $f \in C([a, b], \mathbb{K})$。证明  $f$ 有原函数。（提示：设  $(p_n)$ 是一致收敛到  $f$ 的多项式序列。找  $F_n \in C^1([a, b], \mathbb{K})$ 使得  $F_n' = p_n$ 且  $F_n(a) = 0$。现在应用习题 2.11 与定理 2.8。）

9 设  $f \in C_{2\pi}(\mathbb{R}, \mathbb{R})$ 可微。证明  $f'$ 在  $(0, 2\pi)$ 中有零点。

10 设  $D_0(\mathbb{R}, \mathbb{K})$ 是所有满足  $a_0 = 0$ 的绝对收敛三角级数的集合（见 (4.11)）。证明下列命题：

(a)  $D_0(\mathbb{R}, \mathbb{K})$ 是  $C_{2\pi}(\mathbb{R}, \mathbb{K})$ 的子代数。

(b) 每个  $f \in D_0(\mathbb{R}, \mathbb{K})$ 有  $2\pi$ 周期原函数。

(c) 每个  $f \in D_0(\mathbb{R}, \mathbb{R})$ 在  $(0, 2\pi)$ 中有零点。

(d) 断言 (c) 对  $D_{0}(\mathbb{R}, \mathbb{C})$ 中的函数不成立。

11 对于  $n \in \mathbb{N}$ 与  $0 \leq k \leq n$，（初等）伯恩斯坦多项式  $B_{n,k}$ 定义为

\[ B_{n,k}:=\binom{n}{k}X^{k}(1-X)^{n-k}. \]

证明下列命题：

(a) 对于每个  $n \in \mathbb{N}$，伯恩斯坦多项式构成单位分解，即  $\sum_{k=0}^{n} B_{n,k} = 1$。

\[ \begin{array}{r}{\sum_{k=0}^{n}k B_{n,k}=n X,~\sum_{k=0}^{n}k(k-1)B_{n,k}=n(n-1)X^{2}.}\end{array} \]

(c)  $\sum_{k=0}^{n}(k-nX)^{2}B_{n,k}=nX(1-X)$。

（提示：对于  $y \in \mathbb{R}$，令  $p_{n,y} := (X + y)^n$。考虑  $X p_{n,y}'$ 与  $X^2 p_{n,y}'$ 并令  $y := 1 - X$。）

12 设 $E$ 为巴拿赫空间，$f \in C([0,1],E)$。证明 $f$ 的伯恩斯坦多项式序列 $(B_n(f))$，

\[ B_{n}(f):=\sum_{k=0}^{n}f\Big(\frac{k}{n}\Big)B_{n,k},\qquad n\in\mathbb{N}, \]

在  $C\big([0,1],E\big)$ 中（从而在  $[0,1]$ 上一致）收敛到  $f$。（提示：对于适当的  $\delta > 0$ 考虑  $|x - n/k| \leq \delta$ 与  $|x - n/k| > \delta$，并利用习题 11。）

13 设 $X$ 为拓扑空间。如果对于每个 $x \in X$ 与 $x$ 的每个邻域 $U$，存在某个 $B \in \mathcal{B}$ 使得 $x \in B \subseteq U$，则称 $X$ 的开集族 $\mathcal{B}$ 为 $X$ 的拓扑的基。证明下列命题：

(a) 任何可分度量空间有可数开集基。

(b) 可分度量空间的任何子集是可分的（即具有诱导度量的可分度量空间）。

(c)  $\mathbb{R}^n$ 的任何子集是可分的。

14 设 $X$ 为紧致可分度量空间。证明 $C(X, \mathbb{K})$ 是可分巴拿赫空间。（提示：考虑“单项式”$d_{B_1}^{m_1} \cdots d_{B_k}^{m_k}$ 的具有有理系数的线性组合，其中 $k \in \mathbb{N}$、$m_j \in \mathbb{N}$、$B_j \in \mathcal{B}$，$\mathcal{B}$ 是 $X$ 的拓扑的基，且对所有 $B \in \mathcal{B}$ 有 $d_B := d(\cdot, B^c)$，如例 III.1.3(l) 中那样。）

注 我们将在命题 IX.1.8 中证明任何紧致度量空间都是可分的。
