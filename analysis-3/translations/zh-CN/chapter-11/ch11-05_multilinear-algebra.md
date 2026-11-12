## 2 多重线性代数

为了构造并理解更高次的微分形式微积分，我们需要线性代数（更确切地说，多重线性代数）的若干结果，本节即给出这些结果。

2.1 注 设 $ V $ 是有限维向量空间。

(a) $ V $ 可以赋以一个内积 $ (\cdot|\cdot)_{V} $，使得 $ (V,(\cdot|\cdot)_{V}) $ 是希尔伯特空间。$ V $ 上所有范数都等价。

证明 由注 I.12.5，存在向量空间同构 $ T:\mathbb{K}^{m} \to V $，且 $ m := \dim(V) $。于是

\[ (v|w)_{V} := (T^{-1}v|T^{-1}w) \quad \text{对 } v,w \in V \]

定义了 $ V $ 上的一个内积，其中 $ (\cdot|\cdot) $ 表示 $ \mathbb{K}^{m} $ 中的欧几里得内积。因此 $ (V,(\cdot|\cdot)_{V}) $ 是有限维内积空间，从而由注 VII.1.7(b) 可知它是希尔伯特空间。第二个断言由推论 VII.1.5 推出。■

(b) 正如（泛函分析中的）惯例，我们用 $ V^{*} $ 表示从 $ V $ 到 $ \mathbb{C} $ 的所有（连续）共轭线性映射构成的空间，而 $ V' $ 表示 $ V $ 的对偶空间，即 $ V $ 上所有（连续）线性形式构成的空间。于是由 (a) 及里斯表示定理（定理 VII.2.14）可知，映射

\[ V \to V^{*}, \quad v \mapsto (v|\cdot)_{V} \tag{2.1} \]

是等距同构，而

\[ V \to V', \quad v \mapsto (\cdot|v)_{V} \tag{2.2} \]

是共轭线性的。若 $ \mathbb{K} = \mathbb{R} $，则 $ V^{*} = V' $，且映射 (2.1) 与 (2.2) 相同，这是因为每个实内积都是对称的。在下文中我们只处理实情形，因此出于这一原因以及某些历史原因，我们将写 $ V^{*} $ 而不写 $ V' $。■

本节中，设

- $ V $ 与 $ W $ 是有限维实向量空间。

##### 外积

对 $ r \in \mathbb{N} $，记 $ \mathcal{L}^{r}(V,\mathbb{R}) $ 为所有 $ r $ 线性映射 $ V^{r} \to \mathbb{R} $ 构成的向量空间。由注 2.1(b) 与定理 VII.4.2(iii)，此记号与第 VII.4 节引入的记号一致。特别地，有

\[ \mathcal{L}^{0}(V,\mathbb{R}) = \mathbb{R} \quad \text{与} \quad \mathcal{L}^{1}(V,\mathbb{R}) = V^{*}. \]

称 $ r $ 线性映射 $ \alpha: V^{r} \to W $ 为**交错的**，若 $ r \ge 2 $ 且

\[ \alpha(v_{\sigma(1)},\ldots,v_{\sigma(r)}) = \operatorname{sign}(\sigma)\,\alpha(v_{1},\ldots,v_{r}) \quad \text{对 } v_{1},\ldots,v_{r} \in V \]

且对每个置换 $ \sigma \in S_{r} $ 成立（见习题 I.9.6）。我们令

\[ \bigwedge^{0}V^{*} := \mathcal{L}^{0}(V,\mathbb{R}) = \mathbb{R} \quad \text{与} \quad \bigwedge^{1}V^{*} := \mathcal{L}^{1}(V,\mathbb{R}) = V^{*} \]

以及

\[ \bigwedge^{r}V^{*} := \{\, \alpha \in \mathcal{L}^{r}(V,\mathbb{R}) ;\ \alpha \text{ 是交错的} \,\} \quad \text{对 } r \ge 2. \]

这里 $ \bigwedge^{r}V^{*} $ 称为 $ V^{*} $ 的 **$ r $ 重外积**（$ r \in \mathbb{N} $），而 $ \alpha \in \bigwedge^{r}V^{*} $ 称为 $ V $ 上的**交错 $ r $ 形式**（或简称为 **$ r $ 形式**）。

2.2 注 (a) $ \bigwedge^{r}V^{*} $ 是 $ \mathcal{L}^{r}(V,\mathbb{R}) $ 的向量子空间，即 $ V $ 上**交错 $ r $ 形式构成的向量空间**。

(b) 设 $ r \ge 2 $ 且 $ \alpha \in \mathcal{L}^{r}(V,\mathbb{R}) $。以下四个断言等价：

(i) $ \alpha \in \bigwedge^{r}V^{*} $。

(ii) 若对某对满足 $ j \ne k $ 的 $ (j,k) $ 有 $ v_{j} = v_{k} $，则 $ \alpha(v_{1},\ldots,v_{r}) = 0 $。

(iii) 对 $ j \ne k $，$ \alpha(\ldots,v_{j},\ldots,v_{k},\ldots) = -\alpha(\ldots,v_{k},\ldots,v_{j},\ldots) $，也就是说，若交换 $ \alpha(v_{1},\ldots,v_{r}) $ 中的两个位置，其符号反转。

(iv) 若 $ v_{1},\ldots,v_{r} \in V $ 线性无关，则 $ \alpha(v_{1},\ldots,v_{r}) = 0 $。

证明 蕴含式 “$ \text{(i)}\Rightarrow\text{(iii)}\Rightarrow\text{(ii)} $” 是显然的。

“$ \text{(ii)}\Rightarrow\text{(iv)} $” 设 $ v_{1},\ldots,v_{r} \in V $ 线性无关。这意味着存在 $ k \in \{1,\ldots,r\} $ 与 $ \lambda_{1},\ldots,\lambda_{r} \in \mathbb{R} $ 使得 $ \lambda_{k} = 0 $ 且 $ v_{k} = \sum_{j=1}^{r}\lambda_{j}v_{j} $。现在由 $ \alpha $ 对其第 $ k $ 个变量的线性性以及由 (ii) 可得

\[ \alpha(v_{1},\ldots,v_{r}) = \sum_{j=1}^{r}\lambda_{j}\alpha(v_{1},\ldots,\underset{(k)}{v_{j}},\ldots,v_{r}) = 0. \]

“$ \text{(iv)}\Rightarrow\text{(iii)} $” 由 (iv) 及多重线性性，得

\[ \begin{aligned} 0 &= \alpha(\ldots,v_{j}+v_{k},\ldots,v_{j}+v_{k},\ldots) \\ &= \alpha(\ldots,v_{j},\ldots,v_{j},\ldots) + \alpha(\ldots,v_{j},\ldots,v_{k},\ldots) \\ &\qquad + \alpha(\ldots,v_{k},\ldots,v_{j},\ldots) + \alpha(\ldots,v_{k},\ldots,v_{k},\ldots) \\ &= \alpha(\ldots,v_{j},\ldots,v_{k},\ldots) + \alpha(\ldots,v_{k},\ldots,v_{j},\ldots), \end{aligned} \]

这便证明了该断言。

“$ \text{(iii)}\Rightarrow\text{(i)} $” 这由每个置换都可写成对换之积这一事实推出（见习题 I.9.6）。■

(c) $ \bigwedge^{r}V^{*} = \{0\} $ 对 $ r > \dim(V) $。

证明 这由 (b) 的 (iv) 推出。■

对 $ r \in \mathbb{N}^{\times} $ 与 $ \varphi^{1},\ldots,\varphi^{r} \in V^{*} $，**外积**\footnote{外积也称为楔积。}

\[ \varphi^{1}\wedge\cdots\wedge\varphi^{r} \]

的定义为

\[ \varphi^{1}\wedge\cdots\wedge\varphi^{r}(v_{1},\ldots,v_{r}) := \det\left[\langle\varphi^{j},v_{k}\rangle\right] = \det\begin{bmatrix} \langle\varphi^{1},v_{1}\rangle & \cdots & \langle\varphi^{1},v_{r}\rangle \\ \vdots & & \vdots \\ \langle\varphi^{r},v_{1}\rangle & \cdots & \langle\varphi^{r},v_{r}\rangle \end{bmatrix} \tag{2.3} \]

其中 $ v_{1},\ldots,v_{r} \in V $。由线性代数可知，$ (r\times r) $ 矩阵的行列式是其列向量的交错 $ r $ 形式。由此以及 $ \varphi^{1},\ldots,\varphi^{r} $ 的线性性立即推出 $ \varphi^{1}\wedge\cdots\wedge\varphi^{r} $ 属于 $ \bigwedge^{r}V^{*} $：外积 $ \varphi^{1}\wedge\cdots\wedge\varphi^{r} $ 是 $ V $ 上的交错 $ r $ 形式。

2.3 命题

(i) 设 $ m := \dim(V) > 0 $。若 $ (e_{1},\ldots,e_{m}) $ 是 $ V $ 的基\footnote{若 $ \{e_{1},\ldots,e_{m}\} $ 是有序基，即其中元素的顺序是固定的，我们写 $ (e_{1},\ldots,e_{m}) $。}，且 $ (\varepsilon^{1},\ldots,\varepsilon^{m}) $ 是 $ V^{*} $ 的相伴对偶基，则

\[ \{\, \varepsilon^{j_{1}}\wedge\cdots\wedge\varepsilon^{j_{r}} ;\ 1 \le j_{1} < j_{2} < \cdots < j_{r} \le m \,\} \]

是 $ \bigwedge^{r}V^{*} $ 的基（$ 1 \le r \le m $）。

(ii) $ \dim\left(\bigwedge^{r}V^{*}\right) = \binom{m}{r} $ 对 $ r \in \mathbb{N} $。

证明 为简短起见，我们令

\[ \mathbb{J}_{r} := \mathbb{J}_{r}^{m} := \{\, (j) := (j_{1},\ldots,j_{r}) \in \mathbb{N}^{r} ;\ 1 \le j_{1} < j_{2} < \cdots < j_{r} \le m \,\}. \]

此外，对有序多重指标 $ (j) \in \mathbb{J}_{r} $，令

\[ \varepsilon^{(j)} := \varepsilon^{j_{1}}\wedge\cdots\wedge\varepsilon^{j_{r}}. \]

(i) 设 $ \alpha $ 是交错 $ r $ 形式。由于每个向量 $ v \in V $ 都有基表示 $ v = \sum_{k=1}^{m}\langle\varepsilon^{k},v\rangle e_{k} $，故由注 2.2(b) 得

\[ \begin{aligned} \alpha(v_{1},\ldots,v_{r}) &= \sum_{k_{1}=1}^{m}\cdots\sum_{k_{r}=1}^{m}\langle\varepsilon^{k_{1}},v_{1}\rangle\cdots\langle\varepsilon^{k_{r}},v_{r}\rangle\alpha(e_{k_{1}},\ldots,e_{k_{r}}) \\ &= \sum_{(j)\in\mathbb{J}_{r}} a_{(j)} \sum_{\sigma\in S_{r}} \operatorname{sign}(\sigma)\langle\varepsilon^{\sigma(j_{1})},v_{1}\rangle\cdots\langle\varepsilon^{\sigma(j_{r})},v_{r}\rangle, \end{aligned} \]

其中

\[ a_{(j)} := \alpha(e_{j_{1}},\ldots,e_{j_{r}}). \tag{2.4} \]

由注 VII.1.19(a) 以及方阵的行列式在转置下不变这一事实，我们可以把上一表达式的内和改写为

\[ \det\left(\left[\langle\varepsilon^{j_{\mu}},v_{\nu}\rangle\right]_{1\le\mu,\nu\le r}\right) = \varepsilon^{(j)}(v_{1},\ldots,v_{r}). \]

因此

\[ \alpha(v_{1},\ldots,v_{r}) = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\varepsilon^{(j)}(v_{1},\ldots,v_{r}) \quad \text{对 } v_{1},\ldots,v_{r} \in V, \]

从而

\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\varepsilon^{(j)}. \tag{2.5} \]

这表明集合 $ \{\, \varepsilon^{(j)} ;\ (j) \in \mathbb{J}_{r} \,\} $ 张成向量空间 $ \bigwedge^{r}V^{*} $。

现在设

\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}} b_{(j)}\varepsilon^{(j)} \]

是 $ \alpha $ 的另一个表示，其中 $ b_{(j)} \in \mathbb{R} $。于是特别有

\[ \alpha(e_{k_{1}},\ldots,e_{k_{r}}) = \sum_{(j)\in\mathbb{J}_{r}} b_{(j)}\varepsilon^{(j)}(e_{k_{1}},\ldots,e_{k_{r}}) \quad \text{对 } (k) \in \mathbb{J}_{r}. \]

因为

\[ \varepsilon^{(j)}(e_{k_{1}},\ldots,e_{k_{r}}) = \det\left(\left[\delta^{j_{\mu}}_{k_{\nu}}\right]_{1\le\mu,\nu\le r}\right) = \begin{cases} 1 & \text{若 } (j) = (k), \\ 0 & \text{其他情形}, \end{cases} \]

所以 $ b_{(j)} = a_{(j)} $ 对 $ (j) \in \mathbb{J}_{r} $。因此表示 (2.5) 是唯一的。

(ii) 该断言现在很清楚，因为 $ m $ 元集合恰好含有 $ \binom{m}{r} $ 个含 $ r $ 个元素的子集（见习题 I.6.3）。■

下文中，令

\[ \alpha^{1}\wedge\cdots\wedge\widehat{\alpha^{j}}\wedge\cdots\wedge\alpha^{r} \]

（$ 1 \le j \le r $）表示从 $ \alpha^{1}\wedge\cdots\wedge\alpha^{r} $ 中删去线性形式 $ \alpha^{j} $ 所得的 $ (r-1) $ 形式。当删去更多线性形式时，我们使用类似的记号，例如

\[ \alpha^{1}\wedge\cdots\wedge\widehat{\alpha^{j}}\wedge\cdots\wedge\widehat{\alpha^{k}}\wedge\cdots\wedge\alpha^{r}. \]

2.4 例 (a) 一维向量空间 $ \bigwedge^{0}V^{*} = \mathbb{R} $ 与 $ \bigwedge^{m}V^{*} $ 分别以 $ 1 $ 与 $ \varepsilon^{1}\wedge\cdots\wedge\varepsilon^{m} $ 为基。

(b) $ \{\varepsilon^{1},\ldots,\varepsilon^{m}\} $ 是 $ \bigwedge^{1}V^{*} = V^{*} $ 的基。

(c) $ \{\, \varepsilon^{1}\wedge\cdots\wedge\widehat{\varepsilon^{j}}\wedge\cdots\wedge\varepsilon^{m} ;\ 1 \le j \le m \,\} $ 是 $ \bigwedge^{m-1}V^{*} $ 的基。

(d) 对基表示

\[ \alpha^{j} = \sum_{k=1}^{m} a^{j}_{k}\varepsilon^{k} \in V^{*} \quad \text{对 } 1 \le j \le r, \]

与

\[ \alpha^{1}\wedge\cdots\wedge\alpha^{r} = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\varepsilon^{(j)} \in \bigwedge^{r}V^{*}, \]

我们有 $ a^{i}_{k} = \langle\alpha^{i},e_{k}\rangle $（$ 1 \le i \le r $，$ 1 \le k \le m $）。又有

\[ a_{(j)} = \det\left(\left[a^{i}_{j_{k}}\right]_{1\le i,k\le r}\right) \quad \text{对 } (j) = (j_{1},\ldots,j_{r}) \in \mathbb{J}_{r}. \]

证明 这由 (2.3) 与 (2.4) 推出。■

(e) 对 $ r \ge 1 $，有

\[ \bigwedge^{r}V^{*} = \operatorname{span}\{\, \varphi^{1}\wedge\cdots\wedge\varphi^{r} ;\ \varphi^{j} \in V^{*},\ 1 \le j \le r \,\}. \]

(f) 对 $ r \ge 2 $，$ \varphi^{1}\wedge\cdots\wedge\varphi^{r} = 0 $ 当且仅当 $ \varphi^{1},\ldots,\varphi^{r} $ 线性无关。

证明 这由 (2.3) 推出。■

正如下一个命题所示，我们可以利用基表示定义从 $ \bigwedge^{r}V^{*}\times\bigwedge^{s}V^{*} $ 到 $ \bigwedge^{r+s}V^{*} $ 的双线性映射。

2.5 命题 设 $ r,s \in \mathbb{N}^{\times} $。

(i) 恰有一个映射

\[ \wedge:\ \bigwedge^{r}V^{*}\times\bigwedge^{s}V^{*} \to \bigwedge^{r+s}V^{*}, \quad (\alpha,\beta) \mapsto \alpha\wedge\beta, \tag{2.6} \]

即**外积**，具有下述性质：

(α) $ \wedge $ 是双线性的；

(β) 对 $ \varphi^{1},\ldots,\varphi^{r},\psi^{1},\ldots,\psi^{s} \in V^{*} $，

\[ (\varphi^{1}\wedge\cdots\wedge\varphi^{r})\wedge(\psi^{1}\wedge\cdots\wedge\psi^{s}) = \varphi^{1}\wedge\cdots\wedge\varphi^{r}\wedge\psi^{1}\wedge\cdots\wedge\psi^{s}. \tag{2.7} \]

(ii) 给定基表示

\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\varepsilon^{(j)} \quad \text{与} \quad \beta = \sum_{(k)\in\mathbb{J}_{s}} b_{(k)}\varepsilon^{(k)}, \tag{2.8} \]

则有

\[ \alpha\wedge\beta = \sum_{\substack{(j)\in\mathbb{J}_{r}\\ (k)\in\mathbb{J}_{s}}} a_{(j)}b_{(k)}\varepsilon^{(j)}\wedge\varepsilon^{(k)}. \tag{2.9} \]

(iii) 外积是结合且**分次反交换**的，也就是说，

\[ \alpha\wedge\beta = (-1)^{rs}\beta\wedge\alpha \quad \text{对 } \alpha \in \bigwedge^{r}V^{*} \text{ 与 } \beta \in \bigwedge^{s}V^{*}. \]

证明 若 $ \wedge $ 是某个从 $ \bigwedge^{r}V^{*}\times\bigwedge^{s}V^{*} $ 到 $ \bigwedge^{r+s}V^{*} $ 的线性映射并满足 (2.7)，则由 (2.8) 立即推出 (2.9) 成立。因此我们可以用 (2.9) 和一个给定的基来唯一地定义（即把基元素双线性延拓到整个空间）具有性质 (α) 与 (β) 的双线性映射 (2.6)。由 (2.3)、(2.7) 与例 2.4(e)，$ \wedge $ 与所选基无关。(iii) 此时是行列式性质的直接推论。■

2.6 注 设 $ E_{k} $（$ k \in \mathbb{N} $）是同一域 $ K $ 上的向量空间。

(a) **直和**

\[ E := \bigoplus_{k=0}^{\infty}E_{k} =: \bigoplus_{k\ge 0}E_{k} \]

的定义如下：

$ E $ 是所有位于 $ \bigcup_{k=0}^{\infty}E_{k} $ 中的序列 $ (x_{k}) $ 构成的集合，其中 $ x_{k} \in E_{k} $（$ k \in \mathbb{N} $），且满足对几乎所有 $ k \in \mathbb{N} $ 有 $ x_{k} = 0 $。在 $ E $ 上，加法 $ + $ 与数乘由下式定义

\[ (x_{k}) + \lambda(y_{k}) := (x_{k} + \lambda y_{k}) \quad \text{对 } (x_{k}),(y_{k}) \in E \text{ 与 } \lambda \in \mathbb{K}. \]

于是 $ E $ 是 $ K $ 向量空间。\footnote{$ E $ 是所有具有紧支集的映射 $ f:\mathbb{N} \to \bigcup_{k=0}^{\infty}E_{k} $（其中 $ f(k) \in E_{k} $，$ k \in \mathbb{N} $）构成的向量空间，赋以例 I.12.3(e) 的逐点乘积。} 此外，$ E_{k} $ 将通过线性映射

\[ E_{k} \to E, \quad x_{k} \mapsto (0,\ldots,0,x_{k},0,\ldots), \]

与一个向量子空间等同，其中 $ x_{k} $ 占据右端序列的第 $ k $ 个位置。显然

\[ E = \operatorname{span}\{E_{k} ;\ k \in \mathbb{N}\} \quad \text{与} \quad E_{k}\cap E_{j} = \{0\} \quad \text{对 } k \ne j, \]

这解释了“直和”这一名称（见例 I.12.3(l)）。

(b) 令 $ E := \bigoplus_{k\ge 0}E_{k} $，我们定义一个乘法

\[ E\times E \to E, \quad (v,w) \mapsto v\odot w \]

使得 $ (E,+,\odot) $ 是一个代数（见第 I.12 节）。我们称 $ E $ 为（$ K $ 上的）**分次代数**，并称该乘法是**分次的**，若

\[ E_{k}\odot E_{\ell} \subset E_{k+\ell} \quad \text{对 } k,\ell \in \mathbb{N}. \]

若还满足关系

\[ v_{k}\odot v_{\ell} = (-1)^{k\ell}v_{\ell}\odot v_{k} \quad \text{对 } k,\ell \in \mathbb{N}, \]

则称该乘法与该代数都是**分次反交换**的。■

我们令

\[ \bigwedge V^{*} := \bigoplus_{r\ge 0}\bigwedge^{r}V^{*} \]

并通过定义

\[ \alpha\wedge\beta := \beta\wedge\alpha := \alpha\beta \quad \text{对 } \alpha \in \bigwedge^{0}V^{*} = \mathbb{R},\ \beta \in \bigwedge V^{*}. \tag{2.10} \]

来延拓外积的定义。我们还令 $ \mathbb{J}_{0} := \{0\} $。

2.7 定理

(i) 恰有一个双线性、结合且分次反交换的映射

\[ \bigwedge V^{*}\times\bigwedge V^{*} \to \bigwedge V^{*} \]

它把外积 (2.6) 与/或 (2.10) 延拓到整个 $ \bigwedge V^{*}\times\bigwedge V^{*} $ 上。它也将记作 $ \wedge $，并称为 $ \bigwedge V^{*} $ 上的**外积**。

(ii) $ \dim\left(\bigwedge V^{*}\right) = 2^{\dim(V)} $。

证明 (i) 这由命题 2.5 与定义 (2.10) 经自然的双线性延拓立即推出。

(ii) 因为 $ \bigwedge^{r}V^{*} = \{0\} $ 对 $ r > \dim(V) $，且 $ \bigwedge V^{*} $ 是各向量子空间 $ \bigwedge^{r}V^{*} $ 的直和，故由命题 2.3(ii) 与二项式定理得

\[ \dim\left(\bigwedge V^{*}\right) = \sum_{r=0}^{m}\binom{m}{r} = 2^{m} \]

其中 $ m := \dim(V) $。■

这个定理表明，当赋以自然的向量空间结构与外积时，$ \bigwedge V^{*} $ 是维数为 $ 2^{\dim(V)} $ 的结合、分次反交换实代数。它称为 $ V^{*} $ 的**格拉斯曼代数**（或**外代数**）。
