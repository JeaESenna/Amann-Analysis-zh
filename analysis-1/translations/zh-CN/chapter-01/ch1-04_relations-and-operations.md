## 4 关系与运算

为描述集合 $X$ 的元素之间的关系，给“关系”一词一个简单的集合论含义是有用的：$X$ 上的一个（二元）关系就是子集 $R \subseteq X \times X$。我们通常把 $(x, y) \in R$ 写成 $xRy$ 或 $x \sim y$。

$X$ 上的关系 $R$ 是自反的，如果对所有的 $x \in X$ 都有 $xRx$，也就是说，如果 $R$ 包含对角线

 \[ \Delta_{X}:=\left\{(x,x)\;;\;x\in X\right\}. \] 

它是传递的，如果

 \[ (x R y)\land(y R z)\Rightarrow x R z. \] 

如果

 \[ xR y \Rightarrow yRx \] 

成立，则 R 是对称的。

设 $Y$ 是 $X$ 的非空子集，$R$ 是 $X$ 上的关系。则集合 $R_Y := (Y \times Y) \cap R$ 是 $Y$ 上的关系，称为 $R$ 到 $Y$ 的限制。显然，$xR_Y y$ 当且仅当 $x, y \in Y$ 且 $xRy$。当上下文能清楚表明所涉及的集合时，我们通常用 $R$ 代替 $R_Y$。

##### 等价关系

$X$ 上自反、传递且对称的关系称为 $X$ 上的等价关系，通常记作 $\sim$。对每个 $x \in X$，集合

 \[ [x]:=\{y\in X~;~y\sim x\} \] 

称为 x 的等价类（或包含 x 的等价类），而每个  $ y \in [x] $ 都是这个等价类的一个代表元。最后，

 \[ X/\sim:=\left\{[x]\;;\;x\in X\right\}\;, \] 

“X 模 ~”，是 X 的所有等价类所成的集合。显然 $X/\sim$ 是 $\mathcal{P}(X)$ 的子集。

集合 $X$ 的一个划分是一个子集 $\mathcal{A} \subseteq \mathcal{P}(X) \setminus \{\emptyset\}$，它具有下述性质：对每个 $x \in X$，存在唯一的 $A \in \mathcal{A}$ 使得 $x \in A$。也就是说，$\mathcal{A}$ 由 $X$ 的两两不交的子集组成，且这些子集的并是 $X$。

4.1 命题 设  $ \sim $ 是 X 上的等价关系。则  $ X/\sim $ 是 X 的一个划分。

证明 由于对所有的  $ x \in X $ 都有  $ x \in [x] $，故有  $ X = \bigcup_{x \in X}[x] $。现在设  $ z \in [x] \cap [y] $。则  $ z \sim x $ 且  $ z \sim y $，因此  $ x \sim y $。这表明  $ [x] = [y] $。因此，两个等价类要么相同，要么不交。

由定义立即得到，函数

 \[ p:=p_{X}\colon X\to X/{\sim}~,\quad x\mapsto[x] \] 

是良定义的满射，即从 X 到  $ X/\sim $ 的（典范）商函数。

4.2 例 (a) 设 $X$ 是伦敦居民的集合。在 $X$ 上定义关系 $x \sim y$：$\Leftrightarrow$ $(x$ 与 $y$ 有相同的父母）。这显然是一个等价关系，并且伦敦的两个居民属于同一个等价类当且仅当他们是兄弟姐妹。

(b) 集合 $X$ 上“最小”的等价关系是对角线 $\Delta_{X}$，即相等关系。

(c) 设 $f: X \to Y$ 是函数。则

 \[ x\sim y:\Leftrightarrow f(x)=f(y) \] 

是 $X$ 上的等价关系。$x \in X$ 的等价类是 $[x] = f^{-1}\big(f(x)\big)$。此外，存在唯一的函数 $\widetilde{f}$ 使得图

 \[ \begin{tikzcd}[row sep=3.2em, column sep=3.4em]
X \arrow[rr, "f"] \arrow[rd, "p"'] & & Y \\
 & X/{\sim} \arrow[ru, "\widetilde{f}"']
\end{tikzcd} \] 

交换。函数  $ \tilde{f} $ 是单射，且  $ \mathrm{im}(\tilde{f}) = \mathrm{im}(f) $。特别地，若 f 是满射，则  $ \tilde{f} $ 是双射。

(d) 若  $ \sim $ 是集合 X 上的等价关系，而 Y 是 X 的非空子集，则  $ \sim $ 到 Y 的限制是 Y 上的等价关系。

##### 序关系

X 上的关系  $ \leq $ 若自反、传递且反对称，则称为 X 上的偏序，也就是说，

 \[ (x\leq y)\land(y\leq x)\Rightarrow x=y. \] 

若 $\leq$ 是 $X$ 上的偏序，则称对 $(X,\leq)$ 为偏序集。若该偏序由上下文可以明确，我们就简单地把 $(X,\leq)$ 写成 $X$，并说 $X$ 是偏序集。此外，如果

 \[ \forall x,y\in X:\left(x\leq y\right)\lor\left(y\leq x\right), \] 

则称  $ \leq $ 为 X 上的全序，并称  $ (X,\leq) $ 为全序集。

4.3 注 (a) 下面的记号是有用的：

 \[ \begin{aligned}&x\geq y:\Longleftrightarrow y\leq x,\\&x<y:\Longleftrightarrow(x\leq y)\land(x\neq y),\\&x>y:\Longleftrightarrow y<x.\\ \end{aligned} \] 

(b) 若 $X$ 是全序集，则对每对元素 $x, y \in X$，下述各项中恰有一项成立：

 \[ x<y\;,\quad x=y\;,\quad x>y\;. \] 

若 $X$ 是偏序集但不是全序集，则至少存在两个元素 $x, y \in X$ 不可比较，也就是说，$x \leq y$ 与 $y \leq x$ 都不成立。

4.4 例 (a) 设  $ (X, \leq) $ 是偏序集，Y 是 X 的子集。则  $ \leq $ 到 Y 的限制是偏序。

(b)  $ \left(\mathcal{P}(X),\subseteq\right) $ 是偏序集，$ \subseteq $ 称为  $ \mathcal{P}(X) $ 上的包含序。一般来说，$ \left(\mathcal{P}(X),\subseteq\right) $ 不是全序集。

(c) 设 $X$ 是集合，$(Y, \leq)$ 是偏序集。则

 \[ f\leq g:\Leftrightarrow f(x)\leq g(x),\quad x\in X, \] 

定义了  $ \mathrm{Funct}(X,Y) $ 上的偏序。即使 Y 是全序集，集合  $ \mathrm{Funct}(X,Y) $ 一般也不是全序集。

约定 除非另有说明，$ \mathcal{P}(X) $，以及通过限制，$ \mathcal{P}(X) $ 的任意子集，都视为带有上述包含序的偏序集。

设 $(X,\leq)$ 是偏序集，$A$ 是 $X$ 的非空子集。若对所有的 $a\in A$ 都有 $a\leq s$，则元素 $s\in X$ 称为 $A$ 的 $\text{上}\text{界}$。类似地，若对所有的 $a\in A$ 都有 $a\geq s$，则 $s$ 称为 $A$ 的 $\text{下}\text{界}$。子集 $A$ 是 $\text{上有界}$的，若它有上界；是 $\text{下有界}$的，若它有下界；而 $\text{有界}$的，若它既上有界又下有界。

若元素  $ m \in X $ 满足  $ m \in A $ 且  $ m $ 是  $ A $ 的上界，则它是  $ A $ 的 **最大元**，即 **max**(A)。若元素  $ m \in X $ 满足  $ m \in A $ 且  $ m $ 是  $ A $ 的下界，则它是  $ A $ 的 **最小元**，即 **min**(A)。注意，$ A $ 至多有一个最小元，至多有一个最大元。

设 $A$ 是偏序集 $X$ 的有上界的子集。若 $A$ 的所有上界所成的集合有最小元，则称这个元素为 $A$ 的最小上界或 $A$ 的 $\text{上确界}$，并记作 $\text{sup}(A)$，也就是说，

 \[ \operatorname*{s u p}(A):=\operatorname*{m i n}\{s\in X;s\text{ 是 }A\text{ 的上界}\}. \] 

类似地，对于 X 的有下界的非空子集 A，我们定义

 \[ \operatorname*{i n f}(A):=\operatorname*{m a x}\{s\in X;s\text{ 是 }A\text{ 的下界}\}, \] 

并称  $ \inf(A) $，若这个元素存在，为  $ A $ 的最大下界或  $ A $ 的  $ \inf(A) $。若  $ A $ 有两个元素， $ A = \{a, b\} $，我们常用记号  $ a \vee b := \sup(A) $ 和  $ a \wedge b := \inf(A) $。

4.5 注 (a) 应当强调，有上界（或有下界）的集合不一定有最小上界（或最大下界）（见例 10.3）。

(b) 若  $ \sup(A) $ 与  $ \inf(A) $ 都存在，则一般来说  $ \sup(A) \notin A $ 且  $ \inf(A) \notin A $。

(c) 若 $\sup(A)$ 存在且 $\sup(A) \in A$，则 $\sup(A) = \max(A)$。类似地，若 $\inf(A)$ 存在且 $\inf(A) \in A$，则 $\inf(A) = \min(A)$。

(d) 若  $ \max(A) $ 存在，则  $ \sup(A) = \max(A) $。类似地，若  $ \min(A) $ 存在，则  $ \inf(A) = \min(A) $。■

4.6 例 (a) 设 A 是  $ \mathcal{P}(X) $ 的非空子集。则

 \[ \sup(\mathcal{A})=\bigcup\mathcal{A},\quad\inf(\mathcal{A})=\bigcap\mathcal{A}. \] 

(b) 设 $X$ 是至少含两个元素的集合，$\mathcal{X} := \mathcal{P}(X) \setminus \{\emptyset\}$ 带有包含序。再设 $A$ 与 $B$ 是 $X$ 的非空不交子集，且 $\mathcal{A} := \{A, B\}$。则 $\mathcal{A} \subseteq \mathcal{X}$ 且 $\sup(\mathcal{A}) = A \cup B$，但 $\mathcal{A}$ 没有最大元，且 $\mathcal{A}$ 没有下界。特别地，$\inf(\mathcal{A})$ 不存在。

设 $X := (X, \leq)$ 与 $Y := (Y, \leq)$ 是偏序集，$f: X \to Y$ 是函数。（这里我们对 $X$ 与 $Y$ 上的偏序使用同一个符号 $\leq$）。）则若 $x \leq y$ 蕴含 $f(x) \leq f(y)$（或 $f(x) \geq f(y)$）），就称 $f$ 为 $\text{递增}$（或 $\text{递减}$）。若 $x < y$ 蕴含 $f(x) < f(y)$（或 $f(x) > f(y)$），我们就说 $f$ 是 $\text{严格递增}$（或 $\text{严格递减}$）。最后，若 $f$ 是 $(\text{严格递增})$ 或 $(\text{严格递减})$，则称 $f$ 为 $(\text{严格单调})$。

设 $X$ 是任意集合，$Y := (Y, \leq)$ 是偏序集。若函数 $f: X \to Y$ 在 $Y$ 中的像 $\mathrm{im}(f) = f(X)$ 有界、有上界或有下界，则相应地称 $f$ 有界、有上界或有下界。若 $X$ 也是偏序集，则当对 $X$ 的每个有界子集 $A$，限制 $f|A$ 都有界时，就称它在有界集上有界。

4.7 例 (a) 设 $X$ 与 $Y$ 是集合，$f \in Y^X$。命题 3.8 说明，诱导函数 $f: \mathcal{P}(X) \to \mathcal{P}(Y)$ 与 $f^{-1}: \mathcal{P}(Y) \to \mathcal{P}(X)$ 是递增的。

(b) 设 $X$ 是至少含两个元素的集合，$\mathcal{X} := \mathcal{P}(X) \setminus \{X\}$ 带有包含序。则恒等函数 $\mathcal{X} \to \mathcal{X}$，$A \mapsto A$ 在有界集上有界，但不是有界的。

##### 运算

函数 $\circledast: X \times X \to X$ 常称为 $X$ 上的 $\text{运算}$。此时我们把 $\circledast(x, y)$ 写成 $x \circledast y$。对 $X$ 的非空子集 $A$ 与 $B$，我们用 $A \circledast B$ 表示 $A \times B$ 在 $\circledast$ 下的像，也就是说，

 \[ A\circledast B=\left\{a\circledast b;a\in A,b\in B\right\}. \] 

若  $ A = \{a\} $，我们把  $ A \circledast B $ 写成  $ a \circledast B $。类似地  $ A \circledast b = \{a \circledast b ; a \in A\} $。若  $ A \circledast A \subseteq A $，即  $ A \times A $ 在函数  $ \circledast $ 下的像包含于  $ A $，则称  $ X $ 的非空子集  $ A $ 在运算  $ \circledast $ 下封闭。

4.8 例 (a) 设 X 是集合。则函数的复合  $ \circ $ 是  $ \mathrm{Funct}(X, X) $ 上的运算。

(b)  $ \cup $ 与  $ \cap $ 是  $ \mathcal{P}(X) $ 上的运算。■

X 上的运算  $ \circledast $ 是结合的，如果

 \[ x\circledast(y\circledast z)=(x\circledast y)\circledast z~,\qquad x,y,z\in X~, \] 

且若对  $ x, y \in X $ 都有  $ x \circledast y = y \circledast x $，则称 ⊛ 是 **交换的**。若 ⊛ 是结合的，则 (4.2) 中的括号是不必要的，我们简写为  $ x \circledast y \circledast z $。

4.9 例 (a) 由命题 3.3，复合是  $ \operatorname{F u n c}(X,X) $ 上的结合运算。它可能不是交换的（见习题 3）。

(b) ∪ 与 ∩ 在  $ \mathcal{P}(X) $ 上是结合且交换的。■

设  $ \circledast $ 是集合 X 上的运算。若元素  $ e \in X $ 满足

 \[ e\circledast x=x\circledast e=x~,\qquad x\in X~, \] 

则称它为 $X$ 的单位元（关于运算 $\circ$）。

4.10 例 (a) id $ _{X} $ 是 Funct( $ X, X $) 中关于复合的单位元。

(b)  $ \emptyset $ 是  $ \mathcal{P}(X) $ 中关于  $ \cup $ 的单位元。 $ X $ 是  $ \mathcal{P}(X) $ 中关于  $ \cap $ 的单位元。

(c) 显然，只要  $ X $ 含有多于一个元素，$ \mathcal{X} := \mathcal{P}(X) \setminus \{\emptyset\} $ 就不含关于  $ \cup $ 的单位元。

下面的命题表明，单位元只要存在就是唯一的。

4.11 命题 关于给定运算的单位元至多有一个。

证明 设 $e$ 与 $e'$ 是关于集合 $X$ 上的运算 $\circledast$ 的单位元。则直接由定义可得 $e = e \circledast e' = e'. \blacksquare$

4.12 例 设  $ \circledast $ 是集合 Y 上的运算，X 是非空集合。则我们如下定义  $ \operatorname{Funct}(X,Y) $ 上由  $ \circledast $ 诱导的运算：

 \[ (f\odot g)(x):=f(x)\circledast g(x)~,\qquad x\in X~. \] 

显然，只要  $ \circledast $ 是结合的或交换的，$ \odot $ 也就是结合的或交换的。若 Y 关于  $ \circledast $ 有单位元 e，则常值函数

 \[ X\to Y~,\qquad x\mapsto e \] 

是  $ \text{Funct}(X, Y) $ 中关于  $ \odot $ 的单位元。今后，对于 Y 上的运算以及  $ \text{Funct}(X, Y) $ 上诱导的运算，我们都将使用同一个符号  $ \circledast $。由上下文可以明确该符号表示的是哪个函数。我们很快就会看到，这个简单而自然的构造极其有用。重要的应用可见例 7.2(d)、8.2(b)、12.3(e) 和 12.11(a)，以及注 8.14(b)。 $ \blacksquare $

##### 习题

1 设 $\sim$ 与 $\dot{\sim}$ 分别是集合 $X$ 与 $Y$ 上的等价关系。设函数 $f \in Y^X$ 满足：对所有的 $x, y \in X$，$x \sim y$ 都蕴含 $f(x) \dot{\sim} f(y)$。证明存在唯一的函数 $f_*$，使得下图交换。

 \[ \begin{tikzcd}[row sep=2.6em, column sep=3.6em]
X \arrow[r, "f"] \arrow[d, "p"'] & Y \arrow[d, "p_{Y}"] \\
X/{\sim} \arrow[r, "\widetilde{f}"'] & Y/{\dot{\sim}}
\end{tikzcd} \] 

2 验证例 4.7(b) 中的函数 f 不是有界的。

3 证明复合  $ \circ $ 一般不是  $ \operatorname{Funct}(X, X) $ 上的交换运算。

4 集合 X 上的运算  $ \circledast $ 若满足下述条件，则称为反交换的：

(i) 存在右单位元  $ r := r_X $，即  $ \exists r \in X: x \circledast r = x, \; x \in X $。

(ii) 对所有的  $ x, y \in X $，$ x \circledast y = r \Leftrightarrow (x \circledast y) \circledast (y \circledast x) = r \Leftrightarrow x = y $。

证明：只要 X 含有多于一个元素，X 上的反交换运算  $ \circledast $ 就不是交换的，且没有单位元。

5 设  $ \circledast $ 与  $ \circledcirc $ 分别是 X 与 Y 上的反交换运算。又设  $ f: X \to Y $ 满足

 \[ f(r_{X})=r_{Y}~,\quad f(x\circledast y)=f(x)\circledcirc f(y)~,\qquad x,y\in X~. \] 

证明下述结论：

(a)  $ x \sim y  $：  $ \Leftrightarrow $  $ f(x \otimes y) = r_Y $ 定义了  $ X $ 上的等价关系。

(b) 函数

 \[ \tilde{f}\colon X/{\sim}\to Y~,\quad[x]\mapsto f(x) \] 

是良定义的，且是单射。此外，若 $f$ 是满射，则 $f$ 是双射。

6 设  $ (X, \leq) $ 是偏序集，$ A, B, C $ 与  $ D $ 是非空子集。设  $ A $ 与  $ B $ 有上界，$ C $ 与  $ D $ 有下界。假设相关的上确界与下确界都存在，证明下述结论：

(a)  $ \sup(A \cup B) = \sup\{\sup(A), \sup(B)\} $，$ \inf(C \cup D) = \inf\{\inf(C), \inf(D)\} $。

(b) 若  $ A \subseteq B $ 且  $ C \subseteq D $，则

 \[ \sup(A)\leq\sup(B)\quad\text{且}\quad\inf(C)\geq\inf(D). \] 

(c) 若  $ A \cap B $ 与  $ C \cap D $ 非空，则

 \[ \operatorname*{s u p}(A\cap B)\leq\operatorname*{i n f}\left\{\operatorname*{s u p}(A),\operatorname*{s u p}(B)\right\},\quad\operatorname*{i n f}(C\cap D)\geq\operatorname*{s u p}\left\{\operatorname*{i n f}(C),\operatorname*{i n f}(D)\right\}. \] 

(d) 在 (a) 中，$ \sup(A \cup B) = \sup\{\sup(A), \sup(B)\} $ 这一断言不能加强为  $ \sup(A \cup B) = \max\{\sup(A), \sup(B)\} $。

（提示：考虑非空集合的幂集。）

7 设 R 是 X 上的关系，S 是 Y 上的关系。由下式定义  $ X \times Y $ 上的关系  $ R \times S $：

 \[ (x,y)(R\times S)(u,v):\Leftrightarrow(x R u)\land(y S v) \] 

其中  $ (x,y),(u,v)\in X\times Y $。证明：若 R 与 S 是等价关系，则  $ R\times S $ 也是等价关系。

8 举例说明偏序集  $ \left(\mathcal{P}(X), \subseteq\right) $ 可能不是全序集。

9 设  $ \mathcal{A} $ 是  $ \mathcal{P}(X) $ 的非空子集。证明  $ \sup(\mathcal{A}) = \bigcup \mathcal{A} $ 且  $ \inf(\mathcal{A}) = \bigcap \mathcal{A} $（见例 4.6(a)）。
