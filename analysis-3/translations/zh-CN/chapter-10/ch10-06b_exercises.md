##### 习题

1 求一个测度空间 $ (X,\mathcal{A},\mu) $、$ \mathcal{L}_0(X,\mu,\mathbb{R}^+) $ 中的一个序列 $ (f_j) $ 以及 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的一个函数 $ g $，使得

\[ f_j \le g \text{ 对 } j \in \mathbb{N}, \quad \text{且} \quad \overline{\lim}_j \int_X f_j\,d\mu > \int_X \left(\overline{\lim}_j f_j\right) d\mu . \]

2 设 $ f \in \mathcal{L}_1(X,\mu,E) $ 且 $ \varepsilon > 0 $。证明存在 $ A \in \mathcal{A} $，使得

\[ \mu(A) < \infty \quad \text{且} \quad \left| \int_X f\,d\mu - \int_B f\,d\mu \right| < \varepsilon \]

对每个满足 $ B \supset A $ 的 $ B \in \mathcal{A} $ 都成立。

3 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中的序列，且依测度收敛于 $ f \in \mathcal{L}_0(X,\mu,E) $。又设存在 $ g \in \mathcal{L}_1(X,\mu,\mathbb{R}) $，使得 $ |f_j| \le g $ 对一切 $ j \in \mathbb{N} $ 均 $ \mu $-几乎处处成立。则 $ f $ 属于 $ \mathcal{L}_1(X,\mu,E) $，

\[ f_j \to f \text{ 在 } \mathcal{L}_1(X,\mu,E) \text{ 中}, \quad \text{且} \quad \int_X f_j\,d\mu \to \int_X f\,d\mu \text{ 在 } E \text{ 中} . \]

（提示：若 $ \left(\int_X f_j\,d\mu\right) $ 不收敛于 $ \int_X f\,d\mu $，则存在子列 $ (f_{j_k})_{k \in \mathbb{N}} $ 及 $ \delta > 0 $，使得

\[ \|f_{j_k} - f\|_1 \ge \delta \quad \text{对 } k \in \mathbb{N} . \tag{3.2} \]

利用习题 1.15 与定理 3.12 由 (3.2) 导出矛盾。）

4 设 $ f, g \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $ 是勒贝格可积函数。证明：

(i) 若 $ f \le g $ $ \mu $-几乎处处成立，则 $ \int_X f\,d\mu \le \int_X g\,d\mu $。

(ii) \[ \left| \int_X f\,d\mu \right| \le \int_X |f|\,d\mu . \]

(iii) $ f \wedge g $ 与 $ f \vee g $ 均勒贝格可积，且

\[ - \int_X (|f| + |g|)\,d\mu \le \int_X (f \wedge g)\,d\mu \le \int_X (f \vee g)\,d\mu \le \int_X (|f| + |g|)\,d\mu . \]

5 设 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $ 中的序列 $ (f_j) $ 依测度收敛于 $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^+) $。证明

\[ \int_X f\,d\mu \le \underline{\lim}_j \int_X f_j\,d\mu . \]

6 对 $ x \in \mathbb{R}^n \setminus \{0\} $，定义

\[ k_n(x) := \begin{cases} x^+ & \text{若 } n = 1, \\ \log|x| & \text{若 } n = 2, \\ |x|^{2-n} & \text{若 } n \ge 3. \end{cases} \]

再设 $ U \subset \mathbb{R}^n $ 是非空开集，$ A \in \mathcal{L}(n) $ 满足 $ A \subset U^c $，且 $ f \in C_c(\mathbb{R}^n) $。

(a) 映射 $ A \to \mathbb{R} $，$ x \mapsto f(x)k_n(|y-x|) $ 对每个 $ y \in U $ 都是 $ \lambda_n $-可积的。

(b) 映射 $ U \to \mathbb{R} $，$ y \mapsto \int_A f(x)k_n(|y-x|)\,\lambda_n(dx) $ 是光滑且调和的。

7 验证：

(i) $ \mathcal{L}_1(\mathbb{R}^n,\lambda_n,E) \cap BC(\mathbb{R}^n,E) \subsetneq C_0(\mathbb{R}^n,E) $；

(ii) $ \mathcal{L}_1(\mathbb{R}^n,\lambda_n,E) \cap BUC(\mathbb{R}^n,E) \subseteq C_0(\mathbb{R}^n,E) $。
