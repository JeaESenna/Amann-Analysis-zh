## 9 有理数

在前两节的代数考察之后，我们回到最初关于把自然数扩充为更大数系的问题。我们希望这样的扩充保持自然数通常的交换律、结合律与分配律。此外，元素的任意差与（几乎任意的）商都应当存在。鉴于注 8.1 与 8.7，这些所期望的性质刻画了域，因此更精确的目标是把 $ \mathbb{N} $“嵌入”一个域中，使得域运算限制到 $ \mathbb{N} $ 上时与定理 5.3 中所见的自然数的通常加法与乘法一致。由于 N 具有一个与运算 + 和 - 相容的全序，我们期待这种序结构也应当扩展到整个域。定理 5.3 表明，至少用自然数进行计算的法则与有序域中出现的法则并不矛盾。我们将在本节看到，我们的问题本质上只有唯一的答案。为此，我们首先把 N 嵌入整数环，然后再把这个环扩展为有理数域。

##### 整数

由定理 5.3 可见，$ \mathbb{N} = (\mathbb{N}, +, \cdot) $ “几乎”是一个有单位元的交换环。唯一缺少的性质是每个 $ n \in \mathbb{N} $ 都存在加法逆元 $ -n $。

设 $Z$ 是一个包含 $\mathbb{N}$ 的环，且 $Z$ 上的环运算限制到 $\mathbb{N}$ 上就是通常的运算。则对所有 $(m, n) \in \mathbb{N}^2$，差 $m - n$ 是 $Z$ 中一个定义明确的元素，并且

\[ m-n=m^{\prime}-n^{\prime}\Longleftrightarrow m+n^{\prime}=m^{\prime}+n~,\qquad(m^{\prime},n^{\prime})\in\mathbb{N}^{2}~. \]

对于两个这样的元素之和，我们有

\[ (m-n)+(m^{\prime}-n^{\prime})=(m+m^{\prime})-(n+n^{\prime})~, \]

而它们的积为

\[ (m-n)\cdot(m^{\prime}-n^{\prime})=(mm^{\prime}+nn^{\prime})-(mn^{\prime}+m^{\prime}n). \]

注意到每个方程右端括号中的加法与乘法可以完全在 $ \mathbb{N} $ 内进行。这一观察提示我们用 $ (9.2) $ 与 $ (9.3) $ 在 $ (m, n) \in \mathbb{N}^2 $ 上定义加法与乘法。这样做时我们不应忽视 $ (9.1) $，它表明两对不同的自然数可能对应于我们正在构造的环中的同一个元素。下面的定理表明这一策略是成功的。

9.1 定理 存在一个有单位元的最小整环（无零因子的交换环）$\mathbb{Z}$，使得 $\mathbb{N} \subseteq \mathbb{Z}$ 且 $\mathbb{Z}$ 上的环运算限制到 $\mathbb{N}$ 上就是通常的运算。这个环在同构意义下唯一，称为整数环。

证明 我们只概述证明中最重要的步骤，而把运算定义明确以及环公理 $ (R_1)-(R_3) $ 得到满足这些容易的验证留给读者。

在 $ \mathbb{N}^{2} $ 上由下式定义等价关系

\[ (m,n)\sim(m^{\prime},n^{\prime}):\Longleftrightarrow m+n^{\prime}=m^{\prime}+n, \]

并令 $ \mathbb{Z} := \mathbb{N}^2 / \sim $。由下式在 $ \mathbb{Z} $ 上定义加法与乘法

\[ [(m,n)]+[(m^{\prime},n^{\prime})]:=[(m+m^{\prime},n+n^{\prime})] \]

以及

\[ [(m,n)]\cdot[(m^{\prime},n^{\prime})]:=[(m m^{\prime}+n n^{\prime},m n^{\prime}+m^{\prime}n)]~. \]

定理 5.3 中 $ \mathbb{N} $ 的算术法则蕴含 $ \mathbb{Z} := (\mathbb{Z}, +, \cdot) $ 是一个无零因子的交换环。$ \mathbb{Z} $ 的零元与单位元分别是等价类 $ [(0, 0)] $ 与 $ [(1, 0)] $。

函数

\[ \mathbb{N}\to\mathbb{Z}~,\quad m\mapsto\left[(m,0)\right] \]

是单射，且与 $ \mathbb{N} $ 和 $ \mathbb{Z} $ 中的加法与乘法运算相容。因此，我们可以把 $ \mathbb{N} $ 与它在 (9.4) 下的像等同起来。于是 $ \mathbb{N} \subseteq \mathbb{Z} $，且 $ \mathbb{Z} $ 上的运算限制到 $ \mathbb{N} $ 上就是通常的运算。

现在设 $ R \supseteq \mathbb{N} $ 是某个有单位元且无零因子的交换环，使得 $ R $ 上的运算限制到 $ \mathbb{N} $ 上就是通常的运算。由于按构造 $ \mathbb{Z} $ 显然是最小的，故存在唯一的单射同态 $ \varphi: \mathbb{Z} \to R $，满足 $ \varphi | \mathbb{N} = (\mathbb{N} \text{ 到 } R \text{ 的包含映射}) $。这蕴含了所说的同构意义下的唯一性。

下文我们不再区分 $ \mathbb{Z} $ 的不同同构副本，而说（唯一的）$ \mathbf{整数环} $。（另一种做法：一次性固定 $ \mathbb{Z} $ 的同构类的一个特定代表，并称之为 $ \mathbf{整数环} $。）$ \mathbb{Z} $ 的元素是 $ \mathbf{整数} $，而 $ -\mathbb{N}^\times := \{-n; n \in \mathbb{N}^\times\} $ 是 $ \mathbf{负整数} $ 的集合。显然 $ \mathbb{Z} = \mathbb{N}^\times \cup \{0\} \cup (-\mathbb{N}^\times) = \mathbb{N} \cup (-\mathbb{N}^\times) $ 是不交并。

##### 有理数

在环 $ \mathbb{Z} $ 中，我们现在可以作任意的差 $ m - n $，但一般来说，两个整数的商 $ m/n $ 仍未定义，即使 $ n \neq 0 $。例如，方程 $ 2x = 1 $ 在 $ \mathbb{Z} $ 中无解，因为若 $ 2(m - n) = 1 $ 且 $ m, n \in \mathbb{N} $，则 $ 2m = 2n + 1 $，这与命题 5.4 矛盾。为克服这一“缺陷”，我们将构造一个包含 $ \mathbb{Z} $ 作为子环的域 $ K $。当然，我们取 $ K $ “尽可能小”。

按照把 $ \mathbb{N} $ 扩充到 $ \mathbb{Z} $ 时确立的模式，我们首先假设 $ K $ 是这样一个域。于是，对于 $ a, c \in \mathbb{Z} $ 与 $ b, d \in \mathbb{Z}^\times := \mathbb{Z} \setminus \{0\} $，我们有注 8.7(d) 中的关系 (i)。这提示我们先把“分数”引入为整数对，并在这些整数对上定义运算，使得注 8.7(d) 的法则成立。下面的定理表明这一想法是可行的。

9.2 定理 在同构意义下存在唯一的最小域 $ \mathbb{Q} $，它包含 $ \mathbb{Z} $ 作为子环。

证明 我们再次只给出证明中最重要的步骤，而把验证留给读者。

在 $ \mathbb{Z} \times \mathbb{Z}^\times $ 上由下式定义等价关系

\[ (a,b)\sim(a^{\prime},b^{\prime}):\Longleftrightarrow a b^{\prime}=a^{\prime}b~, \]

并令 $ \mathbb{Q} := (\mathbb{Z} \times \mathbb{Z}^\times) / \sim $。由下式在 $ \mathbb{Q} $ 上定义加法与乘法

\[ [(a,b)]+\big[(a^{\prime},b^{\prime})\big]:=\big[(a b^{\prime}+a^{\prime}b,b b^{\prime})\big] \]

以及

\[ \left[(a,b)\right]\cdot\left[(a^{\prime},b^{\prime})\right]:=\left[(aa^{\prime},bb^{\prime})\right]. \]

在这些运算下，$ \mathbb{Q} := (\mathbb{Q}, +, \cdot) $ 是一个域。

函数

\[ \mathbb{Z}\to\mathbb{Q},\quad z\mapsto\left[(z,1)\right] \]

是单射环同态，因此我们可以把 $ \mathbb{Z} $ 与它在 $ \mathbb{Q} $ 中 (9.5) 下的像等同起来。于是 $ \mathbb{Z} $ 是 $ \mathbb{Q} $ 的子环。

设 $ Q $ 是一个包含 $ \mathbb{Z} $ 作为子环的域。由构造，$ \mathbb{Q} $ 是最小的，因此存在唯一的单射同态 $ \varphi: \mathbb{Q} \to Q $，使得 $ \varphi | \mathbb{Z} = (\mathbb{Z} \text{ 到 } Q \text{ 的包含映射}) $。这蕴含了所说的 $ \mathbb{Q} $ 在同构意义下的唯一性。

$ \mathbb{Q} $ 的元素称为有理数。（同样，我们不区分 $ \mathbb{Q} $ 的同构副本。）

9.3 注 (a) 不难看出

\[ r\in\mathbb{Q}\Longleftrightarrow\exists\left(p,q\right)\in\mathbb{Z}\times\mathbb{N}^{\times}\text{ 使得 }r=p/q\;. \]

由命题 5.5，$ \mathbb{N} $ 是良序的，因此对于固定的 $ r \in \mathbb{Q} $，集合

\[ \left\{q\in\mathbb{N}^{\times}\;;\;\exists p\in\mathbb{Z}\text{ 使得 }\frac{p}{q}=r\right\} \]

有唯一的最小元 $ q_0 := q_0(r) $。令 $ p_0 := p_0(r) := r q_0(r) $，我们得到 $ r $ 的唯一最简表示 $ r = p_0/q_0 $。

(b) 在定理 9.2 中把 $ \mathbb{Q} $ 构造为 $ \mathbb{Z} $ 的“扩域”时，并没有用到 $ \mathbb{Z} $ 的元素是“数”这一事实。所需要的只是 $ \mathbb{Z} $ 是一个整环。因此这个证明表明，任何整环 R 都是唯一（同构意义下）最小域 Q 的子环。这个域称为 R 的商域。

(c) 设 $K$ 是一个域。则多项式环 $K[X]$ 是整环（见习题 8.3）。相应的商域 $K(X)$ 称为 $K$ 上有理函数域。因此 $K$ 上的有理函数是 $K$ 上两个多项式的商，

\[ r=p/q~,\qquad p,q\in K[X]~,\quad q\neq0~, \]

其条件是：若 $ p', q' \in K[X] $，则当 $ pq' = p'q $ 时 $ p'/q' = p/q = r $。■

9.4 命题 $ \mathbb{Z} $ 与 $ \mathbb{Q} $ 都是可数无限的。

证明 由于 $ \mathbb{N} \subseteq \mathbb{Z} \subseteq \mathbb{Q} $，例 6.1(a) 表明 $ \mathbb{Z} $ 与 $ \mathbb{Q} $ 都是无限的。不难看出

\[ \varphi\colon\mathbb{N}\to\mathbb{Z}\;,\quad\varphi(n):=\left\{\begin{array}{r l}{n/2\;,}&{\quad n\text{ 为偶}\;,}\\ {-(n+1)/2\;,}&{\quad n\text{ 为奇}\;,}\end{array}\right. \]

是双射，因此 $\mathbb{Z}$ 是可数的。鉴于命题 6.9，$\mathbb{Z} \times \mathbb{N}^\times$ 也是可数的。像注 9.3(a) 那样把 $\mathbb{Q}$ 的每个元素表示为最简形式，可以看出存在从 $\mathbb{Q}$ 到 $\mathbb{Z} \times \mathbb{N}^\times$ 的某个子集的双射。于是由命题 6.7 可得 $\mathbb{Q}$ 是可数的。

我们用下式在 $ \mathbb{Q} $ 上定义一个序

\[ \frac{m}{n}\leq\frac{m^{\prime}}{n^{\prime}}:\Leftrightarrow m^{\prime}n-m n^{\prime}\in\mathbb{N},\qquad m,m^{\prime}\in\mathbb{Z},\quad n,n^{\prime}\in\mathbb{N}^{\times}. \]

容易验证 $ \leq $ 是定义明确的。

9.5 定理 $\mathbb{Q}:=(\mathbb{Q},\leq)$ 是有序域，且 $\mathbb{Q}$ 上的序限制到 $\mathbb{N}$ 上就是通常的序。

证明 简单的验证留作习题。■

尽管 $\mathbb{Z}$ 不是域，$\mathbb{Q}$ 上的序仍限制为 $\mathbb{Z}$ 上的一个全序，命题 8.9(i)–(vii) 对此成立。与 $\mathbb{N}$ 不同，$\mathbb{Z}$ 与 $\mathbb{Q}$ 关于 $\leq$ 都不是良序的。\footnote{然而，可以在 $\mathbb Q$ 上构造另一个序 $\prec$，使得 $(\mathbb Q,\prec)$ 是良序的。见习题 9。}例如，$\mathbb{Z}$、偶数集

\[ 2\mathbb{Z}=\left\{2n\;;\;n\in\mathbb{Z}\right\}\;, \]

以及奇数集

\[ 2\mathbb{Z}+1=\left\{2n+1;n\in\mathbb{Z}\right\} \]

都没有最小元——皮亚诺公理、定理 5.3(vii) 与命题 8.9(iv) 清楚地说明了这一事实。

##### 多项式的有理零点

通过域 $ \mathbb{Q} $ 的构造，我们找到了一个可以无限制地使用熟悉的中学算术的数系。特别地，在 $ \mathbb{Q} $ 中我们现在可以（唯一地）解任何形如 $ ax = b $ 的方程，其中 $ a, b \in \mathbb{Q} $ 任意且 $ a \neq 0 $。

那么形如 $ x^n = b $ 的方程的解又如何呢，其中 $ b \in \mathbb{Q} $ 且 $ n \in \mathbb{N}^\times $？这里我们可以证明一个一般性结果，它在某种意义上表明这类方程的解很少。

9.6 命题 形如

\[ f=X^{n}+a_{n-1}X^{n-1}+\cdots+a_{1}X+a_{0}\in\mathbb{Z}[X] \]

的多项式的任何有理零点都是整数。

证明 设 $ x \in \mathbb{Q} \setminus \mathbb{Z} $ 是上述多项式的零点。把 $ x = p/q $ 写成最简形式。因为 $ x \notin \mathbb{Z} $，所以 $ p \in \mathbb{Z}^\times $ 且 $ q > 1 $。陈述 $ f(p/q) = 0 $ 等价于

\[ p^{n}=-q\sum_{j=0}^{n-1}a_{j} p^{j} q^{n-1-j}. \]

因为 $q>1$，所以存在素数 $r$ 使 $r|q$。于是 $r$ 也整除 $p^n$，从而也整除 $p$（见习题 5.7）。因此，$p':=p/r$ 与 $q':=q/r$ 都是整数，且 $p'/q'=p/q=x$。由于 $p' \neq 0$ 且 $q'<q$，这与 $x=p/q$ 是最简形式的假设矛盾。■

9.7 推论 设 $ n \in \mathbb{N}^\times $ 且 $ a \in \mathbb{Z} $。若方程 $ x^n = a $ 在 $ \mathbb{Q} $ 中有解，则所有这些解都是整数。

##### 平方根

现在我们考虑二次方程 $ x^2 = a $ 的特殊情形，不只是在 $ \mathbb{Q} $ 中，而是在任意有序域 K 中。

9.8 引理 设 $K$ 是有序域且 $a \in K^\times$。若方程 $x^2 = a$ 有解，则 $a > 0$。若 $b \in K$ 是解，则该方程恰有两个解，即 $b$ 与 $-b$。

证明 第一个断言是清楚的，因为任何解 $b$ 都非零，从而由命题 8.9(vii) 得 $a = b^2 > 0$。由于 $(-b)^2 = b^2$，若 $b$ 是解，则 $-b$ 也是解。由命题 8.9(iv)，$b = -b$ 将蕴含 $b = a = 0$，所以 $b$ 与 $-b$ 是两个不同的解。由推论 8.18，不可能存在更多的解。■

设 $K$ 是有序域，且 $a \in K$ 满足 $a > 0$。若方程 $x^2 = a$ 在 $K$ 中有解，则由引理 9.8，它恰有一个正解。这个解称为 $a$ 的 **平方根**，记作 $\sqrt{a}$。此时我们说：“$a$ 的平方根在 $K’$ 中存在。”此外我们规定 $\sqrt{0} := 0$。

9.9 注 (a) 若对某些 $ a, b \geq 0 $，$ \sqrt{a} $ 与 $ \sqrt{b} $ 存在，则 $ \sqrt{ab} $ 也存在，且 $ \sqrt{ab} = \sqrt{a}\sqrt{b} $。

证明 由 $x^2 = a$ 与 $y^2 = b$ 可得 $(xy)^2 = x^2y^2 = ab$。这既表明了 $\sqrt{ab}$ 的存在性，也给出了等式 $\sqrt{ab} = \sqrt{a}\sqrt{b}$。

(b) 对所有 $ x \in K $，都有 $ |x| = \sqrt{x^2} $。

证明 若 $ x \geq 0 $，则 $ \sqrt{x^2} = x $。否则，若 $ x < 0 $，则 $ \sqrt{x^2} = -x $。■

(c) 对 $ a \in \mathbb{Z} $，$ \sqrt{a} $ 在 $ \mathbb{Q} $ 中存在当且仅当 $ a $ 是某个自然数的平方。

##### 习题

1 设 $ K $ 是一个域且 $ a \in K^\times $。对 $ m \in \mathbb{N} $，定义 $ a^{-m} := (a^{-1})^m $。

(a) 证明对所有 $ m, n \in \mathbb{N} $，有 $ a^{-m} = 1/a^m $ 与 $ a^{m-n} = a^m/a^n $。

(b) 由 (a)，$ a^k $ 对所有 $ k \in \mathbb{Z} $ 都有定义。验证以下法则：

\[ a^{k}a^{\ell}=a^{k+\ell},\quad a^{k}b^{k}=(a b)^{k},\quad(a^{k})^{\ell}=a^{k\ell} \]

其中 $ a, b \in K^\times $ 且 $ k, \ell \in \mathbb{Z} $。

2 对 $ n \in \mathbb{Z} $，$ n\mathbb{Z} $ 是 $ \mathbb{Z} $ 的理想，因此商环 $ \mathbb{Z}_n := \mathbb{Z}/n\mathbb{Z} $，即 $ \mathbb{Z} $ 模 $ n $，是定义明确的（见习题 8.6）。证明以下各条：

(a) 对 $ n \in \mathbb{N}^\times $，$ \mathbb{Z}_n $ 恰有 $ n $ 个元素。$ \mathbb{Z}_0 $ 是什么？

(b) 若 $ n \geq 2 $ 且 $ n \in \mathbb{N} $ 不是素数，则 $ \mathbb{Z}_n $ 有零因子。

(c) 若 $ p \in \mathbb{N} $ 是素数，则 $ \mathbb{Z}_p $ 是一个域。

（提示：(b) 命题 5.6。(c) 对满足 $ 0 < a < p $ 的 $ a \in \mathbb{N} $，需要找到某个 $ x \in \mathbb{Z} $ 使得 $ ax \in 1 + p\mathbb{Z} $。通过反复使用带余除法（命题 5.4），找到正数 $ r_0, \ldots, r_k $ 与 $ q, q_0, \ldots, q_k $，使得 $ a > r_0 > r_1 > \cdots > r_k $ 且

\[ p=q a+r_{0},\qquad a=q_{0}r_{0}+r_{1},\quad r_{0}=q_{1}r_{1}+r_{2},\ldots,r_{k-2}=q_{k-1}r_{k-1}+r_{k},\quad r_{k-1}=q_{k}r_{k} \]

由此可得 $ r_j = m_ja + n_jp $，其中 $ j = 0, \ldots, k $ 且 $ m_j, n_j \in \mathbb{Z} $。证明：由于 $ p $ 是素数，$ r_k = 1 $。）

注 我们通常把 $ a \equiv b $ (mod $ n\mathbb{Z} $)（见习题 8.6）写成 $ a \equiv b $ (mod $ n $)，其中 $ n \in \mathbb{Z} $。因此 $ a \equiv b $ (mod $ n $) 意即 $ a - b \in n\mathbb{Z} $。

3 设 X 是一个 n 元集。证明以下各条：

(a) $ \mathrm{Num}\left(\mathcal{P}(X)\right)=2^{n} $

(b) $ \mathrm{Num}\left(\mathcal{P}_{\text{偶}}(X)\right) = \mathrm{Num}\left(\mathcal{P}_{\text{奇}}(X)\right) $ 对 $ n > 0 $ 成立。这里 $ \mathcal{P}_{\text{偶}}(X) $ 与 $ \mathcal{P}_{\text{奇}}(X) $ 由下式定义

\[ \mathcal{P}_{\text{偶}}(X):=\left\{A\subseteq X\;;\;\operatorname{N u m}(A)\equiv0\;(\bmod\;2)\right\}\;, \]

\[ {\mathcal P}_{\text{奇}}(X):=\left\{A\subseteq X\;;\;\mathrm{N u m}(A)\equiv1\ (\mathrm{m o d}\ 2)\right\}\;. \]

（提示：习题 6.3 与定理 8.4。）

4 若对所有满足 $ a > 0 $ 的 $ a, b \in K $，都存在某个 $ n \in \mathbb{N} $ 使得 $ b < na $，则称有序域 $ K $ 为 $ \text{阿基米德的} $。验证 $ \mathbb{Q} := (\mathbb{Q}, \leq) $ 是阿基米德的。

5 证明次数 $ n \geq 1 $ 的多项式 $ p = \sum_{k=0}^{n} a_k X^k \in \mathbb{Z}[X] $ 的任何有理零点都属于 $ a_n^{-1} \mathbb{Z} $。（提示：考虑 $ a_n^{n-1} p $。）

6 在对称群 $ S_{n} $ 上由下式定义符号函数

\[ \mathrm{s i g n}\sigma:=\prod_{1\leq j<k\leq n}\frac{\sigma(j)-\sigma(k)}{j-k}\;,\qquad\sigma\in\mathsf{S}_{n}\;. \]

证明以下各条：

(a) sign( $ \mathsf{S}_n $) $ \subseteq $ $ \{\pm1\} $。

(b) 对 $ \sigma, \tau \in \mathsf{S}_n $，$ \text{sign}(\sigma \circ \tau) = (\text{sign} \sigma)(\text{sign} \tau) $。也就是说，sign 是从 $ \mathsf{S}_n $ 到乘法群 $ \left(\{\pm1\}, \cdot\right) $ 的同态。这个同态的核称为 **交错群** $ \mathsf{A}_n $，即 $ \mathsf{A}_n := \{\sigma \in \mathsf{S}_n\;; \text{sign} \sigma = 1\} $。$ \mathsf{A}_n $ 中的置换称为 **偶**置换，$ \mathsf{S}_n \setminus \mathsf{A}_n $ 中的置换称为 **奇**置换。

(c) 对 $ n \geq 2 $，$ \mathsf{A}_n $ 的阶为 $ n!/2 $，而对 $ n = 1 $ 其阶为 1。

(d) 对 $ n \geq 2 $，sign 是满射。

(e) 对换是交换两个数而保持其余数不动的置换。对 $ n \geq 2 $，任何置换 $ \sigma \in \mathsf{S}_n $ 都可以表示为对换的复合：$ \sigma = \sigma_1 \circ \sigma_2 \circ \cdots \circ \sigma_N $，并且此时 sign $ \sigma = (-1)^N $，与这一表示无关。因此，表示中对换的个数对偶置换为偶数，对奇置换为奇数。

7 给出定理 9.5 的完整证明。

8 对 $ k \in \mathbb{N} $ 与 $ q_0, \ldots, q_k \in \mathbb{N}^\times $，有理数

\[ q_{0}+\cfrac{1}{q_{1}+\cfrac{1}{q_{2}+\cfrac{1}{q_{3}+\cfrac{1}{\ddots+\cfrac{1}{q_{k-1}+\cfrac{1}{q_{k}}}}}}} \]

称为 **连分数**。证明每个满足 $ x \geq 0 $ 的 $ x \in \mathbb{Q} $ 都可以表示为连分数，并且当 $ q_k \neq 1 $ 时这一表示是唯一的。（提示：设 $ x = r/r_0 $ 为最简形式。由带余除法，存在唯一的 $ q_0 \in \mathbb{N} $ 与 $ r_1 \in \mathbb{N} $ 使得 $ r_1 < r_0 $ 且 $ r = q_0 r_0 + r_1 $。如有必要，对 $ (r_0, r_1) $ 使用带余除法。按需重复，构造出 $ q_0, \ldots, q_k $。）

9 在 $ \mathbb{Q} $ 上构造一个序 $ \prec $，使得 $ (\mathbb{Q},\prec) $ 是良序的。（提示：考虑命题 9.4 与 (6.3)。）

