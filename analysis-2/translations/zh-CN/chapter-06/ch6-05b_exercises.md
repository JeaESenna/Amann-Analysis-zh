习题给出了利用部分分式展开进行积分的具体例子。

##### 习题

1 计算下列不定积分
\[ \mathrm{(i)}\quad \int \frac{dx}{a^2x^2 + bx + c} , \qquad \mathrm{(ii)}\quad \int \frac{x \, dx}{x^2 - 2x + 3} , \qquad \mathrm{(iii)}\quad \int \frac{x^5 \, dx}{x^2 + x + 1} , \]
\[ \mathrm{(iv)}\quad \int \frac{dx}{x^4 + 1} , \qquad \mathrm{(v)}\quad \int \frac{x^2 \, dx}{x^4 + 1} , \qquad \mathrm{(vi)}\quad \int \frac{dx}{(ax^2 + bx + c)^2} . \]

2 通过巧妙的代换，将下列积分
\[ \mathrm{(i)}\quad \int \frac{e^x - 1}{e^x + 1} \, dx , \qquad \mathrm{(ii)}\quad \int \frac{dx}{1 + \sqrt{1 + x}} , \qquad \mathrm{(iii)}\quad \int \frac{dx}{\sqrt{x} (1 + \sqrt[3]{x})} \]
化为有理函数的积分。相应的原函数是什么？

3 设 $ f \in C^1(I, \mathbb{R}) $。证明\footnote{见注 7.17(b)。} $ \lim_{\lambda \to \infty} \int_I f(x) \sin(\lambda x) \, dx = 0 $。

4 设 $ f \in C([0, 1], \mathbb{R}) $。验证
\[ \mathrm{(i)}\quad \int_{0}^{\pi} x f(\sin x) \, dx = \frac{\pi}{2} \int_{0}^{\pi} f(\sin x) \, dx , \]
\[ \mathrm{(ii)}\quad \int_{0}^{\pi/2} f(\sin 2x) \cos x \, dx = \int_{0}^{\pi/2} f(\cos^2 x) \cos x \, dx . \]
（提示：(i) 作代换 $ t = \pi - x $。(ii) 注意到 $ \int_{\pi/4}^{\pi} f(\sin 2x) \cos x \, dx = \int_{0}^{\pi/4} f(\sin 2x) \sin x \, dx $，然后使用代换 $ \sin 2x = \cos^2 t $。）

5 **勒让德多项式** $ P_n $ 由\footnote{见习题 IV.1.12。}下式定义：
\[ P_n(X) := \frac{1}{2^n n!} \partial^n [(X^2 - 1)^n] \quad \text{对 } n \in \mathbb{N} , \]
证明
\[ \int_{-1}^{1} P_n P_m = \begin{cases} 0 , & n \ne m , \\ \frac{2}{2n+1} , & n = m . \end{cases} \]

6 利用代换 $ y = \tan x $，证明
\[ \int_{0}^{1} \frac{\log(1 + x)}{1 + x^2} \, dx = \frac{\pi}{8} \log 2 . \]
（提示：$ 1 + \tan x = (\sqrt{2} \sin(x + \pi/4))/\cos x $。）

7 证明
\[ \int_{0}^{1/\sqrt{2}} \frac{4\sqrt{2} - 8x^3 - 4\sqrt{2}x^4 - 8x^5}{1 - x^8} \, dx = \pi . \]
（提示：作代换 $ x = y/\sqrt{2} $，且 $ (y - 1)(y^8 - 16) = (y^2 - 2)(y^2 - 2y + 2)(y^5 + y^4 + 2y^3 - 4) $。）

8 设 $ k, m \in \mathbb{N}^\times $，$ c \in (0, 1) $。证明
\[ \int_{0}^{c} \frac{x^{k-1}}{1 - x^m} \, dx = \sum_{n=0}^{\infty} \frac{c^{nm+k}}{nm + k} . \]
（提示：$ \sum_{n=0}^{\infty} x^{nm} = 1/(1 - x^m) $。）

9 在习题 8 中，令 $ c = 1/\sqrt{2} $，$ m = 8 $，$ k = 1, 4, 5, 6 $。利用习题 7 构造 $ \pi $ 的如下形式：
\[ \pi = \sum_{n=0}^{\infty} \frac{1}{16^n} \left( \frac{4}{8n + 1} - \frac{2}{8n + 4} - \frac{1}{8n + 5} - \frac{1}{8n + 6} \right) . \]

10 给出下列积分的递推公式
\[ \mathrm{(i)}\quad I_n = \int x^n e^x \, dx , \qquad \mathrm{(ii)}\quad I_n = \int x (\log x)^n \, dx , \]
\[ \mathrm{(iii)}\quad I_n = \int \cos^n x \, dx , \qquad \mathrm{(iv)}\quad I_n = \int \frac{dx}{(x^2 + 1)^n} . \]
