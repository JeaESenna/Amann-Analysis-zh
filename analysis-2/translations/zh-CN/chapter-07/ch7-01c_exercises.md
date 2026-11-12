##### 习题

1 设 $ E $ 与 $ F_j $ 为巴拿赫空间，且对 $ j = 1, \ldots, m $ 有 $ A_j \in \operatorname{Hom}(E, F_j) $。又令 $ F := \prod_{j=1}^{m} F_j $。对 $ A := (x \mapsto (A_1x, \ldots, A_mx)) \in \operatorname{Hom}(E, F) $，证明

\[ A \in \mathcal{L}(E, F) \iff (A_j \in \mathcal{L}(E, F_j), \ j = 1, \ldots, m) . \]

2 对方阵 $ A := [a_{k}^{j}] \in \mathbb{K}^{m \times m} $，其**迹**定义为

\[ \operatorname{tr}(A) := \sum_{j=1}^{m} a_{j}^{j} . \]

证明

(i) 映射 $ \operatorname{tr} : \mathbb{K}^{m \times m} \to \mathbb{K} $ 是线性的；

(ii) 对 $ A, B \in \mathbb{K}^{m \times m} $ 有 $ \operatorname{tr}(AB) = \operatorname{tr}(BA) $。

3 若存在可逆矩阵 $ S \in \mathbb{K}^{m \times m} $（即 $ S $ 属于 $ \mathcal{L}\mathrm{aut}(\mathbb{K}^{m}) $）使得 $ A = SBS^{-1} $，则称两个矩阵 $ A, B \in \mathbb{K}^{m \times m} $ **相似**。证明：若 $ A $ 与 $ B $ 相似，则 $ \operatorname{tr}(A) = \operatorname{tr}(B) $。

4 设 $ E $ 为有限维赋范向量空间。证明：对 $ A \in \mathcal{L}(E) $，有

\[ \operatorname{tr}([A]_{\mathcal{E}}) = \operatorname{tr}([A]_{\mathcal{F}}) , \]

其中 $ \mathcal{E} $ 与 $ \mathcal{F} $ 是 $ E $ 的基。

由此可得，$ A \in \mathcal{L}(E) $ 的**迹**通过下式良好定义：

\[ \operatorname{tr}(A) := \operatorname{tr}([A]_{\mathcal{E}}) , \]

其中 $ \mathcal{E} $ 是 $ E $ 的任一基。再证明

(i) $ \operatorname{tr} \in \mathcal{L}(\mathcal{L}(E), \mathbb{K}) $；

(ii) 对 $ A, B \in \mathcal{L}(E) $ 有 $ \operatorname{tr}(AB) = \operatorname{tr}(BA) $。

5 设 $ (E, (\cdot|\cdot)_E) $ 与 $ (F, (\cdot|\cdot)_F) $ 为有限维希尔伯特空间。验证：对每个 $ A \in \mathcal{L}(E, F) $，存在唯一的 $ A^{*} \in \mathcal{L}(F, E) $，称为 $ A $ 的**伴随算子**（或简称伴随）$ A^{*} $，使得

\[ (Ax|y)_F = (x|A^{*}y)_E \quad \text{对 } x \in E \text{ 且 } y \in F . \]

证明：映射

\[ \mathcal{L}(E, F) \to \mathcal{L}(F, E) , \quad A \mapsto A^{*} \]

是共轭线性的，且满足

(i) $ (AB)^{*} = B^{*}A^{*} $，

(ii) $ (A^{*})^{*} = A $，且

(iii) $ (C^{-1})^{*} = (C^{*})^{-1} $

对 $ A, B \in \mathcal{L}(E, F) $ 及 $ C \in \mathcal{L}\mathrm{is}(E, F) $。对 $ A = [a_{k}^{j}] \in \mathbb{K}^{m \times n} $，证明 $ A^{*} = \left[ \overline{a_{j}^{k}} \right] \in \mathbb{K}^{n \times m} $。此矩阵即矩阵 $ A $ 的**埃尔米特共轭**或**埃尔米特伴随**。

若 $ A = A^{*} $（从而 $ E = F $），则称 $ A $ 为**自伴的**或**对称的**。证明：对 $ A \in \mathcal{L}(E, F) $，$ A^{*}A $ 与 $ AA^{*} $ 是自伴的。

6 设 $ E := (E, (\cdot|\cdot)) $ 为有限维希尔伯特空间。证明：对 $ A \in \mathcal{L}(E) $，

(i) $ \operatorname{tr}(A^{*}) = \overline{\operatorname{tr}(A)} $；

(ii) $ \operatorname{tr}(A) = \sum_{j=1}^{n} (A\varphi_j|\varphi_j) $，其中 $ \{\varphi_1, \ldots, \varphi_n\} $ 是 $ E $ 的规范正交基。

7 设 $ E $ 与 $ F $ 为有限维希尔伯特空间。证明：

(i) $ \mathcal{L}(E, F) $ 在内积

\[ (A, B) \mapsto A : B := \operatorname{tr}(B^{*}A) ; \]

下是希尔伯特空间；

(ii) 若 $ E := \mathbb{K}^{n} $ 且 $ F := \mathbb{K}^{m} $，则

\[ |A|_{\mathcal{L}(E, F)} \le \sqrt{A : A} = \|A\| \quad \text{对 } A \in \mathcal{L}(E, F) . \]

8 设 $ [g_{jk}] \in \mathbb{R}^{n \times n} $ 是对称且**正定的**，即 $ g_{jk} = g_{kj} $，且存在 $ \gamma > 0 $ 使得

\[ \sum_{j,k=1}^{n} g_{jk}\xi^{j}\xi^{k} \ge \gamma|\xi|^{2} \quad \text{对 } \xi \in \mathbb{R}^{n} . \]

证明

\[ (x|y)^{g} := \sum_{j,k=1}^{n} g_{jk}x^{j}y^{k} \quad \text{对 } x, y \in \mathbb{R}^{n} \]

定义了 $ \mathbb{R}^{n} $ 上的一个内积。

9 设 $ E $ 为巴拿赫空间，且 $ A, B \in \mathcal{L}(E) $ 可交换，即 $ AB = BA $。证明 $ Ae^{B} = e^{B}A $ 与 $ e^{A+B} = e^{A}e^{B} $。

10 求 $ A, B \in \mathbb{K}^{2 \times 2} $ 使得

(i) $ AB \ne BA $ 且 $ e^{A+B} \ne e^{A}e^{B} $；

(ii) $ AB \ne BA $ 且 $ e^{A+B} = e^{A}e^{B} $。

（(ii) 的提示：对 $ k \in \mathbb{Z} $，$ e^{2k\pi i} = 1 $。）

11 设 $ E $ 为巴拿赫空间，$ A \in \mathcal{L}(E) $ 且 $ B \in \mathcal{L}\mathrm{aut}(E) $。证明

\[ e^{BAB^{-1}} = Be^{A}B^{-1} . \]

12 设 $ E $ 为有限维希尔伯特空间，$ A \in \mathcal{L}(E) $。证明

(i) $ (e^{A})^{*} = e^{A^{*}} $；

(ii) 若 $ A $ 自伴，则 $ e^{A} $ 也自伴；

(iii) 若 $ A $ 是**反自伴的**或**斜对称的**，即 $ A^{*} = -A $，则 $ [e^{A}]^{*}e^{A} = 1 $。

13 对具有下列表示矩阵的 $ A \in \mathcal{L}(\mathbb{R}^{4}) $ 计算 $ e^{A} $：

\[ \begin{bmatrix} 1 & 1 & 1 & 1 \\ 1 & 1 & 1 & 1 \\ 1 & 1 & 1 & 1 \\ 1 & 1 & 1 & 1 \end{bmatrix} , \quad \begin{bmatrix} 2 & 1 & 0 & 0 \\ 0 & 2 & 1 & 0 \\ 0 & 0 & 2 & 1 \\ 0 & 0 & 0 & 2 \end{bmatrix} , \quad \begin{bmatrix} 2 & 1 & 0 & 0 \\ 0 & 2 & 1 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 0 & 2 \end{bmatrix} , \quad \begin{bmatrix} 2 & 1 & 0 & 0 \\ 0 & 2 & 0 & 0 \\ 0 & 0 & 2 & 0 \\ 0 & 0 & 0 & 2 \end{bmatrix} . \]

14 求使得下式成立的 $ A \in \mathbb{R}^{3 \times 3} $：

\[ e^{tA} = \begin{bmatrix} \cos t & -\sin t & 0 \\ \sin t & \cos t & 0 \\ 0 & 0 & 1 \end{bmatrix} \quad \text{对 } t \in \mathbb{R} . \]

15 求下列方程组的通解：

\[ \begin{aligned} \dot{x} &= 3x - 2y + t , \\ \dot{y} &= 4x - y + t^{2} . \end{aligned} \]

16 解初值问题

\[ \begin{aligned} \dot{x} &= z - y , & x(0) &= 0 , \\ \dot{y} &= z + e^{t} , & y(0) &= 3/2 , \\ \dot{z} &= z - x , & z(0) &= 1 . \end{aligned} \]

17 设 $ A = [a_{k}^{j}] \in \mathbb{R}^{n \times n} $ 为**马尔可夫矩阵**，即对所有 $ j \ne k $ 有 $ a_{k}^{j} \ge 0 $，且对 $ j = 1, \ldots, n $ 有 $ \sum_{k=1}^{n} a_{k}^{j} = 1 $。又设

\[ H_c := \left\{ (x^{1}, \ldots, x^{n}) \in \mathbb{R}^{n} \;;\ \sum_{j=1}^{n} x^{j} = c \right\} \quad \text{对 } c \in \mathbb{R} . \]

证明：初值在 $ H_c $ 中的 $ \dot{x} = Ax $ 的每个解对一切时刻仍停留在 $ H_c $ 中，即对 $ t \in \mathbb{R} $ 有 $ e^{tA}H_c \subset H_c $。

18 设 $ b, c \in \mathbb{R} $，且 $ z \in C^{2}(\mathbb{R}, \mathbb{C}) $ 满足 $ \ddot{u} + b\dot{u} + cu = 0 $。证明 $ \operatorname{Re} z $ 与 $ \operatorname{Im} z $ 是 $ \ddot{u} + b\dot{u} + cu = 0 $ 的实解。

19 设 $ b, c \in \mathbb{R} $，且 $ u $ 满足 $ \ddot{u} + b\dot{u} + cu = g(t) $。证明：

(i) $ k \in \mathbb{N} \cup \{\infty\} $ 且 $ g \in C^{k}(\mathbb{R}, \mathbb{K}) $ 蕴含 $ u \in C^{k+2}(\mathbb{R}, \mathbb{K}) $；

(ii) 若 $ g \in C^{\omega}(\mathbb{R}) $，则 $ u \in C^{\omega}(\mathbb{R}) $。

20 **阻尼受迫振子**的微分方程为

\[ \ddot{u} + 2\alpha\dot{u} + \omega_0^{2}u = c\sin(\omega t) \quad \text{对 } t \in \mathbb{R} , \]

其中 $ \alpha, \omega_0, \omega > 0 $ 且 $ c \in \mathbb{R} $。求其通解。

21 在 $ (-\pi/2, \pi/2) $ 上求下列方程的通解：

(i) $ \ddot{u} + u = 1/\cos t $；

(ii) $ \ddot{u} + 4u = 2\tan t $。

22 设 $ E $ 为有限维巴拿赫空间，$ A \in \mathcal{L}(E) $。证明下列陈述等价：

(i) $ \dot{x} = Ax $ 在 $ E $ 中的每个解 $ u $ 都满足 $ \lim_{t \to \infty} u(t) = 0 $。

(ii) 对 $ \lambda \in \sigma(A) $ 有 $ \operatorname{Re}\lambda < 0 $。

在下列习题中，$ E $ 为巴拿赫空间，$ A \in \mathcal{L}(E) $。

23 若 $ \lambda \in \mathbb{K} $ 满足 $ \operatorname{Re}\lambda > \|A\| $，则

\[ (\lambda - A)^{-1} = \int_{0}^{\infty} e^{-t(\lambda - A)} \, dt . \]

（提示：令 $ R(\lambda) := \int_{0}^{\infty} e^{-t(\lambda - A)} \, dt $，并计算 $ (\lambda - A)R(\lambda) $。）

24 证明指数映射具有表示

\[ e^{tA} = \lim_{n \to \infty} \left( 1 - \frac{t}{n}A \right)^{-n} . \]

（提示：定理 III.6.23 的证明。）

25 设 $ C $ 为 $ E $ 的闭凸子集。证明下列陈述等价：

(i) 对所有 $ t \in \mathbb{R} $，$ e^{tA}C \subset C $；

(ii) 对所有满足 $ \operatorname{Re}\lambda > \|A\| $ 的 $ \lambda \in \mathbb{K} $，$ (\lambda - A)^{-1}C \subset C $。

（提示：习题 23 与 24。）
