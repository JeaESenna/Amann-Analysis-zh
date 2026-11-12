##### 习题

1 设 $ A \in \mathcal{A} $，$ \mathcal{B} := \mathcal{A} \mid A $，且 $ \nu := \mu \mid \mathcal{B} $。验证：对 $ f \in E^X $ 有

\[ \chi_A f \in \mathcal{L}_1(X,\mu,E) \iff f \mid A \in \mathcal{L}_1(A,\nu,E) . \]

对这样的 $ f $，证明

\[ \int_X \chi_A f \, d\mu = \int_A f \mid A \, d\nu . \]

2 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,E) $ 中的序列，且一致收敛于 $ f \in E^X $。又设 $ \mu(X) < \infty $。证明：$ f $ 属于 $ \mathcal{L}_1(X,\mu,E) $，$ f_j \to f $ 于 $ \mathcal{L}_1(X,\mu,E) $ 中，且 $ \lim_j \int_X f_j \, d\mu = \int_X f \, d\mu $。

3 验证：对 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}^+) $，

\[ \int_X f \, d\mu = \sup \left\{ \int_X \varphi \, d\mu ;\ \varphi \in \mathcal{S}(X,\mu,\mathbb{R}^+),\ \varphi \le f\ \mu\text{-几乎处处} \right\} . \]

4 设 $ X $ 是任意非空集，$ a \in X $，$ \delta_a $ 是支集在 $ a $ 处的狄拉克测度。证明 $ \mathcal{L}_1(X,\delta_a,\mathbb{R}) = \mathbb{R}^X $，并对 $ \mathbb{R}^X $ 计算 $ \int f \, d\delta_a $。

5 设 $ \mu_F $ 是习题 IX.4.10 中的勒贝格–斯蒂尔杰斯测度。确定 $ \mathcal{L}_1(\mathbb{R},\mu_F,\mathbb{K}) $，并对 $ f \in \mathcal{L}_1(\mathbb{R},\mu_F,\mathbb{K}) $ 计算 $ \int f \, d\mu_F $。

6 证明定理 2.11 的陈述 (ii) 与 (iii)。

7 设 $ f \in \mathcal{L}_0(X,\mu,E) $ 是 $ \mu $-几乎处处有界的，且 $ \mu(X) < \infty $。证明或否证 $ f $ 是 $ \mu $-可积的。

8 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $ 中的递增序列，且 $ f_j \ge 0 $，并设它 $ \mu $-几乎处处收敛于 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $。则 $ \int_X f_j \, d\mu \uparrow \int_X f \, d\mu $。（这就是 $ \mathcal{L}_1 $ 中的**单调收敛定理**。）

（提示：证明 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $ 中的柯西序列，并指出其极限。）

9 设 $ (f_j) $ 是 $ \mathcal{L}_1(X,\mu,\mathbb{R}) $ 中的序列，$ \mu $-几乎处处 $ f_j \ge 0 $，且 $ \sum_{j=0}^{\infty} f_j \in \mathcal{L}_1(X,\mu,\mathbb{R}) $。证明 $ \sum_{j=0}^{\infty} \int f_j \, d\mu = \int \left( \sum_{j=0}^{\infty} f_j \right) d\mu $。（提示：习题 8。）

10 设 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 满足 $ \mu $-几乎处处 $ f > 0 $。证明：对每个满足 $ \mu(A) > 0 $ 的 $ A \in \mathcal{A} $，都有 $ \int_A f \, d\mu > 0 $。

11 给定 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 且 $ f \ge 0 $，定义 $ \varphi_f(A) := \int_A f \, d\mu $，其中 $ A \in \mathcal{A} $。证明：

(a) $ (X,\varphi_f,\mathcal{A}) $ 是有限测度空间。

(b) $ \mathcal{N}_\mu \subset \mathcal{N}_{\varphi_f} $。

(c) 若 $ \mu $-几乎处处 $ f > 0 $，则 $ \mathcal{N}_\mu = \mathcal{N}_{\varphi_f} $。

特别地，证明：若 $ \mu $-几乎处处 $ f > 0 $，则 $ (X,\mathcal{A},\varphi_f) $ 是完备的有限测度空间。

（提示：(a) 习题 9。(b) 习题 10。）

12 设 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 满足 $ \mu $-几乎处处 $ f > 0 $，并取 $ g \in \mathcal{L}_0(X,\mu,\mathbb{R}) $。证明：$ g $ 是 $ \varphi_f $-可积的当且仅当 $ gf $ 是 $ \mu $-可积的。此时，证明

\[ \int_X g \, d\varphi_f = \int_X fg \, d\mu . \]

13 对 $ f \in \mathcal{L}_1(X,\mu,\overline{\mathbb{R}}^+) $，证明**切比雪夫不等式**：

\[ \mu\left( [f \ge \alpha] \right) \le \frac{1}{\alpha} \int_X f \, d\mu \quad \text{对 } \alpha > 0 . \]

14 设 $ \mu(X) < \infty $，$ I $ 是 $ \mathbb{R} $ 中的完全区间。又设 $ \varphi \in C^1(I,\mathbb{R}) $ 是凸的。证明**詹森不等式**：若 $ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $ 满足 $ f(X) \subset I $ 且 $ \varphi \circ f \in \mathcal{L}_1(X,\mu,\mathbb{R}) $，则

\[ \varphi\left( \fint_X f \, d\mu \right) \le \fint_X \varphi \circ f \, d\mu , \quad \text{其中 } \fint_X f \, d\mu := \frac{1}{\mu(X)} \int_X f \, d\mu . \]

（提示：证明 $ \alpha := \fint f \, d\mu $ 落在 $ I $ 中，从而界 $ \varphi(y) \ge \varphi(\alpha) + \varphi'(\alpha)(y-\alpha) $ 适用。）

15 设 $ f \in \mathcal{L}_1(X,\mu,E) $。证明：对每个 $ \varepsilon > 0 $ 都存在 $ \delta > 0 $，使得对一切满足 $ \mu(A) < \delta $ 的 $ A \in \mathcal{A} $ 都有 $ \left| \int_A f \, d\mu \right| < \varepsilon $。（提示：考虑定理 2.10。）
