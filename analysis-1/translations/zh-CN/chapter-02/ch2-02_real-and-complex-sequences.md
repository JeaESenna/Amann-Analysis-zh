## 2 实序列与复序列

本节我们导出数列计算的最重要法则。若把这些序列解释为向量空间 $ s = s(\mathbb{K}) = \mathbb{K}^{\mathbb{N}} $ 中的向量，则这些法则表明收敛序列构成 $ s $ 的一个子空间。对于实序列，我们利用 $ \mathbb{R} $ 的序结构导出比较判别法，它是研究 $ s(\mathbb{R}) $ 中收敛性的主要工具。

##### 零序列

$ \mathbb{K} $ 中的序列 $ (x_n) $ 称为**零序列**，若它收敛于零，即若对于每个 $ \varepsilon > 0 $，存在某个 $ N \in \mathbb{N} $ 使得对一切 $ n \geq N $ 有 $ |x_n| < \varepsilon $。我们以 $ c_0 $ 记 $ \mathbb{K} $ 中所有零序列之集，即

\[ c_{0}:=c_{0}(\mathbb{K}):=\big\{(x_{n})\in s\;;\;(x_{n})\text{ 收敛且 }\operatorname*{l i m}x_{n}=0\big\}\;. \]

2.1 注 设 $ (x_n) $ 是 $ \mathbb{K} $ 中的序列，且 $ a \in \mathbb{K} $。

(a) $ (x_n) $ 是零序列当且仅当 $ (|x_n|) $，即绝对值序列，是 $ \mathbb{R} $ 中的零序列。

证明 这直接由定义可得。

(b) $ (x_{n}) $ 收敛于 a 当且仅当“平移序列” $ (x_{n}-a) $ 是零序列。

证明 由命题 1.7 我们知道，$(x_n)$ 收敛于 $a$ 当且仅当对于每个 $\varepsilon > 0$，存在某个 $N$ 使得对一切 $n \geq N$ 有 $|x_n - a| < \varepsilon$。因此该论断由 (a) 可得。

(c) 若存在实零序列 $ (r_n) $，使得对几乎所有 $ n \in \mathbb{N} $ 有 $ |x_n| \leq r_n $，则 $ (x_n) $ 是零序列。

证明 设 $ \varepsilon > 0 $。由假设，存在 $ M, N \in \mathbb{N} $ 使得对一切 $ n \geq M $ 有 $ |x_n| \leq r_n $，且对一切 $ n \geq N $ 有 $ r_n < \varepsilon $。从而对一切 $ n \geq \max\{M, N\} $ 有 $ |x_n| < \varepsilon $。■

##### 基本法则

2.2 命题 设 $ (x_n) $ 与 $ (y_n) $ 是 $ \mathbb{K} $ 中的收敛序列，且 $ \lim x_n = a $，$ \lim y_n = b $。设 $ \alpha \in \mathbb{K} $。

(i) 序列 $ (x_{n} + y_{n}) $ 收敛，且 $ \lim(x_{n} + y_{n}) = a + b $。

(ii) 序列 $ (\alpha x_n) $ 收敛，且 $ \lim(\alpha x_n) = \alpha a $。

证明 设 $ \varepsilon > 0 $。

(i) 因为 $ x_n \to a $ 且 $ y_n \to b $，存在 $ M, N \in \mathbb{N} $ 使得 $ |x_n - a| < \varepsilon/2 $

对一切 $ n \geq M $ 成立，且 $ |y_n - b| < \varepsilon/2 $ 对一切 $ n \geq N $ 成立。因此

\[ \left|x_{n}+y_{n}-(a+b)\right|\leq\left|x_{n}-a\right|+\left|y_{n}-b\right|<\frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon,\qquad n\geq\max\{M,N\}. \]

这表明 $ (x_{n} + y_{n}) $ 收敛于 $ a + b $。

(ii) 由于 $ \alpha = 0 $ 的情形是显然的，我们设 $ \alpha \neq 0 $。由假设，($ x_n $) 收敛，其极限为 $ a $。于是存在某个 $ N $ 使得对一切 $ n \geq N $ 有 $ |x_n - a| < \varepsilon / |\alpha| $。由此可得

\[ \left|\alpha x_{n}-\alpha a\right|=\left|\alpha\right|\left|x_{n}-a\right|\leq\left|\alpha\right|\frac{\varepsilon}{\left|\alpha\right|}=\varepsilon\;,\qquad n\geq N\;, \]

这就证明了该论断。■

2.3 注 记 K 中所有收敛序列之集为

\[ c:=c(\mathbb{K}):=\bigl\{(x_{n})\in s~;~\left(x_{n}\right)\text{ 收敛}\bigr\}. \]

那么命题 2.2 有如下解释：

c 是 s 的子空间，且函数

\[ \lim:c\to\mathbb{K},\quad(x_{n})\mapsto\lim x_{n} \]

是线性的。

显然 $ \ker(\lim) = c_0 $，从而由例 I.12.3(c)，$ c_0 $ 是 $ c $ 的子空间。■

下一个命题特别表明，收敛序列可以“逐项”相乘。

2.4 命题 设 $ (x_{n}) $ 与 $ (y_{n}) $ 是 $ \mathbb{K} $ 中的序列。

(i) 若 $ (x_{n}) $ 是零序列且 $ (y_{n}) $ 是有界序列，则 $ (x_{n}y_{n}) $ 是零序列。

(ii) 若 $ \lim x_{n}=a $ 且 $ \lim y_{n}=b $，则 $ \lim(x_{n}y_{n})=ab $。

证明 (i) 由于 $(y_n)$ 有界，存在某个 $M > 0$ 使得对一切 $n \in \mathbb{N}$ 有 $|y_n| \leq M$。由于 $(x_n)$ 是零序列，对于每个 $\varepsilon > 0$，存在某个 $N \in \mathbb{N}$ 使得对一切 $n \geq N$ 有 $|x_n| < \varepsilon/M$。现在由此可得

\[ |x_{n}y_{n}|=|x_{n}||y_{n}|<\frac{\varepsilon}{M}M=\varepsilon,\qquad n\geq N. \]

因此 $(x_{n}y_{n})$ 是零序列。

(ii) 由于 $ x_n \to a $，$ (x_n - a) $ 是零序列。由命题 1.10，$ (y_n) $ 有界。由 (i)，$ ((x_n - a)y_n)_{n \in \mathbb{N}} $ 是零序列。由于 $ (a(y_n - b))_{n \in \mathbb{N}} $ 也是零序列，命题 2.2 蕴含

\[ x_{n}y_{n}-a b=(x_{n}-a)y_{n}+a(y_{n}-b)\to0\quad(n\to\infty). \]

因此序列 $ (x_{n}y_{n}) $ 收敛于 ab。

2.5 注 (a) 命题 2.4(i) 中序列 $ (y_{n}) $ 有界的假设不可去掉。

证明 设对一切 $ n \in \mathbb{N}^\times $ 有 $ x_n := 1/n $，$ y_n := n^2 $。则 $ (x_n) $ 是零序列，但序列 $ (x_ny_n) = (n)_{n \in \mathbb{N}} $ 发散。■

(b) 由例 I.12.11(a) 我们知道 $ s = s(\mathbb{K}) = \mathbb{K}^{\mathbb{N}} $ 是一个（$ \mathbb{K} $ 上的）代数。因此，结合注 2.3，命题 2.4(ii) 可以改述如下：

\[ c\text{ 是 }s\text{ 的子代数，且函数} \]

\[ \lim:c\to\mathbb{K}\text{ 是代数同态}\;. \]

最后，由命题 1.10 与命题 2.4(i) 可知，$ c_{0} $ 也是 c 的理想。

下一个命题与注 2.5(b) 表明，商序列的极限等于分子的极限除以分母的极限，只要这些极限存在。

2.6 命题 设 $ (x_n) $ 是 $ \mathbb{K} $ 中的收敛序列，其极限为 $ a \in \mathbb{K}^\times $。则 $ (x_n) $ 的几乎所有项都非零，且 $ 1/x_n \to 1/a $（$ n \to \infty $）。

证明 由于 $ |a| > 0 $，存在某个 $ N \in \mathbb{N} $ 使得对一切 $ n \geq N $ 有 $ |x_n - a| < |a|/2 $。因此，由反向三角不等式，

\[ |a|-|x_{n}|\leq|x_{n}-a|\leq\frac{|a|}{2},\qquad n\geq N, \]

即对几乎所有 $ n $ 有 $ |x_n| \geq |a|/2 > 0 $。这证明了第一个论断。由 $ |x_n| \geq |a|/2 $ 还可得

\[ \left|\frac{1}{x_{n}}-\frac{1}{a}\right|=\frac{\left|x_{n}-a\right|}{\left|x_{n}\right|\left|a\right|}\leq\frac{2}{\left|a\right|^{2}}\left|x_{n}-a\right|,\qquad n\geq N. \]

由假设与注 2.1(b)，$(|x_n-a|)$ 是零序列，从而由命题 2.2，$(2|x_n-a|/|a|^2)$ 也是零序列。于是该论断由 (2.1) 以及注 2.1(b) 与 (c) 可得。

##### 比较判别法

接下来我们考察收敛实序列与 $ \mathbb{R} $ 的序结构之间的关系。特别地，在命题 2.9 中我们导出比较判别法，这是一种简单但非常有用的确定实序列极限的方法。

2.7 命题 设 $ (x_n) $ 与 $ (y_n) $ 是 $ \mathbb{R} $ 中的收敛序列，且对无穷多个 $ n \in \mathbb{N} $ 有 $ x_n \leq y_n $。则

\[ \lim x_{n}\leq\lim y_{n}. \]

证明 设 $ a := \lim x_n $，$ b := \lim y_n $，并反设 $ a > b $。则 $ \varepsilon := a - b $ 为正，于是存在某个 $ n \in \mathbb{N} $ 使得

\[ a-\varepsilon/4<x_{n}\leq y_{n}<b+\varepsilon/4, \]

即 $ \varepsilon = a - b < \varepsilon/2 $，这是不可能的。■

2.8 注 命题 2.7 对严格不等式不成立，即对无穷多个 $ n \in \mathbb{N} $ 有 $ x_n < y_n $ 并不蕴含 $ \lim x_n < \lim y_n $。

证明 设对一切 $ n \in \mathbb{N}^\times $ 有 $ x_n := -1/n $，$ y_n := 1/n $。则对一切 $ n \in \mathbb{N}^\times $ 有 $ x_n < y_n $，但 $ \lim x_n = \lim y_n = 0 $。■

2.9 命题 设 $(x_n)$、$(y_n)$ 与 $(z_n)$ 是实序列，具有性质：对几乎所有 $n \in \mathbb{N}$ 有 $x_n \leq y_n \leq z_n$。若 $\lim x_n = \lim z_n =: a$，则 $(y_n)$ 也收敛于 $a$。

证明 设 $ m_0 $ 使得对一切 $ n \geq m_0 $ 有 $ x_n \leq y_n \leq z_n $。给定 $ \varepsilon > 0 $，设 $ m_1 $ 与 $ m_2 $ 使得

\[ x_{n}>a-\varepsilon,\quad n\geq m_{1}\qquad\text{且}\qquad z_{n}<a+\varepsilon,\quad n\geq m_{2}. \]

令 $N := \max\{m_0, m_1, m_2\}$。则

\[ a-\varepsilon<x_{n}\leq y_{n}\leq z_{n}<a+\varepsilon,\qquad n\geq N, \]

即 $ (y_{n}) $ 的几乎所有项都位于 $ a $ 的 $ \varepsilon $-邻域 $ \mathbb{B}(a,\varepsilon) $ 中。  $ \blacksquare $

##### 复序列

若 $(x_n)$ 是 $\mathbb{R}$ 中的收敛序列且 $\lim x_n = a$，则 $\lim |x_n| = |a|$。事实上，若 $(x_n)$ 是零序列，则这就是例 2.1(a)。若 $a > 0$，则 $(x_n)$ 的几乎所有项都为正（见习题 3），从而 $\lim |x_n| = \lim x_n = a = |a|$。最后，若 $a < 0$，则序列 $(x_n)$ 的几乎所有项都为负，于是我们有

\[ \lim\left|x_{n}\right|=\lim(-x_{n})=-\lim x_{n}=-a=\left|a\right|. \]

下一个命题表明，这对复序列同样成立。

2.10 命题 设 $ (x_n) $ 是 $ \mathbb{K} $ 中的收敛序列，使得 $ \lim x_n = a $。则 $ (|x_n|) $ 收敛，且 $ \lim |x_n| = |a| $。

证明 设 $ \varepsilon > 0 $。则存在某个 $ N $ 使得对一切 $ n \geq N $ 有 $ |x_n - a| < \varepsilon $。由反向三角不等式我们有

\[ \left||x_{n}|-|a|\right|\leq|x_{n}-a|<\varepsilon\;,\qquad n\geq N\;. \]

因此对一切 $ n \geq N $ 有 $ |x_n| \in \mathbb{B}_{\mathbb{R}}(|a|, \varepsilon) $。这表明 $ (|x_n|) $ 收敛于 $ |a| $。■

$ \mathbb{C} $ 中的收敛序列可由相应的实部与虚部的收敛来刻画。

2.11 命题 对于 $ \mathbb{C} $ 中的序列 $ (x_{n}) $，下列条件等价：

(i) $ (x_{n}) $ 收敛。

(ii) $ (\mathrm{Re}(x_n)) $ 与 $ (\mathrm{Im}(x_n)) $ 收敛。

在此情形下，

\[ \lim x_{n}=\lim\operatorname{R e}(x_{n})+i\lim\operatorname{I m}(x_{n}). \]

证明 “(i)⇒(ii)” 设 $ (x_n) $ 收敛，且 $ x = \lim x_n $。则由注 2.1(b)，$ (|x_n - x|) $ 是零序列。由命题 I.11.4 我们有

\[ \left|\operatorname{Re}(x_{n})-\operatorname{Re}(x)\right|\leq\left|x_{n}-x\right|. \]

由注 2.1(c)，$ \left(\mathrm{Re}(x_{n}) - \mathrm{Re}(x)\right) $ 也是零序列，即 $ \left(\mathrm{Re}(x_{n})\right) $ 收敛于 $ \mathrm{Re}(x) $。同理，$ \left(\mathrm{Im}(x_{n})\right) $ 收敛于 $ \mathrm{Im}(x) $。

 “(ii)⇒(i)” 设 $ (Re(x_n)) $ 与 $ (Im(x_n)) $ 收敛，且 $ a := \lim Re(x_n) $，$ b := \lim Im(x_n) $。令 $ x := a + ib $。则

\[ |x_{n}-x|=\sqrt{|\operatorname{R e}(x_{n})-a|^{2}+|\operatorname{I m}(x_{n})-b|^{2}}\leq|\operatorname{R e}(x_{n})-a|+|\operatorname{I m}(x_{n})-b|. \]

由这个不等式容易得出 $ (x_{n}) $ 在 $ \mathbb{C} $ 中收敛于 x。  $ \blacksquare $

我们以若干例来说明上述命题，以此结束本节。

2.12 例 (a) $ \lim_{n \to \infty} \frac{n+1}{n+2} = 1 $。

证明 把 $ (n+1)/(n+2) $ 写成 $ (1+1/n)/(1+2/n) $ 的形式。由于

\[ \lim(1+1/n)=\lim(1+2/n)=1 \]

（为什么？），该论断由命题 2.4 与 2.6 可得。■

(b) $ \lim_{n \to \infty} \left( \frac{3n}{(2n+1)^2} + i \frac{2n^2}{n^2 + 1} \right) = 2i $。

证明 设

\[ x_{n}:=\frac{3n}{(2n+1)^{2}}+i\frac{2n^{2}}{n^{2}+1}~,\qquad n\in\mathbb{N}~. \]

把 $ x_{n} $ 的实部写成形式

\[ \frac{3/n}{(2+1/n)^{2}}. \]

由于 $ \lim(2+1/n)=2 $，由命题 2.4 可得 $ \lim(2+1/n)^2=4 $。由于 $ (3/n) $ 是零序列，由命题 2.4 与 2.6 我们有

\[ \mathrm{R e}(x_{n})=\frac{3n}{(2n+1)^{2}}\to0\ \mathrm{(}n\to\infty\mathrm{)}. \]

由例 1.8(a) 与命题 2.6，$ x_{n} $ 的虚部序列满足

\[ \frac{2n^{2}}{n^{2}+1}=\frac{2}{1+1/n^{2}}\to2\ \left(n\to\infty\right). \]

该论断现在由命题 2.11 可得。■

(c) $ \left(\frac{i^{n}}{1+in}\right) $ 是 $ \mathbb{C} $ 中的零序列。

证明 我们写出

\[ \frac{i^{n}}{1+i n}=\frac{1}{n}\frac{i^{n}}{i+1/n},\qquad n\in\mathbb{N}^{\times}. \]

则由命题 2.4，只需证明序列 $ (i^n/(i+1/n))_{n\in\mathbb{N}^\times} $ 有界。由于

\[ \left|i+\frac{1}{n}\right|=\sqrt{1+\frac{1}{n^{2}}}\geq1,\qquad n\in\mathbb{N}^{\times}, \]

我们得到不等式

\[ \left|\frac{i^{n}}{i+1/n}\right|=\frac{|i^{n}|}{|i+1/n|}=\frac{1}{|i+1/n|}\leq1,\qquad n\in\mathbb{N}^{\times}, \]

这就证明了所称的有界性。■

##### 习题

1 判断 $ \mathbb{R} $ 中的下列序列 $ (x_n) $ 是否收敛。若收敛，计算其极限。

(a)

\[ x_{n}:=\sqrt{n+1}-\sqrt{n}. \]

(b)

\[ x_{n}:=(-1)^{n}\sqrt{n}\left(\sqrt{n+1}-\sqrt{n}\right). \]

\[ (c)x_{n}:=\frac{1+2+3+\cdots+n}{n+2}-\frac{n}{2}. \]

\[ (d)x_{n}:=\frac{(2-1/\sqrt{n})^{10}-(1+1/n^{2})^{10}}{1-1/n^{2}-1/\sqrt{n}}. \]

\[ (e)x_{n}:=(100+1/n)^{2}. \]

2 利用 $ (1+1)^{n} $ 的二项式展开，证明 $ (n^{3}/2^{n}) $ 是零序列。

3 设 $ (x_{n}) $ 是极限为正的收敛实序列。证明该序列的几乎所有项都为正。

4 设 $ (x_{j}) $ 是 $ \mathbb{K} $ 中极限为 a 的收敛序列。证明

\[ \lim_{n\to\infty}\frac{1}{n}\sum_{j=1}^{n} x_{j}=a. \]

5 对于 $ m \in \mathbb{N}^\times $，把 $ \mathbb{K}^m $ 视为带有积度量的度量空间（见例 1.2(e)）。设

\[ s(\mathbb{K}^{m}):=\operatorname{F u n c t}(\mathbb{N},\mathbb{K}^{m})=(\mathbb{K}^{m})^{\mathbb{N}} \]

且

\[ c(\mathbb{K}^{m}):=\bigl\{(x_{n})\in s(\mathbb{K}^{m})\;;\;(x_{n})\text{ 收敛}\bigr\}. \]

证明下列结论：

(a) $ c(\mathbb{K}^m) $ 是 $ s(\mathbb{K}^m) $ 的子空间。

(b) 函数

\[ \lim:c(\mathbb{K}^{m})\to\mathbb{K}^{m},\quad(x_{n})\mapsto\lim_{n\to\infty}(x_{n}) \]

是线性的。

(c) 设 $(\lambda_n) \in c(\mathbb{K})$ 与 $(x_n) \in c(\mathbb{K}^m)$ 满足 $\lambda_n \to \alpha$ 且 $x_n \to a$。则在 $\mathbb{K}^m$ 中有 $\lambda_nx_n \to \alpha a$（提示：例 1.8(e)）。

6 设 $ (x_n) $ 是 $ \mathbb{K} $ 中的收敛序列，其极限为 $ a $。设 $ p, q \in \mathbb{K}[X] $ 满足 $ q(a) \neq 0 $。证明对于有理函数 $ r := p/q $，我们有

\[ r(x_{n})\to r(a)\quad(n\to\infty). \]

特别地，对于每个多项式 $p$，序列 $(p(x_n))_{n\in\mathbb{N}}$ 收敛于 $p(a)$。

7 设 $ (x_n) $ 是 $ (0, \infty) $ 中的收敛序列，其极限为 $ x \in (0, \infty) $。对于 $ r \in \mathbb{Q} $，证明

\[ \left(x_{n}\right)^{r}\to x^{r}\quad(n\to\infty). \]

（提示：对于 $r = 1/q$，令 $y_n := (x_n)^r$，$y := x^r$。则

\[ x_{n}-x=\left(y_{n}-y\right)\sum_{k=0}^{q-1}y_{n}^{k}y^{q-1-k} \]

由习题 I.8.1。）

8 设 $ (x_n) $ 是 $ (0, \infty) $ 中的序列。证明 $ (1/x_n) $ 是零序列当且仅当对于每个 $ K > 0 $，存在某个 $ N $ 使得对一切 $ n \geq N $ 有 $ x_n > K $。

9 设 $ (a_{n}) $ 是 $ (0, \infty) $ 中的序列，且

\[ x_{n}:=\sum_{k=0}^{n}(a_{k}+1/a_{k}),\qquad n\in\mathbb{N}. \]

证明 $ (1/x_n) $ 是零序列。（提示：对于 $ a > 0 $，证明 $ a + 1/a \geq 2 $（见习题 I.8.10）。然后利用习题 8。）

