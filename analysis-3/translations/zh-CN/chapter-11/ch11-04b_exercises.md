其中 $ W_{-1} := \varnothing $，并且
\[ \bigcup_{i=0}^{m(j)} [\chi_{j,i} > 0] \supset W_j \]
对 $ j \in \mathbb{N} $ 成立。于是 $ \{\chi_{j,i}; 0 \le i \le m(j), j \in \mathbb{N}\} $ 是局部有限族。因此
\[ \chi := \sum_{j=0}^{\infty} \sum_{i=0}^{m(j)} \chi_{j,i} \]
有定义，属于 $ C^{\infty}(X, [0,1]) $，且对 $ p \in X $ 满足 $ \chi(p) > 0 $。现在令
\[ \pi_{\alpha} := \sum_{\alpha} \chi_{j,i}/\chi \quad \text{对 } \alpha \in \mathsf{A}, \]
其中 $ \sum_{\alpha} $ 表示对使 $ U_{j,i} $ 包含于 $ U_{\alpha} $ 的所有指标对 $ (j,i) $ 求和。于是 $ \{\pi_{\alpha}; \alpha \in \mathsf{A}\} $ 是从属于覆盖 $ \{U_{\alpha}; \alpha \in \mathsf{A}\} $ 的光滑单位分解。

(iv) 若存在 $ j \in \mathbb{N} $ 使 $ K_j = K_{j+1} $，则 $ X = K_j $。因此 $ X $ 是紧的。在这种情形下，只需对 (iii) 作简单修改即得结论（因为这时只需考虑单个紧集，即 $ X $）。■

下面的注 (a) 表明，命题 1.20 是定理 X.7.16 的一个意义深远的推广。

1.21 注 (a) 设 $ K $ 是流形 $ X $ 的紧子集，并设 $ \{U_j; 1 \le j \le m\} $ 是 $ K $ 的开覆盖。则存在函数 $ \pi_j \in C^{\infty}(X, [0,1]) $，使得对 $ 1 \le j \le m $ 有 $ \operatorname{supp}(\pi_j) \subset\subset U_j $，且对 $ p \in K $ 有 $ \sum_{j=1}^{m} \pi_j(p) = 1 $。

证明 设 $ U_0 := X \setminus K $。则 $ \{U_j; 0 \le j \le m\} $ 是 $ X $ 的开覆盖。现在由命题 1.20 容易得到结论。■

(b) 命题 1.20 的证明表明，$ \mathbb{R}^m $ 的每个子流形（无论是否带边）都是局部紧的、具有可数基，并且是 $ \sigma $ 紧的。

(c)（正则性）设 $ k \in \mathbb{N}^{\times} $。把上述定义第 (i) 部分中的 $ \pi_{\alpha} \in C^{\infty}(X, [0,1]) $ 换成 $ \pi_{\alpha} \in C^{k}(X, [0,1]) $，便得到从属于覆盖 $ \{U_{\alpha}; \alpha \in \mathsf{A}\} $ 的 $ C^{k} $ 单位分解。此时，若把“光滑单位分解”换成“$ C^{k} $ 单位分解”，命题 1.20 仍然成立。在这种情形下，只需假设 $ X $ 属于 $ C^{k} $ 类。■

约定 在本书余下的部分中，我们把每个流形都理解成适当“环境空间” $ \mathbb{R}^m $ 中的光滑带边子流形。

##### 习题

1 设 $ f: M \to N $ 是淹没。证明 $ f $“局部看起来像投影”，即：对每个 $ p \in M $，存在 $ M $ 在 $ p $ 处的坐标卡 $ (\varphi, U) $ 与 $ N $ 在 $ f(p) $ 处的坐标卡 $ (\psi, V) $，使得 $ f(U) \subset V $，并且
\[ f_{\varphi,\psi}: \mathbb{R}^n \times \mathbb{R}^{m-n} \to \mathbb{R}^n, \quad (x,y) \mapsto x. \]

2 设 $ f: M \to N $ 是浸入。证明 $ f $ 局部看起来像典范单射 $ \mathbb{R}^m \to \mathbb{R}^m \times \mathbb{R}^{n-m} $，$ x \mapsto (x,0) $。

3 证明从 $ M $ 到 $ N $ 的每个微分同胚局部看起来都像 $ \mathbb{R}^m $ 中的恒等映射。

4 设 $ B $ 是 $ N $ 的带边子流形。证明 $ M \times B $ 是 $ M \times N $ 的带边子流形，且 $ \partial(M \times B) = M \times \partial B $。

5 证明“截面”为 $ M $ 的柱体 $ [0,1] \times M $ 与“实心”环面 $ S^1 \times \overline{\mathbb{B}}^2 $ 都是带边流形。确定它们各自的维数与边界。

6 证明 $ \mathbb{R}^n $ 中的闭 $ r $ 球 $ r\overline{\mathbb{B}}^n $ 与闭单位球 $ \overline{\mathbb{B}}^n $ 微分同胚。

7 证明 $ \mathbb{R} $ 中的完全区间微分同胚于 $ (0,1) $、$ [0,1) $ 或 $ [0,1] $。

8 设 $ B $ 是 $ M $ 的非空 $ k $ 维子流形（带边与否均可）。证明 $ B $ 的豪斯多夫维数等于 $ k $。
（提示：IX.3 的习题 4–6 与注 1.21(b)。）

9 设 $ B $ 是 $ M $ 的带边子流形，$ f \in C^{\infty}(B, N) $。证明 $ \operatorname{graph}(f) $ 是 $ M \times N $ 的带边子流形，并确定它的边界。

10 设 $ X $ 是 $ \mathbb{R}^n $ 的 $ n $ 维子流形（带边与否均可），并设 $ U := \{U_{\alpha}; \alpha \in \mathsf{A}\} $ 与 $ V := \{V_{\beta}; \beta \in \mathsf{B}\} $ 表示 $ X $ 的开覆盖。若存在 $ j: \mathsf{B} \to \mathsf{A} $，使得对 $ \beta \in \mathsf{B} $ 有 $ V_{\beta} \subset U_{j(\beta)} $，则称 $ V $ 是 $ U $ 的**加细**。证明：从属于 $ V $ 的每个光滑单位分解都诱导出从属于 $ U $ 的光滑单位分解。
