8.14 定理（换元法则） 设 $ \Phi\in\operatorname{Diff}^1(X,Y) $ 且 $ f\in E^Y $。则 $ f $ 属于 $ \mathcal{L}_1(Y,E) $ 当且仅当 $ (f\circ\Phi)|\det\partial\Phi| $ 属于 $ \mathcal{L}_1(X,E) $。此时有

\[ \int_Y f\,dy=\int_X (f\circ\Phi)|\det\partial\Phi|\,dx . \]

证明 (i) 设 $ f\in\mathcal{L}_1(Y,E) $，并取序列 $ (f_j)\subset\mathcal{S}_c(Y,E) $，它在 $ \mathcal{L}_1(Y,E) $ 中几乎处处收敛到 $ f $，且满足 $ \lim_{j}\int_Y f_j=\int_Y f $（见引理 6.18、注 6.19(a) 与 (c)、定理 2.18）。令 $ g_j:=(f_j\circ\Phi)|\det\partial\Phi| $，$ j\in\mathbb{N} $。由引理 8.13 知 $ (g_j) $ 是 $ \mathcal{L}_1(X,E) $ 中的柯西序列，且 $ \int_Y f_j\,dy=\int_X g_j\,dx $。由于 $ \mathcal{L}_1(X,E) $ 完备，存在 $ g\in\mathcal{L}_1(X,E) $ 使 $ g_j\to g $ 于 $ \mathcal{L}_1(X,E) $。又由定理 2.18 知 $ \int_X g_j\,dx $ 收敛到 $ \int_X g\,dx $，且 $ (g_j) $ 的某个子序列 $ (g_{j_k})_{k\in\mathbb{N}} $ 在 $ X $ 中几乎处处收敛到 $ g $。于是 $ g $ 与 $ (f\circ\Phi)|\det\partial\Phi| $ 在 $ X $ 中几乎处处重合。由引理 2.15，$ (f\circ\Phi)|\det\partial\Phi| $ 属于 $ \mathcal{L}_1(X,E) $，且 $ \int_X g=\int_X (f\circ\Phi)|\det\partial\Phi| $。由此可得

\[ \int_Y f\,dy=\lim_{j}\int_Y f_j\,dy=\lim_{j}\int_X g_j\,dx=\int_X g\,dx=\int_X (f\circ\Phi)|\det\partial\Phi|\,dx . \]

(ii) 反之，设 $ (f\circ\Phi)|\det\partial\Phi| $ 属于 $ \mathcal{L}_1(X,E) $。由 (8.5) 有

\[ f=\big((f\circ\Phi)|\det\partial\Phi|\big)\circ\Phi^{-1}|\det\partial(\Phi^{-1})| , \]

故 (i) 表明 $ f $ 属于 $ \mathcal{L}_1(Y,E) $。 ■

显然，推论 8.5 对 $ E $ 值映射也成立。由此可知，命题 8.6(ii)、8.9(ii) 与定理 8.11(ii) 对 $ E $ 值函数同样成立。

##### 习题

1 设 $ G\in\mathbb{R}^{n\times n} $ 对称且正定。证明

\[ \int_{\mathbb{R}^n} e^{-(Gx\mid x)}\,dx=\pi^{n/2}/\sqrt{\det G} . \]

（提示：主轴变换。）

2 证明：对 $ p\in\mathbb{C} $ 且 $ \operatorname{Re}p>n/2 $，有

\[ \int_{\mathbb{R}^n} (1+|x|^2)^{-p}\,dx=\pi^{n/2}\Gamma(p-n/2)/\Gamma(p) . \]

（提示：参见例 6.13(b)。）

3 设 $ D:=\{(x,y)\in\mathbb{R}^2 ; x,y\ge 0, x+y\le 1\} $ 且 $ p,q\in(0,\infty) $。证明：对 $ f:(0,1)\to\mathbb{R} $，函数

\[ D\to\mathbb{R}, \quad (x,y)\mapsto x^{p-1}y^{q-1}f(x+y) \]

可积当且仅当 $ s\mapsto s^{p+q-1}f(s) $ 属于 $ \mathcal{L}_1((0,1)) $。此时有

\[ \int_D x^{p-1}y^{q-1}f(x+y)\,d(x,y)=\mathrm{B}(p,q)\int_0^1 s^{p+q-1}f(s)\,ds . \]

（提示：考虑 $ (s,t)\mapsto(s(1-t),st) $。）

4 设 $ 0\le\alpha<\beta\le 2\pi $，并设 $ f:[\alpha,\beta]\to(0,\infty) $ 可测。证明

\[ S(\alpha,\beta,f):=\{z\in\mathbb{C} ; \operatorname{arg}_N(z)\in[\alpha,\beta],\ |z|\le f(\operatorname{arg}_N(z))\} \]

是勒贝格可测的，且

\[ \lambda_2(S(\alpha,\beta,f))=\frac{1}{2}\int_\alpha^\beta [f(\varphi)]^2\,d\varphi . \]

5 设 $ g\in\mathcal{L}^2_{\mathrm{sym}}(\mathbb{R}^n) $ 正定。计算由曲面 $ g^{-1}(1) $ 围成的立体椭球 $ g^{-1}([0,1]) $ 的体积（见注 VII.10.18）。

6（萨德引理）设 $ \Phi\in C^1(X,\mathbb{R}^n) $，并令 $ C:=\{x\in X ; \partial\Phi(x)\notin\mathcal{L}\mathrm{aut}(\mathbb{R}^n)\} $ 为 $ \Phi $ 的临界点集。证明 $ \Phi(C) $ 的测度为零。（提示：由于 $ C $ 是 $ \sigma $-紧的，只需验证对每个紧致的 $ n $ 维立方体 $ J $，$ \Phi(C\cap J) $ 的测度均为零。取 $ x_0\in C $ 与 $ r>0 $，使 $ J_0:=[x_0-(r/2)\mathbf{1},x_0+(r/2)\mathbf{1}] $ 紧包含在 $ X $ 中，并令

\[ \rho(r):=\max_{x\in J_0}\int_0^1\|\partial\Phi(x_0+t(x-x_0))\|\,dt . \]

证明存在 $ c_n>0 $ 使 $ \lambda_n(\Phi(J_0))\le c_n r^n\rho(r) $。由于 $ \lim_{r\to 0}\rho(r)=0 $，将 $ J_0 $ 的各边细分即得结论。）

7 设 $ \Phi\in C^1(X,\mathbb{R}^n) $ 且 $ C:=\{x\in X ; \partial\Phi(x)\notin\mathcal{L}\mathrm{aut}(\mathbb{R}^n)\} $。又设 $ \Phi|(X\setminus C) $ 是单射。证明：

(i) 对 $ f\in\mathcal{L}_0(X,\mathbb{R}^+) $，

\[ \int_{\Phi(X)} f\,dy=\int_X (f\circ\Phi)|\det\partial\Phi|\,dx . \tag{8.29} \]

(ii) 函数 $ f:\Phi(X)\to E $ 属于 $ \mathcal{L}_1(\Phi(X),E) $ 当且仅当 $ (f\circ\Phi)|\det\partial\Phi| $ 属于 $ \mathcal{L}_1(X,E) $。此时 (8.29) 成立。
