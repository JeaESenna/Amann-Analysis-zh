## 4 单调序列

$\mathbb{R}$ 中的任一序列，即 $s(\mathbb{R}) = \mathbb{R}^\mathbb{N}$ 的任一元素，都是有序集之间的一个函数。本节中我们再次考虑这一序关系与序列收敛性之间的关系。具体地，我们研究例 I.4.7 之前所定义的单调序列的收敛性。于是，若对一切 $n \in \mathbb{N}$ 有 $x_n \leq x_{n+1}$，则称序列 $(x_n)$ 是 $\text{递增的}$\footnote{对于递增（或递减）序列 $(x_{n})$，我们常用符号 $(x_{n})\uparrow$（或 $(x_{n})\downarrow$）。此外，若 $(x_{n})$ 收敛且极限为 $x$，我们就写 $x_{n}\uparrow x$（或 $x_{n}\downarrow x$）来代替 $x_{n}\to x$。}；若对一切 $n \in \mathbb{N}$ 有 $x_n \geq x_{n+1}$，则称 $(x_n)$ 是 $\text{递减的}$。

##### 有界单调序列

由  $ \mathbb{R} $ 的完备性性质可得，每个有界单调序列都收敛。

4.1 定理  $ \mathbb{R} $ 中的每个递增（或递减）有界序列  $ (x_{n}) $ 都收敛，并且

 \[ {x}_{n}\uparrow\operatorname*{s u p}\{{x}_{n};{n}\in\mathbb{N}\}\quad\left(\text{或 }{x}_{n}\downarrow\operatorname*{i n f}\{{x}_{n};{n}\in\mathbb{N}\}\right). \] 

证明 (i) 设  $ (x_n) $ 为递增有界序列。则  $ X := \{x_n : n \in \mathbb{N}\} $ 有界且非空。由于  $ \mathbb{R} $ 是序完备的，$ x := \sup(X) $ 有良好定义。

(ii) 设  $ \varepsilon > 0 $。由命题 I.10.5，存在某个  $ N $，使得  $ x_N > x - \varepsilon $。由于  $ (x_n) $ 是递增的，故对一切  $ n \geq N $ 有  $ x_n \geq x_N > x - \varepsilon $。结合  $ x_n \leq x $，这蕴含

 \[ x_{n}\in(x-\varepsilon,x+\varepsilon)=\mathbb{B}_{\mathbb{R}}(x,\varepsilon),\qquad n\geq N. \] 

于是 $x_{n}$ 在 $\mathbb{R}$ 中收敛于 $x$。

(iii) 若 $(x_n)$ 是递减有界序列，我们置 $x := \inf\{x_n ; n \in \mathbb{N}\}$。则 $(y_n) := (-x_n)$ 递增且有界，且 $-x = \sup\{y_n ; n \in \mathbb{N}\}$。由 (ii) 可得 $-x_n = y_n \to -x \quad (n \to \infty)$，于是由命题 2.2，$x_n = -y_n \to x$。■

在命题 1.10 中我们看到，有界性是序列收敛的必要条件。定理 4.1 表明，对于单调序列的收敛性而言，有界性已足够。当然，收敛序列不必是单调的，零序列  $ (-1)^{n}/n $ 即为明证。

##### 若干重要极限

4.2 例 (a) 设  $ a \in \mathbb{C} $。则

 \[ a^{n}\to0,\quad\text{若 }|a|<1, \] 

 \[ a^{n}\to1~,\quad\text{若 }a=1~, \] 

 \[ (a^{n})_{n\in\mathbb{N}}\text{ 发散},\qquad\text{若 }|a|\geq1\;,\quad a\neq1\;. \] 

证明 (i) 首先假设序列  $ (a^n)_{n\in\mathbb{N}} $ 收敛。由命题 2.2 我们有

 \[ \lim_{n\to\infty}a^{n}=\lim_{n\to\infty}a^{n+1}=a\lim_{n\to\infty}a^{n}, \] 

于是要么  $ \lim_{n\to\infty}a^n=0 $，要么 a=1。

(ii) 考虑  $ |a| < 1 $ 的情形。则序列  $ (|a|^n) = (|a^n|) $ 递减且有界。由定理 4.1 与 (i)，$ (|a^n|) $ 是零序列，即  $ a^n \to 0 $（$ n \to \infty $）。

(iii) 若  $ a = 1 $，则对  $ n \in \mathbb{N} $ 有  $ a^n = 1 $，且自然有  $ a^n \to 1 $。

(iv) 现在设  $ |a| \geq 1 $ 且  $ a \neq 1 $。若  $ (a^n) $ 收敛，则由 (i)，$ (|a^n|)_{n \in \mathbb{N}} $ 是零序列。但这是不可能的，因为对一切  $ n $ 有  $ |a^n| = |a|^n \geq 1 $。■

(b) 设  $ k \in \mathbb{N} $ 与  $ a \in \mathbb{C} $ 满足  $ |a| > 1 $。则

 \[ \lim_{n\to\infty}\frac{n^{k}}{a^{n}}=0, \] 

即对于  $ |a| > 1 $，函数  $ n \mapsto a^n $ 比任何幂函数  $ n \mapsto n^k $ 增长得更快。

证明 对于  $ \alpha := 1/|a| \in (0,1) $ 与  $ x_n := n^k \alpha^n $，我们有

 \[ \frac{x_{n+1}}{x_{n}}=\left(\frac{n+1}{n}\right)^{k}\alpha=\left(1+\frac{1}{n}\right)^{k}\alpha,\qquad n\in\mathbb{N}^{\times}, \] 

于是当  $ n \to \infty $ 时  $ x_{n+1}/x_n \downarrow \alpha $。固定某个  $ \beta \in (\alpha,1) $。则存在某个  $ N $，使得对一切  $ n \geq N $ 有  $ x_{n+1}/x_n < \beta $。因而，

 \[ x_{N+1}<\beta x_{N}~,\quad x_{N+2}<\beta x_{N+1}<\beta^{2}x_{N}~,\quad\cdots \] 

一个简单的归纳论证给出，对一切  $ n \geq N $ 有  $ x_n < \beta^{n-N} x_N $，于是

 \[ \left|\frac{n^{k}}{a^{n}}\right|=x_{n}<\beta^{n-N}x_{N}=\frac{x_{N}}{\beta^{N}}\beta^{n},\qquad n\geq N. \] 

由于由 (a) 知  $ (\beta^n)_{n\in\mathbb{N}} $ 是零序列，于是断言由注 2.1(c) 可得。

(c) 对一切  $ a \in \mathbb{C} $，

 \[ \lim_{n\to\infty}\frac{a^{n}}{n!}=0. \] 

阶乘函数 $ n \mapsto n! $ 比函数 $ n \mapsto a^{n} $ 增长得更快。\footnote{在第 8 节中我们将给出这一事实的一个非常简短的证明。}

证明 对于 $n>N>|a|$ 我们有

 \[ \Big|\frac{a^{n}}{n!}\Big|=\frac{|a|^{N}}{N!}\prod_{k=N+1}^{n}\frac{|a|}{k}\leq\frac{|a|^{N}}{N!}\Big(\frac{|a|}{N+1}\Big)^{n-N}<\frac{N^{N}}{N!}\Big(\frac{|a|}{N}\Big)^{n}. \] 

于是断言由 (a) 与注 2.1(c) 可得。  $ \blacksquare $

(d)  $ \lim_{n \to \infty} \sqrt[n]{n} = 1 $。

证明 设  $ \varepsilon > 0 $。则由 (b)，序列  $ (n(1 + \varepsilon)^{-n}) $ 是零序列。于是存在某个 N，使得

 \[ \frac{n}{(1+\varepsilon)^{n}}<1,\qquad n\geq N, \] 

即

 \[ 1\leq n\leq\left(1+\varepsilon\right)^{n},\qquad n\geq N. \] 

由注 I.10.10(c)，$ n $ 次根函数是递增的，于是

 \[ 1\leq\sqrt[n]{n}\leq1+\varepsilon\;,\qquad n\geq N\;. \] 

这证明了断言。■

(e) 对一切  $ a > 0 $，$ \lim_{n \to \infty} \sqrt[n]{a} = 1 $。

证明 由  $ \mathbb{R} $ 的阿基米德性质，存在某个  $ N $，使得对一切  $ n \geq N $ 有  $ 1/n < a < n $。于是

 \[ \frac{1}{\sqrt[n]{n}}=\sqrt[n]{\frac{1}{n}}\leq\sqrt[n]{a}\leq\sqrt[n]{n},\qquad n\geq N. \] 

对一切  $ n \in \mathbb{N}^\times $ 置  $ x_n := 1/\sqrt[n]{n} $ 与  $ y_n := \sqrt[n]{n} $。则由 (d) 与命题 2.6，我们有  $ \lim x_n = \lim y_n = 1 $。断言现在由定理 2.9 可得。■

(f) 序列  $ (1+1/n)^{n} $ 收敛，其极限

 \[ e:=\lim_{n\to\infty}\left(1+\frac{1}{n}\right)^{n}, \] 

即欧拉数，满足  $ 2 < e \leq 3 $。

证明 对一切  $ n \in \mathbb{N}^\times $，置  $ e_n := (1 + 1/n)^n $。

(i) 第一步我们证明序列  $ (e_{n}) $ 是递增的。考虑

 \[ \begin{align*}\frac{e_{n+1}}{e_{n}}&=\left(\frac{n+2}{n+1}\right)^{n+1}\cdot\left(\frac{n}{n+1}\right)^{n}\\&=\left(\frac{n^{2}+2n}{(n+1)^{2}}\right)^{n+1}\cdot\frac{n+1}{n}=\left(1-\frac{1}{(n+1)^{2}}\right)^{n+1}\cdot\frac{n+1}{n}.\end{align*} \] 

(4.1) 中最后一个等号之后的第一个因子可以借助伯努利不等式（见习题 I.10.6）来估计：

 \[ \left(1-\frac{1}{(n+1)^{2}}\right)^{n+1}\geq1-\frac{1}{n+1}=\frac{n}{n+1}. \] 

于是 (4.1) 蕴含  $ e_n \leq e_{n+1} $，如所断言。

(ii) 我们证明 $2 < e_n < 3$。由二项式定理我们有

 \[ e_{n}=\left(1+\frac{1}{n}\right)^{n}=\sum_{k=0}^{n}\binom{n}{k}\frac{1}{n^{k}}=1+\sum_{k=1}^{n}\binom{n}{k}\frac{1}{n^{k}}. \] 

进一步，对于  $ 1 \leq k \leq n $，我们有

 \[ {n\choose k}\frac{1}{n^{k}}=\frac{1}{k!}\frac{n\cdot(n-1)\cdot\cdots\cdot(n-k+1)}{n\cdot n\cdot\cdots\cdot n}\leq\frac{1}{k!}\leq\frac{1}{2^{k-1}}. \] 

于是由 (4.2)（见习题 I.8.1）可得

 \[ e_{n}\leq1+\sum_{k=1}^{n}\left(\frac{1}{2}\right)^{k-1}=1+\frac{1-\left(\frac{1}{2}\right)^{n}}{1-\frac{1}{2}}<1+\frac{1}{\frac{1}{2}}=3. \] 

最后，对 $n \geq 2$ 有 $2 = e_1 < e_n$。断言现在由 (i)、(ii) 与定理 4.1 可得。

数  $ e $ 在分析中起着重要作用。其值在理论上可由序列  $ (e_n) $ 确定。遗憾的是，序列  $ (e_n) $ 收敛得并不很快。$ e $ 的数值近似为\footnote{我们在这里使用这样的‘小数表示’略显仓促。关于这种表示数的方式的完整讨论见第 7 节。}

 \[ \begin{array}{r}2.71828\ 18284\ 59045\ 23536\ \end{array}.. \] 

将此值与  $ (e_{n}) $ 的若干项相比较，

 \[ e_{1}=2~,\quad e_{10}=2.59374\ldots~,\quad e_{100}=2.70481\ldots~,\quad e_{1000}=2.71692\ldots~,\quad \] 

我们看到，即使对于 $n=1000$，误差 $e-e_n$ 也是 0.0014...（亦可参见下一例）。

(g) 我们可以把 e 表示为收敛得快得多的一个序列的极限：

 \[ e=\lim_{n\to\infty}\sum_{k=0}^{n}\frac{1}{k!}. \] 

证明 (i) 置  $ x_n := \sum_{k=0}^n 1/k! $。显然，序列  $ (x_n) $ 是递增的。(f) 的证明表明，对一切  $ n \in \mathbb{N}^\times $ 有  $ e_n \leq x_n < 3 $，于是由定理 4.1，序列  $ (x_n) $ 收敛，其极限  $ e' $ 满足  $ e \leq e' \leq 3 $。

(ii) 为完成证明，我们需要证明  $ e' \leq e $。固定某个  $ m \in \mathbb{N}^\times $。则对一切  $ n \geq m $，我们有

 \[ \begin{aligned}e_{n}=\left(1+\frac{1}{n}\right)^{n}&=\sum_{k=0}^{n}\binom{n}{k}\frac{1}{n^{k}}\geq\sum_{k=0}^{m}\binom{n}{k}\frac{1}{n^{k}}\\&=1+\sum_{k=1}^{m}\frac{1}{k!}\frac{n\cdot(n-1)\cdot\cdots\cdot(n-k+1)}{n\cdot n\cdot\cdots\cdot n}\\&=1+\sum_{k=1}^{m}\frac{1}{k!}1\cdot\left(1-\frac{1}{n}\right)\cdot\cdots\cdot\left(1-\frac{k-1}{n}\right).\\ \end{aligned} \] 

若我们置

 \[ x_{m,n}^{\prime}:=1+\sum_{k=1}^{m}\frac{1}{k!}\Big(1-\frac{1}{n}\Big)\cdot\cdots\cdot\Big(1-\frac{k-1}{n}\Big),\qquad n\geq m, \] 

则当  $ n \to \infty $ 时  $ x'_{m,n} \uparrow x_m $，且对一切  $ n \geq m $ 有  $ x'_{m,n} \leq e_n $。由于  $ e_n \uparrow e $，由命题 2.7 可得  $ x_m \leq e $。由于这对任何  $ m \in \mathbb{N}^\times $ 都成立，$ e $ 是  $ X := \{x_m : m \in \mathbb{N}\} $ 的一个上界。由于  $ e' = \lim_{x_n} = \sup X $，定理 4.1 蕴含  $ e' \leq e $。

正如我们已经提到的，序列  $ (x_{n}) $ 收敛到 e 的速度比序列  $ (e_{n}) $ 快得多。事实上，可以证明如下的误差估计（见习题 7）：

 \[ 0<e-x_{n}\leq\frac{1}{n n!}\;,\qquad n\in\mathbb{N}^\times\;. \] 

对于 n = 6 我们有  $ 1/(6!6) = 0.00023\ldots $，这已经比例 4.2(f) 中 n = 1000 时的误差更小。

##### 习题

1 设  $ a_1, \ldots, a_k \in \mathbb{R}^+ $。证明

 \[ \lim_{n\to\infty}\sqrt[n]{a_{1}^{n}+\cdots+a_{k}^{n}}=\max\{a_{1},\ldots,a_{k}\}. \] 

2 证明

 \[ (1-1/n)^{n}\to1/e\ \ (n\to\infty)~. \] 

（提示：考虑  $ \lim(1 - 1/n^2)^n = 1 $ 与命题 2.6。）

3 证明，对一切  $ r \in \mathbb{Q} $，

 \[ (1+r/n)^{n}\to e^{r}\quad(n\to\infty). \] 

（提示：分别考虑 r > 0 与 r < 0 的情形。利用习题 2 与 2.7。）

4 对于  $ a \in (0, \infty) $，用  $ x_0 \geq a $ 以及下式递归地定义实序列  $ (x_n) $：

 \[ x_{n+1}:=(x_{n}+a/x_{n})/2~,\qquad n\in\mathbb{N}. \] 

证明 $(x_{n})$ 递减且收敛到 $\sqrt{a}$。\footnote{这种确定 $\sqrt{a}$ 的方法称为巴比伦算法或海伦法。序列 $(x_{n})$ 非常快地收敛到 $\sqrt{a}$。例如，若 $x_{0} = a = 4$，则 $x_{1} = 2.5$，$x_{2} = 2.05$，$x_{3} = 2.00609\ldots$，$x_{4} = 2.000000093\ldots$。还要注意，若 $a$ 与‘初始值’ $x_{0}$ 都是有理数，则所有 $x_{n}$ 也都是有理数。在第 IV.4 节中，我们将给出海伦法的几何解释并估计其收敛速度。}

5 设  $ a, x_0 \in (0, \infty) $ 且

 \[ x_{n+1}:=a/(1+x_{n}),\qquad n\in\mathbb{N}. \] 

证明序列  $ (x_{n}) $ 收敛，并确定其极限。

6 证明序列的收敛性：

 \[ x_{0}>0~,\quad x_{1}>0~,\quad x_{n+2}:=\sqrt{x_{n+1}x_{n}}~,\qquad n\in\mathbb{N}~. \] 

7 (a) 对于  $ n \in \mathbb{N}^\times $，证明如下的误差估计：

 \[ 0<e-\sum_{k=0}^{n}\frac{1}{k!}<\frac{1}{nn!}. \] 

(b) 利用 (a) 中的不等式证明 e 是无理数。

（提示：(a) 对于  $ n \in \mathbb{N}^\times $，令  $ y_m := \sum_{k=n+1}^{n+m} 1/k! $。证明  $ y_m \to e - \sum_{k=0}^n 1/k! $ 与  $ (m+n)! y_m < \sum_{k=1}^m (n+1)^{1-k} $。(b) 用反证法证明。）

8 设  $ (x_{n}) $ 由下式递归定义：

 \[ x_{0}:=1~,\quad x_{n+1}:=1+1/x_{n}~,\qquad n\in\mathbb{N}~. \] 

证明序列  $ (x_{n}) $ 收敛，并确定其极限。

9 斐波那契数  $ f_{n} $ 由下式递归定义：

 \[ f_{0}:=0~,\quad f_{1}:=1~,\quad f_{n+1}:=f_{n}+f_{n-1}~,\qquad n\in\mathbb{N}^{\times}~. \] 

证明  $ \lim(f_{n+1}/f_n) = g $，其中  $ g $ 是习题 8 中的极限。

10 设

 \[ x_{0}:=5~,\quad x_{1}:=1~,\quad x_{n+1}:=\frac{2}{3}x_{n}+\frac{1}{3}x_{n-1}~,\qquad n\in\mathbb{N}^{\times}~. \] 

验证  $ (x_{n}) $ 收敛，并确定  $ \lim x_{n} $。

（提示：推导出  $ x_{n} - x_{n+1} $ 的表达式。）
