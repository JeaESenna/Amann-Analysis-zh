##### 习题

1 证明命题 6.6 中的陈述 (iv) 与 (v)。

2 计算 $ B_8 $、$ B_{10} $、$ B_{12} $，以及 $ B_4(X) $、$ B_5(X) $、$ B_6(X) $ 与 $ B_7(X) $。

3 证明：对 $ n \in \mathbb{N}^\times $，

(i) $ B_{2n+1}(X) $ 在 $ [0, 1] $ 中只有零点 $ 0 $、$ 1/2 $ 与 $ 1 $；

(ii) $ B_{2n}(X) $ 在 $ [0, 1] $ 中只有两个零点 $ x_{2m} $ 与 $ x'_{2m} $，且 $ x_{2m} + x'_{2m} = 1 $。

4 用 $ \widetilde{B}_n $ 表示 $ B_n(X)|[0, 1) $ 到 $ \mathbb{R} $ 上的 1-周期延拓。然后证明下列各条：

(i) 对 $ n \ge 2 $，$ \widetilde{B}_n \in C^{n-2}(\mathbb{R}) $。

(ii) 对 $ k \in \mathbb{Z} $ 与 $ n \in \mathbb{N} $，$ \int_k^{k+1} \widetilde{B}_n(x) \, dx = 0 $。

(iii) 对每个 $ n \in \mathbb{N} $，映射

\[ F_n : \{ z \in \mathbb{C} ; \ \operatorname{Re} z > -2n \} \to \mathbb{C} , \quad s \mapsto \int_{1}^{\infty} \widetilde{B}_{2n+1}(x) x^{-(s+2n+1)} \, dx \]

是解析的。

5 证明注 6.11(a)。

6 对 $ \zeta $ 函数证明 $ \lim_{n \to \infty} \zeta(n) = 1 $。

7 设 $ h > 0 $ 且 $ f \in C^4([-h, h], \mathbb{R}) $。证明

\[ \left| \int_{-h}^{h} f(x) \, dx - \frac{h}{3} \left( f(-h) + 4f(0) + f(h) \right) \right| \le \frac{h^5}{90} \|f^{(4)}\|_\infty . \]

（提示：分部积分，并利用积分中值定理。）

8 设 $ f \in C^4([\alpha, \beta], \mathbb{R}) $，并令 $ \alpha_j := \alpha + jh $，其中 $ 0 \le j \le 2n $，$ h := (\beta - \alpha)/2n $，且 $ n \in \mathbb{N}^\times $。进而令\footnote{照例，我们把“空和” $ \sum_{j=1}^{0} \cdots $ 的值规定为 0。}

\[ S(f, [\alpha, \beta], h) := \frac{h}{3} \left( f(\alpha) + f(\beta) + 2 \sum_{j=1}^{n-1} f(\alpha_{2j}) + 4 \sum_{j=1}^{n} f(\alpha_{2j-1}) \right) . \]

这是**辛普森法则**，它是近似积分的又一种法则。证明它满足误差估计

\[ \left| \int_{\alpha}^{\beta} f(x) \, dx - S(f, [\alpha, \beta], h) \right| \le (\beta - \alpha) \frac{h^4}{180} \|f^{(4)}\|_\infty . \]

（提示：习题 7。）

9 计算下列等式在分别使用梯形法则（$ n = 2, 3, 4 $）与辛普森法则（$ n = 1, 2 $）时的误差：

\[ \int_{0}^{1} \frac{dx}{1 + x^2} = \frac{\pi}{4} \quad \text{且} \quad \int_{1}^{2} \frac{dx}{x} = \log 2 \]

10 证明：对于次数至多为三的任何多项式 $ p \in \mathbb{R}[X] $，带单个内部网格点的辛普森法则给出 $ \int_{\alpha}^{\beta} p $ 的正确值。
