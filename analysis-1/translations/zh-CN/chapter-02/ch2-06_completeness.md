## 6 完备性

在 1 节中，我们利用邻域的概念定义了收敛。在这个定义中，序列的极限是显式出现的，因此，原则上，要证明一个序列收敛，就必须知道它的极限是什么。在本节中，我们将证明：在某些“完备”空间中，可以在不知道极限的情况下判别一个序列的收敛性。这种度量空间中的序列收敛，当且仅当它们是柯西序列。这些序列是收敛性理论研究中十分重要的工具。此外，它们还被用于康托尔的实数构造，这一构造我们在 I.10 节中曾提及，并将在本节中实施。

##### 柯西序列

在下文中，$X = (X, d)$ 是一个度量空间。

$ X $ 中的序列  $ (x_n) $ 称为 **柯西序列**，若对每个  $ \varepsilon > 0 $，存在某个  $ N \in \mathbb{N} $，使得对所有  $ m, n \geq N $ 都有  $ d(x_n, x_m) < \varepsilon $。

若 $(x_n)$ 是赋范向量空间 $E = (E, \|\cdot\|)$ 中的序列，则 $(x_n)$ 是柯西序列，当且仅当对每个 $\varepsilon > 0$，存在某个 $N$，使得对所有 $m, n \geq N$ 都有 $\|x_n - x_m\| < \varepsilon$。特别地，我们注意到 $E$ 中的柯西序列是“平移不变的”，也就是说，若 $(x_n)$ 是柯西序列，且 $a$ 是 $E$ 中的任意向量，则“平移后的”序列 $(x_n + a)$ 也是柯西序列。这特别表明，柯西序列不能用邻域来定义。

6.1 命题 每个收敛序列都是柯西序列。

证明 设 $(x_n)$ 是 $X$ 中极限为 $x$ 的收敛序列。则对每个 $\varepsilon > 0$，存在某个 $N$，使得对所有 $n \geq N$ 都有 $d(x_n, x) < \varepsilon/2$。由三角不等式可得

 \[ d(x_{n},x_{m})\leq d(x_{n},x)+d(x,x_{m})<\frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon,\qquad m,n\geq N. \] 

因此  $ (x_{n}) $ 是柯西序列。 ■

命题 6.1 的逆命题不成立，也就是说，存在这样的度量空间，其中并非每个柯西序列都收敛。

6.2 例 递归地定义  $ (x_n) $： $ x_0 := 2 $，且对所有  $ n \in \mathbb{N} $， $ x_{n+1} := \frac{1}{2}(x_n + 2/x_n) $。则  $ (x_n) $ 是  $ \mathbb{Q} $ 中的柯西序列，但它在  $ \mathbb{Q} $ 中不收敛。

证明 显然，对所有  $ n \in \mathbb{N} $ 都有  $ x_n \in \mathbb{Q} $。此外，由习题 4.4 我们知道， $ (x_n) $ 在  $ \mathbb{R} $ 中收敛于  $ \sqrt{2} $。因此，由命题 6.1， $ (x_n) $ 是  $ \mathbb{R} $ 中的柯西序列，从而也是  $ \mathbb{Q} $ 中的柯西序列。

另一方面， $ (x_n) $ 不可能在  $ \mathbb{Q} $ 中收敛。事实上，若对某个  $ a \in \mathbb{Q} $ 有  $ x_n \to a $，则在  $ \mathbb{R} $ 中也有  $ x_n \to a $。但此时极限的唯一性给出  $ a = \sqrt{2} \in \mathbb{R} \setminus \mathbb{Q} $，矛盾。

6.3 命题 每个柯西序列都是有界的。

证明 设 $(x_n)$ 是柯西序列。则存在某个 $N \in \mathbb{N}$，使得对所有 $m, n \geq N$ 都有 $d(x_n, x_m) < 1$。特别地，对所有 $n \geq N$ 都有 $d(x_n, x_N) \leq 1$。令 $M = \max_{n < N} \{d(x_n, x_N)\}$。则对所有 $n$，都有 $d(x_n, x_N) \leq 1 + M$，从而由例 1.9(c)，$(x_n)$ 在 $X$ 中有界。

6.4 命题 若柯西序列有一个收敛的子序列，则它本身收敛。

证明 设 $(x_n)$ 是柯西序列，$(x_{n_k})_{k\in\mathbb{N}}$ 是其收敛于 $x$ 的子序列。设 $\varepsilon > 0$。则存在某个 $N$，使得对所有 $m, n \geq N$ 都有 $d(x_n, x_m) < \varepsilon/2$。又存在某个 $K$，使得对所有 $k \geq K$ 都有 $d(x_{n_k}, x) < \varepsilon/2$。令 $M := \max\{K, N\}$。则

 \[ d(x_{n},x)\leq d(x_{n},x_{n_{M}})+d(x_{n_{M}},x)<\frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon,\qquad n\geq M, \] 

也就是说， $ (x_{n}) $ 收敛于 x。

##### 巴拿赫空间

若度量空间 X 中的每个柯西序列都收敛，则称 X 是完备的。完备的赋范向量空间称为巴拿赫空间。

利用波尔查诺-魏尔斯特拉斯定理，我们可以证明完备度量空间是存在的。

6.5 定理  $ \mathbb{K}^{m} $ 是巴拿赫空间。

证明 由 3 节我们已经知道  $ \mathbb{K}^m $ 是赋范向量空间，因此只需证明完备性。设  $ (x_n) $ 是  $ \mathbb{K}^m $ 中的柯西序列。由命题 6.3， $ (x_n) $ 有界。波尔查诺-魏尔斯特拉斯定理蕴含收敛子序列的存在性，然后命题 6.4 蕴含  $ (x_n) $ 本身收敛。 $ \blacksquare $

6.6 定理 设 $X$ 是非空集合，$E = (E, \|\cdot\|)$ 是巴拿赫空间。则 $B(X, E)$ 也是巴拿赫空间。

证明 设  $ (u_n) $ 是赋范向量空间  $ B(X, E) $ 中的柯西序列（见命题 3.5）。设  $ \varepsilon > 0 $。则存在某个  $ N := N(\varepsilon) $，使得

 $ \|u_n - u_m\|_\infty \leq \varepsilon $ 对所有  $ m, n \geq N $ 成立。特别地，

 \[ \|u_{n}(x)-u_{m}(x)\|_{E}\leq\|u_{n}-u_{m}\|_{\infty}\leq\varepsilon\;,\qquad m,n\geq N\;,\quad x\in X\;. \] 

这表明，对每个  $ x \in X $，序列  $ (u_n(x)) $ 都是  $ E $ 中的柯西序列。 $ E $ 的完备性蕴含：对每个  $ x \in X $，存在某个向量  $ a_x \in E $，使得当  $ n \to \infty $ 时  $ u_n(x) \to a_x $。由推论 1.13， $ a_x $ 是唯一的，我们通过  $ u(x) := a_x $（ $ x \in X $）定义  $ u \in E^X $。

我们将证明柯西序列  $ (u_n) $ 在  $ B(X, E) $ 中收敛于  $ u $。首先证明  $ u \in E^X $ 有界。事实上，在 (6.1) 中令  $ m \to \infty $ 取极限，得到

 \[ \|u_{n}(x)-u(x)\|_{E}\leq\varepsilon\;,\qquad n\geq N\;,\quad x\in X \] 

（见命题 2.10 与注 3.1(c)），于是我们有

 \[ \|u(x)\|_{E}\leq\varepsilon+\|u_{N}(x)\|_{E}\leq\varepsilon+\|u_{N}\|_{\infty}\;,\qquad x\in X\;. \] 

这表明函数  $ u: X \to E $ 有界，即它属于  $ B(X, E) $。最后，在 (6.2) 中对所有  $ x \in X $ 取上确界，我们得到：对所有  $ n \geq N $ 都有  $ \|u_n - u\|_\infty \leq \varepsilon $，即  $ (u_n) $ 在  $ B(X, E) $ 中收敛于  $ u $。 $ \blacksquare $

作为前两个定理的直接推论，我们有：对每个非空集合 $X$，$B(X, \mathbb{R})$、$B(X, \mathbb{C})$ 与 $B(X, \mathbb{K}^m)$ 都是巴拿赫空间。

6.7 注 (a) 赋范向量空间  $ E $ 的完备性在换成等价范数时保持不变，也就是说，若  $ \|\cdot\|_1 $ 与  $ \|\cdot\|_2 $ 是  $ E $ 上的等价范数，则  $ (E, \|\cdot\|_1) $ 完备，当且仅当  $ (E, \|\cdot\|_2) $ 完备。

(b) 带有范数  $ |\cdot|_1 $ 或  $ |\cdot|_{\infty} $ 的向量空间  $ \mathbb{K}^m $ 是完备的。（我们将在 III.3 节中证明  $ \mathbb{K}^m $ 上的所有范数都等价。）

(c) 完备的内积空间（见定理 3.10）称为希尔伯特空间。特别地，定理 6.5 表明  $ \mathbb{K}^m $ 是希尔伯特空间。

##### 康托尔的实数构造

我们以实数  $ \mathbb{R} $ 的第二种构造来结束本节。由于在后面的内容中我们不再使用这一构造，初次阅读本书时可以略去这一讨论。

首先我们注意到，若在命题 1.7(iii)、零序列和柯西序列的定义以及相应的证明中，把“对每个  $ \varepsilon > 0 $”替换为“对每个  $ \varepsilon = 1/N $，其中  $ N \in \mathbb{N}^\times $”，则本章中关于序列的所有陈述仍然成立。这是推论 I.10.7 的结果。

这使我们回到只有有理数已被构造出来的情形。由定理 I.9.5， $ \mathbb{Q} = (\mathbb{Q}, \leq) $ 是有序域，因此命题 I.8.10

蕴含：Q 配上由绝对值  $ |\cdot| $ 诱导的度量，是一个度量空间。由于上面的讨论，

 \[ \mathcal{R}:=\big\{r\in\mathbb{Q}^{\mathbb{N}};~r\text{ 是柯西序列}\big\} \] 

以及

 \[ \mathbf{c}_{0}:=\{r\in\mathbb{Q}^{\mathbb{N}};~r\text{ 是零序列}\} \] 

都是良定义的集合。由命题 6.1 我们有  $ \mathbf{c}_0 \subseteq \mathcal{R} $。

由例 I.8.2(b) 我们知道  $ \mathbb{Q}^{\mathbb{N}} $ 是带单位元的交换环。我们用  $ \overline{a} $ 表示  $ \mathbb{Q}^{\mathbb{N}} $ 中的常值序列  $ (a, a, \ldots) $。则  $ \overline{1} $ 是环  $ \mathbb{Q}^{\mathbb{N}} $ 的单位元。由例 I.4.4(c)， $ \mathbb{Q}^{\mathbb{N}} $ 也是偏序集。由于这个偏序不是全序， $ \mathbb{Q}^{\mathbb{N}} $ 不是有序环。

6.8 引理  $ \mathcal{R} $ 是  $ \mathbb{Q}^{\mathbb{N}} $ 的含  $ \overline{1} $ 的子环，且  $ \mathbf{c}_0 $ 是  $ \mathcal{R} $ 的非平凡真理想。

证明 设  $ r = (r_n) $ 与  $ s = (s_n) $ 是  $ \mathcal{R} $ 中的元素，且  $ N \in \mathbb{N}^\times $。由于每个柯西序列都有界，存在某个  $ B \in \mathbb{N}^\times $，使得

 \[ |r_{n}|\leq B\;,\qquad|s_{n}|\leq B\;,\qquad n\in\mathbb{N}. \] 

令  $ M := 2BN \in \mathbb{N}^\times $。则存在某个  $ n_0 \in \mathbb{N} $，使得

 \[ |r_{n}-r_{m}|<1/M~,\quad|s_{n}-s_{m}|<1/M~,\qquad m,n\geq n_{0}~. \] 

于是我们有不等式

 \[ |r_{n}+s_{n}-\left(r_{m}+s_{m}\right)|\leq|r_{n}-r_{m}|+|s_{n}-s_{m}|<2/M\leq1/N \] 

以及

 \[ |r_{n}s_{n}-r_{m}s_{m}|\leq|r_{n}||s_{n}-s_{m}|+|r_{n}-r_{m}||s_{m}|<2B/M=1/N \] 

对所有  $ m, n \geq n_0 $ 成立。因此  $ r + s $ 与  $ r \cdot s $ 都在  $ \mathcal{R} $ 中，即  $ \mathcal{R} $ 是  $ \mathbb{Q}^{\mathbb{N}} $ 的子环。显然  $ \mathcal{R} $ 含有单位元  $ \overline{1} $。由命题 2.2 与 2.4（把  $ \mathbb{K} $ 换成  $ \mathbb{Q} $）以及命题 6.3，可得  $ \mathbf{c}_0 $ 是  $ \mathcal{R} $ 的理想。由于

 \[ \left(\frac{1}{n+1}\right)_{n\in\mathbb{N}}\in\mathbf{c}_{0}\backslash\left\{0\right\},\quad\overline{1}\in\mathcal{R}\backslash\mathbf{c}_{0}, \] 

$c_0$ 是非平凡真理想。

由习题 I.8.6 我们知道  $ \mathcal{R} $ 不可能是域。设  $ R $ 是  $ \mathcal{R} $ 关于理想  $ \mathbf{c}_0 $ 的商环，即  $ R = \mathcal{R} / \mathbf{c}_0 $（见习题 I.8.6）。显然，函数

 \[ \mathbb{Q}\to R\;,\quad a\mapsto[\overline{{a}}]=\overline{{a}}+\mathbf{c}_{0}\;, \] 

它把每个有理数 $a$ 映到  $ \mathcal{R} $ 中常值序列 $\overline{a}$ 的陪集 $[\overline{a}]$，是一个单射环同态。因此，我们把 $\mathbb{Q}$ 与其在函数 (6.3) 下的像等同起来，从而将 $\mathbb{Q}$ 视为 $R$ 的子环。

接下来我们在 $R$ 上定义一个序。若存在某个 $N \in \mathbb{N}^\times$ 与 $n_0 \in \mathbb{N}$，使得对所有 $n \geq n_0$ 都有 $r_n > 1/N$，则称 $r = (r_n) \in \mathcal{R}$ 是严格正的。设 $\mathcal{P}$ 为严格正柯西序列的集合，即 $\mathcal{P} := \{r \in \mathcal{R} ; r\text{ 是严格正的}\}$。 在 $R$ 上按如下方式定义关系 $\leq$：

 \[ [r]\leq[s]:\Longleftrightarrow s-r\in\mathcal{P}\cup\mathbf{c}_{0}~. \] 

6.9 引理  $  (R, \leq)  $ 是有序环，且它在 Q 上诱导出自然序。

证明 容易看出 (6.4) 在 $R$ 上定义了一个关系，即该定义与代表元的选取无关。同样显然的是，关系 $\leq$ 是自反的，并且传递性也不难证明。为证明反对称性，设 $[r] \leq [s]$ 且 $[s] \leq [r]$。则 $r-s$ 必属于 $\mathbf{c}_0$，因为否则 $r-s$ 与 $s-r$ 都将严格正，而这是不可能的。因此 $[r]$ 与 $[s]$ 相同，从而我们证明了 $\leq$ 是 $R$ 上的偏序。

设  $ r, s \in \mathcal{R} $，并假设  $ r - s $ 与  $ s - r $ 都不是严格正的。则对每个  $ N \in \mathbb{N}^\times $，存在某个  $ n \geq N $，使得  $ |r_n - s_n| < 1/N $。因此  $ r - s $ 有一个在  $ \mathbb{Q} $ 中收敛于 0 的子序列。由命题 6.4， $ r - s $ 本身是零序列，即  $ r - s \in \mathbf{c}_0 $。这蕴含  $ R $ 在  $ \leq $ 下是全序的。

我们把  $ \leq $ 与 R 的环结构相容这一简单证明留给读者。

最后，设  $ p, q \in \mathbb{Q} $ 满足  $ [\overline{p}] \leq [\overline{q}] $。则要么  $ p < q $，要么  $ \overline{q - p} $ 是零序列，后者蕴含  $ p = q $。因此  $ R $ 中的序在  $ \mathbb{Q} $ 上诱导出自然序。

6.10 命题 R 是域。

证明 设  $ [r] \in R^\times $。我们需要证明  $ [r] $ 可逆。我们可以假设（为什么？） $ r $ 属于  $ \mathcal{P} $。于是存在  $ n_0 \in \mathbb{N} $ 与  $ M \in \mathbb{N}^\times $，使得对所有  $ n \geq n_0 $ 都有  $ r_n \geq 1/M $。因此由下式定义的  $ s := (s_n) $

 \[ s_{n}:=\left\{\begin{array}{c l}{0,}&{\quad n<n_{0},}\\ {1/r_{n},}&{\quad n\geq n_{0},}\\ \end{array}\right. \] 

是 $\mathbb{Q}^\mathbb{N}$ 中的元素。由于 $r$ 是柯西序列，对 $N \in \mathbb{N}^\times$，存在某个 $n_1 \geq n_0$，使得对所有 $m, n \geq n_1$ 都有 $|r_n - r_m| < 1/(NM^2)$。这蕴含

 \[ \left|s_{n}-s_{m}\right|=\left|\frac{r_{n}-r_{m}}{r_{n}r_{m}}\right|\leq M^{2}\left|r_{n}-r_{m}\right|<1/N,\qquad m,n\geq n_{1}. \] 

因此 $s$ 在 $\mathcal{R}$ 中。由于 $[r][s]=[rs]=\overline{1}$，$[r]$ 可逆，且 $[r]^{-1}=[s]$。 ■

现在我们要证明 R 是序完备的。为此，我们首先需要下面两个引理：

6.11 引理 Q 中每个有上界的递增序列都是柯西序列。类似地，Q 中每个有下界的递减序列都是柯西序列。

证明 设  $ r = (r_n) $ 是  $ \mathbb{Q} $ 中的递增序列，且有上界  $ M \in \mathbb{N}^\times $，即对所有  $ n \in \mathbb{N} $ 都有  $ r_n < M $。我们可以假设  $ r_0 = 0 $（为什么？）。

设  $ N \in \mathbb{N}^\times $。则下列集合

 \[ I_{k}:=\left\{n\in\mathbb{N}\;;\;(k-1)/N\leq r_{n}<k/N\right\},\qquad k=1,\ldots,M N~, \] 

并非都为空。因此

 \[ K:=\max\left\{k\in\{1,\ldots,MN\}:I_{k}\neq\emptyset\right\} \] 

是有定义的，且下式成立：

 \[ r_{n}<K/N~,\quad n\in\mathbb{N}~,\qquad\exists n_{0}\in\mathbb{N}\colon r_{n_{0}}\geq(K-1)/N~. \] 

由序列  $ (r_{n}) $ 的单调性，我们得到不等式

 \[ 0\leq r_{n}-r_{m}<\frac{K}{N}-\frac{K-1}{N}=\frac{1}{N},\qquad n>m\geq n_{0}, \] 

这证明了 r 属于  $ \mathcal{R} $。对递减序列的证明是类似的。

6.12 引理  $ R $ 中每个有上界的递增序列  $ (\rho_k) $ 都有上确界  $ \sup\{\rho_k; k \in \mathbb{N}\} $。类似地， $ R $ 中每个有下界的递减序列  $ (\rho_k) $ 都有下确界  $ \inf\{\rho_k; k \in \mathbb{N}\} $。

证明 只需考虑递增序列的情形。若存在某个  $ m \in \mathbb{N} $，使得对所有  $ k \geq m $ 都有  $ \rho_k = \rho_m $，则  $ \sup\{\rho_k; k \in \mathbb{N}\} = \rho_m $。否则我们可以递归地构造  $ (\rho_k) $ 的一个子序列  $ (\rho_{k_j})_{j \in \mathbb{N}} $，使得对所有  $ j \in \mathbb{N} $ 都有  $ \rho_{k_j} < \rho_{k_{j+1}} $。由于序列  $ (\rho_k) $ 的单调性，只需证明  $ \sup\{\rho_{k_j}; j \in \mathbb{N}\} $ 的存在性。因此我们假设对所有  $ k \in \mathbb{N} $ 都有  $ \rho_k < \rho_{k+1} $。

每个 $\rho_k$ 都具有形式 $[r^k]$，其中 $r^k = (r_n^k)_{n \in \mathbb{N}} \in \mathcal{R}$。对 $k \in \mathbb{N}$，有 $\rho_{k+1} - \rho_k \in \mathcal{P}$，于是存在 $n_k \in \mathbb{N}$ 与 $N_k \in \mathbb{N}^\times$，使得对所有 $n \geq n_k$ 都有 $r_n^{k+1} - r_n^k \geq 1/N_k$。不失一般性，我们可以假设序列 $(n_k)_{k \in \mathbb{N}}$ 递增。由于 $r^k$ 与 $r^{k+1}$ 都是柯西序列，存在 $m_k \geq n_k$，使得

 \[ r_{n}^{k}-r_{m_{k}}^{k}<\frac{1}{4N_{k}},\quad r_{m_{k}}^{k+1}-r_{n}^{k+1}<\frac{1}{4N_{k}},\qquad n\geq m_{k}. \] 

因此，对  $ s_k := r_{m_k}^k + 1/(2N_k) $，我们有

 \[ r_{n}^{k+1}-s_{k}>\frac{1}{4N_{k}},\quad s_{k}-r_{n}^{k}>\frac{1}{4N_{k}},\qquad n\geq m_{k}. \] 

于是

 \[ \rho_{k}=[r^{k}]<[\overline{{s_{k}}}]=s_{k}\big[\overline{{1}}\big]<[r^{k+1}]=\rho_{k+1}~,\qquad k\in\mathbb{N}~. \] 

令 $s := (s_k)$。按构造，$s$ 是 $\mathbb{Q}$ 中的递增序列。由于序列 $(\rho_k)$ 有上界，由 (6.5)，$s$ 也有上界。由引理 6.11 可得 $s$ 属于 $\mathcal{R}$，然后 (6.5) 表明对所有 $k \in \mathbb{N}$ 都有 $\rho_k \leq [s]$。

最后，设  $ \rho \in R $ 满足：对所有  $ k \in \mathbb{N} $ 都有  $ \rho_k \leq \rho < [s] $。则由 (6.5) 可得

 \[ s_{k}\left[\overline{1}\right]<\rho_{k+1}\leq\rho<\left[s\right],\qquad k\in\mathbb{N}, \] 

这是矛盾。因此我们有  $ [s] = \sup\{\rho_k; k \in \mathbb{N}\} $。 ■

为完成康托尔的构造，我们现在可以容易地证明 R 是 Q 的序完备的有序扩域。然后定理 I.10.4 的唯一性断言保证了我们又一次构造出了实数。

6.13 定理 R 是 Q 的序完备的有序扩域。

证明 由引理 6.9 与命题 6.10，我们只需证明 R 的序完备性。

因此，设 $A$ 是 $R$ 的非空子集，且以 $\gamma \in R$ 为上界。我们按如下方式递归地构造一个递增序列 $(\alpha_j)$ 与一个递减序列 $(\beta_j)$：选取某个 $\alpha_0 \in A$，然后令 $\beta_0 := \gamma$ 与 $\gamma_0 := (\alpha_0 + \beta_0)/2$。若存在某个 $a \in A$ 使得 $a \geq \gamma_0$，则令 $\alpha_1 := \gamma_0$ 与 $\beta_1 := \beta_0$；否则令 $\alpha_1 := \alpha_0$ 与 $\beta_1 := \gamma_0$。在下一步中，我们把 $\alpha_0$、$\beta_0$ 换成 $\alpha_1$、$\beta_1$，重复上述过程以得到 $\alpha_2$ 与 $\beta_2$。迭代这一过程产生具有所断言性质的序列 $(\alpha_j)$ 与 $(\beta_j)$，并且

 \[ 0<\beta_{j}-\alpha_{j}\leq(\beta_{0}-\alpha_{0})/2^{j},\qquad j\in\mathbb{N}. \] 

由于 $(\alpha_j)$ 以 $\gamma$ 为上界，且 $(\beta_j)$ 以 $\alpha_0$ 为下界，引理 6.12 蕴含 $\alpha := \sup\{\alpha_j; j \in \mathbb{N}\}$ 与 $\beta := \inf\{\beta_j; j \in \mathbb{N}\}$ 都存在。此外，对 (6.6) 取下确界，得到

 \[ 0\leq\beta-\alpha\leq\inf\left\{(\beta_{0}-\alpha_{0})/2^{j};j\in\mathbb{N}\right\}=0. \] 

因此  $ \alpha = \beta $。

最后，按构造，对所有  $ a \in A $ 与  $ j \in \mathbb{N} $ 都有  $ a \leq \beta_j $。因此

 \[ a\leq\operatorname*{i n f}\{\;\beta_{j}\;;\;j\in\mathbb{N}\}\nonumber=\beta=\alpha=\operatorname*{s u p}\{\;\alpha_{j}\;;\;j\in\mathbb{N}\}\nonumber\leq\gamma\;,\qquad a\in A\;. \] 

由于这对  $ A $ 的每个上界  $ \gamma $ 都成立，可得  $ \alpha = \sup(A) $。 ■

##### 习题

1 设  $ (\alpha, \beta) \in \mathbb{R}^2 $。对  $ k \in \mathbb{N} $，令

 \[ x_{k}:=\left\{\begin{array}{l l}{\left(\alpha,\beta\right),}&{\quad k\text{ 为偶},}\\ {\left(\beta,\alpha\right),}&{\quad k\text{ 为奇},}\end{array}\right. \] 

且对所有  $ n \in \mathbb{N}^\times $ 令  $ s_n := \sum_{k=1}^n k^{-2} x_k $。证明  $ (s_n) $ 收敛。

2 设 $X:=(X,d)$ 是完备度量空间，$(x_{n})$ 是 $X$ 中的序列。假设

 \[ d(x_{n+1},x_{n})\leq\alpha d(x_{n},x_{n-1}),\qquad n\in\mathbb{N}^{\times}, \] 

对某个  $ \alpha \in (0,1) $ 成立。证明  $ (x_{n}) $ 收敛。

3 证明  $ \mathbb{R} $ 中的每个序列都有单调子序列。

4 证明下列命题（见习题 3.7）：

(a) 完备度量空间的每个闭子集都是完备度量空间（具有诱导度量）。

(b) 巴拿赫空间的每个闭子空间本身都是巴拿赫空间（具有诱导范数）。

(c)  $ \ell_{\infty} $、c 与  $ c_{0} $ 都是巴拿赫空间。

(d) 设 $M$ 是完备度量空间，$D \subseteq M$ 是完备的子集（关于诱导度量）。则 $D$ 在 $M$ 中是闭的。

5 验证  $ R = \mathcal{R}/c_0 $ 上的序  $ \leq $ 是传递的，并且与  $ R $ 的环结构相容。

6 对所有  $ n \in \mathbb{N}^\times $，令  $ x_n := \sum_{k=1}^{n} k^{-1} $。证明下列命题：

(a) 序列  $ (x_{n}) $ 不是  $ \mathbb{R} $ 中的柯西序列。

(b) 对每个  $ m \in \mathbb{N}^\times $， $ \lim_{n}(x_{n+m} - x_n) = 0 $

（提示：(a) 证明  $ (x_{n}) $ 无界。）

7 对所有  $ n \in \mathbb{N}^\times $，令  $ x_n := \sum_{k=1}^n k^{-2} $。证明或反驳  $ (x_n) $ 是  $ \mathbb{Q} $ 中的柯西序列。
