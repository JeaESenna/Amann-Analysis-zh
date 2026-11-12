## 3 微分形式的局部理论

在第 VIII.3 节中，我们对 1 次微分形式即普法夫形式已有诸多了解，并发展了一套构成线积分理论基础的演算。现在我们把这一想法推广到更多维的情形。作为第一步（本节即专门讨论这一步），我们引入欧氏空间开集上任意次数的微分形式，并给出这种“局部”情形下微分形式的演算。在随后的各节中，我们再考虑一般情形，即流形上的微分形式。

$ \mathbb{R}^{m} $ 的开子集 $ X $ 上的 $ r $ 次微分形式，不过是这样一个集合：对每个 $ x \in X $，它由切空间 $ T_{x}X $ 上的一个交错 $ r $ 形式组成。正因如此，本节第一部分实际上只是对第 2 节所给线性代数结果的重新表述。我们不再陈述新定理，而是用注和例来解释这些定义。当我们引入微分形式上的一种运算——外微分——时，分析才开始发挥作用。外微分用到分析中的概念，超出了线性代数的范围。

在本节中，$ X $ 是 $ \mathbb{R}^{m} $ 中的开集，且 $ \mathbb{K} = \mathbb{R} $。

##### 定义与基表示

对 $ x \in X $，余切空间 $ T_{x}^{*}X = \{x\} \times (\mathbb{R}^{m})^{*} $ 是与切空间 $ T_{x}X = \{x\} \times \mathbb{R}^{m} $ 对偶的空间。因此，外积
\[ \bigwedge^{r} T_{x}^{*}X = \{x\} \times \bigwedge^{r}(\mathbb{R}^{m})^{*} \qquad \text{对 } r \in \mathbb{N} \tag{3.1} \]
与格拉斯曼代数
\[ \bigwedge T_{x}^{*}X = \{x\} \times \bigwedge(\mathbb{R}^{m})^{*} \]
在 $ T_{x}^{*}X $ 上都有良好定义。我们可以通过如下定义 $ X $ 上的**交错 $ r $ 形式丛**来推广切丛与余切丛：
\[ \bigwedge^{r} T^{*}X := \bigcup_{x \in X} \bigwedge^{r} T_{x}^{*}X = X \times \bigwedge^{r}(\mathbb{R}^{m})^{*} \]
并通过如下定义 $ X $ 的**格拉斯曼丛**：
\[ \bigwedge T^{*}X := \bigcup_{x \in X} \bigwedge T_{x}^{*}X = X \times \bigwedge(\mathbb{R}^{m})^{*}. \]
一个映射
\[ \boldsymbol{\alpha}: X \to \bigwedge^{r} T^{*}X \qquad \text{满足 } \boldsymbol{\alpha}(x) \in \bigwedge^{r} T_{x}^{*}X \text{ 且 } x \in X, \]
即格拉斯曼丛的一个**截面**\footnote{我们使用了“向量丛”理论的语言。此处不作详细展开（但可参见例如 [Con93]、[Dar94] 或 [HR72]），尽管它会带来各种想法的统一。}，称为 $ X $ 上的 **$ r $ 次微分形式**（简称 **$ r $ 形式**）。由 (3.1)，$ X $ 上每个 $ r $ 形式都有唯一表示
\[ \boldsymbol{\alpha}(x) = (x, \alpha(x)) \qquad \text{对 } x \in X \]
其 **$ r $ 余向量部分**（简称余向量部分）为
\[ \alpha: X \to \bigwedge^{r}(\mathbb{R}^{m})^{*}. \]

设 $ k \in \mathbb{N} \cup \{\infty\} $。$ r $ 形式 $ \boldsymbol{\alpha} $ 属于 **$ C^{k} $ 类**（或称 **$ k $ 次连续可微**\footnote{自然，我们把 $ C^{0} $ 类的 $ r $ 形式称为连续的。}，当 $ k = \infty $ 时称**光滑**），如果其余向量部分具有这一性质，即如果
\[ \alpha \in C^{k}\big(X, \bigwedge^{r}(\mathbb{R}^{m})^{*}\big). \tag{3.2} \]
这个定义是有意义的，因为根据注 2.2(a)，$ \bigwedge^{r}(\mathbb{R}^{m})^{*} $ 是 $ \mathcal{L}^{r}(\mathbb{R}^{m},\mathbb{R}) $ 的（闭）向量子空间。

为简单起见，并为专注于理论的本质方面，我们几乎只考虑光滑 $ r $ 形式与光滑向量场。$ C^{k} $ 情形只在注中简要提及，其验证留给你们。

我们用 $ \Omega^{r}(X) $ 表示 $ X $ 上所有光滑 $ r $ 形式的集合。为简便起见，我们记
\[ \mathcal{E}(X) := C^{\infty}(X) \quad \text{与} \quad \mathcal{V}(X) := \mathcal{V}^{\infty}(X). \]

若 $ \boldsymbol{v}_{1},\ldots,\boldsymbol{v}_{r} $ 是 $ X $ 上的向量场，其相应的向量部分为 $ v_{1},\ldots,v_{r} $，即若 $ \boldsymbol{v}_{j}(x) = (x,v_{j}(x)) $ 对 $ x \in X $ 与 $ 1 \le j \le r $ 成立，则我们定义
\[ \boldsymbol{\alpha}(v_{1},\ldots,v_{r})(x) := \boldsymbol{\alpha}(x)\big(\boldsymbol{v}_{1}(x),\ldots,\boldsymbol{v}_{r}(x)\big) \qquad \text{对 } x \in X. \tag{3.3} \]
于是由 (VIII.3.1) 推出
\[ \boldsymbol{\alpha}(x)\big(\boldsymbol{v}_{1}(x),\ldots,\boldsymbol{v}_{r}(x)\big) = \alpha(x)\big(v_{1}(x),\ldots,v_{r}(x)\big) \qquad \text{对 } x \in X, \]
即
\[ \boldsymbol{\alpha}(\boldsymbol{v}_{1},\ldots,\boldsymbol{v}_{r}) = \alpha(v_{1},\ldots,v_{r}). \tag{3.4} \]
这表明，在不引起误解的情况下，我们可以把 $ r $ 形式 $ \boldsymbol{\alpha} $ 与其余向量部分 $ \alpha $ 等同起来，把向量场 $ \boldsymbol{v} $ 与其向量部分 $ v $ 等同起来。因此，从现在起我们将用普通字体（非粗体）书写微分形式与向量场。在每种情形下，你都能毫不费力地判断一个符号描述的是形式还是它的余向量部分（或者它指的是向量场还是其向量部分）。

加法
\[ \Omega^{r}(X) \times \Omega^{r}(X) \to \Omega^{r}(X), \quad (\alpha,\beta) \mapsto \alpha+\beta \]
与外积
\[ \wedge: \Omega^{r}(X) \times \Omega^{s}(X) \to \Omega^{r+s}(X), \quad (\alpha,\beta) \mapsto \alpha \wedge \beta \]
是逐点进行的：
\[ (\alpha+\beta)(x) := \alpha(x)+\beta(x) \quad \text{与} \quad (\alpha \wedge \beta)(x) := \alpha(x) \wedge \beta(x) \qquad \text{对 } x \in X. \]
这些映射显然是良定义的。

3.1 注 (a) $ \Omega^{0}(X) = \mathcal{E}(X) $。

(b) $ \Omega^{1}(X) = \Omega_{(\infty)}(X) $，即 $ X $ 的光滑 1 形式是 $ X $ 上的 $ C^{\infty} $ 普法夫形式。

(c) 当 $ r > m $ 时 $ \Omega^{r}(X) = \{0\} $。

(d) 对 $ 0 \le r \le m $，$ \Omega^{r}(X) $ 是无限维实向量空间，也是维数为 $ \binom{m}{r} $ 的自由 $ \mathcal{E}(X) $ 模（关于逐点乘法）。$ \Omega^{r}(X) $ 的一个模基由
\[ \{ dx^{(j)} := dx^{j_{1}} \wedge \cdots \wedge dx^{j_{m}} ;\ (j) \in \mathbb{J}_{r} \} \tag{3.5} \]
给出。

证明 由于 (a) 以及 $ \mathbb{R} $ 与 $ \mathcal{E}(X) $ 的子环\footnote{$ \mathbf{1}(x) = 1 $ 对 $ x \in X $。} $ \mathbb{R}\mathbf{1} $ 的典范等同，我们对 $ \alpha \in \mathbb{R} $ 与 $ \beta \in \Omega(X) $ 有 $ \alpha \wedge \beta = \alpha\beta $。第一个断言随即由注 2.2(a) 与例 I.12.3(e) 推出。

根据注 VIII.3.3，$ (dx^{1}(x),\ldots,dx^{m}(x)) $ 是与 $ T_{x}X $ 的典范基 $ ((e_{1})_{x},\ldots,(e_{m})_{x}) $ 对偶的基。于是其余断言由命题 2.3 推出。■

(e) $ X $ 上的 $ r $ 形式 $ \alpha $ 属于 $ C^{k} $ 类，当且仅当 $ \mathcal{V}^{k}(X) $ 中的每个 $ r $ 元组 $ v_{1},\ldots,v_{r} $ 都满足
\[ \alpha(v_{1},\ldots,v_{r}) \in C^{k}(X). \tag{3.6} \]
这成立当且仅当典范基表示\footnote{由命题 2.3 可知（正如在 (d) 的证明中那样），(3.5) 是 $ X $ 上所有 $ r $ 形式构成的 $ \mathbb{R}^{X} $ 模的基。}的系数 $ a_{(j)} $
\[ \alpha = \sum_{(j) \in \mathbb{J}_{r}} a_{(j)} dx^{(j)} \tag{3.7} \]
满足关系
\[ a_{(j)} \in C^{k}(X) \qquad \text{对 } (j) \in \mathbb{J}_{r}. \tag{3.8} \]

证明 当 $ \alpha $ 属于 $ C^{k} $ 类时，由 (3.2) 与推论 VII.4.7 容易推出 (3.6) 成立。又因为 (2.4) 蕴含
\[ a_{(j)} = \alpha(e_{j_{1}},\ldots,e_{j_{r}}), \tag{3.9} \]
故由 (3.6) 得到 (3.8)。若 (3.8) 满足，则由 (3.7) 以及基形式 $ dx^{(j)} $ 的常值性可知 $ \alpha $ 属于 $ C^{k} $ 类。■

(f) 外积\footnote{有时我们用“楔积”而不用“外积”。}是双线性的、结合的和分次反交换的。因此
\[ \Omega(X) := \bigoplus_{r \ge 0} \Omega^{r}(X) \]
是（无限维的）结合分次反交换代数（关于乘积 $ \wedge $）。此外，$ \Omega(X) $ 是维数为 $ 2^{m} $ 的自由 $ \mathcal{E}(X) $ 模（关于逐点乘法）；我们称之为 $ X $ 上的**微分形式模**。

证明 这些都是定理 2.7 与 (d) 的简单推论。■

(g) 每个 $ \alpha \in \Omega^{r}(X) $ 都是 $ \mathcal{V}(X) $ 上的交错 $ r $ 形式。

证明 这由定义 (3.3) 立即推出。■

(h)（正则性）对 $ k \in \mathbb{N} $，设 $ \Omega^{r}_{(k)}(X) $ 为 $ X $ 上 $ C^{k} $ 类 $ r $ 形式的集合。则把 $ \mathcal{E}(X) $ 处处换成 $ C^{k}(X) $ 后，前述各断言对 $ \Omega^{r}_{(k)}(X) $ 仍类似成立。■

在下文中，我们一般不再声明 $ \alpha \in \Omega^{r}(X) $ 的典范基表示 (3.7) 的系数 $ a_{(j)} $ 属于 $ \mathcal{E}(X) $。这将被视为自明的。

3.2 例 (a) 如我们已知，每个普法夫形式 $ \alpha \in \Omega^{1}(X) $ 都有典范基表示
\[ \alpha = \sum_{j=1}^{m} a_{j} dx^{j}. \]

(b) 对 $ \alpha \in \Omega^{m-1}(X) $，基表示具有形式
\[ \alpha = \sum_{j=1}^{m} (-1)^{j-1} a_{j} dx^{1} \wedge \cdots \wedge \widehat{dx^{j}} \wedge \cdots \wedge dx^{m}. \]

(c) 当 $ m = 3 $ 时，任意 $ \alpha \in \Omega^{2}(X) $ 都有基表示\footnote{注意指标的循环置换。}
\[ \alpha = a_{1} dx^{2} \wedge dx^{3} + a_{2} dx^{3} \wedge dx^{1} + a_{3} dx^{1} \wedge dx^{2}. \]

证明 因为 $ dx^{3} \wedge dx^{2} = -dx^{2} \wedge dx^{3} $，故这由 (b) 推出。■
