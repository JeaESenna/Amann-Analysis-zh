3.6 注 (a) 在 $ F(x) := x $（$ x \in \mathbb{R} $）的情形，有 $ \mu_F^* = \lambda_1^* $。

证明 这由命题 3.4 推出。■

(b) 若把测度生成函数定义中的“左连续”换成“右连续”，并把所有左闭区间换成右闭区间，则命题 3.5 仍然成立。■

##### 豪斯多夫外测度

设 $ X $ 是可分度量空间，$ \mathcal{T} $ 是由度量诱导的拓扑。对 $ s > 0 $、$ \varepsilon > 0 $ 与 $ A \subset X $，我们令

\[ \mathcal{H}_\varepsilon^s(A) := \inf\left\{ \sum_{j=0}^{\infty} [\operatorname{diam} O_j]^s \,;\ O_j \in \mathcal{T},\, \operatorname{diam}(O_j) < \varepsilon,\, A \subset \bigcup_{j=0}^{\infty} O_j \right\} . \]

由注 3.1(g) 与定理 3.2，$ \mathcal{H}_\varepsilon^s $ 是 $ X $ 上的外测度。此外，当 $ \varepsilon_1 > \varepsilon_2 $ 时有 $ \mathcal{H}_{\varepsilon_1}^s \le \mathcal{H}_{\varepsilon_2}^s $，因为相对于 $ \varepsilon_2 $，对 $ \varepsilon_1 $ 可用的覆盖集更多。因此（见命题 II.5.3）

\[ \mathcal{H}_*^s(A) := \lim_{\varepsilon \to 0+} \mathcal{H}_\varepsilon^s(A) = \sup_{\varepsilon > 0} \mathcal{H}_\varepsilon^s(A) \]

对所有 $ s > 0 $ 与 $ A \subset X $ 都存在。我们称 $ \mathcal{H}_*^s $ 为 $ X $ 上的 **$ s $ 维豪斯多夫外测度**。为完备起见，我们用 $ \mathcal{H}_*^0 := \mathcal{H}^0 $ 定义 0 维豪斯多夫（外）测度，其中 $ \mathcal{H}^0 $ 是 $ X $ 上的计数测度。

3.7 命题 对每个 $ s \ge 0 $，$ \mathcal{H}_*^s $ 是 $ X $ 上的外测度。

证明 $ s = 0 $ 的情形已由注 3.1(b) 涵盖，因为 $ \mathcal{H}^0 $ 是测度——见例 2.2(b)。因此设 $ s > 0 $。显然 $ \mathcal{H}_*^s $ 是从 $ \mathfrak{P}(X) $ 到 $ [0, \infty] $ 的递增映射，且 $ \mathcal{H}_*^s(\varnothing) = 0 $。为证明 $ \sigma $-次可加性，设 $ (A_j) $ 是 $ \mathfrak{P}(X) $ 中的序列。由于对每个 $ \varepsilon > 0 $，$ \mathcal{H}_\varepsilon^s(A) $ 都是 $ X $ 上的外测度，我们有

\[ \mathcal{H}_\varepsilon^s\left(\bigcup_j A_j\right) \le \sum_j \mathcal{H}_\varepsilon^s(A_j) \le \sum_j \mathcal{H}_*^s(A_j) . \]

取极限 $ \varepsilon \to 0 $，便得到所证结论。■

##### 习题

1 证明：

(a) $ I, J \in \mathbb{J}(n) \Rightarrow I \cap J \in \mathbb{J}(n) $。

(b) 设 $ I_0, \ldots, I_k \in \mathbb{J}(n) $，$ I $ 是满足 $ I \subset \bigcup_{j=0}^n I_j $ 的区间。则 $ \operatorname{vol}_n(I) \le \sum_{j=0}^k \operatorname{vol}_n(I_j) $。（证明此结论时不要使用命题 3.3。）

2 (a) 设 $ \mu $ 是博雷尔 $ \sigma $-代数 $ \mathcal{B}^1 $ 上的测度，并设对 $ x \in \mathbb{R} $，$ \mu\big((-\infty, x)\big) $ 有限。进而令

\[ F_\mu(x) := \mu\big((-\infty, x)\big) \quad \text{对 } x \in \mathbb{R} . \]

证明 $ F_\mu $ 是测度生成函数，且 $ \lim_{x \to -\infty} F_\mu(x) = 0 $。

(b) 确定 $ F_{\delta_0} $，其中 $ \delta_0 $ 表示 $ (\mathbb{R}, \mathcal{B}^1) $ 上支撑在 0 处的狄拉克测度。

3 设 $ f\colon \mathbb{R} \to [0, \infty) $ 是反常可积的，并且

\[ F_f(x) := \int_{-\infty}^{x} f(\xi)\, d\xi \quad \text{对 } x \in \mathbb{R} . \]

验证 $ F_f $ 是测度生成函数，并且当 $ -\infty < a < b < \infty $ 时，$ \mu_{F_f}^*\big([a, b)\big) = \int_a^b f(\xi)\, d\xi $。

4 设 $ A \subset \mathbb{R}^n $。证明：

(a) $ \mathcal{H}_*^s(A) = \lim_{\varepsilon \to 0+} \inf\left\{ \sum_{k=0}^{\infty} [\operatorname{diam}(A_k)]^s \,;\ A_k \subset \mathbb{R}^n,\, \operatorname{diam}(A_k) \le \varepsilon,\, k \in \mathbb{N},\, A \subset \bigcup_k A_k \right\} $。

(b) 若 $ f\colon A \to \mathbb{R}^m $ 是利普希茨连续的，且利普希茨常数为 $ \lambda $，则

\[ \mathcal{H}_*^s(f(A)) \le \lambda^s \mathcal{H}_*^s(A) . \]

(c) 对每个等距 $ \varphi\colon \mathbb{R}^n \to \mathbb{R}^n $，都有 $ \mathcal{H}_*^s(\varphi(A)) = \mathcal{H}_*^s(A) $。因此 $ \mathbb{R}^n $ 上的豪斯多夫外测度在等距下不变，也就是说，它是一个运动不变量。\footnote{由习题 VII.9.1 与 VII.9.2，$ \mathbb{R}^n $ 的每个等距 $ \varphi $ 都是\textbf{仿射映射}——也就是说，形如 $ \varphi(x) = T x + a $，其中 $ T \in O(n) $、$ a \in \mathbb{R}^n $——因而可以解释为刚体运动。}

(d) 设 $ \overline{n} > n $，$ \overline{\mathcal{H}}_*^s $ 是 $ \mathbb{R}^{\overline{n}} $ 上的豪斯多夫外测度。则 $ \overline{\mathcal{H}}_*^s(A) = \mathcal{H}_*^s(A) $。也就是说，豪斯多夫外测度与所在空间 $ \mathbb{R}^n $ 的维数无关。

5 设 $ A \subset \mathbb{R}^n $，$ 0 \le s < t < \infty $。证明以下事实：

(a) $ \mathcal{H}_*^s(A) < \infty \Rightarrow \mathcal{H}_*^t(A) = 0 $。

(b) $ \mathcal{H}_*^t(A) > 0 \Rightarrow \mathcal{H}_*^s(A) = \infty $。

(c) $ \inf\{ s > 0 \,;\ \mathcal{H}_*^s(A) = 0 \} = \sup\{ s \ge 0 \,;\ \mathcal{H}_*^s(A) = \infty \} $。这个唯一的数

\[ \dim_H(A) := \inf\{ s > 0 \,;\ \mathcal{H}_*^s(A) = 0 \} \]

称为 $ A $ 的**豪斯多夫维数**。

6 设 $ A, B $ 与 $ A_j $（$ j \in \mathbb{N} $）都是 $ \mathbb{R}^n $ 的子集。证明：

(a) $ 0 \le \dim_H(A) \le n $。

(b) 若 $ A $ 是开集且非空，则 $ \dim_H(A) = n $。

(c) $ A \subset B \Rightarrow \dim_H(A) \le \dim_H(B) $。

(d) $ \dim_H\left(\bigcup_j A_j\right) = \sup_j \{ \dim_H(A_j) \} $。

(e) 若 $ A $ 是可数的，则它的豪斯多夫维数为 0。

(f) 对任何利普希茨连续函数 $ f\colon A \to \mathbb{R}^n $，都有 $ \dim_H(f(A)) \le \dim_H(A) $。

(g) $ A $ 的豪斯多夫维数与所在空间 $ \mathbb{R}^n $ 的维数无关。

7 设 $ A \subset \mathbb{R}^n $，$ B \subset \mathbb{R}^m $。证明 $ \dim_H(A \times B) = \dim_H(A) + \dim_H(B) $。

8 设 $ I \subset \mathbb{R} $ 是紧致完全区间，$ \gamma \in C(I, \mathbb{R}^n) $ 是单射可求长道路，其像为 $ \Gamma $。则 $ \dim_H(\Gamma) = 1 $。

9 验证：对 $ A \subset \mathbb{R}^2 $，令 $ \mu^*(A) := \lambda_1^*(\operatorname{pr}_1(A)) $，由此定义了 $ \mathbb{R}^2 $ 上的一个外测度。

10 设 $ \{ \mu_j^* \,;\ j \in \mathbb{N} \} $ 是 $ X $ 上的一族外测度。则

\[ \mu^*\colon \mathfrak{P}(X) \to [0, \infty] \,, \quad A \mapsto \sum_{j=0}^{\infty} \mu_j^*(A) \]

是 $ X $ 上的外测度。

11 证明：对每个 $ A \subset \mathbb{R}^n $，都存在 $ G_\delta $ 集 $ G $，使得 $ A \subset G $ 且 $ \lambda_n^*(A) = \lambda_n^*(G) $。
