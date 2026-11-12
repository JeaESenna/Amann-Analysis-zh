##### 习题

1 对 $ f : (0,\infty)^{2} \to \mathbb{R} $，其中

\[ f(x,y) := \left(\left(\left(x^{x}\right)^{x}\right)^{x}\right)^{y} + \log(x)\arctan\left(\arctan\left(\arctan\left(\sin\left(\cos(xy) - \log(x + y)\right)\right)\right)\right) . \]

计算 $ \partial_{2} f(1,y) $。

2 设 $ f : \mathbb{R}^{2} \to \mathbb{R} $ 定义为

\[ f(x,y) := \begin{cases} \sqrt{x^{2} + y^{2}} , & y > 0 , \\ x , & y = 0 , \\ -\sqrt{x^{2} + y^{2}} , & y < 0 . \end{cases} \]

证明

(a) $ f $ 在 $ (0,0) $ 处不可微；

(b) $ f $ 在 $ (0,0) $ 处的每个方向导数都存在。

3 映射

\[ \mathbb{R}^{2} \to \mathbb{R} , \quad (x,y) \mapsto \begin{cases} x^{3}/\sqrt{x^{2} + y^{2}} , & (x,y) \ne (0,0) , \\ 0 , & (x,y) = (0,0) , \end{cases} \]

在哪些点可微？

4 设 $ f : \mathbb{R}^{2} \to \mathbb{R} $ 定义为

\[ f(x,y) := \begin{cases} xy/\sqrt{x^{2} + y^{2}} , & (x,y) \ne (0,0) , \\ 0 , & (x,y) = (0,0) . \end{cases} \]

证明：

(a) $ \partial_{1} f(0,0) $ 与 $ \partial_{2} f(0,0) $ 存在。

(b) 对 $ v \in \mathbb{R}^{2}\setminus\{e_{1},e_{2}\} $，$ D_{v} f(0,0) $ 不存在。

(c) $ f $ 在 $ (0,0) $ 处不可微。

5 计算下列映射的雅可比矩阵：

\[ \begin{aligned} \mathbb{R}^{3} \to \mathbb{R} , \quad (x,y,z) &\mapsto 3x^{2}y + e^{xz^{2}} + 4z^{3} ; \\ \mathbb{R}^{2} \to \mathbb{R}^{3} , \quad (x,y) &\mapsto \left(xy, \cosh(xy), \log(1 + x^{2})\right) ; \\ \mathbb{R}^{3} \to \mathbb{R}^{3} , \quad (x,y,z) &\mapsto \left(\log(1 + x^{2} + z^{2}), z^{2} + y^{2} - x^{2}, \sin(xz)\right) ; \\ \mathbb{R}^{3} \to \mathbb{R}^{3} , \quad (x,y,z) &\mapsto \left(x\sin y\cos z, x\sin y\sin z, x\cos y\right) . \end{aligned} \]

6 设 $ X $ 是 $ \mathbb{R}^{n} $ 中的开集，$ F $ 是巴拿赫空间，$ f : X \to F $。又设 $ x_{0} \in X $，并取 $ \varepsilon > 0 $ 使得 $ \mathbb{B}(x_{0},\varepsilon) \subset X $。最后，令

\[ x_{k}(h) := x_{0} + h^{1}e_{1} + \cdots + h^{k}e_{k} \quad \text{对 } k = 1,\ldots,n \text{ 且 } h \in \mathbb{B}(x_{0},\varepsilon) . \]

证明 $ f $ 在 $ x_{0} $ 处可微当且仅当：对每个满足 $ h^{k} \ne 0 $（$ 1 \le k \le n $）的 $ h \in \mathbb{B}(x_{0},\varepsilon) $，极限

\[ \lim_{\substack{h^{k} \to 0 \\ h^{k} \ne 0}} \frac{f\left(x_{k}(h)\right) - f\left(x_{k-1}(h)\right)}{h^{k}} \quad \text{对 } 1 \le k \le n \]

在 $ F $ 中存在。

7 证明注 2.15(a)。（提示：定理 2.14。）

8 确定下列函数的梯度：

\[ \begin{aligned} \mathbb{R}^{m} \to \mathbb{R} , \quad x &\mapsto (x_{0}|x) ; \\ \mathbb{R}^{m}\setminus\{0\} \to \mathbb{R} , \quad x &\mapsto |x| ; \\ \mathbb{R}^{m} \to \mathbb{R} , \quad x &\mapsto \left|(x_{0}|x)\right|^{2} ; \\ \mathbb{R}^{m}\setminus\{0\} \to \mathbb{R} , \quad x &\mapsto 1/|x| . \end{aligned} \]

9 映射 $ \mathbb{C} \to \mathbb{C} $，$ z \mapsto z|z| $ 在哪些点可微？如果可能，求出其导数。

10 映射 $ \mathbb{R}^{m} \to \mathbb{R}^{m} $，$ x \mapsto x|x|^{k} $（$ k \in \mathbb{N} $）在哪些点可微？在导数存在的每一点处求出其导数。

11 求所有满足 $ f(\mathbb{C}) \subset \mathbb{R} $ 的可微函数 $ f : \mathbb{C} \to \mathbb{C} $。

12 对 $ p \in [1,\infty] $，令 $ f_{p} : \mathbb{R}^{m} \to \mathbb{R} $，$ x \mapsto |x|_{p} $。$ f_{p} $ 在哪些点可微？如果可能，求出 $ \nabla f_{p}(x) $。

13 设 $ X $ 是 $ \mathbb{C} $ 中的开集，$ f : X \to \mathbb{C} $ 可微。再对 $ z \in X^{*} := \{\, \overline{z} \in \mathbb{C} ; z \in X \,\} $ 定义 $ f^{*}(z) := \overline{f(\overline{z})} $。证明 $ f^{*} : X^{*} \to \mathbb{C} $ 可微。
