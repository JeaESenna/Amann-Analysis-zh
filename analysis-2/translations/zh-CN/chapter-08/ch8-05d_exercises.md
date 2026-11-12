##### 习题

1 设 $ f : U \to \mathbb{C} $ 实可微，

\[ \partial_W f := \frac{1}{2}(\partial_x f - i\partial_y f) \quad \text{与} \quad \overline{\partial}_W f := \frac{1}{2}(\partial_x f + i\partial_y f) \]

称为 $ f $ 的 **维尔廷格导数**\footnote{通常，维尔廷格导数将记作 $ \partial $（或 $ \overline{\partial} $）。然而，当这种记号可能与我们表示导数算子的记号 $ \partial $ 相冲突时，我们将写 $ \partial_W $（或相应地 $ \overline{\partial}_W $）。}。

证明

(a) $ \overline{\partial}_W f = \overline{\partial_W \overline{f}} $，且 $ \overline{\partial}_W \overline{f} = \overline{\partial_W f} $；

(b) $ f $ 全纯 $ \iff \overline{\partial}_W f = 0 $；

(c) $ 4\partial_W \overline{\partial}_W f = 4\overline{\partial}_W \partial_W f = \Delta f $，若 $ f $ 二次实可微；

(d) $ \det\begin{bmatrix} u_x & u_y \\ v_x & v_y \end{bmatrix} = \det\begin{bmatrix} \partial_W f & \overline{\partial}_W f \\ \partial_W \overline{f} & \overline{\partial}_W \overline{f} \end{bmatrix} = \left|\partial_W f\right|^2 - \left|\overline{\partial}_W f\right|^2 $。

2 设 $ d\overline{z} := d(z \mapsto \overline{z}) $。则 $ d\overline{z} = dx - i\,dy $，且

\[ df = \partial_x f\,dx + \partial_y f\,dy = f'\,dz = \partial_W f\,dz + \overline{\partial}_W f\,d\overline{z} \quad \text{对 } f \in C^1(U,\mathbb{C}) . \]

3 1-形式 $ \alpha \in \Omega_{(1)}(U,\mathbb{C}) $ 称为**全纯的**，若每个 $ z_0 \in U $ 都有一个邻域 $ V $，使得存在 $ f \in C^1(V,\mathbb{C}) $ 满足 $ df = \alpha|V $。

(a) 证明下列陈述等价：

(i) $ \alpha $ 是全纯的。

(ii) 存在实可微函数 $ a \in C(U,\mathbb{C}) $，使得 $ \alpha = a\,dz $ 且 $ \alpha $ 是闭的。

(iii) 存在 $ a \in C^1(U,\mathbb{C}) $，使得 $ \alpha = a\,dz $。

(b) 证明

\[ \alpha := \frac{x\,dx + y\,dy}{x^2 + y^2} + i\,\frac{x\,dy - y\,dx}{x^2 + y^2} \]

是 $ \mathbb{C}^{\times} $ 中的全纯 1-形式。$ \alpha $ 是否全局恰当，即是否存在 $ \mathbb{C}^{\times} $ 中的全纯函数 $ f $，使得 $ \alpha = f\,dz $？

4 设 $ U $ 连通且 $ u : U \to \mathbb{R} $ 调和。若 $ v \in C^1(U,\mathbb{R}) $ 满足 $ v_x = -u_y $ 与 $ v_y = u_x $，我们称 $ v $ 与 $ u $ **共轭**。证明

(a) 若 $ v $ 与 $ u $ 共轭，则 $ v $ 调和；

(b) 若 $ U $ 单连通，则对 $ U $ 中每个调和函数都存在一个调和共轭。（提示：考虑 $ u_x - i\,u_y $。）

5 用柯西积分公式证明魏尔斯特拉斯收敛定理。并证明，在定理 5.27 的假设下，对每个 $ k \in \mathbb{N} $，$ k $ 阶导数的序列 $ (f_n^{(k)})_{n \in \mathbb{N}} $ 在 $ U $ 上局部一致收敛到 $ f^{(k)} $。（提示：命题 VII.6.7。）

6 设 $ z_0 \in U $ 且 $ r > 0 $ 满足 $ \overline{\mathbb{D}}(z_0,r) \subset U $。进一步设 $ z \in \mathbb{D}(z_0,r) $ 且 $ \delta > 0 $ 满足 $ \mathbb{D}(z,\delta) \subset U $。验证 $ \partial\mathbb{D}(z,\delta) $ 与 $ \partial\mathbb{D}(z_0,r) $ 在 $ U \setminus \{z\} $ 中同伦。

7 借助柯西积分定理，证明 $ \int_{-\infty}^{\infty} dx/(1 + x^2) = \pi $。

8 设 $ p = \sum_{k=0}^{n} a_k X^k \in \mathbb{C}[X] $ 满足 $ a_n = 1 $。令 $ R := \max\{1, 2\sum_{k=0}^{n-1}\left|a_k\right|\} $。证明

\[ |z|^n/2 \le |p(z)| \le 2|z|^n \quad \text{对 } z \in R\mathbb{D}^{c} . \]

9 设 $ 0 \le r_0 < r < r_1 \le \infty $ 且 $ f $ 在 $ \mathbb{D}(z_0,r_1) $ 中全纯。证明

\[ \left|f^{(n)}(z)\right| \le \frac{r\,n!}{(r - r_0)^{n+1}} \max_{w \in \partial\mathbb{D}(z_0,r)} |f(w)| \quad \text{对 } z \in \mathbb{D}(z_0,r_0) \text{ 且 } n \in \mathbb{N} . \]

10 给定整函数 $ f $，设存在 $ M,R > 0 $ 与 $ n \in \mathbb{N} $，使得 $ |f(z)| \le M|z|^n $ 对 $ z \in R\mathbb{D}^{c} $。证明 $ f $ 是满足 $ \deg(f) \le n $ 的多项式。（提示：习题 9。）

11 设 $ \Gamma_1 $ 与 $ \Gamma_2 $ 是 $ U $ 中的紧致分段 $ C^1 $ 曲线，且 $ f \in C(U \times U,\mathbb{C}) $。证明

\[ \int_{\Gamma_2}\left(\int_{\Gamma_1} f(w,z)\,dw\right)dz = \int_{\Gamma_1}\left(\int_{\Gamma_2} f(w,z)\,dz\right)dw . \]

（提示：习题 VII.6.2。）

12 设 $ \Gamma $ 是 $ U $ 中的紧致分段 $ C^1 $ 曲线，且 $ f \in C(U \times U,\mathbb{C}) $。又设 $ f(w,\cdot) $ 对每个 $ w \in U $ 全纯。证明

\[ F : U \to \mathbb{C} , \quad z \mapsto \int_{\Gamma} f(w,z)\,dw \]

全纯，且 $ F' = \int_{\Gamma} \partial_2 f(w,\cdot)\,dw $。

（提示：习题 11、莫雷拉定理与命题 VII.6.7。）

13 设 $ L = a + \mathbb{R}b $，$ a,b \in \mathbb{C} $ 是 $ \mathbb{C} $ 中的直线，且 $ f \in C(U,\mathbb{C}) $ 在 $ U \setminus L $ 中全纯。证明 $ f $ 在整个 $ U $ 中全纯。（提示：莫雷拉定理。）

14 设 $ U $ 连通且 $ f $ 在 $ U $ 中全纯。证明下列命题。

(a) 若 $ |f| $ 在 $ z_0 $ 处取得全局极小值，则要么 $ f $ 是常值，要么 $ f(z_0) = 0 $。

(b) 设 $ U $ 有界且 $ f \in C(\overline{U},\mathbb{C}) $。证明要么 $ f $ 在 $ U $ 中有零点，要么 $ |f| $ 在 $ \partial U $ 上取得其极小值。

15 对 $ R > 0 $，

\[ P_R : R\partial\mathbb{D} \times R\mathbb{D} \to \mathbb{C} , \quad (\zeta,z) \mapsto \frac{R^2 - |z|^2}{|\zeta - z|^2} \]

称为 $ R\mathbb{D} $ 的**泊松核**。

证明

(a) $ P_R(\zeta,z) = \mathrm{Re}\left((\zeta + z)/(\zeta - z)\right) $ 对 $ (\zeta,z) \in R\partial\mathbb{D} \times R\mathbb{D} $；

(b) 对每个 $ \zeta \in R\partial\mathbb{D} $，函数 $ P_R(\zeta,\cdot) $ 在 $ R\mathbb{D} $ 中调和；

(c) 对 $ r \in [0,R] $ 与 $ t,\theta \in [0,2\pi) $，

\[ P_R(Re^{i\theta}, re^{it}) = \frac{R^2 - r^2}{R^2 - 2Rr\cos(\theta - t) + r^2} ; \]

(d) $ P_1(1, re^{it}) = \sum_{n=-\infty}^{\infty} r^{|n|}e^{int} $ 对 $ r \in [0,1) $ 与 $ t \in \mathbb{R} $；

(e) $ \int_0^{2\pi} P_R(Re^{i\theta}, z)\,d\theta = 2\pi $ 对 $ z \in R\mathbb{D} $。

（(d) 的提示：$ \sum_{k=0}^{\infty}(re^{it})^k = 1/(1 - re^{it}) $。）

16 设 $ \rho > 1 $ 且 $ f $ 在 $ \rho\mathbb{D} $ 中全纯。证明

\[ f(z) = \frac{1}{2\pi}\int_0^{2\pi} P_1(e^{i\theta}, z)f(e^{i\theta})\,d\theta \quad \text{对 } z \in \mathbb{D} . \]

（提示：(i) 对 $ g \in C^1(\rho_0\mathbb{D},\mathbb{C}) $ 且 $ \rho_0 > 1 $，证明

\[ g(z) = \frac{1}{2\pi}\int_0^{2\pi} \frac{g(e^{i\theta})}{1 - e^{-i\theta}z}\,d\theta \quad \text{对 } z \in \mathbb{D} . \]

(ii) 对 $ z \in \mathbb{D} $，$ \rho_0 := \min(\rho, 1/|z|) $，$ g : \rho_0\mathbb{D} \to \mathbb{C} $，证明 $ w \mapsto f(w)/(1 - w\overline{z}) $ 全纯。）

17 证明下列命题：

(a) 对 $ g \in C(\partial\mathbb{D},\mathbb{R}) $，

\[ \mathbb{D} \to \mathbb{C} , \quad z \mapsto \int_0^{2\pi} P_1(e^{i\theta}, z)g(e^{i\theta})\,d\theta \]

调和。

(b) 若 $ f \in C(\overline{\mathbb{D}},\mathbb{R}) $ 在 $ \mathbb{D} $ 中调和，则

\[ f(z) = \frac{1}{2\pi}\int_0^{2\pi} P_1(e^{i\theta}, z)f(e^{i\theta})\,d\theta \quad \text{对 } z \in \mathbb{D} . \]

（提示：(a) 习题 15(b) 与命题 VII.6.7。(b) 设 $ 0 < r_k < 1 $ 满足 $ \lim r_k = 1 $，且 $ f_k(z) := f(r_k z) $ 对 $ z \in r_k^{-1}\mathbb{D} $。习题 16 给出

\[ f_k(z) = \frac{1}{2\pi}\int_0^{2\pi} P_1(e^{i\theta}, z)f_k(e^{i\theta})\,dz \quad \text{对 } z \in \mathbb{D} . \]

现在考虑极限 $ k \to \infty $。）

18 设 $ a \in \mathbb{C} $ 且 $ \alpha \ne \mathrm{Re}\,a $。证明对 $ \gamma_\alpha : \mathbb{R} \to \mathbb{C} $，$ s \mapsto \alpha + is $，我们有

\[ e^{ta} = \frac{1}{2\pi i}\int_{\gamma_\alpha} e^{\lambda t}(\lambda - a)^{-1}\,d\lambda \quad \text{对 } t > 0 . \]

（提示：柯西积分公式给出

\[ e^{ta} = \frac{1}{2\pi i}\int_{\partial\mathbb{D}(a,r)} e^{\lambda t}(\lambda - a)^{-1}\,d\lambda \quad \text{对 } t \in \mathbb{R} \text{ 且 } r > 0 . \]

现在应用柯西积分定理。）
