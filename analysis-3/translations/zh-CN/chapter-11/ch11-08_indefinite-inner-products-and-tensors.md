##### 不定内积

对若干应用，特别是在物理学中，必须放弃标量积正定这一假设。因此，下面我们简短地过一遍处理这种情形所需的修改。

设 $ \mathbf{b}: V \times V \to \mathbb{R} $ 是双线性形式。若对每个 $ y \in V \setminus \{0\} $ 都存在 $ x \in V $ 使得 $ \mathbf{b}(x,y) \neq 0 $，则称 $ \mathbf{b} $ 是**非退化**的。若

\[ \mathbf{b}(x,y) = \mathbf{b}(y,x) \qquad \text{对 } x, y \in V, \]

则称它是**对称**的。

设 $ \mathbf{b}: V \times V \to \mathbb{R} $ 是 $ V := (V, (\cdot \mid \cdot)) $ 上的非退化对称双线性形式。在下面的注中，我们列出 $ \mathbf{b} $ 的一些基本性质。

2.18 注 (a) 存在 $ V $ 的 $ \mathbf{b} $-规范正交基（$ \mathbf{b} $-ONB），即存在 $ V $ 的基 $ \{b_1, \ldots, b_m\} $ 使得 $ \mathbf{b}(b_j, b_k) = \pm \delta_{jk} $ 对 $ 1 \le j, k \le m $。若 $ r $ 是正号的个数，$ s $ 是负号的个数，则 $ r + s = m $。数 $ t := r - s $ 称为 $ \mathbf{b} $ 的**符号差**。符号差以及 $ r $ 和 $ s $ 都与 $ \mathbf{b} $-ONB 的选取无关。特别地，\footnote{不应当把 $ \operatorname{sign}(\mathbf{b}) $ 与符号差 $ t $ 混淆。显然 $ 2\operatorname{sign}(\mathbf{b}) = m - t $。}

\[ (-1)^s = \operatorname{sign}(\mathbf{b}) := \operatorname{sign}(\det[\mathbf{b}(b_j, b_k)]) . \]

证明 定理 VII.4.2(iii) 显然蕴含 $ \mathbf{b} $ 连续。于是 $ \mathbf{b}(x, \cdot): V \to \mathbb{R} $ 是 $ V $ 上的连续线性形式。因此，里斯表示定理（定理 VII.2.14）保证存在唯一的 $ \mathfrak{B}x \in V $ 使得

\[ \mathbf{b}(x,y) = (\mathfrak{B}x \mid y) \qquad \text{对 } y \in V. \]

由 $ \mathbf{b}(\cdot, y) $ 的线性性可知 $ x \mapsto \mathfrak{B}x $ 是线性的。于是由定理 VII.1.6，$ \mathfrak{B} $ 属于 $ \mathcal{L}(V) $，且

\[ \mathbf{b}(x,y) = (\mathfrak{B}x \mid y) \qquad \text{对 } x, y \in V. \]

映射 $ \mathfrak{B} $ 称为 $ \mathbf{b} $ 关于 $ (\cdot \mid \cdot) $ 的**表示算子**。因为 $ \mathbf{b} $ 非退化，$ \mathfrak{B} $ 是 $ V $ 的自同构（反之亦然）；又因为 $ \mathbf{b} $ 对称，$ \mathfrak{B} $ 也对称。

注 2.1(a) 允许我们把 $ V $ 与 $ \mathbb{R}^m $ 等同起来。因此主轴变换定理\footnote{见例 VII.10.17(b)。}保证存在 $ V $ 的 ONB $ \{v_1, \ldots, v_m\} $ 以及 $ \mathfrak{B} $ 的特征值 $ \lambda_1 \ge \cdots \ge \lambda_m $，使得

\[ \mathfrak{B}v_j = \lambda_j v_j \qquad \text{对 } 1 \le j \le m. \tag{2.23} \]

因为 $ \mathbf{b} $ 非退化，我们有 $ \lambda_j \neq 0 $ 对 $ 1 \le j \le m $。我们令 $ b_j := v_j / \sqrt{|\lambda_j|} $。则 $ \{b_1, \ldots, b_m\} $ 是 $ V $ 的基，且由 (2.23) 推出

\[ \mathbf{b}(b_j, b_k) = (\mathfrak{B}b_j \mid b_k) = (\mathfrak{B}v_j \mid v_k)/\sqrt{|\lambda_j \lambda_k|} = \lambda_j (v_j \mid v_k)/\sqrt{|\lambda_j \lambda_k|} = \operatorname{sign}(\lambda_j)\delta_{jk} \]

对 $ 1 \le j, k \le m $。

要证明 $ t = r - s $ 与 $ \mathbf{b} $-ONB 的选取无关，由于 $ r + s = m $，只需证明 $ r $ 具有同样的性质。因此设 $ \{c_1, \ldots, c_m\} $ 是 $ V $ 的 $ \mathbf{b} $-ONB，使得 $ \mathbf{b}(c_j, c_j) = 1 $ 对 $ 1 \le j \le \rho $，且 $ \mathbf{b}(c_j, c_j) = -1 $ 对 $ \rho + 1 \le j \le m $。我们要证明向量 $ b_1, \ldots, b_r, c_{\rho+1}, \ldots, c_m $ 线性无关，因为这将蕴含 $ r + (m - \rho) \le m $，从而 $ r \le \rho $；此外，交换两个 $ \mathbf{b} $-ONB 会类似地得到 $ \rho \le r $，这便确定了 $ r $。

因此设

\[ \beta_1 b_1 + \cdots + \beta_r b_r = \gamma_{\rho+1} c_{\rho+1} + \cdots + \gamma_m c_m \]

其中 $ \beta_1, \ldots, \beta_r, \gamma_{\rho+1}, \ldots, \gamma_m $ 为实数。集合 $ \{b_1, \ldots, b_r, c_{\rho+1}, \ldots, c_m\} $ 的每个线性相关关系都可写成这种形式。于是对 $ v := \beta_1 b_1 + \cdots + \beta_r b_r $，我们有

\[ \mathbf{b}(v,v) = \sum_{j=1}^{r} \beta_r^2 = - \sum_{j=\rho+1}^{m} \gamma_j^2 , \]

这蕴含 $ \beta_1 = \cdots = \beta_r = \gamma_{\rho+1} = \cdots = \gamma_m = 0 $。最后一个断言现在清楚了。 ■

(b) （里斯表示定理）对每个 $ v^* \in V^* $，恰有一个 $ v \in V $ 使得 $ \mathbf{b}(v,w) = \langle v^*, w \rangle $ 对 $ w \in W $。映射

\[ \Theta_{\mathbf{b}}: V \to V^*, \qquad v \mapsto \mathbf{b}(v, \cdot) \]

是向量空间同构，即关于 $ \mathbf{b} $ 的**里斯同构**。注 2.14(a) 的结论在此情形也成立。

证明 利用 $ \mathbf{b} $ 的表示算子 $ \mathfrak{B} $ 与 $ V $ 的里斯同构 $ \Theta $，定理 VII.2.14 蕴含

\[ \mathbf{b}(v,w) = (\mathfrak{B}v \mid w) = \langle \Theta\mathfrak{B}v, w \rangle \qquad \text{对 } v, w \in V. \]

令 $ \Theta_{\mathbf{b}} := \Theta\mathfrak{B} $ 即得断言。 ■

(c) 对 $ V $ 的每个基 $ \{v_1, \ldots, v_m\} $，关于 $ \mathbf{b} $ 的**格拉姆行列式**，即

\[ G_{\mathbf{b}} := \det([\mathbf{b}(v_j, v_k)]) , \]

非零。

证明 行列式 $ G_{\mathbf{b}} $ 为零当且仅当线性方程组

\[ \sum_{k=1}^{m} \mathbf{b}(v_j, v_k)\xi^k = 0 \qquad \text{对 } 1 \le j \le m , \tag{2.24} \]

有非平凡解。若 $ v := \sum_{k=1}^{m} \xi^k v_k $，则 (2.24) 等价于 $ \mathbf{b}(v_j, v) = 0 $ 对 $ 1 \le j \le m $。因为 $ \{v_1, \ldots, v_m\} $ 是 $ V $ 的基且 $ \mathbf{b} $ 非退化，推出 $ v = 0 $，证毕。 ■

(d) 设 $ (b_1, \ldots, b_m) $ 是 $ V $ 的正定向基，$ (\beta^1, \ldots, \beta^m) $ 是其对偶基。又设 $ \mathfrak{B} $ 是酉的。则

\[ \varepsilon^1 \wedge \cdots \wedge \varepsilon^m = \sqrt{|G_{\mathbf{b}}|}\, \beta^1 \wedge \cdots \wedge \beta^m . \]

证明 命题 2.13 的证明的第一部分表明

\[ \varepsilon^1 \wedge \cdots \wedge \varepsilon^m = \det(B)\beta^1 \wedge \cdots \wedge \beta^m , \]

其中 $ B \in \mathcal{L}(V) $ 是从 $ (e_1, \ldots, e_m) $ 到 $ (b_1, \ldots, b_m) $ 的基变换。以 $ \mathbf{b} $ 的表示 $ \mathfrak{B} $，我们得到

\[ \mathbf{b}(b_j, b_k) = (\mathfrak{B}b_j \mid b_k) = (\mathfrak{B}Be_j \mid Be_k) = (B^*\mathfrak{B}Be_j \mid e_k) \qquad \text{对 } 1 \le j, k \le m . \]

如同命题 2.13 的证明，这蕴含

\[ G_{\mathbf{b}} = \det[\mathbf{b}(b_j, b_k)] = \det(B^*\mathfrak{B}B) = \det(\mathfrak{B})(\det(B))^2 . \]

因为 $ |\det(\mathfrak{B})| = 1 $，推出 $ (\det(B))^2 = |G_{\mathbf{b}}| $，这蕴含断言。 ■

现设 $ \mathcal{O}r $ 是 $ V $ 的一个定向，$ \mathbf{b} $ 是 $ V $ 上的非退化对称双线性形式。又设 $ (e_1, \ldots, e_m) $ 是 $ V $ 的正定向 $ \mathbf{b} $-ONB，其对偶基为 $ (\varepsilon^1, \ldots, \varepsilon^m) $。在 $ V^* $ 上，我们通过

\[ \mathbf{b}_*(v^*, w^*) := \mathbf{b}(\Theta_{\mathbf{b}}^{-1}v^*, \Theta_{\mathbf{b}}^{-1}w^*) \qquad \text{对 } v^*, w^* \in V^* . \]

这就定义了非退化对称双线性形式 $ \mathbf{b}_* $。对 $ \alpha^1, \ldots, \alpha^r, \beta^1, \ldots, \beta^r \in V^* $，我们令

\[ \mathbf{b}_r(\alpha^1 \wedge \cdots \wedge \alpha^r, \beta^1 \wedge \cdots \wedge \beta^r) := \det[\mathbf{b}_*(\alpha^j, \beta^k)] , \]

从而 $ \mathbf{b}_1 = \mathbf{b}_* $；我们还借助命题 2.3(i) 的基表示，通过双线性延拓定义

\[ \mathbf{b}_r: \bigwedge^r V^* \times \bigwedge^r V^* \to \mathbb{R} \qquad \text{对 } r \ge 1 . \]

如同 (2.16)–(2.19)（取 $ \mathbf{b}_0 := (\cdot \mid \cdot)_0 $），推出存在线性映射

\[ \bigwedge^r V^* \to \bigwedge^{m-r} V^*, \qquad \alpha \mapsto \ast\alpha \]

（$ 0 \le r \le m $），称为**霍奇星算子**。它由下式刻画：

\[ \alpha \wedge \beta = \mathbf{b}_{m-r}(\ast\alpha, \beta)\varepsilon^1 \wedge \cdots \wedge \varepsilon^m \qquad \text{对 } \beta \in \bigwedge^{m-r} V^* . \tag{2.25} \]

2.19 注 (a) 霍奇星是一个同构，它只依赖于双线性形式 $ \mathbf{b} $ 与定向，而不依赖于 $ \mathbf{b} $-ONB。

(b) 对 $ 1 \le r \le m $，$ \{\varepsilon^{(j)} ;\ (j) \in \mathbb{J}_r\} $ 是 $ \mathbf{b}_r $-ONB；且对 $ \omega := \varepsilon^1 \wedge \cdots \wedge \varepsilon^m $，有 $ \mathbf{b}_m(\omega, \omega) = \operatorname{sign}(\mathbf{b}) $。

证明 第一个断言由 $ \mathbf{b}_r $ 的定义立得。因为

\[ \mathbf{b}_m(\omega,\omega) = \det(\operatorname{diag}[\mathbf{b}_*(\varepsilon^1,\varepsilon^1),\ldots,\mathbf{b}_*(\varepsilon^m,\varepsilon^m)]) = \det(\operatorname{diag}[\mathbf{b}(e_1,e_1),\ldots,\mathbf{b}(e_m,e_m)]) , \]

第二个断言也成立。 ■

(c) 我们有 $ \ast 1 = \operatorname{sign}(\mathbf{b})\omega $ 且 $ \ast\omega = 1 $。此外

\[ \ast\varepsilon^{(j)} = s(j)\mathbf{b}_{m-r}(\varepsilon^{(j^c)}, \varepsilon^{(j^c)})\varepsilon^{(j^c)} \qquad \text{对 } (j) \in \mathbb{J}_r , \]

其中 $ 1 \le r \le m - 1 $。

证明 首先 $ \omega = 1 \wedge \omega = \mathbf{b}_m(\ast 1, \omega)\omega $ 蕴含 $ \mathbf{b}_m(\ast 1, \omega) = 1 $。其次 $ \dim(\bigwedge^m V^*) = 1 $ 给出 $ \ast 1 = a\omega $，其中 $ a \in \mathbb{R} $。由此并利用 (b) 得到

\[ 1 = \mathbf{b}_m(\ast 1, \omega) = a\mathbf{b}_m(\omega, \omega) = a\operatorname{sign}(\mathbf{b}) , \]

故 $ a = \operatorname{sign}(\mathbf{b}) $。这就证明了第一个断言。类似地，我们得到 $ \ast\omega = 1 $。设 $ 1 \le r \le m - 1 $ 且 $ (j) \in \mathbb{J}_r $。则

\[ \omega = s(j)\varepsilon^{(j)} \wedge \varepsilon^{(j^c)} = s(j)\mathbf{b}_{m-r}(\ast\varepsilon^{(j)}, \varepsilon^{(j^c)})\omega , \]

故 $ \mathbf{b}_{m-r}(\ast\varepsilon^{(j)}, \varepsilon^{(j^c)}) = s(j) $。注意 $ \{\varepsilon^{(k)} ;\ (k) \in \mathbb{J}_{m-r}\} $ 是 $ \bigwedge^{m-r} V^* $ 的 $ \mathbf{b}_{m-r} $-ONB。又 $ \ast\varepsilon^{(j)} \in \bigwedge^{m-r} V^* $，且 $ \mathbf{b}_{m-r}(\ast\varepsilon^{(j)}, \varepsilon^{(k)}) = 0 $ 对 $ (k) \neq (j^c) $。由此推出 $ \ast\varepsilon^{(j)} = a\varepsilon^{(j^c)} $，其中 $ a \in \mathbb{R} $，从而

\[ a\mathbf{b}_{m-r}(\varepsilon^{(j^c)}, \varepsilon^{(j^c)}) = \mathbf{b}_{m-r}(\ast\varepsilon^{(j)}, \varepsilon^{(j^c)}) = s(j) . \]

这蕴含 $ a = s(j)\mathbf{b}_{m-r}(\varepsilon^{(j^c)}, \varepsilon^{(j^c)}) $。现在最后一个断言清楚了。 ■

(d) 对 $ \alpha \in \bigwedge^r V^* $ 且 $ 0 \le r \le m $，我们有 $ \ast\ast\alpha = \operatorname{sign}(\mathbf{b})(-1)^{r(m-r)}\alpha $。

证明 与 (c) 的证明类似，由

\[ \mathbf{b}_r(\ast\varepsilon^{(j^c)}, \varepsilon^{(j)})\omega = \varepsilon^{(j^c)} \wedge \varepsilon^{(j)} = (-1)^{r(m-r)}\varepsilon^{(j)} \wedge \varepsilon^{(j^c)} = s(j)(-1)^{r(m-r)}\omega , \]

得到 $ \ast\varepsilon^{(j^c)} = s(j)(-1)^{r(m-r)}\mathbf{b}_r(\varepsilon^{(j)}, \varepsilon^{(j)})\varepsilon^{(j)} $。因此由 (c) 得到

\[ \ast(\ast\varepsilon^{(j)}) = \ast\bigl(s(j)\mathbf{b}_{m-r}(\varepsilon^{(j^c)}, \varepsilon^{(j^c)})\varepsilon^{(j^c)}\bigr) = s(j)^2(-1)^{r(m-r)}\mathbf{b}_r(\varepsilon^{(j)}, \varepsilon^{(j)})\mathbf{b}_{m-r}(\varepsilon^{(j^c)}, \varepsilon^{(j^c)})\varepsilon^{(j)} , \]

由此得到断言。 ■

(e) 对 $ \alpha, \beta \in \bigwedge^r V^* $，我们有

\[ \alpha \wedge \ast\beta = \beta \wedge \ast\alpha = \operatorname{sign}(\mathbf{b})\, \mathbf{b}_r(\alpha, \beta)\omega . \]

证明 对例 2.17(f) 的证明作显然的修改即得。 ■

这些思想的一个重要应用是**闵可夫斯基空间** $ \mathbb{R}^{4}_{1,3} := (\mathbb{R}^4, (\cdot \mid \cdot)_{1,3}) $，即狭义相对论的“时空”，配有**闵可夫斯基度量**

\[ (x \mid y)_{1,3} := x_0 y_0 - x_1 y_1 - x_2 y_2 - x_3 y_3 . \]

（在相对论中，“第 0 个坐标”是时间。）我们将在后面详细讨论这一点。

非退化对称双线性形式 $ \mathbf{b} $ 也称为**不定内积**；相应地，$ (V, \mathbf{b}) $ 称为**不定内积空间**。

##### 张量

为完整起见，下面我们简要介绍一般张量的概念，后面几节中我们会遇到它。设 $ r, s \in \mathbb{N} $。一个 $ (r + s) $ 线性映射

\[ \gamma: \underbrace{V^* \times \cdots \times V^*}_{r} \times \underbrace{V \times \cdots \times V}_{s} \to \mathbb{R} \]

称为 $ V $ 上型为 $ (r, s) $ 的**张量**，或 $ (r, s) $-张量。特别地，$ \gamma $ 是 $ r $ 阶**逆变**、$ s $ 阶**协变**的（或称 $ r $ 逆变、$ s $ 协变）。我们用 $ T^r_s(V) $ 表示 $ V $ 上全体 $ (r, s) $-张量构成的赋范\footnote{见定理 VII.4.2。}向量空间。

对 $ \gamma_1 \in T^{r_1}_{s_1}(V) $ 与 $ \gamma_2 \in T^{r_2}_{s_2}(V) $，**张量积** $ \gamma_1 \otimes \gamma_2 $ 由下式定义：

\[ \gamma_1 \otimes \gamma_2(\alpha^1, \ldots, \alpha^{r_1}, \beta^1, \ldots, \beta^{r_2}, v_1, \ldots, v_{s_1}, w_1, \ldots, w_{s_2}) := \gamma_1(\alpha^1, \ldots, \alpha^{r_1}, v_1, \ldots, v_{s_1})\gamma_2(\beta^1, \ldots, \beta^{r_2}, w_1, \ldots, w_{s_2}) , \]

其中 $ \alpha^1, \ldots, \alpha^{r_1}, \beta^1, \ldots, \beta^{r_2} \in V^* $ 且 $ v_1, \ldots, v_{s_1}, w_1, \ldots, w_{s_2} \in V $。

下面如常，我们利用注 2.8 的典范同构 $ \kappa $ 把 $ V^{\ast\ast} $ 与 $ V $ 等同起来。

2.20 注 (a) $ T^1_0(V) = V $，$ T^0_1(V) = V^* $，且 $ T^0_2(V) = \mathcal{L}^2(V, \mathbb{R}) $。

(b) 对 $ \gamma \in T^1_1(V) $，恰有一个 $ C \in \mathcal{L}(V) $ 使得

\[ \gamma(v^*, v) = \langle v^*, Cv \rangle \qquad \text{对 } v \in V,\ v^* \in V^* . \tag{2.26} \]

映射

\[ T^1_1(V) \to \mathcal{L}(V), \qquad \gamma \mapsto C \]

是等距同构。

证明 对 $ v \in V $，映射 $ \gamma(\cdot, v) $ 属于 $ V^{\ast\ast} = V $。因为 $ \gamma $ 是双线性的，我们有

\[ C := (v \mapsto \gamma(\cdot, v)) \in \mathcal{L}(V) , \]

且 $ \langle v^*, Cv \rangle = \gamma(v^*, v) $ 对 $ (v, v^*) \in V \times V^* $。反之，每个 $ C \in \mathcal{L}(V) $ 都借助 (2.26) 定义一个 $ \gamma \in T^1_1(V) $。最后一个断言现在清楚了。 ■

(c) 张量积是双线性的且结合的。

(d) 令 $ m := \dim(V) $，有 $ \dim(T^r_s(V)) = m^{r+s} $。若 $ (e_1, \ldots, e_m) $ 是 $ V $ 的基，$ (\varepsilon^1, \ldots, \varepsilon^m) $ 是其对偶基，则

\[ \{ e_{j_1} \otimes \cdots \otimes e_{j_r} \otimes \varepsilon^{k_1} \otimes \cdots \otimes \varepsilon^{k_s} ;\ j_i, k_i \in \{1, \ldots, m\} \} \]

是 $ T^r_s(V) $ 的基。
