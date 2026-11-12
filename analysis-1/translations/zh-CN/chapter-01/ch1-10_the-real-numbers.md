## 10 实数

我们已经看到，对正的 $ a $，方程 $ x^2 = a $ 在 $ \mathbb{Q} $ 中一般不可解。由于 $ x^2 $ 是边长为 $ x $ 的正方形的面积，这意味着，例如，不存在面积为 2 的正方形——只要我们还停留在有理数域之中。正如中学所熟知的，为了补救这一不尽如人意的情况，我们必须允许边长是‘无理数’的正方形。这意味着我们的域 $ \mathbb{Q} $ 太小了，我们需要一个更大的域，它包含 $ \mathbb{Q} $ 作为子域，并且在其中对 $ a > 0 $ 方程 $ x^2 = a $ 总有解。换言之，我们寻求 $ \mathbb{Q} $ 的一个有序扩域，在其中对每个 $ a > 0 $ 方程 $ x^2 = a $ 都可解。

##### 序完备性

所求的扩域由它的完备性性质所刻画。我们说一个全序集 X 是序完备的（或 X 满足完备性公理），如果 X 的每个上有界的非空子集都有上确界。

10.1 命题 设 X 是一个全序集。则下列各条等价：

(i) X 是序完备的。

(ii) X 的每个下有界的非空子集都有下确界。

(iii) 对所有 $ X $ 的非空子集 $ A $、$ B $，使得对一切 $ (a,b) \in A \times B $ 有 $ a \leq b $，存在某个 $ c \in X $ 使得对一切 $ (a,b) \in A \times B $ 有 $ a \leq c \leq b $。

证明 ‘(i)⇒(ii)’ 设 $ A $ 是 $ X $ 的一个下有界的非空子集。则 $ B := \{x \in X; x \leq a $ 对所有 $ a \in A\}$ 非空，且以任一 $ a \in A $ 为上界。由假设，$ m := \sup(B) $ 存在。由于 $ A $ 的任一元素都是 $ B $ 的上界，而 $ m $ 是 $ B $ 的最小上界，故对所有 $ a \in A $ 有 $ m \leq a $。于是 $ m $ 在 $ B $ 中，且由注 4.5(c)，$ m = \max(B) $。由定义，这意味着 $ m = \inf(A) $。

‘ (ii)⇒(iii)’ 设 $ A $ 与 $ B $ 是 $ X $ 的非空子集，使得对 $ (a, b) \in A \times B $ 有 $ a \leq b $。每个 $ a \in A $ 都是 $ B $ 的下界，故由假设，$ c := \inf(B) $ 存在。由于 $ c $ 是最大下界，故对 $ a \in A $ 有 $ c \geq a $。当然，$ c $ 是 $ B $ 的下界意味着对所有 $ b \in B $ 有 $ c \leq b $。

‘ (iii)⇒(i)’ 设 $ A $ 是 $ X $ 的一个上有界的非空子集。令 $ B := \{ b \in X \, ; \, b \geq a $ 对所有 $ a \in A \}$。则 $ B $ 非空，且对所有 $ a \in A $ 与所有 $ b \in B $ 有 $ a \leq b $。由假设，存在某个 $ c \in X $ 使得对所有 $ a \in A $ 与 $ b \in B $ 有 $ a \leq c \leq b $。由此可得 $ c = \min(B) $，即 $ c = \sup(A) $。■

命题 10.1 的第 (iii) 条称为戴德金分割性质。

10.2 推论 一个全序集是序完备的，当且仅当每个非空有界子集都有上确界和下确界。

下面的例子表明，有序域不一定是序完备的。

10.3 例 $ \mathbb{Q} $ 不是序完备的。

证明 我们考虑集合

\[ A:=\left\{x\in\mathbb{Q}\;;\;x>0\text{ 且 }x^{2}<2\right\},\quad B:=\left\{x\in\mathbb{Q}\;;\;x>0\text{ 且 }x^{2}>2\right\}. \]

显然 $ 1 \in A $ 且 $ 2 \in B $。由对 $ (a, b) \in A \times B $ 成立的 $ b - a = (b^2 - a^2)/(b + a) > 0 $ 可得，对 $ (a, b) \in A \times B $ 有 $ a < b $。现在假设存在某个 $ c \in \mathbb{Q} $ 使得

\[ a\leq c\leq b~,\qquad(a,b)\in A\times B~. \]

则对 $ \xi := (2c + 2)/(c + 2) $，我们有

\[ \xi>0,\quad\xi=c-\frac{c^{2}-2}{c+2},\quad\xi^{2}-2=\frac{2(c^{2}-2)}{(c+2)^{2}}. \]

由推论 9.7 与注 4.3(b)，要么 $ c^2 < 2 $ 为真，要么 $ c^2 > 2 $ 为真。在第一种情形，由 (10.2) 可得 $ \xi > c $ 且 $ \xi^2 < 2 $，即 $ \xi > c $ 且 $ \xi \in A $，这与 (10.1) 矛盾。在第二种情形，(10.2) 蕴含不等式 $ \xi < c $ 与 $ \xi^2 > 2 $，即 $ \xi < c $ 且 $ \xi \in B $，这再次与 (10.1) 矛盾。因而不存在满足 (10.1) 的 $ c \in \mathbb{Q} $，结论由命题 10.1 得证。 $ \blacksquare $

##### 戴德金对实数的构造

下面的定理表明 $ \mathbb{Q} $ 只有一个序完备扩域，它是分析学最基本的结论，也是一切关于‘极限过程’研究的出发点，而极限过程处于全部分析研究的中心。

10.4 定理 在相差同构的意义下，存在唯一的 $ \mathbb{Q} $ 的序完备扩域 $ \mathbb{R} $。这个扩域称为实数域。

证明 对于这个基本定理，有若干种证明。我们这里给出的证明使用戴德金分割，这个概念最初出自 R. 戴德金。我们仍然只概述其基本思想。至于（枯燥的）技术细节，见 [Lan30]。另一种由 G. 康托尔给出的证明将在 II.6 节中给出。

受命题 10.1(iii) 的启发，其思想是把 $ \mathbb{Q} $ 的两个子集 $ A $ 与 $ B $ 之间缺失的数 $ c $‘补上’，办法是简单地把 $ c $ 等同于有序对 $ (A,B) $。也就是说，我们所构造的新数是 $ \mathbb{Q} $ 的子集的有序对 $ (A,B) $。然后需要给所有这些有序对组成的集合赋以有序域的结构，并证明这个域是序完备的，且包含 $ \mathbb{Q} $ 的一个同构副本。

只需考虑满足对 $ (a,b) \in A \times B $ 有 $ a \leq b $ 且 $ A \cup B = \mathbb{Q} $ 的有序对 $ (A,B) $。这样的有序对由集合 $ A $ 或 $ B $ 之一确定。选取 $ B $ 就得到下面的形式化定义。设 $ \mathbb{R} \subseteq \mathcal{P}(\mathbb{Q}) $ 是所有具有下列性质的 $ R \subseteq \mathbb{Q} $ 组成的集合：

(D$_1$)  $ R \neq \emptyset $,  $ R^c = \mathbb{Q} \setminus R \neq \emptyset $.

(D$_2$)  $ R^c = \{ x \in \mathbb{Q} ; \, x < r \text{ 对所有 } r \in R \} $.

(D$_3$) R 没有最小元。

函数

\[ \mathbb{Q}\to\mathbb{R}~,\quad r\mapsto\left\{x\in\mathbb{Q}~;~x>r\right\} \]

是单射，所以我们把 $ \mathbb{Q} $ 等同于它在 $ \mathbb{R} $ 中的像，也就是说，我们把 $ \mathbb{Q} $ 看成 $ \mathbb{R} $ 的子集。

对 $ R, R' \in \mathbb{R} $，我们定义

\[ R\leq R^{^{\prime}}:\Longleftrightarrow R\supseteq R^{^{\prime}}. \]

例 4.4(a) 与 (b) 表明 $ \leq $ 是 $ \mathbb{R} $ 上的偏序。若 $ R $ 与 $ R' $ 不同，则存在某个 $ r \in R $ 使得 $ r \in (R')^c $，或存在某个 $ r' \in R' $ 使得 $ r' \in R^c $。在第一种情形，对每个 $ r' \in R' $ 有 $ r < r' $，因而对 $ r' \in R' $ 有 $ r' \in R $。于是 $ R' \subseteq R $，即 $ R' \geq R $。在第二种情形，类似地有 $ R' \leq R $。因此 ($ \mathbb{R}, \leq $) 是一个全序集。

设 $ \mathcal{R} $ 是 $ \mathbb{R} $ 的一个下有界的非空子集，即存在某个 $ A \in \mathbb{R} $ 使得对所有 $ R \in \mathcal{R} $ 有 $ R \subseteq A $。令 $ S := \bigcup \mathcal{R} $。则 $ S $ 非空，且由于 $ S \subseteq A $，我们有 $ \emptyset \neq A^c \subseteq S^c $，这蕴含 $ S^c $ 非空。于是 $ S $ 满足 (D$_1$)。显然 $ S $ 也满足 (D$_2$) 与 (D$_3$)，故 $ S $ 在 $ \mathbb{R} $ 中。由于 $ S $ 本身就是 $ \mathcal{R} $ 的下界，事实上还是最大下界，故如例 4.6(a) 中一样，有 $ S = \inf(\mathcal{R}) $。由命题 10.1 我们断定 $ \mathbb{R} $ 是序完备的。

在 $ \mathbb{R} $ 上按如下方式定义加法：

\[ \mathbb{R}\times\mathbb{R}\to\mathbb{R}~,\quad(R,S)\mapsto R+S=\left\{r+s~;~r\in R,~s\in S\right\}~. \]

容易验证这个运算是良定义的、结合的与交换的，且以 $ O := \{x \in \mathbb{Q} ; x > 0\} $ 为单位元。进一步，$ R \in \mathbb{R} $ 的加法逆元是 $ -R := \{x \in \mathbb{Q} ; x + r > 0 \text{ 对所有 } r \in R\} $。于是 $ (\mathbb{R}, +) $ 是阿贝尔群，且 $ R > O \Leftrightarrow -R < O $。

在 $ \mathbb{R} $ 上按如下方式定义乘法：

\[ R\cdot R^{\prime}:=\left\{r r^{\prime}\in\mathbb{Q}\;;\;r\in R,\;r^{\prime}\in R^{\prime}\right\}\qquad\text{ 对 }R,R^{\prime}\geq O \]

以及

\[ R\cdot R^{\prime}:=\left\{\begin{array}{l l}-{\left(\left(-R\right)\cdot R^{\prime}\right)\;,}&\quad R<O\;,\;R^{\prime}\geq O\;,\\ -{\left(R\cdot\left(-R^{\prime}\right)\right)\;,}&\quad R\geq O\;,\;R^{\prime}<O\;,\\ {\left(-R\right)\cdot\left(-R^{\prime}\right)\;,}&\quad R<O\;,\;R^{\prime}<O\;.\\ \end{array}\right. \]

然后可以证明 $ \mathbb{R} := (\mathbb{R}, +, \cdot, \leq) $ 是一个有序域，它包含 $ \mathbb{Q} $ 作为子域，且 $ \mathbb{R} $ 上的序限制到 $ \mathbb{Q} $ 上就是通常的序。

现在设 $ \mathbb{S} $ 是 $ \mathbb{Q} $ 的某个序完备扩域。按如下方式定义一个函数：

\[ \mathbb{S}\to\mathbb{R}~,\quad r\mapsto\left\{x\in\mathbb{Q}~;~x>r\right\}~. \]

可以证明这是一个递增同构。因此，$ \mathbb{R} $ 在相差同构的意义下是唯一的。 $ \blacksquare $

例 10.3 的证明表明集合

\[ R:=\left\{x\in\mathbb{Q}\;;\;x>0\text{ 且 }x^{2}>2\right\} \]

在 $ \mathbb{R} $ 中，但不在 $ \mathbb{Q} $ 中。事实上，可以证明在 $ \mathbb{R} $ 中有 $ R = \sqrt{2} $。

##### R 上的自然序

$ \mathbb{R} $ 的元素称为实数，$ \mathbb{R} $ 上的序称为实数上的自然序。这个序到下列子集的限制

\[ \mathbb{N}\subset\mathbb{Z}\subset\mathbb{Q}\subset\mathbb{R} \]

当然就是每个子集上的‘通常序’。若 $ x > 0 $（或 $ x < 0 $），则称实数 $ x $ 为正的（或负的）。于是

\[ \mathbb{R}^{+}:=\left\{x\in\mathbb{R};x\geq0\right\} \]

是非负实数组成的集合。

由于 $ \mathbb{R} $ 是全序的，我们可以把实数看成数 $\text{轴}$\footnote{这里我们当然使用了点与线的通常直观观念。若要纯公理化地建立这些概念，推荐 P. Gabriel 那本非常易读的书 [Gab96]（尤其是其中有趣的历史评注）。}上的‘点’。这里我们约定，当 $ x < y $ 时 $ x $ 在 $ y $ 的‘左侧’，且整数 $ \mathbb{Z} $ 是‘等距的’。箭头给出数轴的‘定向’，也就是‘数增大’的方向。

<div style="text-align: center;"><img src="../../../tex/figures/edba157e7bd238a8.jpg" /></div>

$ \mathbb{R} $ 的这幅图像基于如下直观想法：实数‘在双向都无界’，且它们构成一个连续统，也就是说，数轴‘没有洞’。第一个断言将在命题 10.6 中得到论证。第二个断言正是戴德金连续性性质。

##### 扩展数轴

为了把符号 $ \pm\infty $ 的使用推广到实数，我们令 $ \bar{\mathbb{R}} := \mathbb{R} \cup \{\pm\infty\} $，即扩充实数轴，并作如下约定：

\[ -\infty<x<\infty\;,\qquad x\in\mathbb{R}\;, \]

从而 $ \bar{\mathbb{R}} $ 是全序集。我们再次强调，$ \pm\infty $ 不是实数。

除序结构外，我们还把运算 $ \cdot $ 与 +（部分地）推广到 $ \bar{\mathbb{R}} $ 如下：对 $ x \in \bar{\mathbb{R}} $，我们定义

\[ x+\infty:=\infty\quad\text{ 对 }x>-\infty\ ,\qquad x-\infty:=-\infty\quad\text{ 对 }x<\infty~, \]

以及

\[ x\cdot\infty:=\left\{\begin{array}{r r}{\infty\;,}&{\quad x>0\;,}\\ {-\infty\;,}&{\quad x<0\;,}\\ \end{array}\right.\qquad x\cdot(-\infty):=\left\{\begin{array}{r r}{-\infty\;,}&{\quad x>0\;,}\\ {\infty\;,}&{\quad x<0\;,}\\ \end{array}\right. \]

且对 $ x \in \mathbb{R} $，定义

\[ \frac{x}{\infty}:=\frac{x}{-\infty}:=0,\quad\frac{x}{0}:=\left\{\begin{array}{r r}{\infty,}&{\quad x>0,}\\ {-\infty,}&{\quad x<0.}\end{array}\right. \]

当然，我们还假设这些运算是交换的。\footnote{参见第 I.6 节中关于 $\infty$ 的脚注。}特别地，下列各条成立：

\[ \infty+\infty=\infty,\quad-\infty-\infty=-\infty,\quad\infty\cdot\infty=\infty, \]

\[ (-\infty)\cdot\infty=\infty\cdot(-\infty)=-\infty,\quad(-\infty)\cdot(-\infty)=\infty. \]

注意到

\[ \infty-\infty,\quad0\cdot(\pm\infty),\quad\frac{\pm\infty}{+\infty},\quad\frac{\pm\infty}{-\infty},\quad\frac{0}{0},\quad\frac{\pm\infty}{0} \]

没有定义，且 $ \bar{\mathbb{R}} $ 不是域。（为什么不是？）

##### 上确界与下确界的一个刻画

利用扩充实数轴，我们可以为那些原本没有上确界或下确界的实数集定义上确界与下确界：若 $ M $ 是 $ \mathbb{R} $ 的一个非空子集且在 $ \mathbb{R} $ 中不是上有界的，则 $ \infty $ 是 $ M $ 在 $ \bar{\mathbb{R}} $ 中的最小上界，故我们令 $ \sup(M) := \infty $。类似地，若 $ M $ 是 $ \mathbb{R} $ 的一个非空子集且不是下有界的，则 $ \inf(M) := -\infty $。我们还定义 $ \sup(\emptyset) = -\infty $ 与 $ \inf(\emptyset) = \infty $。这些约定的使用由下面关于实数集上确界与下确界的刻画所论证。

10.5 命题

(i) 若 $ A \subseteq \mathbb{R} $ 且 $ x \in \mathbb{R} $，则

$ (\alpha) \; x < \sup(A) \Leftrightarrow \exists a \in A \text{ 使得 } x < a. $

$ (\beta) \; x > \inf(A) \Longleftrightarrow \exists a \in A \text{ 使得 } x > a. $

(ii) $ \mathbb{R} $ 的每个子集 $ A $ 在 $ \bar{\mathbb{R}} $ 中都有上确界与下确界。

证明 (i) 若 $ A = \emptyset $，则结论直接由我们的约定可得。于是假设 $ A \neq \emptyset $。我们只证明 $ (\alpha) $，因为 $ (\beta) $ 可类似地证明。

$ \Rightarrow $ 若反之，存在某个 $ x < \sup(A) $ 使得对所有 $ a \in A $ 有 $ a \leq x $，则 $ x $ 是 $ A $ 的上界，而由 $ \sup(A) $ 的定义，这是不可能的。

‘⇐’ 设 $ a \in A $ 使得 $ x < a $。则显然 $ x < a \leq \sup(A) $。

(ii) 若 $ A $ 是 $ \mathbb{R} $ 的一个上有界的非空子集，则定理 10.4 保证 $ \operatorname{sup}(A) $ 在 $ \mathbb{R} $ 中存在，从而也在 $ \bar{\mathbb{R}} $ 中存在。另一方面，若 $ A = \emptyset $ 或 $ A $ 不是上有界的，则分别有 $ \operatorname{sup}(A) = -\infty $ 或 $ \operatorname{sup}(A) = \infty $。关于下确界的结论类似可得。

##### 阿基米德性质

10.6 命题（阿基米德） $ \mathbb{N} $ 在 $ \mathbb{R} $ 中不是上有界的，也就是说，对每个 $ x \in \mathbb{R} $，存在某个 $ n \in \mathbb{N} $ 使得 $ n > x $。

证明 设 $ x \in \mathbb{R} $。对 $ x < 0 $，结论显然为真。假设 $ x \geq 0 $，于是集合 $ A := \{n \in \mathbb{N} : n \leq x\} $ 非空且以 $ x $ 为上界。则 $ s := \sup(A) $ 在 $ \mathbb{R} $ 中存在。由命题 10.5，存在某个 $ a \in A $ 使得 $ s - 1/2 < a $。现在令 $ n := a + 1 $，从而 $ n > s $。则 $ n $ 不在 $ A $ 中，故 $ n > x $。

10.7 推论

(i) 设 $ a \in \mathbb{R} $。若对所有 $ n \in \mathbb{N}^\times $ 都有 $ 0 \leq a \leq 1/n $，则 $ a = 0 $。

(ii) 对每个满足 a > 0 的 $ a \in \mathbb{R} $，存在某个 $ n \in \mathbb{N}^\times $ 使得 $ 1/n < a $。

证明 若对所有 $ n \in \mathbb{N}^\times $ 都有 $ 0 < a \leq 1/n $，则由此可得对所有 $ n \in \mathbb{N}^\times $ 都有 $ n \leq 1/a $。于是 $ \mathbb{N} $ 在 $ \mathbb{R} $ 中会是上有界的，这与命题 10.6 矛盾。

(ii) 是 (i) 的等价改述。■

##### 有理数在 $ \mathbb{R} $ 中的稠密性

下一个命题表明 $ \mathbb{Q} $ 在 $ \mathbb{R} $ 中是‘稠密的’，也就是说，实数可以被有理数‘逼近’。我们将在下一章中以更大的普遍性来考虑这个想法。特别地，我们将看到，实数恰好由这个逼近性质所唯一刻画。

10.8 命题 对所有满足 $ a < b $ 的 $ a, b \in \mathbb{R} $，存在某个 $ r \in \mathbb{Q} $ 使得 $ a < r < b $。

证明 (a) 由假设我们有 $ b - a > 0 $。于是由命题 10.6，存在某个 $ n \in \mathbb{N} $ 使得 $ n > 1/(b - a) > 0 $。这蕴含 $ nb > na + 1 $。

(b) 再次由命题 10.6，存在 $ m_1, m_2 \in \mathbb{N} $ 使得 $ m_1 > na $ 且 $ m_2 > -na $，即 $ -m_2 < na < m_1 $。因此存在某个 $ m \in \mathbb{Z} $ 使得 $ m - 1 \leq na < m $（证明？）。结合 (a)，这蕴含

\[ n a<m\leq1+n a<n b. \]

于是令 $ r := m/n \in \mathbb{Q} $，结论随之得证。■

##### n 次方根

在本节开头，我们以对任意正有理数开平方根的愿望来引出 $ \mathbb{R} $ 的构造。下面的命题表明，我们已经达到了这个目标，而且远不止于此。

10.9 命题 对所有 $ a \in \mathbb{R}^+ $ 与 $ n \in \mathbb{N}^\times $，存在唯一的 $ x \in \mathbb{R}^+ $ 使得 $ x^n = a $。

证明 (a) 我们先证明唯一性断言。只需证明：若 $ 0 < x < y $ 且 $ n \geq 2 $，则 $ x^n < y^n $。这由下式可得

\[ y^{n}-x^{n}=\left(y-x\right)\sum_{j=0}^{n-1}y^{j}x^{n-j}>0 \]

（见习题 8.1）。

(b) 为证明解的存在性，我们不失一般性地假设 $ n \geq 2 $ 且 $ a \notin \{0,1\} $。

我们从情形 a > 1 开始。则由命题 8.9(iii)，我们有

\[ x^{n}>a^{n}>a>0\qquad\text{ 对所有 }x>a. \]

现在令 $ A := \{ x \in \mathbb{R}^+ : x^n \leq a \} $。则 $ 0 \in A $，且由 (10.6)，对所有 $ x \in A $ 有 $ x \leq a $。于是 $ s := \sup(A) $ 是一个良定义的实数，满足 $ s \geq 0 $。我们将通过证明 $ s^n \neq a $ 导致矛盾来证明 $ s^n = a $ 成立。

首先假设 $ s^{n} < a $，从而 $ a - s^{n} > 0 $。由推论 10.7 与命题 10.8，不等式

\[ b:=\sum_{k=0}^{n-1}{n\choose k}s^{k}>0 \]

蕴含存在某个 $ \varepsilon \in \mathbb{R} $ 使得 $ 0 < \varepsilon < (a - s^n)/b $。如有必要把 $ \varepsilon $ 取得更小，我们可以进一步假设 $ \varepsilon \leq 1 $。则对所有 $ k \in \mathbb{N}^\times $ 有 $ \varepsilon^k \leq \varepsilon $，且利用二项式定理，我们有

\[ (s+\varepsilon)^{n}=s^{n}+\sum_{k=0}^{n-1}\binom{n}{k}s^{k}\varepsilon^{n-k}\leq s^{n}+\Big(\sum_{k=0}^{n-1}\binom{n}{k}s^{k}\Big)\varepsilon<a. \]

这表明 $ s + \varepsilon \in A $，这与 $ \sup(A) = s < s + \varepsilon $ 矛盾。因此 $ s^n < a $ 不可能为真。

现在假设 $ s^{n} > a $。则特别地，s > 0，且

\[ b:=\sum^{*}\binom{n}{2j-1}s^{2j-1}>0~, \]

其中符号 $ \sum^* $ 表示我们对所有满足 $ 2j \leq n $ 的指标 $ j \in \mathbb{N}^\times $ 求和。命题 10.8 蕴含存在某个 $ \varepsilon \in \mathbb{R} $ 使得 $ 0 < \varepsilon < (s^n - a)/b $ 且 $ \varepsilon \leq 1 \wedge s $。于是我们有

\[ \begin{align*}(s-\varepsilon)^{n}&=s^{n}+\sum_{k=0}^{n-1}(-1)^{n-k}\binom{n}{k}s^{k}\varepsilon^{n-k}\\&\geq s^{n}-\sum^{*}\binom{n}{2j-1}s^{2j-1}\varepsilon^{n-2j+1}\geq s^{n}-\varepsilon\sum^{*}\binom{n}{2j-1}s^{2j-1}\\&>a.\end{align*} \]

现在设 $ x \in \mathbb{R}^+ $ 满足 $ x \geq s - \varepsilon $。则由 (10.7) 可得 $ x^n \geq (s - \varepsilon)^n > a $，即 $ x \notin A $。这表明 $ s - \varepsilon $ 是 $ A $ 的上界，而这是不可能的，因为 $ s - \varepsilon < s $ 且 $ s = \sup(A) $。于是假设 $ s^n > a $ 不可能为真。

由于 $ \mathbb{R} $ 是全序的，唯一剩下的可能便是 $ s^{n}=a $。

最后我们考虑满足 $ 0 < a < 1 $ 的 $ a \in \mathbb{R}^+ $ 的情形。令 $ b := 1/a > 1 $。则由上可知，存在唯一的 $ y > 0 $ 使得 $ y^n = b $，从而 $ x := 1/y $ 是 $ x^n = a $ 的唯一解。 $ \blacksquare $

10.10 注 (a) 若 $ n \in \mathbb{N}^\times $ 是奇数，则对每个 $ a \in \mathbb{R} $，方程 $ x^n = a $ 有唯一解 $ x \in \mathbb{R} $。

证明 若 $ a \geq 0 $，则结论由命题 10.9 以及如下事实可得：对 $ n \in 2\mathbb{N} + 1 $，$ y < 0 $ 蕴含 $ y^n < 0 $。若 $ a < 0 $，则结论由我们刚证明的结果以及如下事实可得：$ x \mapsto -x $ 是 $ x^n = a $ 的解集与 $ x^n = -a $ 的解集之间的双射：若 $ x^n = a $，则由于 $ n $ 是奇数，

\[ \left(-x\right)^{n}=\left(-1\right)^{n}x^{n}=(-1)a=-a. \]

类似地，$ x^{n} = -a $ 蕴含 $ (-x)^{n} = a $。■

(b) 假设要么 $ n \in \mathbb{N} $ 为奇数且 $ a \in \mathbb{R} $，要么 $ n \in \mathbb{N} $ 为偶数且 $ a \in \mathbb{R}^+ $。用 $ \sqrt[n]{a} $ 表示方程 $ x^n = a $ 的唯一解（若 $ n $ 为奇数则在 $ \mathbb{R} $ 中，若 $ n $ 为偶数则在 $ \mathbb{R}^+ $ 中）。我们称 $ \sqrt[n]{a} $ 为 $ a $ 的 $ n $ 次方根。

若 $ n $ 为偶数且 $ a>0 $，则方程 $ x^n=a $ 在 $ \mathbb{R} $ 中除 $ \sqrt[n]{a} $ 外还有解 $ -\sqrt[n]{a} $，即‘$ a $ 的负 $ n $ 次方根’。

证明 由于 n 为偶数，我们有 $ (-1)^{n}=1 $，从而

\[ \left(-\sqrt[n]{a}\right)^{n}=\left(-1\right)^{n}\left(\sqrt[n]{a}\right)^{n}=a, \]

这证明了该结论。■

(c) 函数

\[ \mathbb{R}^{+}\to\mathbb{R}^{+}~,\quad x\mapsto\sqrt[n]{x}~,\qquad n\in2\mathbb{N}~, \]

与

\[ \mathbb{R}\to\mathbb{R}~,\quad{~x\mapsto\sqrt[n]{x}~},\qquad n\in2\mathbb{N}+1~, \]

是严格递增的。

证明 由 (10.5) 可得，对所有 $ 0 < x < y $ 有 $ 0 < \sqrt[n]{x} < \sqrt[n]{y} $。若 $ x < y < 0 $ 且 $ n \in 2\mathbb{N} + 1 $，则由 (b) 中的定义以及我们刚证明的结果，可得 $ \sqrt[n]{x} < \sqrt[n]{y} $。其余情形是平凡的。

(d) 设 $ a \in \mathbb{R}^+ $，且 $ r = p/q \in \mathbb{Q} $ 为既约形式。按如下方式定义 a 的 $ r $ 次幂：

\[ a^{r}:=\left(\sqrt[q]{a}\right)^{p}. \]

注意到，由于 r 的既约表示的唯一性，$ a^{r} $ 是良定义的。

(e) 推论 9.7 与命题 10.9 特别表明 $ \sqrt{2} \in \mathbb{R} \backslash \mathbb{Q} $，也就是说，$ \sqrt{2} $ 是一个非有理的实数。$ \mathbb{R} \backslash \mathbb{Q} $ 的元素称为无理数。

##### 无理数在 $ \mathbb{R} $ 中的稠密性

在命题 10.8 中我们看到，有理数 $ \mathbb{Q} $ 在 $ \mathbb{R} $ 中是稠密的。下一个命题表明，无理数 $ \mathbb{R} \setminus \mathbb{Q} $ 具有同样的性质。

10.11 命题 对任意满足 $ a < b $ 的 $ a, b \in \mathbb{R} $，存在某个 $ \xi \in \mathbb{R} \setminus \mathbb{Q} $ 使得 $ a < \xi < b $。

证明 设 $ a, b \in \mathbb{R} $ 满足 $ a < b $。由命题 10.8，存在有理数 $ r_1, r_2 \in \mathbb{Q} $ 使得 $ a < r_1 < b $ 且 $ r_1 < r_2 < b $。令 $ \xi := r_1 + (r_2 - r_1) / \sqrt{2} $，我们有 $ r_1 < \xi $，且

\[ r_{2}-\xi=(r_{2}-r_{1})\big(1-1/\sqrt{2}\big)>0~, \]

从而 $ \xi < r_2 $。于是 $ r_1 < \xi < r_2 $，并且也有 $ a < \xi < b $。最后，$ \xi $ 不可能是有理数，因为否则 $ \sqrt{2} = (r_2 - r_1)/(\xi - r_1) $ 也会是有理数。■

由推论 9.7，任何一个不是自然数的平方的自然数的平方根都是无理数。特别地，存在‘许多’无理数。我们将在 II.7 节中证明 $ \mathbb{R} $ 是不可数的。由于 $ \mathbb{Q} $ 是可数的，命题 6.8 蕴含事实上存在不可数多个无理数。

##### 区间

区间是 $ \mathbb{R} $ 的这样一个子集 $ J $，使得

\[ (x,y\in J,x<y)\Rightarrow(z\in J\text{ 对 }x<z<y). \]

显然 $ \emptyset $、$ \mathbb{R} $、$ \mathbb{R}^+ $、$ -\mathbb{R}^+ $ 都是区间，但 $ \mathbb{R}^× $ 不是。若 $ J $ 是一个非空区间，则 $ \inf(J) \in \mathbb{R} $ 是 $ J $ 的 $ \text{左}\ \text{端点} $，而 $ \sup(J) \in \mathbb{R} $ 是 $ J $ 的 $ \text{右}\ \text{端点} $。容易作为练习证明：一个非空区间 $ J $ 由它的端点以及这些端点是否属于 $ J $ 所确定。于是，若 $ a := \inf(J) $ 属于 $ J $，则 $ J $ 在左侧是闭的，否则它在左侧是 $ \text{开} $ 的。类似地，若 $ b := \sup(J) $ 属于 $ J $，则 $ J $ 在右侧是闭的，否则它在右侧是 $ \text{开} $ 的。若区间 $ J $ 为空，或在左侧与右侧都是开的，则称 $ J $ 为 $ \text{开} $ 的。此时我们把 $ J $ 记为 $ (a, b) $，即

\[ (a,b)=\left\{x\in\mathbb{R};\;a<x<b\right\}\;,\qquad-\infty\leq a\leq b\leq\infty\;, \]

并约定 $ (a,a):=\emptyset $。若 $ J $ 在左侧与右侧都是闭的，或者为空，则称 $ J $ 为闭区间，我们把它记为

\[ [a,b]=\{x\in\mathbb{R}\;;\;a\leq x\leq b\}\;,\qquad-\infty<a\leq b<\infty\;. \]

进一步，若 $ J $ 在左侧开、在右侧闭（或在左侧闭、在右侧开），我们把它记为 $ (a,b] $（或 $ [a,b) $）。$ \mathbb{R} $ 的每个单元素子集 $ \{a\} $ 都是闭区间。若一个区间至少含有两个点，则称它为 $ \text{完全} $ 的。若两个端点都在 $ \mathbb{R} $ 中，则它是 $ \text{有界} $ 的，否则它是 $ \text{无界} $ 的。$ \mathbb{R} $ 的每个无界区间，除 $ \mathbb{R} $ 本身外，都具有 $ [a,\infty) $、$ (a,\infty) $、$ (-\infty,a] $ 或 $ (-\infty,a) $ 的形式，其中 $ a\in\mathbb{R} $。若 $ J $ 是有界区间，则非负数 $ |J|:=\sup(J)-\inf(J) $ 称为 $ J $ 的 $ \text{长度} $。

##### 习题

1 确定 $ \mathbb{R}^{2} $ 的下列子集：

\[ A:=\left\{(x,y)\in\mathbb{R}^{2}\;;\;|x-1|+|y+1|\leq1\right\}\;, \]

\[ B:=\left\{(x,y)\in\mathbb{R}^{2};2x^{2}+y^{2}>1,|x|\leq|y|\right\}, \]

\[ C:=\left\{(x,y)\in\mathbb{R}^{2};\;x^{2}-y^{2}>1,\;x-2y<1,\;y-2x<1\right\}. \]

2 (a) 证明

\[ \mathbb{Q}\bigl(\sqrt{2}\bigr):=\left\{a+b\sqrt{2}\;;\;a,b\in\mathbb{Q}\right\} \]

是 $ \mathbb{R} $ 的一个子域，它包含 $ \mathbb{Q} $，但不是序完备的。$ \sqrt{3} $ 是否在 $ \mathbb{Q}(\sqrt{2}) $ 中？

(b) 证明 $ \mathbb{Q} $ 是 $ \mathbb{R} $ 的最小子域。

3 对 $ a, b \in \mathbb{R}^+ $ 与 $ r, s \in \mathbb{Q} $，证明下列各条：

(a)  $ a^{r+s} = a^ra^s $；(b)  $ (a^r)^s = a^{rs} $；(c)  $ a^rb^r = (ab)^r $。

4 对 $ m, n \in \mathbb{N}^\times $ 与 $ a, b \in \mathbb{R}^+ $，证明下列各条：

(a)  $ a^{1/m} < a^{1/n} $，若 m < n 且 0 < a < 1。

(b)  $ a^{1/m} > a^{1/n} $，若 m < n 且 a > 1。

5 设 $ f: \mathbb{R} \to \mathbb{R} $ 是一个递增函数。假设 $ a, b \in \mathbb{R} $ 满足 $ a < b $、$ f(a) > a $ 且 $ f(b) < b $。证明 $ f $ 至少有一个不动点，也就是说，存在某个 $ x \in \mathbb{R} $ 使得 $ f(x) = x $。（提示：考虑 $ z := \sup\{y \in \mathbb{R} : a \leq y \leq b $，$ y \leq f(y)\} $ 与 $ f(z) $。）

6 证明伯努利不等式：若 $ x \in \mathbb{R} $ 满足 $ x > -1 $ 且 $ n \in \mathbb{N} $，则

\[ (1+x)^{n}\geq1+nx. \]

7 设 $ M \subseteq \mathbb{R} $ 非空，且 $ \inf(M) > 0 $。证明集合 $ M' := \{1/x; x \in M\} $ 是上有界的，且 $ \sup(M') = 1/\inf(M) $。

8 对 $ \mathbb{R} $ 的非空子集 A 与 B，证明下列各条：

\[ \sup(A+B)=\sup(A)+\sup(B),\quad\inf(A+B)=\inf(A)+\inf(B). \]

9 (a) 对 $ (0,\infty) $ 的非空子集 A 与 B，证明下列各条：

\[ \sup(A\cdot B)=\sup(A)\cdot\sup(B),\quad\inf(A\cdot B)=\inf(A)\cdot\inf(B). \]

(b) 求 $ \mathbb{R} $ 的非空子集 A 与 B，使得

\[ \sup(A)\cdot\sup(B)<\sup(A\cdot B)\quad\text{ 且 }\quad\inf(A)\cdot\inf(B)>\inf(A\cdot B). \]

10 设 $ n \in \mathbb{N}^\times $ 且 $ x = (x_1, \ldots, x_n) \in [\mathbb{R}^+]^n $。则 $ x_1, \ldots, x_n $ 的几何平均与算术平均分别定义为 $ g(x) := \sqrt[n]{\prod_{j=1}^{n} x_j} $ 与 $ a(x) := (1/n) \sum_{j=1}^{n} x_j $。证明 $ g(x) \leq a(x) $（几何平均与算术平均不等式）。

11 对 $ \mathbb{R}^n $ 中的 $ x = (x_1, \ldots, x_n) $ 与 $ y = (y_1, \ldots, y_n) $，定义 $ x \cdot y := \sum_{j=1}^n x_j y_j $。证明

\[ \sqrt[|\alpha|]{x^{\alpha}}\leq(x\cdot\alpha)/|\alpha|. \]

对所有 $ x \in [\mathbb{R}^+]^n $ 与 $ \alpha \in \mathbb{N}^n $ 成立（加权几何平均与加权算术平均不等式）。

12 验证 $ \mathbb{R} $ 是一个阿基米德有序域。见习题 9.4。

13 设 $ (K, \leq) $ 是 $ (\mathbb{Q}, \leq) $ 的一个有序扩域，具有如下性质：对每个满足 $ a > 0 $ 的 $ a \in K $，存在某个 $ r \in \mathbb{Q} $ 使得 $ 0 < r < a $。证明 $ K $ 是一个阿基米德有序域。见习题 9.4。

14 证明有序域 $ K $ 是阿基米德的，当且仅当 $ \{n \cdot 1; n \in \mathbb{N}\} $ 在 $ K $ 中不是上有界的。见习题 9.4。

15 设 $ K $ 是以 $ \mathbb{R} $ 为系数的有理函数域（见注 9.3(c)）。则对每个 $ f \in K $，存在唯一的多项式 $ p = \sum_{k=0}^{n} p_k X^k $ 与 $ q = \sum_{k=0}^{m} q_k X^k $，使得 $ q_m = 1 $ 且 $ f = p/q $ 为既约形式（也就是说，$ p $ 与 $ q $ 没有公共的非常数因式）。采用这些记号，令

\[ \mathcal{P}:=\left\{f\in K\;;\;p_{n}\geq0\right\}. \]

最后令

\[ f\prec g:\Leftrightarrow g-f\in\mathcal{P}. \]

证明 $ (K,\prec) $ 是一个有序域，但不是阿基米德有序域。

16 对每个 $ n \in \mathbb{N} $，设 $ I_n $ 是 $ \mathbb{R} $ 中的一个非空闭区间。若下列条件成立，则称族 $ \{I_n; n \in \mathbb{N}\} $ 为区间**套**：

(i) 对所有 $ n \in \mathbb{N} $，$ I_{n+1} \subseteq I_n $。

(ii) 对每个 $ \varepsilon > 0 $，存在某个 $ n \in \mathbb{N} $ 使得 $ |I_n| < \varepsilon $。

(a) 证明对每个区间套 $ \{I_n;\, n \in \mathbb{N}\} $，存在唯一的 $ x \in \mathbb{R} $ 使得 $ x \in \bigcap_n I_n $。

(b) 对每个 $ x \in \mathbb{R} $，证明存在一个具有有理端点的区间套 $ \{I_n; n \in \mathbb{N}\} $，使得 $ \{x\} = \bigcap_n I_n $。
