(iii) 若 $ f $ 是黎曼可积函数，则 $ \underline{\int} f = \overline{\int} f = \int f $（习题 VI.3.10）。因此 (5.3) 表明

\[ h = g = f \qquad \lambda_1\text{-a.e.} , \tag{5.5} \]

这蕴涵 $ f $ 的 $ \lambda_1 $-可测性。由于 $ f $ 有界，故 $ f \in \mathcal{L}_1([0,1]) $。我们还有 $ |g_k| \le \|f\|_\infty $ 对 $ k \in \mathbb{N} $ 是 $ \lambda_1 $-几乎处处的。于是勒贝格控制收敛定理给出

\[ \int_{[0,1]} g \, d\lambda_1 = \lim_{k} \int_{[0,1]} g_k \, d\lambda_1 = \lim_{k} \underline{S}(f,k) = \int_0^1 f , \]

其中在最后一个等式中我们又一次用到了习题 VI.3.10。由 (5.5) 与引理 2.15 可得 $ \int_{[0,1]} f \, d\lambda_1 = \int_0^1 f $。最后，(5.4)、(5.5) 以及 $ R $ 的可数性蕴涵：$ f $ 的不连续点构成一个勒贝格测度为零的集合。

(iv) 反之，设 $ C^c $ 的测度为零。由 (5.4)，$ [g \ne h] $ 的测度也为零，而 $ f $ 的黎曼可积性由 (5.3) 推出。这就完成了证明。■

5.7 推论 有些勒贝格可积函数不是黎曼可积的。因此勒贝格积分是黎曼积分的真扩张。

证明 考虑狄利克雷函数

\[ f: [0,1] \to \mathbb{R}, \quad f(x) := \begin{cases} 1 & \text{若 } x \in \mathbb{Q}, \\ 0 & \text{若 } x \notin \mathbb{Q}, \end{cases} \]

在 $ [0,1] $ 上。由引理 2.15，$ f $ 属于 $ \mathcal{L}_1([0,1]) $，因为 $ f $ 几乎处处为零。但我们由例 III.1.3(c) 已知 $ f $ 处处不连续，故由定理 5.6 它不是黎曼可积的。■

与狄利克雷函数几乎处处相等的映射构成的等价类中含有黎曼可积函数——例如零函数。因此从 $ L_1 $-空间的观点看，这个例子是无趣的。然而，习题 13 将证明存在 $ f \in \mathcal{L}_1([0,1],\mathbb{R}) $，使得任何 $ g \in [f] $ 都不是黎曼可积的。这意味着黎曼积分对 $ L_p $-空间的理论而言是不充分的。

##### 习题

1 设 $ p, q \in [1,\infty] $ 且 $ p \ne q $，证明 $ L_p(\mathbb{R},E) \not\subset L_q(\mathbb{R},E) $。

2 设 $ J $ 是开区间，且 $ f \in C^1(J,E) $ 具有紧支集。则 $ \int_J f' = 0 $。

3 设 $ f \in \mathcal{L}_0([0,1],\mathbb{R}^+) $ 有界。证明

\[ \underline{\int} f \le \int_{[0,1]} f \, d\lambda_1 \le \overline{\int} f . \]

4 设 $ I $ 是紧区间，并如下定义 $ I $ 上的**有界变差函数空间**：

\[ BV(I,E) := \{ f: I \to E ;\ \operatorname{Var}(f,I) < \infty \} . \]

(a) 作为向量子空间，我们有包含关系

\[ C^{1-}(I,E) \subset BV(I,E) \subset B(I,E) . \]

(b) 令 $ \alpha := \inf I $ 且 $ f \in \mathcal{L}_1(I,E) $。则 $ F: I \to E $，$ x \mapsto \int_\alpha^x f(t) \, dt $ 属于 $ BV(I,E) $，且 $ \operatorname{Var}(F,I) \le \|f\|_1 $。

(c) 对每个 $ f \in BV(I,\mathbb{R}) $，存在递增映射 $ s^\pm: I \to \mathbb{R} $ 使得 $ f = s^+ - s^- $。

(d) $ BV(I,\mathbb{R}) $ 是跳跃连续函数 $ I \to \mathbb{R} $ 构成的空间 $ \mathcal{S}(I,\mathbb{R}) $ 的向量子空间。

(e) 每个单调函数都属于 $ BV(I,\mathbb{R}) $。

（(c) 的提示：令 $ \alpha := \inf I $，考虑函数 $ s^+ := (x \mapsto \operatorname{Var}(f^+,[\alpha,x])) $ 与 $ s^- := s - f $。）

5 设 $ H $ 是可分希尔伯特空间。证明\footnote{可以证明，若把 $ H $ 换成任意巴拿赫空间，习题 5 的结论仍然成立。} $ BV([a,b],H) $ 是 $ \mathcal{L}_\infty([a,b],H) $ 的向量子空间，并且

\[ \int_a^{b-h} \|f(t+h) - f(t)\| \, dt \le h \operatorname{Var}(f,[a,b]) \qquad \text{对 } 0 < h < b - a . \]

（提示：注意习题 1.1 与 4(d)。对 $ 0 < h < b - a $ 及 $ t \in [a,b-h] $，证明 $ \|f(t+h) - f(t)\| \le \operatorname{Var}(f,[a,t+h]) - \operatorname{Var}(f,[a,t]) $。）

6 设 $ J \subset \mathbb{R} $ 是完全区间。函数 $ f: J \to E $ 称为**绝对连续**的，若对每个 $ \varepsilon > 0 $ 都存在 $ \delta > 0 $，使得

\[ \sum_{k=0}^{m} |f(\beta_k) - f(\alpha_k)| < \varepsilon \]

对 $ J $ 的每个由两两不相交子区间构成、且满足 $ \sum_{k=0}^{m} (\beta_k - \alpha_k) < \delta $ 的有限族 $ \{ (\alpha_k, \beta_k) ;\ k = 0, \ldots, m \} $ 都成立。我们用 $ W_1^1(J,E) $ 记 $ E^J $ 中全体绝对连续函数构成的集合。证明：

(a) 作为向量子空间，我们有包含关系

\[ BC^1(J,E) \subset W_1^1(J,E) \subset C(J,E) . \]

(b) 若 $ J $ 紧，则 $ W_1^1(J,E) \subset BV(J,E) $。

(c) 康托尔函数（习题 III.3.8）是连续的，但不是绝对连续的。

(d) 令 $ \alpha := \inf J $ 并取 $ f \in \mathcal{L}_1(J,E) $。则 $ F: J \to E $，$ x \mapsto \int_\alpha^x f(t) \, dt $ 是绝对连续的。

7 对 $ j = 1, 2 $，定义 $ f_j: [0,1] \to \mathbb{R} $ 为

\[ f_j(x) := \begin{cases} x^2 \sin(1/x^j) & \text{若 } x \in (0,1], \\ 0 & \text{若 } x = 0 ; \end{cases} \]

与习题 IV.1.2 比较。证明：

(a) $ f_1 \in BV([0,1],\mathbb{R}) $。

(b) $ f_2 \notin BV([0,1],\mathbb{R}) $。

8 设 $ \mu $ 与 $ \nu $ 是可测空间 $ (X,\mathcal{A}) $ 上的测度。我们称 $ \nu $ 是**$ \mu $-绝对连续**的，若每个 $ \mu $-零集也是 $ \nu $-零集。此时我们记 $ \nu \ll \mu $。

(a) 设 $ (X,\mathcal{A},\mu) $ 是 $ \sigma $-有限的完备测度空间。对 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $，定义

\[ f \cdot \mu: \mathcal{A} \to [0,\infty], \quad A \mapsto \int_A f \, d\mu . \]

证明 $ f \cdot \mu $ 是 $ (X,\mathcal{A}) $ 上的完备测度，且 $ f \cdot \mu \ll \mu $。

(b) 设 $ \mathcal{A} := \mathcal{L}_{[0,1]} $，$ \nu := \lambda_1 $，$ \mu := \mathcal{H}^0 $。验证：

(i) $ \nu \ll \mu $。

(ii) 不存在 $ f \in \mathcal{L}_0([0,1],\mathcal{A},\mu) $ 使得 $ \nu = f \cdot \mu $。

9 设 $ (X,\mathcal{A},\nu) $ 是有限测度空间，$ \mu $ 是 $ (X,\mathcal{A}) $ 上的测度。下列陈述等价：

(i) $ \nu \ll \mu $。

(ii) 对每个 $ \varepsilon > 0 $ 存在 $ \delta > 0 $，使得对一切满足 $ \mu(A) < \delta $ 的 $ A \in \mathcal{A} $ 都有 $ \nu(A) < \varepsilon $。

10 对 $ f \in \mathcal{L}_0(\mathbb{R},\lambda_1,\overline{\mathbb{R}}^+) $，令 $ F(x) := \int_{-\infty}^{x} f(t) \, dt $（$ x \in \mathbb{R} $），并用 $ \mu_F $ 记由 $ F $ 生成的 $ \mathbb{R} $ 上的勒贝格–斯蒂尔杰斯测度。证明：

(a) $ F \in W_1^1(\mathbb{R},\mathbb{R}) $ 蕴涵 $ \mu_F \ll \lambda_1 $。

(b) 若 $ \mu_F $ 有限，则 $ \mu_F \ll \beta_1 $ 蕴涵 $ F \in W_1^1(\mathbb{R},\mathbb{R}) $。

11 设 $ I $ 是区间，取 $ f \in \mathcal{L}_1(I,\mathbb{R}^n) $。对固定的 $ a \in I $，假设对 $ x \in I $ 有 $ \int_a^x f(t) \, dt = 0 $。证明对几乎每个 $ x \in I $ 都有 $ f(x) = 0 $。

12 设 $ 0 \le a < b < \infty $，$ I := (-b,-a) \cup (a,b) $，并设 $ f \in \mathcal{L}_1(I,E) $。证明：若 $ f $ 为奇函数，则 $ \int_I f \, dx = 0 $；若 $ f $ 为偶函数，则 $ \int_I f \, dx = 2 \int_a^b f \, dx $。

13 定义

\[ \begin{aligned} K_0 &:= [0,1] , \\ K_1 &:= K_0 \setminus (3/8, 5/8) , \\ K_2 &:= K_1 \setminus ((5/32, 7/32) \cup (25/32, 27/32)) , \ldots \end{aligned} \]

一般地，$ K_{n+1} $ 由 $ K_n $ 挖去长度为 $ (1/4)^{n+1} $ 的开“中间四分之一”区间得到，而不是像传统康托尔集（习题 III.3.8）的构造那样挖去中间三分之一。令 $ K := \bigcap K_n $，$ f := \chi_K $。证明 $ f $ 属于 $ \mathcal{L}_1([0,1]) $，且任何 $ g \in [f] $ 都不是黎曼可积的。
