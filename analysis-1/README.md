# 分析学 I（Analysis I）中文译本

Herbert Amann、Joachim Escher《Analysis I》的中文译本。底本为 Gary Brookfield 英译本
（Birkhäuser Verlag，2005；德文原版 1998）。

- **范围**：第 I–V 章 + 附录「数学逻辑导引」（含参考文献）
- **译文源**：44 个 Markdown 单元（`translations/zh-CN/`）
- **排版源**：`tex/`，主文件 `main-qyxf.tex`，插图 85 张
- **成品 PDF**：[`分析学I_中文译本_修订版_2026-10-26.pdf`](分析学I_中文译本_修订版_2026-10-26.pdf)（330 页）
- **历史存档 PDF**：[`分析学I_中文译本_人工修复版_2026-10-22.pdf`](分析学I_中文译本_人工修复版_2026-10-22.pdf)（330 页；人工修复排版 / 部分公式编号、脚注未修，来历见下文）
- **编译结果**：XeLaTeX 两遍，330 页（与成品 PDF 一致）

## 内容对照

| 章 | 标题 | 译文源 | 排版源 | 单元数 |
|---|---|---|---|---|
| — | 出版信息、前言 | `translations/zh-CN/chapter-00/` | `tex/qyxf/00-front-matter.tex` | 1 |
| I | 基础 | `translations/zh-CN/chapter-01/` | `tex/qyxf/01-chapter-01.tex` | 13 |
| II | 收敛 | `translations/zh-CN/chapter-02/` | `tex/qyxf/02-chapter-02.tex` | 10 |
| III | 连续函数 | `translations/zh-CN/chapter-03/` | `tex/qyxf/03-chapter-03.tex` | 7 |
| IV | 一元微分学 | `translations/zh-CN/chapter-04/` | `tex/qyxf/04-chapter-04.tex` | 5 |
| V | 函数序列 | `translations/zh-CN/chapter-05/` | `tex/qyxf/05-chapter-05.tex` | 5 |
| 附录 | 数学逻辑导引 + 参考文献 | `translations/zh-CN/chapter-06/` | `tex/qyxf/06-appendix.tex` | 3 |

术语与符号约定见 `glossary/术语表.md`、`glossary/符号表.md`。

## 质量与已知问题（重要）

第一册是本套译本中**最早完成、流程最粗糙**的一册，使用时请尤其谨慎：

- **底本是 OCR 文本**：英译本扫描件经 PaddleOCR 识别为 Markdown，OCR 错误较多，翻译与排版都建立在这批文本上。
- **没有经过三线审校**：本书完成于 A2 的三线审校强制流程建立之前，全书只做过 1 个单元的试点审校。实际做过的是：数学逐页核验（覆盖率约 100%）+ 程序化校验 + 针对性修补。
- **已知遗留问题**：
  - OCR 数学错误已按原书机械修正 36 处；但仍有整类缺失未逐项处理——例如 OCR 源中显示公式编号（`\tag`）系统性丢失、第 II/III/V 章部分脚注正文在 OCR 源中不存在；
  - 交付后才发现漏掉 14 条脚注、14 处畸形脚注标记，直到 **2026-10-26 修订版**（本仓库 PDF 即此版）才补齐；
  - TeX 由早期转换管线生成，排版代码相对粗糙，个别公式与脚注落位靠后期一次性脚本修补。
- **建议**：适合对照阅读；数学结论、公式与编号务请以原著为准。发现可疑处欢迎提 Issue。

### 关于 2026-10-22 人工修复版（历史存档）

第一册在 **2026-10-22** 曾做过一轮**人工排版修复**：当时直接修改 TeX 文件，修复了排版问题与部分公式编号
（脚注问题太多，未能一并处理），并编译出
[`分析学I_中文译本_人工修复版_2026-10-22.pdf`](分析学I_中文译本_人工修复版_2026-10-22.pdf)（330 页）。

但后来的流水线以 **Markdown 译文源**为唯一真源：2026-10-26 为修复脚注而重新构建时，TeX 是直接从
Markdown 重新生成的，**手工修改的 TeX 被覆盖**，人工修复的成果只保留在这份编译好的 PDF 里
（本仓库的 `tex/` 不含这轮手工修复）。

因此第一册目前有两个互补的版本：

| 版本 | 脚注 | 排版 / 公式编号 |
|---|---|---|
| 2026-10-22 人工修复版（存档） | 缺 14 条脚注、14 处畸形标记 | 已人工修复部分排版与编号问题 |
| 2026-10-26 修订版（当前交付） | 已补齐 / 修正 | 仍存在未修复的排版问题 |

该存档 PDF 仅作历史参考；正式阅读建议使用当前交付版，需要核对排版时可用两版对照。

## 编译

```powershell
cd tex
$env:TEXINPUTS = (Get-Location).Path + ';'
xelatex -interaction=nonstopmode main-qyxf.tex
xelatex -interaction=nonstopmode main-qyxf.tex
```

## 说明

- 译文源一节一个文件，与 `tex/qyxf/` 中的各章逐节对应；书前「译者的话」只存在于
  `tex/qyxf/00-front-matter.tex`（由排版流程写入）。
- 原书索引的译文存档在 `translations/zh-CN/chapter-06/ch6-02_index.md`，
  成品排版未收入索引（索引页码无法与重排后的中译本对应）。
- 本译本由 AI 辅助完成，可能存在错误；引用与教学请以原著为准，详见卷首「译者的话」。
