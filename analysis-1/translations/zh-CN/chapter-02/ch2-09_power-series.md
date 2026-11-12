## 9 幂级数

接下来我们研究形式幂级数在何种条件下可被视为良定义的函数。正如我们已在注 I.8.14(e) 中所见，对于不是多项式的幂级数，这是一个关于级数收敛的问题。

设

 \[ a:=\sum a_{k}X^{k}:=\sum_{k}a_{k}X^{k} \] 

是以  $ \mathbb{K} $ 中元素为系数的关于一个未定元的（形式）幂级数。则对每个  $ x \in \mathbb{K} $， $ \sum a_k x^k $ 是  $ \mathbb{K} $ 中的级数。当此级数收敛时，我们用  $ \underline{a}(x) $ 表示它的值，即（形式）幂级数 (9.1) 在  $ x $ 处的值。令

 \[ \operatorname{dom}(\underline{a}):=\left\{x\in\mathbb{K}\;;\;\sum a_{k} x^{k}\right. \text{ 在 }\mathbb{K}\text{ 中收敛}\enspace. \] 

则  $ \underline{a} $: dom $ (\underline{a}) $  $ \rightarrow $  $ \mathbb{K} $ 是良定义的函数：

 \[ \underline{a}(x):=\sum_{k=0}^{\infty}a_{k}x^{k},\qquad x\in\operatorname{dom}(\underline{a}). \] 

注意到  $ 0 \in \operatorname{dom}(\underline{a}) $ 对任意  $ a \in \mathbb{K}[\![X]\!] $ 都成立。下面的例子表明，下列每种情形

 \[ \mathrm{dom}(\underline{a})=\mathbb{K},\quad\{0\}\subset\mathrm{dom}(\underline{a})\subset\mathbb{K},\quad\mathrm{dom}(\underline{a})=\{0\} \] 

都是可能的。

9.1 例 (a) 设  $ a \in \mathbb{K}[X] \subseteq \mathbb{K}[\![X]\!] $，即  $ a_k = 0 $ 对几乎所有  $ k \in \mathbb{N} $ 成立。则  $ \text{dom}(\underline{a}) = \mathbb{K} $，且  $ \underline{a} $ 与 I.8 节中引入的多项式函数一致。

(b) 指数级数  $ \sum x^k / k! $ 对每个  $ x \in \mathbb{C} $ 都绝对收敛。因此，对于幂级数

 \[ a:=\sum\frac{1}{k!}X^{k}\in\mathbb{C}[\![X]\!]~, \] 

我们有  $ \mathrm{dom}(\underline{a}) = \mathbb{C} $ 且  $ \underline{a} = \exp $。

(c) 由例 7.4，几何级数  $ \sum_k x^k $ 绝对收敛到值  $ 1/(1-x) $，对每个  $ x \in \mathbb{B}_{\mathbb{K}} $，且若  $ x $ 不在  $ \mathbb{B}_{\mathbb{K}} $ 中则发散。因此对于几何级数

 \[ a:=\sum X^{k}\in\mathbb{K}[\![X]\!] \] 

我们有  $ \mathrm{dom}(\underline{a}) = \mathbb{B}_{\mathbb{K}} $ 且  $ \underline{a}(x) = 1/(1 - x) $ 对所有  $ x \in \mathrm{dom}(\underline{a}) $ 成立。

(d) 级数  $ \sum_k k! x^k $ 对所有  $ x \in \mathbb{K}^\times $ 都发散。因此，函数  $ \underline{a} $（由幂级数  $ a := \sum k! X^k $ 表示）的定义域是  $ \{0\} $。

证明 对所有  $ x \in \mathbb{K}^\times $ 与  $ k \in \mathbb{N} $，令  $ x_k := k! x^k $。

 \[ \frac{\left|x_{k+1}\right|}{\left|x_{k}\right|}=\left(k+1\right)\left|x\right|\rightarrow\infty\ \left(k\rightarrow\infty\right). \] 

因此由比值判别法，级数  $ \sum x_k = \sum k! x^k $ 发散。■

##### 收敛半径

对于幂级数，上一节的收敛判别法可以写成一种特别有用的形式。

9.2 定理 对于幂级数  $ a = \sum a_k X^k $，其系数在  $ \mathbb{K} $ 中，存在唯一的  $ \rho := \rho_a \in [0, \infty] $ 具有下列性质：

(i) 级数  $ \sum a_k x^k $ 在  $ |x| < \rho $ 时绝对收敛，在  $ |x| > \rho $ 时发散。

(ii) 阿达马公式成立：

 \[ \rho_{a}=\frac{1}{\varlimsup\limits_{k\to\infty}\sqrt[k]{|a_{k}|}}. \] 

数\footnote{当然，在 (9.3) 中我们对扩充实数轴 $\bar{\mathbb R}$ 使用了第 I.10 节的约定。} $ \rho_a \in [0, \infty] $ 称为  $ a $ 的收敛半径，且

 \[ \rho_{a}\mathbb{B}_{\mathbb{K}}=\left\{x\in\mathbb{K};\ |x|<\rho_{a}\right\} \] 

是 a 的收敛圆盘。

证明 由 (9.3) 定义  $ \rho_a $。则  $ \rho_a \in [0, \infty] $ 且

 \[ \varlimsup_{k\to\infty}\sqrt[k]{\vert a_{k} x^{k}\vert}=\vert x\vert\varlimsup_{k\to\infty}\sqrt[k]{\vert a_{k}\vert}=\vert x\vert/\rho_{a}. \] 

于是所有断言均由根值判别法得出。■

9.3 推论 对于  $ a = \sum a_k X^k \in \mathbb{K}[\![X]\!] $，我们有  $ \rho_a \mathbb{B}_{\mathbb{K}} \subseteq \text{dom}(\underline{a}) \subseteq \rho_a \bar{\mathbb{B}}_{\mathbb{K}} $。特别地，幂级数  $ a $ 在其收敛圆盘上表示函数  $ \underline{a} $。\footnote{在注 9.6 中我们将看到，$\rho_a\mathbb B_{\mathbb K}$ 一般是 $\mathrm{dom}(\underline{a})$ 的真子集。}

对某些幂级数，比值判别法也可用来确定收敛半径。

9.4 命题 设  $ a = \sum a_k X^k $ 是使  $ \lim |a_k / a_{k+1}| $ 在  $ \bar{\mathbb{R}} $ 中存在的幂级数。则  $ a $ 的收敛半径由公式给出

 \[ \rho_{a}=\lim_{k\to\infty}\left|\frac{a_{k}}{a_{k+1}}\right|. \] 

证明 由于  $ \alpha := \lim |a_k/a_{k+1}| $ 在  $ \bar{\mathbb{R}} $ 中存在，我们有

 \[ \left|\frac{a_{k+1}x^{k+1}}{a_{k}x^{k}}\right|=\left|\frac{a_{k+1}}{a_{k}}\right|\left|x\right|\rightarrow\frac{\left|x\right|}{\alpha}\left(k\rightarrow\infty\right). \] 

现在若 $x, y \in \mathbb{K}$ 满足 $|x| < \alpha$ 与 $|y| > \alpha$，则 (9.4) 与比值判别法推出级数 $\sum a_k x^k$ 绝对收敛，级数 $\sum a_k y^k$ 发散。因此，由定理 9.2，我们有 $\alpha = \rho_a$。

9.5 例 (a) 指数级数  $ \sum(1/k!)X^k $ 的收敛半径是  $ \infty $。

证明 由于

 \[ \left|\frac{a_{k}}{a_{k+1}}\right|=\left|\frac{1/k!}{1/(k+1)!}\right|=k+1\to\infty\quad(k\to\infty), \] 

该断言由命题 9.4 得出。■

(b) 设  $ m \in \mathbb{Q} $。则\footnote{这里（以及在类似情形下）我们约定：除非另有说明，幂级数 $a$ 的第零个系数 $a_0$ 取值为 0。} $ \sum k^m X^k \in \mathbb{K}[\![X]\!] $ 的收敛半径是 1。

证明 由命题 2.4 与 2.6 我们得到

 \[ \left|\frac{a_{k}}{a_{k+1}}\right|=\left(\frac{k}{k+1}\right)^{m}\to1\quad(k\to\infty). \] 

于是该断言由命题 9.4 得出。■

(c) 设  $ a \in \mathbb{K}[\![X]\!] $ 由下式定义

 \[ a=\sum\frac{1}{k!}X^{k^{2}}=1+X+\frac{1}{2!}X^{4}+\frac{1}{3!}X^{9}+\cdots \] 

则  $ \rho_{a}=1 $。

证明\footnote{注意，这里不能使用命题 9.4。为什么？} a 的系数  $ a_{k} $ 满足

 \[ a_{k}=\left\{\begin{array}{c l}{1/j!~,}&{\quad k=j^{2}~,\quad j\in\mathbb{N}~,}\\ {0}&{\quad\text{其他情形}.}\end{array}\right. \] 

由  $ 1 \leq j! \leq j^j $、注 I.10.10(c) 与习题 I.10.3 我们得到不等式

 \[ 1\leq\sqrt[j^{2}]{j!}\leq\sqrt[j^{2}]{j^{j}}=\left(j^{j}\right)^{1/j^{2}}=j^{1/j}=\sqrt[j]{j}\,. \] 

由于  $ \lim_{j} \sqrt[j]{j} = 1 $（见例 4.2(d)），我们断定  $ \rho_a = \varlimsup_{k} \sqrt[k]{|a_k|} = 1 $。■

9.6 注 对幂级数在其收敛圆盘的“边界”  $ \{x \in \mathbb{K} ; |x| = \rho\} $ 上的收敛性，不能作出一般的断言。我们用例 9.5(b) 中令  $ m = 0, -1, -2 $ 所得的幂级数来演示这一点：

 \[ \sum X^{k}, \] 

 \[ \sum\frac{1}{k}x^{k}, \] 

 \[ \sum\frac{1}{k^{2}}X^{k}. \] 

这些级数的收敛半径是  $ \rho = 1 $。在收敛圆盘的边界上，它们具有如下表现：

(i) 由例 7.4，几何级数  $ \sum x^k $ 对每个  $ x \in \mathbb{K} $（满足  $ |x| = 1 $）都发散。因此，is 在这种情况下，$ \text{dom}(\underline{a}) = \mathbb{B}_{\mathbb{K}} $。

(ii) 由定理 7.8 的莱布尼茨准则，级数  $ \sum(-1)^k/k $ 在  $ \mathbb{R} $ 中条件收敛。另一方面，在例 7.3 中我们看到调和级数  $ \sum 1/k $ 发散。因此我们有  $ -1 \in \text{dom}(\underline{a}) $ 且  $ 1 \notin \text{dom}(\underline{a}) $。

(iii) 设  $ x \in \mathbb{K} $ 满足  $ |x| = 1 $。则定理 8.3 的优级数准则与例 7.1(b) 保证  $ \sum k^{-2}x^k $ 绝对收敛。因此  $ \mathrm{dom}(a) = \bar{\mathbb{B}}_{\mathbb{K}} $。■

##### 幂级数的加法与乘法

由 I.8 节我们知道，当加法按“逐项”定义、乘法按卷积定义时，  $ \mathbb{K}[\![X]\!] $ 是一个环。下面的命题表明，这些运算与相应函数的加法和乘法是相容的。

9.7 命题 设  $ a = \sum a_k X^k $ 与  $ b = \sum b_k X^k $ 是收敛半径分别为  $ \rho_a $ 与  $ \rho_b $ 的幂级数。令  $ \rho := \min(\rho_a, \rho_b) $。则对所有  $ x \in \mathbb{K} $（满足  $ |x| < \rho $），我们有

 \[ \sum_{k=0}^{\infty}a_{k}x^{k}+\sum_{k=0}^{\infty}b_{k}x^{k}=\sum_{k=0}^{\infty}(a_{k}+b_{k})x^{k}, \] 

 \[ \Bigl[\sum_{k=0}^{\infty}a_{k}x^{k}\Bigr]\Bigl[\sum_{k=0}^{\infty}b_{k}x^{k}\Bigr]=\sum_{k=0}^{\infty}\Bigl(\sum_{j=0}^{k}a_{j}b_{k-j}\Bigr)x^{k}. \] 

特别地，幂级数  $ a+b $ 与  $ a\cdot b $ 的收敛半径  $ \rho_{a+b} $ 与  $ \rho_{a\cdot b} $ 满足  $ \rho_{a+b} \geq \rho $ 与  $ \rho_{a\cdot b} \geq \rho $。

证明 由于定理 9.2，所有断言都直接由命题 7.5 与定理 8.11 得出。

##### 幂级数表示的唯一性

设 $p \in \mathbb{K}[X]$。在注 I.8.19(c) 中我们证明了：若 $p$ 至少有 $\deg(p) + 1$ 个零点，则 $p$ 是零多项式。下面的定理把这一结果推广到幂级数。

9.8 定理 设  $ \sum a_k X^k $ 是收敛半径  $ \rho_a $ 为正的幂级数。若存在零序列  $ (y_j) $ 使得  $ 0 < |y_j| < \rho_a $ 且

 \[ \underline{a}(y_{j})=\sum_{k=0}^{\infty}a_{k}y_{j}^{k}=0,\qquad j\in\mathbb{N}, \] 

则  $ a_k = 0 $ 对所有  $ k \in \mathbb{N} $ 成立，即  $ a = 0 \in \mathbb{K}[\![X]\!] $。

证明 (i) 对任意的  $ n \in \mathbb{N} $，我们导出  $ \sum_{k \geq n} a_k x^k $ 的一个估计。取  $ r \in (0, \rho_a) $ 与  $ x \in r\bar{\mathbb{B}}_K $。 $ a $ 在  $ \rho_a\mathbb{B}_K $ 上的绝对收敛推出

 \[ \left|\sum_{k=n}^{\infty}a_{k}x^{k}\right|\leq\sum_{k=n}^{\infty}\left|a_{k}\right|\left|x\right|^{k}=\left|x\right|^{n}\sum_{k=n}^{\infty}\left|a_{k}\right|\left|x\right|^{k-n}\leq\left|x\right|^{n}\sum_{j=0}^{\infty}\left|a_{j+n}\right|r^{j}. \] 

因此，对每个  $ r \in (0, \rho_a) $ 与  $ n \in \mathbb{N} $，存在某个

 \[ C:=C(r,n):=\sum_{j=0}^{\infty}|a_{j+n}|r^{j}\in[0,\infty) \] 

使得

 \[ \left|\sum_{k=n}^{\infty}a_{k}x^{k}\right|\leq C\left|x\right|^{n},\qquad x\in\bar{\mathbb{B}}_{\mathbb{K}}(0,r). \] 

(ii) 由于 $(y_j)$ 是零序列，存在某个 $r \in (0, \rho_a)$ 使得所有 $y_j$ 都在 $r\bar{\mathbb{B}}_K$ 中。假设存在某个 $n \in \mathbb{N}$ 使得 $a_n \neq 0$。则由良序原理，存在最小的 $n_0 \in \mathbb{N}$ 使得 $a_{n_0} \neq 0$。由 (9.6) 我们有不等式

 \[ |\underline{{a}}(x)-a_{n_{0}}x^{n_{0}}|\leq C\left|x\right|^{n_{0}+1},\qquad x\in\bar{\mathbb{B}}_{\mathbb{K}}(0,r), \] 

于是 (9.5) 推出  $ |a_{n_0}| \leq C|y_j| $ 对所有  $ j \in \mathbb{N} $ 成立。但  $ y_j \to 0 $，因此由推论 I.10.7，我们得到矛盾  $ a_{n_0} = 0 $。

9.9 推论（幂级数的恒等定理）设

 \[ a=\sum a_{k}X^{k}\quad\text{且}\quad b=\sum b_{k}X^{k} \] 

是收敛半径  $ \rho_a $ 与  $ \rho_b $ 分别为正的幂级数。若存在零序列  $ (y_j) $ 使得  $ 0 < |y_j| < \min(\rho_a, \rho_b) $ 且  $ \underline{a}(y_j) = \underline{b}(y_j) $ 对所有  $ j \in \mathbb{N} $ 成立，则  $ a = b $（在  $ \mathbb{K}[\![X]\!] $ 中），即  $ a_k = b_k $ 对所有  $ k \in \mathbb{N} $ 成立。

证明 这直接由命题 9.7 与定理 9.8 得出。

9.10 注 (a) 若幂级数  $ a = \sum a_k X^k $ 的收敛半径为正，则由推论 9.9，系数  $ a_k $（幂级数  $ a $ 的）在收敛圆盘上由  $ \underline{a} $ 唯一确定。换言之，若函数  $ f: \text{dom}(f) \subseteq \mathbb{K} \to \mathbb{K} $ 能在原点附近的某个圆盘上由幂级数表示，则此幂级数是唯一的。

(b) 函数  $ \underline{a} $（由  $ a = \sum a_k X^k $ 在  $ \rho_a \mathbb{B}_{\mathbb{K}} $ 上表示）在任何闭球  $ r \mathbb{B}_{\mathbb{K}} $（ $ r \in (0, \rho_a) $）上有界。更确切地说，

 \[ \sup_{|x|\leq r}\left|\underline{a}(x)\right|\leq\sum_{k=0}^{\infty}\left|a_{k}\right|r^{k}. \] 

证明 这直接由 n = 0 的 (9.6) 得出。

(c) 在 III.6 节我们将研究具有无穷多个零点的非零幂级数。因此，定理 9.8 中零点序列收敛这一假设不能省略。

(d) 设  $ a = \sum a_k X^k $ 是实幂级数，即  $ \mathbb{R}[\![X]\!] $ 中的元素。由于  $ \mathbb{R}[\![X]\!] \subseteq \mathbb{C}[\![X]\!] $， $ a $ 也可视为复幂级数。若我们用  $ a_\mathbb{C} $ 表示由  $ a \in \mathbb{C}[\![X]\!] $ 所表示的函数，则  $ a_\mathbb{C} \supseteq \underline{a} $，即  $ a_\mathbb{C} $ 是  $ \underline{a} $ 的扩张。鉴于定理 9.2，收敛半径  $ \rho_a $ 与  $ a $ 被视为实幂级数还是复幂级数无关。因此

 \[ (-\rho_{a},\rho_{a})=\operatorname{d o m}(\underline{{a}})\cap\rho_{a}\mathbb{B}_{\mathbb{C}}\subseteq\rho_{a}\mathbb{B}_{\mathbb{C}}\subseteq\operatorname{d o m}(a_{\mathbb{C}}). \] 

因此，事实上只需考虑复幂级数。若一个收敛级数具有实系数，则相应函数在实自变量上取实值。

##### 习题

1 确定幂级数  $ \sum a_k X^k $ 的收敛半径，其中  $ a_k $ 由下列各式给出：

 \[ \mathrm{(a)}\frac{\sqrt{k2^{k}}}{(k+1)^{6}},\quad\mathrm{(b)}\left(-1\right)^{k}\frac{k!}{k^{k}},\quad\mathrm{(c)}\frac{1}{\sqrt{1+k^{2}}},\quad\mathrm{(d)}\frac{1}{\sqrt{k!}},\quad\mathrm{(e)}\frac{1}{k^{k}},\quad\mathrm{(f)}\left(1+\frac{1}{k^{2}}\right)^{k}. \] 

2 证明幂级数  $ a = \sum(1 + k)X^k $ 的收敛半径是 1，且  $ \underline{a}(z) = (1 - z)^{-2} $ 对所有  $ |z| < 1 $ 成立。

3 设幂级数  $ \sum a_k X^k $ 的收敛半径是  $ \rho > 0 $。证明级数  $ \sum(k+1)a_{k+1}X^k $ 具有相同的收敛半径  $ \rho $。

4 设  $ \sum a_k $ 是  $ (0, \infty) $ 中的发散级数，且  $ \sum a_k X^k $ 的收敛半径是 1。定义

 \[ f_{n}:=\sum_{k=0}^{\infty}a_{k}\Big(1-\frac{1}{n}\Big)^{k},\qquad n\in\mathbb{N}^{\times}. \] 

证明序列  $ (f_n) $ 收敛到  $ \infty $。（提示：用伯努利不等式得到形如  $ 1 - (1 - 1/n)^m $ 的项的一个上界。）

5 设序列  $ (a_{k}) $（在  $ \mathbb{K} $ 中）满足

 \[ 0<\varliminf\left|a_{k}\right|\leq\varlimsup\left|a_{k}\right|<\infty. \] 

确定  $ \sum a_k X^k $ 的收敛半径。

6 证明：幂级数  $ \sum a_k X^k $（其中  $ a_k \neq 0 $ 对所有  $ k \in \mathbb{N} $ 成立）的收敛半径  $ \rho $ 满足

 \[ \underline{\lim}\Big|\frac{a_{k}}{a_{k+1}}\Big|\leq\rho\leq\overline{\lim}\Big|\frac{a_{k}}{a_{k+1}}\Big|. \] 

7 向量空间的子集 $D$ 称为关于 $0$ $\text{对称的}$，如果对所有 $x$，$x \in D$ 蕴含 $-x \in D$。若 $D$ 是对称的，且 $f: D \to E$ 是到向量空间 $E$ 的函数，则 $f$ 称为 $\text{偶}$（或 $\text{奇}$）的，如果对所有 $x \in D$，$f(x) = f(-x)$（或 $f(x) = -f(-x)$）。现在设 $f: \mathbb{K} \to \mathbb{K}$ 是能在以 0 为中心的某个适当圆盘上由幂级数表示的函数。此幂级数的系数满足什么条件时，能确定 $f$ 是偶的还是奇的？

8 设 $a$ 与 $b$ 是收敛半径分别为 $\rho_a$ 与 $\rho_b$ 的幂级数。通过例子证明 $\rho_{a+b} > \max(\rho_a, \rho_b)$ 与 $\rho_{ab} > \max(\rho_a, \rho_b)$ 都可能出现。

9 设  $ a = \sum a_k X^k \in \mathbb{C}[\![X]\!] $ 且  $ a_0 = 1 $。

(a) 证明存在某个  $ b = \sum b_k X^k \in \mathbb{C}[\![X]\!] $ 使得  $ ab = 1 \in \mathbb{C}[\![X]\!] $。给出计算系数  $ b_k $ 的递归算法。

(b) 证明若 a 的收敛半径为正，则 b 的收敛半径  $ \rho_{b} $ 为正。

10 设  $ b = \sum b_k X^k \in \mathbb{C}[\![X]\!] $ 满足  $ (1 - X - X^2)b = 1 \in \mathbb{C}[\![X]\!] $。

(a) 证明系数  $ b_{k} $ 满足

 \[ b_{0}=1~,\quad b_{1}=1~,\quad b_{k+1}=b_{k}+b_{k-1}~,\qquad k\in\mathbb{N}^{\times}~,\nonumber \] 

即  $ (b_{k}) $ 是斐波那契数列（见习题 4.9）。

(b) b 的收敛半径是多少？
