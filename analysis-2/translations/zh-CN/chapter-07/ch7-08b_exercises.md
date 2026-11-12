##### 习题

1 证明方程组

\[ \begin{aligned} x^{2} + y^{2} - u^{2} - v &= 0 , \\ x^{2} + 2y^{2} + 3u^{2} + 4v^{2} &= 1 \end{aligned} \]

在 $ (1/2,0,1/2,0) $ 附近可解出 $ (u,v) $。$ u $ 与 $ v $ 关于 $ (x,y) $ 的一阶导数是什么？

2 设 $ E $、$ F $、$ G $ 与 $ H $ 为巴拿赫空间，且 $ X $ 是 $ H $ 中的开集。进一步设

\[ A \in C^{1}(X,\mathcal{L}(E,F)) \quad \text{且} \quad B \in C^{1}(X,\mathcal{L}(E,G)) \]

且

\[ (A(x),B(x)) \in \mathcal{L}\mathrm{is}(E,F\times G) \quad \text{对 } x \in X . \]

最后，设 $ (f,g) \in F\times G $ 且

\[ \varphi : X \to E , \quad x \mapsto (A(x),B(x))^{-1}(f,g) . \]

证明

\[ \partial\varphi(x)h = -S(x)\partial A(x)[h,\varphi(x)] - T(x)\partial B(x)[h,\varphi(x)] \quad \text{对 } (x,h) \in X\times H , \]

其中，对 $ x \in X $，

\[ S(x) := (A(x),B(x))^{-1}\big|(F\times\{0\}) \quad \text{且} \quad T(x) := (A(x),B(x))^{-1}\big|(\{0\}\times G) . \]

3 求具有**时变系数** $ a,b \in C(J,\mathbb{R}) $ 的**标量线性非齐次微分方程**

\[ \dot{x} = a(t)x + b(t) \]

的通解。

4 设 $ D $ 是 $ \mathbb{R} $ 中的开集，且 $ f \in C(D,\mathbb{R}) $。证明**相似微分方程**

\[ \dot{x} = f(x/t) \]

等价于可分离变量微分方程

\[ \dot{y} = (f(y)-y)/t \]

利用变换 $ y := x/t $。

5 $ \dot{x} = (x^{2}+tx+t^{2})/t^{2} $ 的通解是什么？（提示：习题 4。）

6 求初值问题 $ \dot{x}+tx^{2} = 0 $，$ x(0) = 2 $ 的解。

7 设 $ a,b \in C(J,\mathbb{R}) $ 且 $ \alpha \ne 1 $。证明**伯努利微分方程**

\[ \dot{x} = a(t)x + b(t)x^{\alpha} \]

在变换 $ y := x^{1-\alpha} $ 下化为线性微分方程

\[ \dot{y} = (1-\alpha)(a(t)y+b(t)) \]

8 计算**逻辑斯蒂微分方程**

\[ \dot{x} = (\alpha-\beta x)x \quad \text{对 } \alpha,\beta > 0 . \]

的通解 $ u $。并求 $ \lim_{t\to t^{+}} u(t) $ 以及 $ u $ 的拐点。

9 利用代换 $ y = x/t $，求 $ \dot{x} = (t+x)/(t-x) $ 的通解。

10 设 $ f \in C^{1-}(D,E) $，并令 $ u : J(\xi) \to \mathbb{R} $ 表示如下初值问题的不可延拓解：

\[ \dot{x} = f(x) , \quad x(0) = \xi . \]

若 $ f $ 由

\[ \begin{aligned} & \mathbb{R} \to \mathbb{R} , \quad x \mapsto x^{1+\alpha} , \quad \alpha \ge 0 ; \\ & E \to E , \quad x \mapsto Ax , \quad A \in \mathcal{L}(E) ; \\ & \mathbb{R} \to \mathbb{R} , \quad x \mapsto 1 + x^{2} . \end{aligned} \]

给出，求 $ \mathcal{D}(f) := \{(t,\xi) \in \mathbb{R}\times D \; ; \; t \in J(\xi)\} $。

11 证明注 8.14(b) 的误差估计。（提示：采用定理 8.13 证明中的记号，由归纳法可得

\[ \|u_{m+1}(t)-u_{m}(t)\| \le ML^{m}\frac{|t-t_{0}|^{m+1}}{(m+1)!} \quad \text{对 } m \in \mathbb{N} \text{ 且 } t \in I , \]

从而 $ \|u_{m+1}-u_{m}\|_{C(I,E)} < M\alpha 2^{-m}/(m+1)! $ 对 $ m \in \mathbb{N} $。）

12 设 $ A \in C(J,\mathcal{L}(E)) $ 且 $ b \in C(J,E) $。证明初值问题

\[ \dot{x} = A(t)x + b(t) , \quad x(t_{0}) = x_{0} \]

对每个 $ (t_{0},x_{0}) \in J\times E $ 都有唯一全局解。（提示：迭代一个积分方程，并利用习题 IV.4.1 与 $ \int_{t_{0}}^{t}\int_{t_{0}}^{s} d\sigma\, ds = (t-t_{0})^{2}/2 $。）
