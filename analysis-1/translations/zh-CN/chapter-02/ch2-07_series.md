## 7 级数

到目前为止，我们有两种方法可以证明巴拿赫空间\footnote{下文我们常用 $|\cdot|$ 而不用 $\|\cdot\|$ 表示巴拿赫空间 $E$ 的范数。细心的读者不难避免与欧几里得范数混淆。} $(E,|\cdot|)$中的序列 $(x_n)$ 收敛。要么我们对极限 $x$ 作出某种猜测，然后直接证明 $|x-x_n|$ 收敛于零，要么我们证明 $(x_n)$ 是柯西序列，再利用 $E$ 的完备性。

在下面两节中，我们将用这两种技巧来研究一类称为级数的特殊序列。我们将看到，级数简单的递归结构会产生非常方便的收敛判别法。特别地，我们将讨论任意巴拿赫空间中的根值判别法与比值判别法，以及用于交错实级数的莱布尼茨判别法。

##### 级数的收敛

令 $ (x_{k}) $ 为 $E$ 中的序列。于是我们在 $E$ 中如下定义一个新序列 $ (s_{n}) $：

\[ s_{n}:=\sum_{k=0}^{n}x_{k}~,\qquad n\in\mathbb{N}~. \]

序列 $(s_n)$ 称为 $E$ 中的级数，记为 $\sum x_k$ 或 $\sum_k x_k$。元素 $s_n$ 称为级数 $\sum x_k$ 的第 $n$ 个部分和，$x_k$ 称为级数 $\sum x_k$ 的第 $k$ 项。因此，级数不过是一个其项按如下方式递归定义的序列：

\[ s_{0}:=x_{0}~,\qquad s_{n+1}=s_{n}+x_{n+1}~,\qquad n\in\mathbb{N}. \]

级数就是其部分和所构成的序列。

若级数 $ \sum x_k $ 的部分和序列 $ (s_n) $ 收敛，则称该级数收敛（或是收敛的）。此时，$ (s_n) $ 的极限称为级数 $ \sum x_k $ 的值，记为 $ \sum_{k=0}^{\infty} x_k $\footnote{删去级数 $\sum_k x_k$ 的前 $m$ 项有时是有用的。这个新级数记作 $\sum_{k\geq m} x_k$ 或 $(s_n)_{n\geq m}$。常常出现 $x_0$ 没有定义的情形（例如 $x_k=1/k$）。此时 $\sum x_k$ 指的是 $\sum_{k\geq 1} x_k$。}。最后，若级数 $ \sum x_k $ 的部分和序列 $ (s_n) $ 在 $ E $ 中发散，则称该级数发散（或是发散的）。

7.1 例 (a) 级数 $ \sum 1/k! $ 在 $ \mathbb{R} $ 中收敛。由例 4.2(g)，它的值为 $ e $，即 $ e = \sum_{k=0}^{\infty} 1/k! $。

(b) 级数 $ \sum 1/k^2 $ 在 $ \mathbb{R} $ 中收敛。

证明 显然，部分和序列 $ (s_n) $ 是递增的。由于对每个 $ n \in \mathbb{N}^\times $

\[ s_{n}=\sum_{k=1}^{n}\frac{1}{k^{2}}\leq1+\sum_{k=2}^{n}\frac{1}{k(k-1)}=1+\sum_{k=2}^{n}\Big(\frac{1}{(k-1)}-\frac{1}{k}\Big)=1+1-\frac{1}{n}<2, \]

序列 $ (s_{n}) $ 是有界的。因此，结论由定理 4.1 可得。 $ \blacksquare $

直观上很明显，一个级数只有在各项构成零序列时才能收敛。我们在下面的命题中证明这一必要条件。

7.2 命题 若级数 $ \sum x_k $ 收敛，则 $ (x_k) $ 是零序列。

证明 令 $ \sum x_k $ 为收敛级数。由命题 6.1，部分和序列 $ (s_n) $ 是柯西序列。因此，对每个 $ \varepsilon > 0 $，存在某个 $ N \in \mathbb{N} $，使得对所有 $ m, n \geq N $ 有 $ |s_n - s_m| < \varepsilon $。特别地，

\[ \left|s_{n+1}-s_{n}\right|=\left|\sum_{k=0}^{n+1}x_{k}-\sum_{k=0}^{n}x_{k}\right|=\left|x_{n+1}\right|<\varepsilon,\qquad n\geq N, \]

即 $ (x_{n}) $ 是零序列。 ■

##### 调和级数与几何级数

下面的例子表明，命题 7.2 的逆命题不成立。

7.3 例 调和级数 $ \sum 1/k $ 在 $ \mathbb{R} $ 中发散。

证明 由不等式

\[ |s_{2n}-s_{n}|=\sum_{k=n+1}^{2n}\frac{1}{k}\geq\frac{n}{2n}=\frac{1}{2},\qquad n\in\mathbb{N}^{\times}, \]

可知 $ (s_{n}) $ 不是柯西序列。因此，由命题 6.1，序列 $ (s_{n}) $ 发散，这意味着调和级数发散。

作为命题 7.2 的一个简单应用，我们对几何级数 $ \sum a^k $，$ a \in \mathbb{K} $ 的收敛性态给出完整的刻画。

7.4 例 令 $ a \in \mathbb{K} $。则

\[ \sum_{k=0}^{\infty}a^{k}=\frac{1}{1-a},\qquad|a|<1. \]

当 $ |a| \geq 1 $ 时，几何级数发散。

证明 由习题 I.8.1，我们有

\[ s_{n}=\sum_{k=0}^{n}a^{k}=\frac{1-a^{n+1}}{1-a},\qquad n\in\mathbb{N}. \]

若 $ |a| < 1 $，则由例 4.2(a) 可得，当 $ n \to \infty $ 时 $ (s_n) $ 收敛于 $ 1/(1-a) $。

反之，若 $ |a| \geq 1 $，则 $ |a^k| = |a|^k \geq 1 $，由命题 7.2，级数 $ \sum_k a^k $ 发散。 $ \blacksquare $

##### 级数的运算

级数是特殊的序列，因此我们为收敛序列推导出的所有法则同样适用于级数。特别地，极限函数的线性性质对级数成立（见 2 节与注 3.1(c)）。

7.5 命题 令 $ \sum a_k $ 与 $ \sum b_k $ 为赋范向量空间 $ E $ 中的收敛级数，且 $ \alpha \in \mathbb{K} $。

(i) 级数 $ \sum(a_k + b_k) $ 收敛，且

\[ \sum_{k=0}^{\infty}(a_{k}+b_{k})=\sum_{k=0}^{\infty}a_{k}+\sum_{k=0}^{\infty}b_{k}. \]

(ii) 级数 $ \sum(\alpha a_k) $ 收敛，且

\[ \sum_{k=0}^{\infty}(\alpha a_{k})=\alpha\sum_{k=0}^{\infty}a_{k}. \]

证明 对 $ n \in \mathbb{N} $，令 $ s_n := \sum_{k=0}^{n} a_k $ 与 $ t_n := \sum_{k=0}^{n} b_k $。由假设，存在 $ s, t \in E $，使得 $ s_n \to s $ 且 $ t_n \to t $。鉴于恒等式

\[ s_{n}+t_{n}=\sum_{k=0}^{n}(a_{k}+b_{k}),\quad\alpha s_{n}=\sum_{k=0}^{n}(\alpha a_{k}), \]

两个结论都由命题 2.2 与注 3.1(c) 可得。 ■

##### 收敛判别法

巴拿赫空间中的序列收敛当且仅当它是柯西序列这一事实，对级数而言取如下形式。

7.6 定理（柯西准则） 对于巴拿赫空间 $ (E, |\cdot|) $ 中的级数 $ \sum x_k $，下列命题等价：

(i) $ \sum x_{k} $ 收敛。

(ii) 对每个 $ \varepsilon > 0 $，存在某个 $ N \in \mathbb{N} $，使得

\[ \Big|\sum_{k=n+1}^{m}x_{k}\Big|<\varepsilon\;,\qquad m>n\geq N\;. \]

证明 显然，对所有 $m > n$ 有 $s_m - s_n = \sum_{k=n+1}^m x_k$。因此 $(s_n)$ 是 $E$ 中的柯西序列当且仅当 (ii) 为真。于是结论由 $E$ 的完备性可得。■

对于项非负的实级数，我们有如下简单的收敛判别法：

7.7 定理 令 $ \sum x_k $ 为 $ \mathbb{R} $ 中的级数，使得对所有 $ k \in \mathbb{N} $ 有 $ x_k \geq 0 $。则 $ \sum x_k $ 收敛当且仅当 $ (s_n) $ 有界。此时，该级数的值为 $ \sup_{n \in \mathbb{N}} s_n $。

证明 由于各项非负，部分和序列 $ (s_{n}) $ 是递增的。由定理 4.1，$ (s_{n}) $ 收敛当且仅当 $ (s_{n}) $ 有界。最后的结论同样来自该定理。■

若 $ \sum x_k $ 是 $ \mathbb{R} $ 中项非负的级数，且其部分和序列有界，我们记 $ \sum x_k < \infty $。使用这一记号，定理 7.7 的第一个结论可以表示为

\[ \sum x_{k}<\infty\ \Longleftrightarrow\ \sum x_{k}\text{ 收敛}. \]

##### 交错级数

若对所有 $k$，$y_k$ 与 $y_{k+1}$ 符号相反，则称 $ \mathbb{R} $ 中的级数 $\sum y_k$ 为 $\text{交错}$ 的。交错级数总可以写成 $\pm\sum(-1)^k x_k$ 的形式，其中 $x_k \geq 0$。

7.8 定理（莱布尼茨准则） 令 $ (x_k) $ 为项非负的递减零序列。则交错级数 $ \sum(-1)^k x_k $ 在 $ \mathbb{R} $ 中收敛。

证明 由于不等式

\[ s_{2n+2}-s_{2n}=-x_{2n+1}+x_{2n+2}\leq0~,\qquad n\in\mathbb{N}~, \]

偶下标的部分和序列 $ (s_{2n})_{n\in\mathbb{N}} $ 是递减的。类似地，

\[ s_{2n+3}-s_{2n+1}=x_{2n+2}-x_{2n+3}\ge0~,\qquad n\in\mathbb{N}~, \]

因此 $ (s_{2n+1})_{n\in\mathbb{N}} $ 是递增的。此外，$ s_{2n+1}\leq s_{2n} $，所以

\[ s_{2n+1}\leq s_{0}\quad\text{ 且 }\quad s_{2n}\geq0\;,\qquad n\in\mathbb{N}\;. \]

由定理 4.1，存在实数 $s$ 与 $t$，使得当 $n \to \infty$ 时 $s_{2n} \to s$ 且 $s_{2n+1} \to t$。我们的目标是证明部分和序列 $(s_n)$ 收敛。首先注意到

\[ t-s=\lim_{n\to\infty}(s_{2n+1}-s_{2n})=\lim_{n\to\infty}x_{2n+1}=0. \]

因此，对每个 $ \varepsilon > 0 $，存在 $ N_1, N_2 \in \mathbb{N} $，使得

\[ |s_{2n}-s|<\varepsilon\;,\quad2n\geq N_{1}\;,\qquad\text{ 且 }\qquad|s_{2n+1}-s|<\varepsilon\;,\quad2n+1\geq N_{2}\;. \]

于是对所有 $ n \geq \max\{N_1, N_2\} $ 有 $ |s_n - s| < \varepsilon $，这就证明了结论。

7.9 推论 沿用定理 7.8 的记号，我们有 $ |s - s_n| \leq x_{n+1} $，$ n \in \mathbb{N} $。

证明 在定理 7.8 的证明中，我们已经证明了

\[ \inf_{n\in\mathbb{N}}s_{2n}=s=\sup_{n\in\mathbb{N}}s_{2n+1}. \]

这蕴含不等式

\[ 0\leq s_{2n}-s\leq s_{2n}-s_{2n+1}=x_{2n+1},\qquad n\in\mathbb{N}, \]

以及

\[ 0\leq s-s_{2n-1}\leq s_{2n}-s_{2n-1}=x_{2n},\qquad n\in\mathbb{N}. \]

将 (7.1) 与 (7.2) 结合起来可得 $ |s - s_n| \leq x_{n+1} $。 ■

推论 7.9 表明，用交错级数的第 $ n $ 个部分和来替代其值时所产生的误差，至多等于‘被省略的第一项’的绝对值。此外，(7.1) 与 (7.2) 表明，第 $ n $ 个部分和交替地小于和大于该级数的值。

7.10 例 由莱布尼茨准则，交错级数

(a) $ \sum_{k=1}^{\infty}\frac{(-1)^{k+1}}{k}=1-\frac{1}{2}+\frac{1}{3}-\frac{1}{4}+\cdots $（交错调和级数）

(b) $ \sum_{k=0}^{\infty}\frac{(-1)^{k}}{2k+1}=1-\frac{1}{3}+\frac{1}{5}-\frac{1}{7}+\cdots $

收敛。它们的值分别为 $ \log 2 $ 与 $ \pi/4 $（见应用 IV.3.9(d) 与习题 V.3.11）。 $ \blacksquare $

##### 实数的十进制、二进制及其他表示

我们关于级数已证明的结论，可用来论证用十进制展开表示实数。例如，有理数

\[ 24+\frac{1}{10^{1}}+\frac{3}{10^{2}}+\frac{0}{10^{3}}+\frac{7}{10^{4}}+\frac{1}{10^{5}} \]

有唯一的十进制表示：

\[ 24.13071:=2\cdot10^{1}+4\cdot10^{0}+\frac{1}{10^{1}}+\frac{3}{10^{2}}+\frac{0}{10^{3}}+\frac{7}{10^{4}}+\frac{1}{10^{5}}. \]

我们也想赋予‘无限十进制展开’以意义，例如

\[ 7.52341043\ldots \]

当指定了一个确定该展开的所有后续数字的算法时。下面的例子表明，这类表示需要谨慎对待：

\[ 3.999\ldots=3+\sum_{k=1}^{\infty}\frac{9}{10^{k}}=3+\frac{9}{10}\sum_{k=0}^{\infty}10^{-k}=3+\frac{9}{10}\cdot\frac{1}{1-\frac{1}{10}}=4. \]

在上述表示中选取数字 10 作为‘基底’，也许有某种历史的、文化的或实用的理由，但它并不源于任何数学上的考虑。我们也可以考虑，例如，二进制表示，如

\[ 101.10010\ldots=1\cdot2^{2}+0\cdot2^{1}+1\cdot2^{0}+1\cdot2^{-1}+0\cdot2^{-2}+0\cdot2^{-3}+1\cdot2^{-4}+0\cdot2^{-5}+\cdots \]

下面我们把这一初步讨论表述得更精确。对于实数 $ x \in \mathbb{R} $，令 $ \lfloor x \rfloor := \max\{k \in \mathbb{Z} ; k \leq x\} $ 表示小于或等于 $ x $ 的最大整数。由良序原理 I.5.5 可以简单地推出，下取整函数

\[ \left\lfloor\cdot\right\rfloor:\mathbb{R}\to\mathbb{Z}\;,\quad x\mapsto\left\lfloor x\right\rfloor, \]

是有良好定义的。

固定某个 $g \in \mathbb{N}$，其中 $g \geq 2$。我们将集合 $\{0,1,\ldots,g-1\}$ 的 $g$ 个元素称为 $\text{底}\,g$ 数字。因此，$\{0,1\}$ 是二进制（底 2）数字的集合，$\{0,1,2\}$ 是三进制（底 3）数字的集合，$\{0,1,2,3,4,5,6,7,8,9\}$ 是十进制（底 10）数字的集合。对于底 $g$ 数字的任何序列 $(x_k)_{k\in\mathbb{N}^\times}$，即对 $x_k\in\{0,1,\ldots,g-1\}$，$k\in\mathbb{N}^\times$，我们有不等式

\[ 0\leq\sum_{k=1}^{n}x_{k}g^{-k}\leq(g-1)\sum_{k=1}^{\infty}g^{-k}=1,\qquad n\in\mathbb{N}^{\times}. \]

由定理 7.7，级数 $ \sum x_k g^{-k} $ 收敛，且其值 $ x $ 满足 $ 0 \leq x \leq 1 $。该级数称为实数 $ x \in [0,1] $ 的**底** $ g $ **展开**。在特殊情形 $ g = 2 $、$ g = 3 $ 与 $ g = 10 $ 下，该级数分别称为 $ x $ 的**二进制**展开、**三进制**展开与**十进制**展开。

通常将数 $ x \in [0,1] $ 的底 $ g $ 展开写成如下形式

\[ 0.x_{1}x_{2}x_{3}x_{4}\ldots:=\sum_{k=1}^{\infty}x_{k}g^{-k}, \]

假定 $g$ 的选取是明确的。容易看出，任何 $m \in \mathbb{N}$ 都有如下形式的唯一表示\footnote{见习题 I.5.11。为得到唯一性，我们必须忽略前导零。例如，我们把 $0\,3^3+0\,3^2+1\,3^1+2\,3^0$ 与 $1\,3^1+2\,3^0$ 视为 5 的相同三进制表示。}

\[ m=\sum_{j=0}^{\ell}y_{j}g^{j},\qquad y_{k}\in\{0,1,\ldots,g-1\},\quad0\leq k\leq\ell. \]

则

\[ x=m+\sum_{k=1}^{\infty}x_{k}g^{-k}=\sum_{j=0}^{\ell}y_{j}g^{j}+\sum_{k=1}^{\infty}x_{k}g^{-k} \]

是一个非负实数。该等式右边称为 $x$ 的底 $ g $ 展开，记为

\[ y_{\ell}y_{\ell-1}\cdots y_{0}.x_{1}x_{2}x_{3}\cdots \]

（若 $g$ 是明确的）。类似地，

\[ -y_{\ell}y_{\ell-1}\ldots y_{0}.x_{1}x_{2}x_{3}\ldots \]

称为 $-x$ 的底 $g$ 展开。最后，若存在 $\ell \in \mathbb{N}$ 与 $p \in \mathbb{N}^\times$，使得对所有 $k \geq \ell$ 有 $x_{k+p} = x_k$，则称底 $g$ 展开是周期的。

7.11 定理 设 $ g \geq 2 $。则每个实数 $ x $ 都有底 $ g $ 展开。若排除满足对几乎所有 $ k \in \mathbb{N} $ 都有 $ x_k = g - 1 $ 的展开，则该展开唯一。此外，$ x $ 是有理数当且仅当其底 $ g $ 展开是周期的。

证明 (a) 只需考虑 $ x \geq 0 $ 的情形。此时存在某个 $ r \in [0,1) $，使得 $ x = \lfloor x \rfloor + r $。鉴于上面的说明，事实上只需考虑 $x$ 位于区间 $ [0,1) $ 中的情形。

(b) 为了证明 $x \in [0,1)$ 的底 $g$ 展开的存在性，我们按如下方式递归地定义一个序列 $x_1, x_2, \ldots$：

\[ x_{1}:=\lfloor g x\rfloor~,\quad x_{k}:=\Big\lfloor g^{k}\Big(x-\sum_{j=1}^{k-1}x_{j} g^{-j}\Big)\Big\rfloor~,\qquad k\geq2~. \]

当然，由构造可知 $ x_k \in \mathbb{N} $。我们来证明这些 $ x_k \in \mathbb{N} $ 事实上是底 $ g $ 数字，即

\[ x_{k}\in\{0,1,\ldots,g-1\}~,\qquad k\in\mathbb{N}^{\times}~. \]

我们首先写出

\[ \begin{aligned}g^{k}\Big(x-\sum_{j=1}^{k-1}x_{j} g^{-j}\Big)&=g^{k} x-x_{1}g^{k-1}-x_{2}g^{k-2}-\cdots-x_{k-2}g^{2}-x_{k-1}g\\&=g^{k-2}\big(g(gx-x_{1})-x_{2}\big)-\cdots-x_{k-2}g^{2}-x_{k-1}g\\&=g\Big(\cdots g\big(g(gx-x_{1})-x_{2}\big)-\cdots-x_{k-1}\Big)\\ \end{aligned} \]

（见注 I.8.14(f)）。令 $ r_0 := x $ 且对所有 $ k \in \mathbb{N}^\times $ 令 $ r_k := gr_{k-1} - x_k $。则由 (7.6) 我们得到

\[ g^{k}\Big(x-\sum_{j=1}^{k-1}x_{j}g^{-j}\Big)=g r_{k-1}~,\qquad k\in\mathbb{N}^{\times}~. \]

于是对所有 $ k \in \mathbb{N}^\times $ 有 $ x_k = \lfloor gr_{k-1} \rfloor $。由于

\[ r_{k}=g r_{k-1}-x_{k}=g r_{k-1}-\lfloor g r_{k-1}\rfloor\in[0,1)~,\qquad k\in\mathbb{N}~, \]

这就证明了这些 $ x_k \in \mathbb{N} $ 是底 $ g $ 数字。

我们的下一个目标是证明级数 $ \sum x_kg^{-k} $ 的值为 $ x $。事实上，由 $ x_k = \lfloor gr_{k-1} \rfloor $ 与 (7.7) 可得

\[ 0\leq x_{k}\leq g r_{k-1}=g^{k}\Big(x-\sum_{j=1}^{k-1}x_{j}g^{-j}\Big),\qquad k\in\mathbb{N}^{\times}, \]

从而

\[ x-\sum_{j=1}^{k-1}x_{j}g^{-j}\geq0,\qquad k\geq2. \]

另一方面，我们有 $ r_k = g^k \big( x - \sum_{j=1}^{k-1} x_j g^{-j} \big) - x_k < 1 $，所以

\[ x-\sum_{j=1}^{k-1}x_{j}g^{-j}<g^{-k}(1+x_{k}),\qquad k\geq2. \]

将 (7.8) 与 (7.9) 结合起来，我们有

\[ 0\leq x-\sum_{j=1}^{k-1}x_{j}g^{-j}<g^{-k+1},\qquad k\geq2. \]

由于 $ \lim_{k \to \infty} g^{-k+1} = 0 $，这蕴含 $ x = \sum_{k=1}^{\infty} x_k g^{-k} $\footnote{此外还应验证，由这个算法构造出的级数都不满足条件：对几乎所有 $k$ 有 $x_k=g-1$。}

(c) 为证明唯一性，我们假设存在 $ x_k, y_k \in \{0,1,\ldots,g-1\} $，$ k \in \mathbb{N}^\times $，以及某个 $ k_0 \in \mathbb{N}^\times $，使得

\[ \sum_{k=1}^{\infty}x_{k}g^{-k}=\sum_{k=1}^{\infty}y_{k}g^{-k}, \]

其中 $ x_{k_0} \neq y_{k_0} $ 且对 $ 1 \leq k \leq k_0 - 1 $ 有 $ x_k = y_k $。这蕴含

\[ (x_{k_{0}}-y_{k_{0}})g^{-k_{0}}=\sum_{k=k_{0}+1}^{\infty}(y_{k}-x_{k})g^{-k}. \]

不失一般性，我们可以假设 $ x_{k_0} > y_{k_0} $，于是 $ 1 \leq x_{k_0} - y_{k_0} $。此外，对所有 $ x_k $ 与 $ y_k $ 我们有 $ y_k - x_k \leq g - 1 $，并且由于我们已经排除了

几乎所有底 $g$ 数字都等于 $g-1$ 的情形，存在某个 $k_1 > k_0$，使得 $y_{k_1} - x_{k_1} < g-1$。于是，由 (7.10)，我们得到不等式

\[ g^{-k_{0}}\leq(x_{k_{0}}-y_{k_{0}})g^{-k_{0}}<(g-1)\sum_{k=k_{0}+1}^{\infty}g^{-k}=g^{-k_{0}}, \]

这显然不可能。因此我们证明了唯一性结论。

(d) 令 $ \sum_{k=1}^{\infty} x_k g^{-k} $ 为 $ x \in [0,1) $ 的周期底 $ g $ 展开。则存在 $ \ell \in \mathbb{N} $ 与 $ p \in \mathbb{N}^\times $，使得对所有 $ k \geq \ell $ 有 $ x_{k+p} = x_k $。只需证明 $ x' := \sum_{k=\ell}^{\infty} x_k g^{-k} $ 是有理数。令

\[ x_{0}:=\sum_{k=\ell}^{\ell+p-1}x_{k}g^{-k}\in\mathbb{Q}. \]

由于对所有 $ k \geq \ell $ 有 $ x_{k+p} = x_k $，我们有

\[ \begin{align*}g^{p}x^{\prime}-x^{\prime}&=g^{p}x_{0}+\sum_{k=\ell+p}^{\infty}x_{k}g^{-k+p}-\sum_{k=\ell}^{\infty}x_{k}g^{-k}\\&=g^{p}x_{0}+\sum_{k=\ell}^{\infty}x_{k+p}g^{-k}-\sum_{k=\ell}^{\infty}x_{k}g^{-k}=g^{p}x_{0}.\end{align*} \]

于是 $ x' = g^p x_0 (g^p - 1)^{-1} $ 是有理数。

现在令 $ x \in [0,1) $ 为有理数，即 $ x = p/q $，其中 $ p $ 与 $ q $ 是满足 $ p < q $ 的正自然数。令 $ \sum_{k=1}^{\infty} x_k g^{-k} $ 为 $ x $ 的底 $ g $ 展开。同 (b) 中一样，令 $ r_0 := x $ 且对所有 $ k \in \mathbb{N}^\times $ 令 $ r_k := gr_{k-1} - x_k $。

我们断言，对每个 $ k \in \mathbb{N} $，

\[ \text{存在某个 }s_{k}\in\{0,1,\ldots,q-1\}\text{ 使得 }r_{k}=s_{k}/q\;. \]

对 $k=0$，该断言取 $s_0:=p$ 时为真。假设 (7.11) 对某个 $k\in\mathbb{N}$ 为真，即 $r_k=s_k/q$，其中 $0\leq s_k\leq q-1$。由于 $x_{k+1}=\lfloor gr_k\rfloor=\lfloor gs_k/q\rfloor$，存在某个 $s_{k+1}\in\{0,1,\ldots,q-1\}$，使得 $gs_k=qx_{k+1}+s_{k+1}$，于是

\[ r_{k+1}=g r_{k}-x_{k+1}=\frac{g s_{k}}{q}-x_{k+1}=\frac{s_{k+1}}{q}. \]

因此 (7.11) 对 $ k+1 $ 为真，由归纳法，它对所有 $ k $ 为真。由于对 $ s_k $ 而言，只有 $ q $ 个值 $ 0,1,\ldots,q-1 $ 可用，存在某个 $ k_0\in\{1,\ldots,q-1\} $ 与 $ j_0\in\{k_0,k_0+1,\ldots,k_0+q\} $，使得 $ s_{j_0}=s_{k_0} $。于是 $ r_{j_0+1}=r_{k_0} $，这蕴含对所有 $ 1\leq i\leq j_0-k_0 $ 有 $ r_{j_0+i}=r_{k_0+i} $。从而，由 $ x_{k+1}=\lfloor gr_k\rfloor $（$ k\in\mathbb{N}^\times $）可得，$ x $ 的底 $ g $ 展开是周期的。

##### $\mathbb{R}$ 的不可数性

借助定理 7.11，现在可以很容易地证明 $ \mathbb{R} $ 是不可数的。

7.12 定理 实数集 $ \mathbb{R} $ 是不可数的。

证明 假设 $\mathbb{R}$ 可数。子集 $\{1/n; n \geq 2\}$ $\subseteq (0,1)$ 是可数无限的，因此由例 I.6.1(a) 与命题 I.6.7，区间 $(0,1)$ 也是可数无限的。于是对某个序列 $(x_n)_{n \in \mathbb{N}}$ 有 $(0,1) = \{x_n; n \in \mathbb{N}\}$。由定理 7.11，每个 $x_n \in (0,1)$ 都有唯一的三进制展开，形如 $x_n = 0.x_{n,1}x_{n,2} \ldots$，其中对无穷多个 $k \in \mathbb{N}^\times$，$x_{n,k} \in \{0,1,2\}$ 不等于 2。特别地，由命题 I.6.7，集合

\[ X:=\{0.x_{n,1}x_{n,2}\ldots\;;\;x_{n,k}\neq2,\;n\in\mathbb{N},\;k\in\mathbb{N}^{\times}\} \]

是可数的。由于 $X$ 显然与 $\{0,1\}^{\mathbb{N}}$ 等势，我们已经证明了 $\{0,1\}^{\mathbb{N}}$ 是可数的。这与命题 I.6.11 矛盾。 ■

##### 习题

1 确定下列级数的值：

\[ \mathrm{(a)}\sum\frac{(-1)^{k}}{2^{k}},\quad\mathrm{(b)}\sum\frac{1}{4k^{2}-1}. \]

2 确定下列级数收敛还是发散：

\[ \mathrm{(a)}\sum\frac{\sqrt{k+1}-\sqrt{k}}{\sqrt{k}},\mathrm{(b)}\sum(-1)^{k}\big(\sqrt{k+1}-\sqrt{k}\big),\mathrm{(c)}\sum\frac{k!}{k^{k}},\mathrm{(d)}\sum\frac{(k+1)^{k-1}}{(-k)^{k}} \]

3 一只无限小的蜗牛以 5 厘米/小时的恒定速度沿着一条 1 米长的橡皮筋爬行。在第一个小时以及之后每个小时的末尾，橡皮筋都被均匀地再拉长 1 米。若蜗牛从橡皮筋的左端出发，它能否在有限时间内到达右端？

4 令 $ \sum a_k $ 为巴拿赫空间 $ E $ 中的收敛级数。证明由 $ r_n := \sum_{k=n}^{\infty} a_k $ 定义的序列 $ (r_n) $ 是零序列。

5 令 $ (x_k) $ 为递减序列，使得 $ \sum x_k $ 收敛。证明 $ (kx_k) $ 是零序列。

6 令 $ (x_{k}) $ 为 $ [0,\infty) $ 中的序列。证明

\[ \sum x_{k}<\infty\Longleftrightarrow\sum\frac{x_{k}}{1+x_{k}}<\infty. \]

7 令 $ (d_k) $ 为 $ [0,\infty) $ 中的序列，使得 $ \sum_{k=0}^{\infty}d_k=\infty $。

(a) 关于下列级数的收敛性，能说些什么？

\[ \mathrm{(i)}\sum\frac{d_{k}}{1+d_{k}}~,\quad\mathrm{(ii)}\sum\frac{d_{k}}{1+k^{2}d_{k}}~. \]

在两种情形下，关于序列 $ (d_{k}) $ 的假设都是必需的吗？

(b) 通过例子说明，级数

\[ (\mathrm{i})\sum\frac{d_{k}}{1+kd_{k}},\quad(\mathrm{ii})\sum\frac{d_{k}}{1+d_{k}^{2}} \]

可以既收敛又发散。

（提示：(a) 分别考虑 $ \overline{\lim} d_k < \infty $ 与 $ \overline{\lim} d_k = \infty $ 的情形。）

8 令 $ s := \sum_{k=1}^{\infty} k^{-2} $。证明

\[ 1-\frac{1}{2^{2}}-\frac{1}{4^{2}}+\frac{1}{5^{2}}+\frac{1}{7^{2}}-\frac{1}{8^{2}}-\frac{1}{10^{2}}++--\cdots=\frac{4}{9}s. \]

9 对 $ (j, k) \in \mathbb{N} \times \mathbb{N} $，令

\[ x_{j k}:=\left\{\begin{array}{c l}{1/(j^{2}-k^{2}),}&{\quad j\neq k\;,}\\ {0,}&{\quad j=k\;.}\\ \end{array}\right. \]

对每个 $ j \in \mathbb{N}^\times $，确定级数 $ \sum_{k=0}^{\infty} x_{jk} $ 的值。（提示：对 $ x_{jk} $ 作适当的因式分解。）

10 若系数 $ c_k $ 是整数，使得对所有 $ k \in \mathbb{N}^\times $ 有 $ 0 \leq c_{k+1} \leq k $，则级数 $ \sum c_k/k! $ 称为康托尔级数。

证明下列结论：

(a) 每个非负实数 $x$ 都可以表示为一个康托尔级数的值，即存在一个康托尔级数，使得 $x = \sum_{k=1}^{\infty} c_k / k!$。若几乎所有的 $c_k$ 都不等于 $k-1$，则该表示唯一。

(b) 证明

\[ \sum_{k=n+1}^{\infty}\frac{k-1}{k!}=\frac{1}{n!},\qquad n\in\mathbb{N}. \]

(c) 令 $ x \in [0,1) $ 由康托尔级数 $ \sum c_k/k! $ 表示。则 $ x $ 是有理数\footnote{参见习题 4.7(b)。}当且仅当存在某个 $ k_0 \in \mathbb{N}^\times $，使得对所有 $ k \geq k_0 $ 有 $ c_k = 0 $。

11 证明柯西凝聚定理：若 $ (x_k) $ 是 $ [0,\infty) $ 中的递减序列，则 $ \sum x_k $ 收敛当且仅当 $ \sum 2^k x_{2^k} $ 收敛。

12 令 $ s \geq 0 $ 为有理数。证明级数 $ \sum_k k^{-s} $ 收敛当且仅当 $ s > 1 $。（提示：习题 11 与例 7.4。）

13 证明 (7.3) 的结论。

14 令

\[ x_{n}:=\left\{\begin{array}{c l}{n^{-1},}&{\quad n\text{ 为奇},}\\ {-n^{-2},}&{\quad n\text{ 为偶}.}\end{array}\right. \]

证明 $ \sum x_n $ 发散。莱布尼茨准则为何不适用于该级数？

15 令 $ (z_n) $ 为 $ (0, \infty) $ 中的序列，满足 $ \underline{\text{lim}} z_n = 0 $。证明存在 $ (0, \infty) $ 中的零序列 $ (x_n) $ 与 $ (y_n) $，使得

(a) $ \sum x_n < \infty $ 且 $ \varlimsup x_n / z_n = \infty $。

(b) $ \sum y_n = \infty $ 且 $ \underline{\text{lim}} $ $ y_n/z_n = 0 $。

特别地，对于任何收敛缓慢的零序列 $ (z_n) $，存在一个零序列 $ (x_n) $，它收敛得足够快，使得 $ \sum x_n < \infty $，但即便如此，它仍有一个子序列 $ (x_{n_k}) $ 比 $ (z_n) $ 的相应子序列 $ (z_{n_k}) $ 更缓慢地收敛于零。并且，对于任何收敛迅速的零序列 $ (z_n) $，存在一个零序列 $ (y_n) $，它收敛得足够慢，使得 $ \sum y_n = \infty $，但即便如此，它仍有一个子序列 $ (y_{n_k}) $ 比 $ (z_n) $ 的相应子序列 $ (z_{n_k}) $ 更迅速地收敛于零。

（提示：令 $ (z_n) $ 为 $ (0, \infty) $ 中的序列，使得 $ \underline{\text{lim}} z_n = 0 $

(a) 对每个 $ k \in \mathbb{N}^\times $，选取某个 $ n_k \in \mathbb{N} $，使得 $ z_{n_k} < k^{-3} $。现在对所有 $ k \in \mathbb{N} $ 令 $ x_{n_k} = k^{-2} $，其余情形令 $ x_n = n^{-2} $。

(b) 选取一个子序列 $ (z_{n_k}) $，使得 $ \lim_{k} z_{n_k} = 0 $。对所有 $ k \in \mathbb{N} $ 令 $ y_{n_k} = z_{n_k}^2 $，其余情形令 $ y_n = 1/n $。
