##### 习题

1 证明
\[ \Gamma\left(n + \frac{1}{2}\right) = \sqrt{\pi}\prod_{k=1}^{n}\frac{2k-1}{2} = 1 \cdot 3 \cdot \cdot \cdot \cdot \cdot (2n-1)\frac{\sqrt{\pi}}{2^{n}} \qquad \text{对 } n \in \mathbb{N}^{\times} . \]

2 证明 $ \Gamma $ 属于 $ C^{\infty}(\mathbb{C}\setminus(-\mathbb{N}),\mathbb{C}) $，且
\[ \Gamma^{(n)}(z) = \int_{0}^{\infty} t^{z-1}(\log t)^{n}e^{-t} \, dt \qquad \text{对 } n \in \mathbb{N} \text{ 且 } \operatorname{Re} z > 0 . \]

（提示：考虑 (9.4)。）

3 设 $ C $ 为欧拉–马歇罗尼常数。验证下列陈述：

(i) $ \int_{0}^{\infty} e^{-t}\log t \, dt = -C $。

(ii) $ \int_{0}^{\infty} e^{-t}t\log t \, dt = 1 - C $。

(iii) $ \int_{0}^{\infty} e^{-t}t^{n-1}\log t \, dt = (n-1)!\sum_{k=1}^{n-1}(1/k - C) $ 对 $ n \in \mathbb{N} $ 且 $ n \ge 2 $。

(iv) $ \int_{0}^{\infty}(\log t)^{2}e^{-t} \, dt = C^{2} + \pi^{2}/6 $。

（提示：为计算 (iv) 中的积分，考虑应用 7.23(a)。）

4 证明伽马函数具有如下表示
\[ \Gamma(z) = \int_{0}^{1}(-\log t)^{z-1} \, dt \]
对满足 $ \operatorname{Re} z > 0 $ 的 $ z \in \mathbb{C} $。

5 设 $ f $ 与 $ g $ 是对数凸的。证明 $ fg $ 也是对数凸的。

6 设函数 $ f : (0,\infty) \to (0,\infty) $ 可微\footnote{可以不需要 $ f $ 的可微性（见 [Art31]、[Kön92]）。}且满足

(i) $ f $ 是对数凸的；

(ii) $ f(x+1) = xf(x) $ 对 $ x > 0 $；

(iii) $ f(1) = 1 $。

然后证明 $ f = \Gamma|(0,\infty) $。

（提示：$ (\alpha) $ 定义 $ h := \log(\Gamma/f) $。利用 (iii)，只需验证 $ h' = 0 $。

$ (\beta) $ 由 (ii) 与定理 9.2 可得，$ h $ 是 1-周期的。

$ (\gamma) $ 由 (i) 可得 $ (\log f)' $ 递增（见定理 IV.2.12）。这意味着
\[ 0 \le (\log f)'(x+y) - (\log f)'(x) \le (\log f)'(x+1) - (\log f)'(x) = 1/x \]
对 $ 0 < y \le 1 $，其中最后一步来自再次利用 (ii)。对 $ (\log \Gamma)' $ 也有类似的估计。因此
\[ -1/x \le h'(x+y) - h'(x) \le 1/x \qquad \text{对 } y \in (0,1] \text{ 且 } x \in (0,\infty) . \]

于是，$ h $、$ h' $ 与 $ h'(\cdot + y) $ 都是 1-周期的，这意味着
\[ -1/(x+n) \le h'(x+y) - h'(x) \le 1/(x+n) \qquad \text{对 } x, y \in (0,1] \text{ 且 } n \in \mathbb{N}^{\times} . \]
令 $ n \to \infty $，由此可得 $ h' = 0 $。）

7 证明**勒让德倍元公式**
\[ \Gamma\left(\frac{x}{2}\right)\Gamma\left(\frac{x+1}{2}\right) = \frac{\sqrt{\pi}}{2^{x-1}}\Gamma(x) \qquad \text{对 } x \in (0,\infty) . \]

（提示：考虑 $ h(x) := 2^{x}\Gamma(x/2)\Gamma((x+1)/2) $，并应用习题 6。）

8 对 $ x \in (-1,1) $，验证幂级数展开
\[ (\log\Gamma)(1+x) = -Cx + \sum_{k=2}^{\infty}(-1)^{k}\frac{\zeta(k)}{k}x^{k} . \]

（提示：将 $ \log(1+x/n) $ 展开为幂级数，其中 $ n \in \mathbb{N}^{\times} $，并参见命题 9.5。）

9 证明 $ \int_{0}^{1}\log\Gamma(x) \, dx = \log\sqrt{2\pi} $。（提示：习题 8.4 与定理 9.6。）

10 验证，对 $ 0 < a < b $，有
\[ \int_{a}^{b}\frac{dx}{\sqrt{(x-a)(b-x)}} = \pi . \]

11 对固定的 $ q \in (0,\infty) $，证明函数 $ (0,\infty) \to (0,\infty) $，$ p \mapsto \mathrm{B}(p,q) $ 可微且对数凸。（提示：证明 $ \partial_{p}^{2}(\log(t^{p-1}(1-t)^{q-1})) = 0 $ 对 $ p, q \in (0,\infty) $ 与 $ t \in (0,1) $。）

12 证明（不用 (9.25)），对 $ p, q \in (0,\infty) $，有
\[ \mathrm{B}(p+1,q) = p\mathrm{B}(p,q)/(p+q) . \]

13 对 $ p, q \in (0,\infty) $，证明
\[ \frac{\Gamma(p)\Gamma(q)}{\Gamma(p+q)} = \mathrm{B}(p,q) . \]
（提示：固定 $ q \in (0,\infty) $，令
\[ f : (0,\infty) \to (0,\infty) , \qquad p \mapsto \mathrm{B}(p,q)\Gamma(p+q)/\Gamma(q) . \]
由习题 11 与命题 9.8，$ f $ 可微，且习题 5 与 11 表明 $ f $ 是对数凸的。进一步，由习题 12 可得 $ f $ 满足函数方程 $ f(p+1) = pf(p) $。于是 $ f(1) = 1 $，再由习题 6 可得结论。）
