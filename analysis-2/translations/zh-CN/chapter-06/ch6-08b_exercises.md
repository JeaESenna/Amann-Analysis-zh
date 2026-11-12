##### 习题

1 证明下列反常积分收敛：
\[ \mathrm{(i)}\quad \int_{1}^{\infty} \frac{\sin x}{x^2} \, dx , \qquad \mathrm{(ii)}\quad \int_{0}^{\infty} \frac{\sin x}{x} \, dx , \qquad \mathrm{(iii)}\quad \int_{1}^{\infty} \frac{\sin(1/x)}{x} \, dx . \]
在哪些情形下这些积分绝对收敛？

2 下列哪些反常积分有值？
\[ \mathrm{(i)}\quad \int_{0}^{1} \frac{\arcsin x}{\sqrt{1 - x^2}} \, dx , \qquad \mathrm{(ii)}\quad \int_{1}^{\infty} \frac{\log x}{x^2} \, dx , \]
\[ \mathrm{(iii)}\quad \int_{0}^{\infty} \frac{\log x}{1 + x^2} \, dx , \qquad \mathrm{(iv)}\quad \int_{0}^{\infty} x^n e^{-x} \, dx . \]
（(iii) 的提示：考虑 $ \int_{1}^{\infty} $ 与 $ \int_{0}^{1} $。）

3 证明 $ \int_{0}^{\pi} \log \sin x \, dx = -\pi \log 2 $。（提示：$ \sin 2x = 2 \sin x \cos x $。）

4 设 $ -\infty < a < b \le \infty $，且 $ f : [a, b) \to E $ 可容许。证明：$ \int_{a}^{b} f $ 存在当且仅当对每个 $ \varepsilon > 0 $，存在 $ c \in [a, b) $，使得对 $ \alpha, \beta \in [c, b) $ 有 $ \left| \int_{\alpha}^{\beta} f \right| < \varepsilon $。

5 证明积分 $ \int_{0}^{\infty} \sqrt{t} \cos(t^2) \, dt $ 收敛。\footnote{本题特别表明：$ \int_{0}^{\infty} f $ 的收敛并不能推出当 $ x \to \infty $ 时有 $ f(x) \to 0 $。请将此结果与定理 II.7.2 比较。}

6 设 $ -\infty < a < b \le \infty $，且 $ f : [a, b) \to \mathbb{R} $ 可容许。

(i) 若 $ f \ge 0 $，证明 $ \int_{a}^{b} f(x) \, dx $ 当且仅当 $ K := \sup_{c \in [a, b)} \left| \int_{a}^{c} f \right| < \infty $。

(ii) 设 $ f \in C([a, b), \mathbb{R}) $，$ g \in C^1([a, b), \mathbb{R}) $。证明：若 $ K < \infty $ 且 $ g(x) $ 当 $ x \to b - 0 $ 时单调趋于 $ 0 $，则 $ \int_{a}^{b} fg $ 收敛。

7 设 $ f \in C^1([a, \infty), \mathbb{R}) $，其中 $ a \in \mathbb{R} $，且 $ f' $ 递增，$ \lim_{x \to \infty} f'(x) = \infty $。证明 $ \int_{a}^{\infty} \sin(f(x)) \, dx $ 收敛。
（提示：作代换 $ y = f(x) $，并回顾定理 III.5.7。）

8 函数 $ f \in C([0, \infty), \mathbb{R}) $ 满足 $ \sup_{0 < a < b < \infty} \left| \int_{a}^{b} f \right| < \infty $。试证明
\[ \int_{0}^{\infty} \frac{f(ax) - f(bx)}{x} \, dx = f(0) \log\left( \frac{a}{b} \right) \quad \text{对 } 0 < a < b . \]
（提示：令 $ c > 0 $。由定理 4.16 可知：
\[ \int_{c}^{\infty} \frac{f(ax) - f(bx)}{x} \, dx = \int_{ac}^{bc} \frac{f(x)}{x} \, dx = f(\xi(c)) \log\left( \frac{a}{b} \right) \]
其中 $ \xi(c) \in [ac, bc] $。）

9 设 $ -\infty < a < 0 < b < \infty $，且 $ f : [a, 0) \cup (0, b] \to \mathbb{R} $ 可容许。若
\[ \lim_{\varepsilon \to 0} \left( \int_{a}^{-\varepsilon} f(x) \, dx + \int_{\varepsilon}^{b} f(x) \, dx \right) \]
在 $ \mathbb{R} $ 中存在，则称此极限为 $ \int_{a}^{b} f $ 的**柯西主值**，并记作\footnote{$ PV $ 表示“主值”。} $ PV \int_{a}^{b} f $。计算
\[ PV \int_{-1}^{1} \frac{dx}{x} , \qquad PV \int_{-\pi/2}^{\pi/2} \frac{dx}{\sin x} , \qquad PV \int_{-1}^{1} \frac{dx}{x(6 + x - x^2)} . \]
