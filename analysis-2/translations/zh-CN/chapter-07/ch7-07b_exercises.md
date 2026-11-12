##### 习题

1 设 $ X $ 是 $ E $ 中的开集，$ Y $ 是 $ F $ 中的开集，且 $ f \in \operatorname{Diff}^{1}_{\mathrm{loc}}(X,Y) $。证明：对 $ x_0 \in X $，$ \partial f(x_0) $ 属于 $ \mathcal{L}\mathrm{is}(E,F) $，且 $ \partial f^{-1}(y_0) = [\partial f(x_0)]^{-1} $，其中 $ y_0 := f(x_0) $。

2 设 $ m,n \in \mathbb{N}^{\times} $，且 $ X $ 是 $ \mathbb{R}^n $ 中的开集。证明：若 $ \operatorname{Diff}^{1}_{\mathrm{loc}}(X,\mathbb{R}^m) $ 非空，则 $ m = n $。

3 对 (a)–(d) 中定义的映射，求 $ Y := f(X) $ 与 $ f^{-1} $。并判定是否有 $ f \in \operatorname{Diff}^{q}_{\mathrm{loc}}(X,\mathbb{R}^2) $ 或 $ f \in \operatorname{Diff}^{q}(X,Y) $。

(a) $ X := \mathbb{R}^2 $，且对 $ (a,b) \in \mathbb{R}^2 $ 有 $ f(x,y) := (x + a, y + b) $；

(b) $ X := \mathbb{R}^2 $，且 $ f(x,y) := (x^2 - x - 2, 3y) $；

(c) $ X := \mathbb{R}^2 \setminus \{(0,0)\} $，且 $ f(x,y) := (x^2 - y^2, 2xy) $；

(d) $ X := \{(x,y) \in \mathbb{R}^2 \; ; \; 0 < y < x\} $，且 $ f(x,y) := (\log xy, 1/(x^2 + y^2)) $。

（(c) 的提示：$ \mathbb{R}^2 \leftrightarrow \mathbb{C} $。）

4 设
\[ f: \mathbb{R}^2 \to \mathbb{R}^2 , \quad (x,y) \mapsto (\cosh x \cos y, \sinh x \sin y) \]
且 $ X := \{(x,y) \in \mathbb{R}^2 \; ; \; x > 0\} $，$ Y := f(X) $。证明：

(a) $ f|X \in \operatorname{Diff}^{\infty}_{\mathrm{loc}}(X,\mathbb{R}^2) $；

(b) $ f|X \notin \operatorname{Diff}^{\infty}(X,Y) $；

(c) 对 $ U := \{(x,y) \in X \; ; \; 0 < y < 2\pi\} $ 与 $ V := Y \setminus ([0,\infty) \times \{0\}) $，$ f|U $ 属于 $ \operatorname{Diff}^{\infty}(U,V) $；

(d) $ Y = \mathbb{R}^2 \setminus ([-1,1] \times \{0\}) $。

5 设 $ X $ 是 $ \mathbb{R}^m $ 中的开集，且 $ f \in C^1(X,\mathbb{R}^m) $。证明：

(a) 若对 $ x \in X $ 有 $ \partial f(x) \in \mathcal{L}\mathrm{is}(\mathbb{R}^m) $，则 $ x \mapsto |f(x)| $ 在 $ X $ 中无最大值；

(b) 若对 $ x \in X $ 有 $ \partial f(x) \in \mathcal{L}\mathrm{is}(\mathbb{R}^m) $ 且 $ f(x) \ne 0 $，则 $ x \mapsto |f(x)| $ 无最小值。

6 设 $ H $ 是实希尔伯特空间，且
\[ f: H \to H , \quad x \mapsto x/\sqrt{1 + |x|^2} . \]
令 $ Y := \operatorname{im}(f) $，证明 $ f \in \operatorname{Diff}^{\infty}(H,Y) $。$ f^{-1} $ 与 $ \partial f $ 是什么？

7 设 $ X $ 是 $ \mathbb{R}^m $ 中的开集，且 $ f \in C^1(X,\mathbb{R}^m) $。又设存在 $ \alpha > 0 $ 使得
\[ |f(x) - f(y)| \ge \alpha |x - y| \quad \text{对 } x,y \in X . \tag{7.14} \]
证明 $ Y := f(X) $ 是 $ \mathbb{R}^m $ 中的开集，且 $ f \in \operatorname{Diff}^1(X,Y) $。并证明当 $ X = \mathbb{R}^m $ 时有 $ Y = \mathbb{R}^m $。
（提示：由 (7.14) 可得，对 $ x \in X $ 有 $ \partial f(x) \in \mathcal{L}\mathrm{is}(X,Y) $。若 $ X = \mathbb{R}^m $，则由 (7.14) 推出 $ Y $ 在 $ \mathbb{R}^m $ 中是闭集。）

8 设 $ f \in \operatorname{Diff}^1(\mathbb{R}^m,\mathbb{R}^m) $ 且 $ g \in C^1(\mathbb{R}^m,\mathbb{R}^m) $，并且下列任一假设成立：

(a) $ f^{-1} $ 与 $ g $ 是利普希茨连续的；

(b) $ g $ 在 $ \mathbb{R}^m $ 的某个有界子集之外为零。

证明：于是存在 $ \varepsilon_0 > 0 $ 使得对 $ \varepsilon \in (-\varepsilon_0,\varepsilon_0) $ 有 $ f + \varepsilon g \in \operatorname{Diff}^1(\mathbb{R}^m,\mathbb{R}^m) $。
（提示：考虑 $ \operatorname{id}_{\mathbb{R}^m} + f^{-1} \circ (\varepsilon g) $，并应用习题 7。）
