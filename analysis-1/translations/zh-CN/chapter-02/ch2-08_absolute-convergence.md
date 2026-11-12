## 8 绝对收敛

由于级数是序列的特殊类型，我们为一般序列导出的规则也适用于级数。但是，由于级数的各项属于某个底层的赋范向量空间，我们可以利用这一事实导出其他规则。例如，对于给定的级数 $ \sum x_n $，我们可以研究级数 $ \sum |x_n| $。尽管序列 $(y_n)$ 的收敛蕴含其范数序列 $(|y_n|)$ 的收敛，但级数 $ \sum x_n $ 的收敛并不蕴含 $ \sum |x_n| $ 的收敛。例如，交错调和级数 $ \sum (-1)^{k+1}/k $ 与调和级数 $ \sum 1/k $ 的不同收敛性态即可说明这一点。

此外，我们不应期望结合律对“无限多个”加法成立：

\[ 1=1+\left(-1+1\right)+\left(-1+1\right)+\cdots=\left(1-1\right)+\left(1-1\right)+\left(1-1\right)+\cdots=0. \]

如果我们把注意力局限于 $ \mathbb{R} $ 中各项为正的收敛级数，或者更一般地，局限于其各项的绝对值（范数）所构成的级数收敛的级数，那么这种情况会得到相当大的改善。

在本节中，$ \sum x_k $ 是巴拿赫空间 $ E := (E, |\cdot|) $ 中的级数。

如果 $ \sum |x_k| $ 在 $ \mathbb{R} $ 中收敛，即 $ \sum |x_k| < \infty $，则称级数 $ \sum x_k $ 绝对收敛，或者说它是绝对收敛的。

下一个命题说明了这一定义中使用“收敛”一词的理由。

8.1 命题 每个绝对收敛的级数都收敛。

证明 设 $ \sum x_k $ 是 $ E $ 中的绝对收敛级数。则 $ \sum |x_k| $ 在 $ \mathbb{R} $ 中收敛。由定理 7.6，$ \sum |x_k| $ 满足柯西准则，即对于所有 $ \varepsilon > 0 $，存在某个 $ N $，使得

\[ \sum_{k=n+1}^{m}\left|x_{k}\right|<\varepsilon,\qquad m>n\geq N. \]

由于

\[ \Big|\sum_{k=n+1}^{m}x_{k}\Big|\leq\sum_{k=n+1}^{m}|x_{k}|<\varepsilon\;,\qquad m>n\geq N\;, \]

级数 $ \sum x_k $ 也满足柯西准则。由定理 7.6 可知 $ \sum x_k $ 收敛。

8.2 注 (a) 交错调和级数 $ \sum(-1)^{k+1}/k $ 表明命题 8.1 的逆命题不成立。该级数收敛（见例 7.10(a)），而其对应的绝对值级数，即调和级数 $ \sum k^{-1} $，发散（见例 7.3）。

(b) 如果 $ \sum x_k $ 收敛而 $ \sum |x_k| $ 不收敛，则称级数 $ \sum x_k $ 条件收敛。交错调和级数是一个条件收敛级数。

(c) 对于每个绝对收敛级数 $ \sum x_k $，我们有“广义三角不等式”，

\[ \left|\sum_{k=0}^{\infty}x_{k}\right|\leq\sum_{k=0}^{\infty}\left|x_{k}\right|. \]

证明 三角不等式蕴含

\[ \left|\sum_{k=0}^{n}x_{k}\right|\leq\sum_{k=0}^{n}\left|x_{k}\right|,\qquad n\in\mathbb{N}. \]

该断言现在由命题 2.7、2.10 和 5.3 得出（亦见注 3.1(c)）。

##### 优级数、根值与比值判别法

绝对收敛在级数的研究中起着特别重要的作用。正因如此，优级数判别法至关重要，因为它为证明级数的绝对收敛提供了一种简便而灵活的手段。

设 $ \sum x_k $ 是 $ E $ 中的级数，$ \sum a_k $ 是 $ \mathbb{R}^+ $ 中的级数。如果存在某个 $ K \in \mathbb{N} $，使得对于所有 $ k \geq K $ 都有 $ |x_k| \leq a_k $（或 $ a_k \leq |x_k| $），则称级数 $ \sum a_k $ 为 $ \sum x_k $ 的**优级数**（或**劣级数**\footnote{注意，按定义，劣级数的各项都是非负的。}）。

8.3 定理（优级数判别法） 如果巴拿赫空间中的级数有一个收敛的优级数，那么它绝对收敛。

证明 设 $ \sum x_k $ 是 $ E $ 中的级数，$ \sum a_k $ 是一个收敛的优级数。则存在某个 $ K $，使得对于所有 $ k \geq K $ 都有 $ |x_k| \leq a_k $。由定理 7.6，对于 $ \varepsilon > 0 $，存在某个 $ N \geq K $，使得对于所有 $ m > n \geq N $ 都有 $ \sum_{k=n+1}^m a_k < \varepsilon $。由于 $ \sum a_k $ 是 $ \sum x_k $ 的优级数，我们有

\[ \sum_{k=n+1}^{m}\left|x_{k}\right|\leq\sum_{k=n+1}^{m}a_{k}<\varepsilon,\qquad m>n\geq N. \]

由于级数 $ \sum|x_k| $ 满足柯西准则，故 $ \sum|x_k| $ 收敛。这意味着级数 $ \sum x_k $ 绝对收敛。

8.4 例 (a) 对于 $ m \geq 2 $，$ \sum_{k} k^{-m} $ 在 $ \mathbb{R} $ 中收敛。

证明 因为 $ m \geq 2 $，所以对于所有 $ k \in \mathbb{N}^\times $ 都有 $ k^{-m} \leq k^{-2} $。例 7.1(b) 表明 $ \sum k^{-2} $ 是 $ \sum k^{-m} $ 的收敛优级数。$ \blacksquare $

(b) 对于任意满足 $ |z| < 1 $ 的 $ z \in \mathbb{C} $，级数 $ \sum z^k $ 绝对收敛。

证明 对于所有 $ k \in \mathbb{N} $，我们有 $ |z^k| = |z|^k $。由于 $ |z| < 1 $ 以及例 7.4，几何级数 $ \sum |z|^k $ 是 $ \sum z^k $ 的收敛优级数。

利用优级数判别法，我们可以导出级数收敛的其他重要判别法。我们从根值判别法开始，它是任意巴拿赫空间中级数绝对收敛的一个充分条件。

8.5 定理（根值判别法） 设 $ \sum x_k $ 是 $ E $ 中的级数，且

\[ \alpha:=\varlimsup_{k}\sqrt[k]{|x_{k}|}. \]

则以下结论成立：

$ \sum x_k $ 绝对收敛，如果 $ \alpha < 1 $。

$ \sum x_k $ 发散，如果 $ \alpha > 1 $。

对于 $ \alpha = 1 $，$ \sum x_k $ 收敛与发散都有可能。

证明 (a) 如果 $\alpha < 1$，则区间 $(\alpha, 1)$ 非空，我们可以选取某个 $q \in (\alpha, 1)$。由定理 5.5，$\alpha$ 是序列 $\left( \sqrt[k]{|x_k|} \right)$ 的最大聚点。因此存在某个 $K$，使得对于所有 $k \geq K$ 都有 $\sqrt[k]{|x_k|} < q$，也就是说，对于所有 $k \geq K$，我们有 $|x_k| < q^k$。因此几何级数 $\sum q^k$ 是 $\sum x_k$ 的收敛优级数，该断言由定理 8.3 得出。

(b) 如果 $\alpha > 1$，则再次由定理 5.5，存在无穷多个 $k \in \mathbb{N}$，使得 $\sqrt[k]{|x_k|} \geq 1$。于是对于无穷多个 $k \in \mathbb{N}$ 有 $|x_k| \geq 1$。特别地，$(x_k)$ 不是零序列，由命题 7.2，级数 $\sum x_k$ 发散。

(c) 为了证明 $ \alpha = 1 $ 情形的断言，只需给出 $ E = \mathbb{R} $ 中满足 $ \alpha = 1 $ 的条件收敛级数。对于交错调和级数，$ x_k := (-1)^{k+1}/k $，由例 4.2(d)，我们有

\[ \sqrt[k]{\left|x_{k}\right|}=\sqrt[k]{\frac{1}{k}}=\frac{1}{\sqrt[k]{k}}\rightarrow1\quad(k\rightarrow\infty). \]

于是由定理 5.7 得 $ \alpha = \varlimsup\sqrt[k]{|x_k|} = 1 $。■

这个证明中的核心思想是利用几何级数作为收敛的优级数。这提示了另一个有用的收敛条件，即比值判别法。

8.6 定理（比值判别法） 设 $ \sum x_k $ 是 $ E $ 中的级数，$ K_0 $ 满足对于所有 $ k \geq K_0 $ 都有 $ x_k \neq 0 $。则以下结论成立：

(i) 如果存在 $ q \in (0,1) $ 和 $ K \geq K_0 $，使得

\[ \frac{|x_{k+1}|}{|x_{k}|}\leq q,\qquad k\geq K, \]

则级数 $ \sum x_k $ 绝对收敛。

(ii) 如果存在某个 $ K \geq K_{0} $，使得

\[ \frac{|x_{k+1}|}{|x_{k}|}\geq1,\qquad k\geq K, \]

则级数 $ \sum x_k $ 发散。

证明 (i) 由假设，对于所有 $ k \geq K $ 我们有 $ |x_{k+1}| \leq q|x_k| $。简单的归纳论证给出不等式

\[ \left|x_{k}\right|\leq q^{k-K}\left|x_{K}\right|=\frac{\left|x_{K}\right|}{q^{K}}q^{k},\qquad k>K. \]

令 $ c := |x_K|/q^K $。则 $ c \sum q^k $ 是级数 $ \sum x_k $ 的收敛优级数，该断言由定理 8.3 得出。

(ii) 该假设蕴含 $ (x_k) $ 不是零序列。由命题 7.2，级数 $ \sum x_k $ 必发散。

8.7 例 (a) $ \sum k^2 2^{-k} < \infty $，因为由 $ x_k := k^2 2^{-k} $，我们得到

\[ \frac{|x_{k+1}|}{|x_{k}|}=\frac{(k+1)^{2}}{2^{k+1}}\cdot\frac{2^{k}}{k^{2}}=\frac{1}{2}\Big(1+\frac{1}{k}\Big)^{2}\to\frac{1}{2}\quad(k\to\infty). \]

于是存在某个 $K$，使得对于所有 $k \geq K$ 都有 $|x_{k+1}|/|x_k| \leq 3/4$。所断言的收敛性于是由比值判别法得出。

(b) 考虑级数

\[ \sum\left(\frac{1}{2}\right)^{k+(-1)^{k}}=\frac{1}{2}+1+\frac{1}{8}+\frac{1}{4}+\frac{1}{32}+\frac{1}{16}+\cdots \]

其各项为 $ x_k := \left(\frac{1}{2}\right)^{k+(-1)^k} $（$ k \in \mathbb{N} $）。则

\[ \frac{\left|x_{k+1}\right|}{\left|x_{k}\right|}=\left\{\begin{array}{c l}{2,}&{k\text{ 为偶},}\\ {1/8,}&{k\text{ 为奇},}\\ \end{array}\right. \]

并且我们看出命题 8.6 的两个假设都不满足。\footnote{出于实用的考虑，最好先试比值判别法。若它不奏效，根值判别法仍可能判定该级数的收敛性（见习题 5.4）。}即便如此，该级数仍收敛，因为

\[ \overline{\lim}\sqrt[k]{|x_{k}|}=\overline{\lim}\sqrt[k]{\left(\frac{1}{2}\right)^{k+(-1)^{k}}}=\frac{1}{2}\overline{\lim}\sqrt[k]{\left(\frac{1}{2}\right)^{(-1)^{k}}}=\frac{1}{2}, \]

如例 4.2(e) 所示。

(c) 对于每个 $ z \in \mathbb{C} $，级数 $ \sum z^k / k! $ 绝对收敛。\footnote{这与命题 7.2 一起给出了例 4.2(c) 中断言的另一个证明。}

证明 设 $ z \in \mathbb{C}^\times $。对于所有 $ k \in \mathbb{N} $，令 $ x_k := z^k/k! $，我们有

\[ \frac{|x_{k+1}|}{|x_{k}|}=\frac{|z|}{k+1}\leq\frac{1}{2},\qquad k\geq2|z|, \]

因此该断言由定理 8.6 得出。

##### 指数函数

由前一个例子，我们可以定义一个函数 exp，其定义为

\[ \exp:\mathbb{C}\to\mathbb{C}\;,\quad z\mapsto\sum_{k=0}^{\infty}\frac{z^{k}}{k!}\;. \]

这个函数称为指数函数，级数 $ \sum z^k / k! $ 称为指数级数。指数函数在整个数学中极其重要，我们将在下文中对其性质进行透彻的研究。我们已经注意到，实数的指数函数是实数，即 $ \exp(\mathbb{R}) \subseteq \mathbb{R} $。对于指数函数到 $ \mathbb{R} $ 上的限制，我们仍使用符号 $ \exp $。

##### 级数的重排

设 $\sigma: \mathbb{N} \to \mathbb{N}$ 是一个置换。则级数 $\sum_k x_{\sigma(k)}$ 称为 $\sum x_k$ 的一个 $\text{重排}$。重排 $\sum_k x_{\sigma(k)}$ 的各项与原级数的各项相同，但它们出现的次序不同。如果 $\sigma$ 是 $\mathbb{N}$ 的一个置换，且对于几乎所有的 $k \in \mathbb{N}$ 都有 $\sigma(k) = k$，那么 $\sum x_k$ 与 $\sum_k x_{\sigma(k)}$ 具有相同的收敛性态，且若级数收敛则它们的值相等。对于满足对无穷多个 $k \in \mathbb{N}$ 都有 $\sigma(k) \neq k$ 的置换 $\sigma: \mathbb{N} \to \mathbb{N}$，这一点可能不成立，如下例所示：

8.8 例 令 $ x_k := (-1)^{k+1}/k $，设 $ \sigma: \mathbb{N}^\times \to \mathbb{N}^\times $ 由 $ \sigma(1) := 1 $、$ \sigma(2) := 2 $ 以及下式定义

\[ \sigma(k):=\left\{\begin{array}{ll}k+k/3,&\text{若 }3\mid k,\\k-(k-1)/3,&\text{若 }3\mid(k-1)\\k+(k-2)/3,&\text{若 }3\mid(k-2),\end{array}\right. \]

（$ k \geq 3 $）。容易验证 $ \sigma $ 是 $ \mathbb{N}^\times $ 的一个置换，因此

\[ \sum x_{\sigma(k)}=1-\frac{1}{2}-\frac{1}{4}+\frac{1}{3}-\frac{1}{6}-\frac{1}{8}+\frac{1}{5}-\frac{1}{10}-\frac{1}{12}+--\cdots. \]

是交错调和级数的一个重排

\[ \sum x_{k}=1-\frac{1}{2}+\frac{1}{3}-\frac{1}{4}+\cdots\cdots. \]

我们将证明这个重排收敛。分别用 $ s_n $ 和 $ t_n $ 表示 $ \sum x_k $ 与 $ \sum_k x_{\sigma(k)} $ 的第 $ n $ 部分和。令 $ s = \lim s_n $，即 $ \sum x_k $ 的值。由于

\[ \sigma(3n)=4n~,\quad\sigma(3n-1)=4n-2~,\quad\sigma(3n-2)=2n-1~,\qquad n\in\mathbb{N}^\times~, \]

我们有

\[ \begin{aligned}t_{3n}&=1-\frac{1}{2}-\frac{1}{4}+\frac{1}{3}-\frac{1}{6}-\frac{1}{8}+--\cdots+\frac{1}{2n-1}-\frac{1}{4n-2}-\frac{1}{4n}\\&=\left(1-\frac{1}{2}-\frac{1}{4}\right)+\left(\frac{1}{3}-\frac{1}{6}-\frac{1}{8}\right)+\cdots+\left(\frac{1}{2n-1}-\frac{1}{4n-2}-\frac{1}{4n}\right)\\&=\left(\frac{1}{2}-\frac{1}{4}\right)+\left(\frac{1}{6}-\frac{1}{8}\right)+\cdots+\left(\frac{1}{4n-2}-\frac{1}{4n}\right)\\&=\frac{1}{2}\Big(1-\frac{1}{2}+\frac{1}{3}-\frac{1}{4}+-\cdots+\frac{1}{2n-1}-\frac{1}{2n}\Big)\\&=\frac{1}{2}s_{n}.\\ \end{aligned} \]

于是，子序列 $ (t_{3n})_{n \in \mathbb{N}^\times} \text{的 } (t_m)_{m \in \mathbb{N}^\times} \text{收敛于 } s/2 $。由于我们还有

\[ \lim_{n\to\infty}\left|t_{3n+1}-t_{3n}\right|=\lim_{n\to\infty}\left|t_{3n+2}-t_{3n}\right|=0, \]

由此可知 $ (t_{m}) $ 是柯西序列。由命题 6.4 和 1.15，序列 $ (t_{m}) $ 收敛于 s/2，也就是说，

\[ \sum_{k=1}^{\infty}x_{\sigma(k)}=1-\frac{1}{2}-\frac{1}{4}+\frac{1}{3}-\frac{1}{6}-\frac{1}{8}+\frac{1}{5}-\frac{1}{10}-\frac{1}{12}+--\cdots=\frac{s}{2}. \]

注意到 $s$ 不为零，因为由推论 7.9，$|s-1|=|s-s_1|\leq-x_2=\frac{1}{2}$。■

这个例子表明，当存在“无限多个加项”时加法不可交换，也就是说，收敛级数不能任意重排而不改变其值。\footnote{见习题 4。}相反，下一个命题表明绝对收敛级数的值在重排下保持不变。

8.9 定理（重排定理） 绝对收敛级数 $ \sum x_k $ 的每个重排都绝对收敛，并且与 $ \sum x_k $ 有相同的值。

证明 对于每个 $ \varepsilon > 0 $，由定理 7.6，存在某个 $ N \in \mathbb{N} $，使得

\[ \sum_{k=N+1}^{m}\left|x_{k}\right|<\varepsilon,\qquad m>N. \]

令 $ m \to \infty $ 取极限便得不等式 $ \sum_{k=N+1}^{\infty} |x_k| \leq \varepsilon $。

现在设 $ \sigma $ 是 $ \mathbb{N} $ 的一个置换。对于 $ M := \max\{\sigma^{-1}(0), \ldots, \sigma^{-1}(N)\} $，我们有 $ \{\sigma(0), \ldots, \sigma(M)\} \supseteq \{0, \ldots, N\} $。于是，对于每个 $ m \geq M $，

\[ \left|\sum_{k=0}^{m}x_{\sigma(k)}-\sum_{k=0}^{N}x_{k}\right|\leq\sum_{k=N+1}^{\infty}\left|x_{k}\right|\leq\varepsilon \]

并且还有

\[ \left|\sum_{k=0}^{m}\left|x_{\sigma(k)}\right|-\sum_{k=0}^{N}\left|x_{k}\right|\right|\leq\varepsilon. \]

不等式 (8.3) 蕴含 $ \sum x_{\sigma(k)} $ 的绝对收敛性。在 (8.2) 中令 $ m \to \infty $ 取极限，然后利用命题 2.10 和注 3.1(c)，我们看到

\[ \left|\sum_{k=0}^{\infty}x_{\sigma(k)}-\sum_{k=0}^{N}x_{k}\right|\leq\varepsilon, \]

因此这两个级数的值相等。■

##### 二重级数

作为重排定理的一个应用，我们考虑巴拿赫空间 $ E $ 中的二重级数 $ \sum x_{jk} $。于是我们有一个函数 $ x: \mathbb{N} \times \mathbb{N} \to E $，并且如同第 1 节中那样，我们把 $ x(j, k) $ 简记为 $ x_{jk} $。函数 $ x $ 可以用一个双向无限阵列表示

\[ \begin{array}{ccccc} x_{00} & x_{01} & x_{02} & x_{03} & \cdots \\ x_{10} & x_{11} & x_{12} & x_{13} & \cdots \\ x_{20} & x_{21} & x_{22} & x_{23} & \cdots \\ x_{30} & x_{31} & x_{32} & x_{33} & \cdots \\ \vdots & \vdots & \vdots & \vdots & \vdots \cdots \end{array} \]

这个阵列中的元素有许多种求和方式，也就是说，有许多种不同的方式对这些元素排序以构成级数。在什么条件下这样的级数收敛，以及这些级数的值在多大程度上与排序的选择无关，这一点完全不清楚。

由命题 I.6.9，集合 $\mathbb{N} \times \mathbb{N}$ 是可数的，也就是说，存在一个双射 $\alpha: \mathbb{N} \to \mathbb{N} \times \mathbb{N}$。如果 $\alpha$ 是这样的双射，我们称级数 $\sum_n x_{\alpha(n)}$ 为二重级数 $\sum x_{jk}$ 的一个排序。如果我们固定 $j \in \mathbb{N}$（或 $k \in \mathbb{N}$），则级数 $\sum_k x_{jk}$（或 $\sum_j x_{jk}$）称为 $\sum x_{jk}$ 的第 $j$ 行级数（或第 $j$ 列级数）。如果每个行级数（或列级数）都收敛，那么我们可以考虑行和级数 $\sum_j (\sum_{k=0}^{\infty} x_{jk})$（或列和级数 $\sum_k (\sum_{j=0}^{\infty} x_{jk})$）。最后，我们称二重级数 $\sum x_{jk}$ 是**可和的**\footnote{我们只定义了行级数（与列级数）的收敛性以及二重级数的任意排序的收敛性。对于二重级数 $\sum x_{jk}$ 本身，我们还没有收敛性的定义。注意，必须先证明每个行级数（或列级数）收敛，才能考虑行和级数（或列和级数）。}，如果

\[ \sup_{n\in\mathbb{N}}\sum_{j,k=0}^{n}\left|x_{j k}\right|<\infty. \]

8.10 定理（二重级数定理） 设 $ \sum x_{jk} $ 是可和的二重级数。

(i) $ \sum x_{jk} $ 的每个排序 $ \sum_{n} x_{\alpha(n)} $ 都绝对收敛于某个与 $ \alpha $ 无关的值 $ s \in E $。

(ii) 行和级数 $ \sum_j (\sum_{k=0}^{\infty} x_{jk}) $ 与列和级数 $ \sum_k (\sum_{j=0}^{\infty} x_{jk}) $ 绝对收敛，并且

\[ \sum_{j=0}^{\infty}\Bigl(\sum_{k=0}^{\infty}x_{j k}\Bigr)=\sum_{k=0}^{\infty}\Bigl(\sum_{j=0}^{\infty}x_{j k}\Bigr)=s. \]

证明 (i) 令 $ M = \sup_{n \in \mathbb{N}} \sum_{j,k=0}^{n} |x_{jk}| < \infty $。设 $ \alpha: \mathbb{N} \to \mathbb{N} \times \mathbb{N} $ 是一个双射，$ N \in \mathbb{N} $。则存在某个 $ K \in \mathbb{N} $，使得

\[ \left\{\alpha(0),\ldots,\alpha(N)\right\}\subseteq\left\{(0,0),(1,0),\ldots,(K,0),\ldots,(0,K),\ldots,(K,K)\right\}. \]

结合 $ \sum x_{jk} $ 的可和性，这蕴含

\[ \sum_{n=0}^{N}\left|x_{\alpha(n)}\right|\leq\sum_{j,k=0}^{K}\left|x_{j k}\right|\leq M. \]

因此由定理 7.7，$ \sum_{n} x_{\alpha(n)} $ 绝对收敛。

现在设 $ \beta\colon \mathbb{N} \to \mathbb{N} \times \mathbb{N} $ 是另一个双射。则 $ \sigma := \alpha^{-1} \circ \beta $ 是 $ \mathbb{N} $ 的一个置换。对于所有 $ m \in \mathbb{N} $，令 $ y_m := x_{\alpha(m)} $。则

\[ y_{\sigma(n)}=x_{\alpha(\sigma(n))}=x_{\beta(n)},\qquad n\in\mathbb{N}, \]

也就是说，$ \sum_{n} x_{\beta(n)} $ 是 $ \sum_{n} x_{\alpha(n)} $ 的一个重排。由于我们已经知道 $ \sum_{n} x_{\alpha(n)} $ 绝对收敛，剩下的断言由定理 8.9 得出。

(ii) 首先注意到，行级数 $ \sum_{k=0}^{\infty} x_{jk} $（$ j \in \mathbb{N} $）与列级数 $ \sum_{j=0}^{\infty} x_{jk} $（$ k \in \mathbb{N} $）绝对收敛。事实上，这直接由 $ \sum x_{jk} $ 的可和性与定理 7.7 得出。因此行和级数 $ \sum_{j} (\sum_{k=0}^{\infty} x_{jk}) $ 与列和级数 $ \sum_{k} (\sum_{j=0}^{\infty} x_{jk}) $ 都有良定义。

接下来我们证明这些级数绝对收敛。考虑不等式

\[ \sum_{j=0}^{\ell}\left|\sum_{k=0}^{m}x_{jk}\right|\leq\sum_{j=0}^{\ell}\sum_{k=0}^{m}\left|x_{jk}\right|\leq\sum_{j,k=0}^{m}\left|x_{jk}\right|\leq M,\qquad\ell\leq m. \]

在极限 $ m \to \infty $ 下，我们得到 $ \sum_{j=0}^{\ell} \left| \sum_{k=0}^{\infty} x_{jk} \right| \leq M $，$ \ell \in \mathbb{N} $，这证明了行和级数 $ \sum_{j} \left( \sum_{k=0}^{\infty} x_{jk} \right) $ 的绝对收敛性。类似的论证表明列和级数绝对收敛。

现在设 $\alpha: \mathbb{N} \to \mathbb{N} \times \mathbb{N}$ 是一个双射，$s := \sum_{n=0}^{\infty} x_{\alpha(n)}$。对于任意 $\varepsilon > 0$，存在某个 $N \in \mathbb{N}$，使得 $\sum_{n=N+1}^{\infty} |x_{\alpha(n)}| < \varepsilon/2$。另外存在某个 $K \in \mathbb{N}$，使得 (8.5) 成立。因此我们有

\[ \left|\sum_{j=0}^{\ell}\sum_{k=0}^{m}x_{j k}-\sum_{n=0}^{N}x_{\alpha(n)}\right|\leq\sum_{n=N+1}^{\infty}\left|x_{\alpha(n)}\right|<\varepsilon/2,\qquad\ell,m\geq K. \]

令 $ m \to \infty $ 和 $ \ell \to \infty $ 取极限，我们得到

\[ \Bigl|\sum_{j=0}^{\infty}\Bigl(\sum_{k=0}^{\infty}x_{j k}\Bigr)-\sum_{n=0}^{N}x_{\alpha(n)}\Bigr|\leq\varepsilon/2~. \]

对如下各式应用三角不等式

\[ \left|s-\sum_{n=0}^{N}x_{\alpha(n)}\right|\leq\sum_{n=N+1}^{\infty}\left|x_{\alpha(n)}\right|<\varepsilon/2 \]

\[ \left|\sum_{j=0}^{\infty}\left(\sum_{k=0}^{\infty}x_{j k}\right)-s\right|\leq\varepsilon. \]

便得到

由于这对每个 $\varepsilon > 0$ 都成立，行和级数具有值 $s$。类似的论证表明 $\sum_{k}\left(\sum_{j=0}^{\infty}x_{jk}\right)$ 的值也是 $s$。■

##### 柯西乘积

当人们构造两个级数的乘积时，二重级数自然会出现。如果 $ \sum x_j $ 和 $ \sum y_k $ 是 $ \mathbb{K} $ 中的级数，那么将各项相乘，我们得到如下的双向无限阵列：

\[ \begin{aligned}&x_{0}y_{0}\quad x_{0}y_{1}\quad x_{0}y_{2}\quad x_{0}y_{3}\quad\cdots\\&x_{1}y_{0}\quad x_{1}y_{1}\quad x_{1}y_{2}\quad x_{1}y_{3}\quad\cdots\\&x_{2}y_{0}\quad x_{2}y_{1}\quad x_{2}y_{2}\quad x_{2}y_{3}\quad\cdots\\&x_{3}y_{0}\quad x_{3}y_{1}\quad x_{3}y_{2}\quad x_{3}y_{3}\quad\cdots\\&\vdots\quad\vdots\quad\vdots\quad\vdots\quad\vdots\quad\vdots\quad\vdots\\ \end{aligned} \]

如果 $\sum x_j$ 和 $\sum y_k$ 都收敛，则行和级数为 $\sum_j x_j \cdot \sum_{k=0}^{\infty} y_k$，列和级数为 $\sum_k y_k \cdot \sum_{j=0}^{\infty} x_j$。对于所有 $(j, k) \in \mathbb{N} \times \mathbb{N}$，令 $x_{jk} := x_j y_k$。设 $\delta: \mathbb{N} \to \mathbb{N} \times \mathbb{N}$ 是 (I.6.3) 中的双射，于是，第 $n$ 对角和定义为

\[ z_{n}:=\sum_{k=0}^{n}x_{k}y_{n-k},\qquad n\in\mathbb{N}, \]

我们有

\[ \sum_{j}x_{\delta(j)}=\sum_{n}z_{n}=\sum_{n}\biggl(\sum_{k=0}^{n}x_{k}y_{n-k}\biggr). \]

这个特殊的排序 $ \sum_n x_{\delta(n)} $ 称为级数 $ \sum x_j $ 与 $ \sum y_k $ 的柯西乘积（比较 I.8 节中的 (8.8)）。

为了利用 $\sum x_j$ 与 $\sum y_k$ 的柯西乘积，二重级数 $\sum x_j y_k$ 必须是可和的。对此的一个简单充分判别条件是 $\sum x_j$ 与 $\sum y_k$ 的绝对收敛性。

8.11 定理（级数的柯西乘积） 假设 $ \mathbb{K} $ 中的级数 $ \sum x_j $ 与 $ \sum y_k $ 绝对收敛。则 $ \sum x_j $ 与 $ \sum y_k $ 的柯西乘积 $ \sum_n \sum_{k=0}^{n} x_k y_{n-k} $ 绝对收敛，并且

\[ \Big(\sum_{j=0}^{\infty}x_{j}\Big)\Big(\sum_{k=0}^{\infty}y_{k}\Big)=\sum_{n=0}^{\infty}\sum_{k=0}^{n}x_{k}y_{n-k}. \]

证明 对于所有 $ (j, k) \in \mathbb{N} \times \mathbb{N} $，令 $ x_{jk} := x_j y_k $，我们有

\[ \sum_{j,k=0}^{n}\left|x_{j k}\right|=\sum_{j=0}^{n}\left|x_{j}\right|\cdot\sum_{k=0}^{n}\left|y_{k}\right|\leq\sum_{j=0}^{\infty}\left|x_{j}\right|\cdot\sum_{k=0}^{\infty}\left|y_{k}\right|~,\qquad n\in\mathbb{N}~. \]

因此，由于 $ \sum x_j $ 与 $ \sum y_k $ 的绝对收敛性，二重级数 $ \sum x_{jk} $ 是可和的。这些断言现在由定理 8.10 得出。

8.12 例 (a) 对于指数函数，我们有

\[ \exp(x)\cdot\exp(y)=\exp(x+y)~,\qquad x,y\in\mathbb{C}~. \]

证明 由例 8.7(c)，级数 $ \sum x^j / j! $ 与 $ \sum y^k / k! $ 绝对收敛，因此定理 8.11 蕴含

\[ \exp(x)\cdot\exp(y)=\Big(\sum_{j=0}^{\infty}\frac{x^{j}}{j!}\Big)\Big(\sum_{k=0}^{\infty}\frac{y^{k}}{k!}\Big)=\sum_{n=0}^{\infty}\Big(\sum_{k=0}^{n}\frac{x^{k}}{k!}\frac{y^{n-k}}{(n-k)!}\Big). \]

由二项式公式，我们得到

\[ \sum_{k=0}^{n}\frac{x^{k}}{k!}\frac{y^{n-k}}{(n-k)!}=\frac{1}{n!}\sum_{k=0}^{n}\frac{n!}{k!(n-k)!}x^{k}y^{n-k}=\frac{1}{n!}\sum_{k=0}^{n}\binom{n}{k}x^{k}y^{n-k}=\frac{1}{n!}(x+y)^{n}. \]

于是，由 (8.9)，我们得到

\[ \exp(x)\cdot\exp(y)=\sum_{n=0}^{\infty}\frac{(x+y)^{n}}{n!}=\exp(x+y) \]

正如所断言的那样。

(b) 作为指数函数这一性质的一个应用，我们确定指数函数在有理数自变量处的值。\footnote{在第 III.6 节中我们将证明这一断言的一个推广。}即，

\[ \exp(r)=e^{r}\;,\qquad r\in\mathbb{Q}\;, \]

也就是说，对于有理数 r，$ \exp(r) $ 是 e 的 $ r $ 次幂。

证明 (i) 由例 7.1(a)，我们有 $ \exp(1) = \sum_{k=0}^{\infty} 1/k! = e $。于是 (8.8) 蕴含

\[ \exp(2)=\exp(1+1)=\exp(1)\cdot\exp(1)=\left[\exp(1)\right]^{2}=e^{2}. \]

简单的归纳论证给出

\[ \exp(k)=e^{k}\;,\qquad k\in\mathbb{N}\;. \]

(ii) 对于 $ k \in \mathbb{N} $，(8.8) 蕴含 $ \exp(-k) \cdot \exp(k) = \exp(0) $。由于 $ \exp(0) = 1 $，我们有

\[ \exp(-k)=\left[\exp(k)\right]^{-1},\qquad k\in\mathbb{N}. \]

利用 (i)，我们于是有（见习题 I.9.1）

\[ \exp(-k)=\frac{1}{\exp(k)}=\frac{1}{e^{k}}=(e^{-1})^{k}=e^{-k},\qquad k\in\mathbb{N}, \]

也就是说，对于所有 $ k \in \mathbb{Z} $，$ \exp(k) = e^k $。

(iii) 对于 $ q \in \mathbb{N}^* $，(8.8) 蕴含

\[ e=\exp(1)=\exp\Big(q\cdot\frac{1}{q}\Big)=\exp\Big(\underbrace{\frac{1}{q}+\cdots+\frac{1}{q}}_{q\text{ 次}}\Big)=\Big[\exp\Big(\frac{1}{q}\Big)\Big]^{q} \]

从而 $ \exp(1/q) = e^{1/q} $。最后设 $ p \in \mathbb{N} $ 且 $ q \in \mathbb{N}^\times $。于是，利用注 I.10.10(b)，我们得到

\[ \exp\biggl(\frac{p}{q}\biggr)=\exp\Bigl(\underbrace{\frac{1}{q}+\cdots+\frac{1}{q}}_{p\text{ 次}}\Bigr)=\Bigl[\exp\Bigl(\frac{1}{q}\Bigr)\Bigr]^{p}=\bigl[e^{1/q}\bigr]^{p}=e^{p/q} \]

（见习题 I.10.3）。由 (8.8) 和 $ \exp(0) = 1 $ 还可得

\[ \exp\Bigl(-\frac{p}{q}\Bigr)=\Bigl[\exp\Bigl(\frac{p}{q}\Bigr)\Bigr]^{-1}. \]

由我们已经证明的结论以及习题 I.10.3，我们最终得到

\[ \exp\Bigl(-\frac{p}{q}\Bigr)=\Bigl[\exp\Bigl(\frac{p}{q}\Bigr)\Bigr]^{-1}=\bigl[e^{p/q}\bigr]^{-1}=e^{-p/q}. \]

这就完成了证明。■

(c) 对于条件收敛级数，定理 8.11 一般不再成立。

证明 对于由 $ x_k := y_k := (-1)^k / \sqrt{k+1} $（$ k \in \mathbb{N} $）定义的条件收敛级数 $ \sum x_k $ 与 $ \sum y_k $ 的柯西乘积，我们有

\[ z_{n}:=\sum_{k=0}^{n}\frac{(-1)^{k}(-1)^{n-k}}{\sqrt{k+1}\sqrt{n-k+1}}=(-1)^{n}\sum_{k=0}^{n}\frac{1}{\sqrt{k(n-k)}},\qquad n\in\mathbb{N}^{\times}. \]

由不等式

\[ (k+1)(n-k+1)\leq(n+1)^{2} \]

（$0 \leq k \leq n$），我们得到

\[ |z_{n}|=\sum_{k=0}^{n}\frac{1}{\sqrt{(k+1)(n-k+1)}}\geq\frac{n+1}{n+1}=1. \]

于是，由命题 7.2，级数 $ \sum_{k=1}^{\infty} z_n $ 不可能收敛。

(d) 考虑二重级数 $ \sum x_{jk} $，其中

\[ x_{j k}:=\left\{\begin{array}{r l}{1,}&{\quad j-k=1,}\\ {-1,}&{\quad j-k=-1,}\\ {0}&{\quad\text{其他情形},}\end{array}\right. \]

由如下的双向无限阵列\footnote{大号的零表示所有未另行指定的元素都是 0。}表示

\[ \left[\begin{array}{c c c c c c}{0}&{-1}&&&&&\\ {1}&{0}&{-1}&&&&{0}\\ &{1}&{0}&{-1}&&&\\ &{}&{1}&{0}&{-1}&&\\ &{}&{}&{1}&{0}&{-1}&\\ {}&{}&{}&{}&{1}&{0}&{-1}&\\ {0}&{}&{}&{}&{}&{1}&{0}&{\ddots}\\ {}&{}&{}&{}&{}&{}&{1}&{\ddots}\\ {}&{}&{}&{}&{}&{}&{}&{\ddots}\\ \end{array}\right] \]

这个二重级数不可和，且行级数与列级数的值不相等：

\[ \sum_{j}\Bigl(\sum_{k=0}^{\infty}x_{j k}\Bigr)=-1\;,\quad\sum_{k}\Bigl(\sum_{j=0}^{\infty}x_{j k}\Bigr)=1\;. \]

级数 $ \sum_n x_{\delta(n)} $（其中 $ \delta: \mathbb{N} \to \mathbb{N} \times \mathbb{N} $ 表示 (I.6.3) 中的双射）发散。

##### 习题

1 判断下列级数是收敛还是发散：

\[ (a)\sum\frac{k^{4}}{3^{k}},\quad(b)\sum\frac{k}{(\sqrt[3]{k+1})^{k}},\quad(c)\sum\left(1-\frac{1}{k}\right)^{k^{2}}, \]

\[ \mathrm{(d)}\sum{\binom{2k}{k}}^{-1},\quad\mathrm{(e)}\sum{\binom{2k}{k}}2^{-k},\quad\mathrm{(f)}\sum{\binom{2k}{k}}5^{-k}. \]

2 对于 $ a \in \mathbb{R} $ 的哪些值，级数

\[ \begin{array}{r l}{\sum\frac{a^{2k}}{(1+a^{2})^{k-1}}}&{{}{\text{且}}\quad\sum\frac{1-a^{2k}}{1+a^{2k}}}\end{array} \]

收敛？

3 设 $ \sum x_k $ 是 $ \mathbb{R} $ 中的条件收敛级数。证明级数\footnote{对 $x\in\mathbb R$，定义 $x^+:=\max\{x,0\}$ 与 $x^-:=\max\{-x,0\}$。}$\sum x_k^+ $ 与 $ \sum x_k^- $ 发散。

4 证明黎曼重排定理：如果 $\sum x_k$ 是 $\mathbb{R}$ 中的条件收敛级数，那么对于任意 $s \in \mathbb{R}$，存在 $\mathbb{N}$ 的一个置换 $\sigma$，使得 $\sum_k x_{\sigma(k)} = s$。此外，存在 $\mathbb{N}$ 的一个置换 $\tau$，使得 $\sum_k x_{\tau(k)}$ 发散。（提示：利用习题 3，并用级数 $\sum x_k^+$ 与 $-\sum x_k^-$ 的部分和的适当组合从上下两侧逼近 $s \in \mathbb{R}$。）

5 对于所有 $ (j, k) \in \mathbb{N} \times \mathbb{N} $，令

\[ x_{j k}:=\left\{\begin{array}{r l}{(j^{2}-k^{2})^{-1},}&{\quad j\neq k~,}\\ {0,}&{\quad j=k~.}\\ \end{array}\right. \]

证明二重级数 $ \sum x_{jk} $ 不可和。（提示：利用习题 7.9，确定行和级数与列和级数的值。）

6 令

\[ \begin{array}{r}{\ell_{1}:=\ell_{1}(\mathbb{K}):=\Big(\big\{(x_{k})\in s;\sum x_{k}\text{ 绝对收敛}\big\},\|\cdot\|_{1}\Big)}\end{array} \]

其中

\[ \|(x_{k})\|_{1}:=\sum_{k=0}^{\infty}|x_{k}|. \]

证明下列结论：

(a) $ \ell_{1} $ 是巴拿赫空间。

(b) $ \ell_1 $ 是 $ \ell_\infty $ 的真子空间，且 $ \|\cdot\|_\infty \leq \|\cdot\|_1 $。

(c) 由 $\ell_\infty$ 诱导到 $\ell_1$ 上的范数与 $\ell_1$-范数不等价。（提示：考虑序列 $(\xi_j)$，其中 $\xi_j := (x_{j,k})_{k \in \mathbb{N}}$，当 $k \leq j$ 时 $x_{j,k} = 1$，当 $k > j$ 时 $x_{j,k} = 0$）。）

7 设 $\sum x_n$、$\sum y_n$ 与 $\sum z_n$ 是 $(0, \infty)$ 中的级数，且 $\sum y_n < \infty$、$\sum z_n = \infty$。证明下列结论：

(a) 如果存在某个 N，使得

\[ \frac{x_{n+1}}{x_{n}}\leq\frac{y_{n+1}}{y_{n}},\qquad n\geq N, \]

则 $ \sum x_n $ 收敛。

(b) 如果存在某个 N，使得

\[ \frac{x_{n+1}}{x_{n}}\geq\frac{z_{n+1}}{z_{n}},\qquad n\geq N, \]

则 $ \sum x_{n} $ 发散。

8 判断下列级数是收敛还是发散：

\[ \sum\frac{(-1)^{n+1}}{3n+(-1)^{n}n}~,~~\sum\frac{(-1)^{n+1}}{3n+6(-1)^{n}}~. \]

9 设 a, b > 0 且 a - b = 1。证明级数\footnote{注意级数 $a+\sum a^n$ 发散。}的柯西乘积

\[ a+\sum_{n\geq1}a^{n}\quad\text{且}\quad-b+\sum_{n\geq1}b^{n} \]

绝对收敛。特别地，下列级数的柯西乘积

\[ 2+2+2^{2}+2^{3}+\cdots\quad\text{且}\quad-1+1+1+\cdots \]

绝对收敛。

10 证明指数函数的下列性质：

(a) $ \exp(x) > 0 $，$ x \in \mathbb{R} $。

(b) $ \exp: \mathbb{R} \to \mathbb{R} $ 严格递增。

(c) 对于每个 $ \varepsilon > 0 $，存在 x < 0 和 y > 0，使得

\[ \exp(x)<\varepsilon\quad\text{且}\quad\exp(y)>1/\varepsilon. \]

（提示：考虑例 8.12(a) 与 (b)。）
