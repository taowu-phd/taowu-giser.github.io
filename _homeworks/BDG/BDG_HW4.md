---
title: "第四次作业：关联规则挖掘"
due_date: "2026-04-22"
course: "big-data-programing"
upload_link: "https://pan.hunnu.edu.cn/u/d/68543c52184642d48240/"
---

## Exercise Requirements
### 1. 根据一份开源零售数据，编写Python代码求解。分别调用mlxtend的apriori模块（或efficient-apriori）实现Apriori算法，以及调用mlxtend的fp-growth模块（或pyfpgrowth）实现FP-Growth算法。
1. 设定一组不同的最小支持度阈值（例如：0.01、0.05、0.1、0.2）；
2. 记录两种算法在不同阈值下的运行时间和峰值内存消耗（内存消耗选做）；
3. 绘制”支持度阈值-运行时间“的折线对比图；
4. 深度分析报告，回答一下问题：
   1. 当最小支持度阈值极低时，哪个算法的性能下降更剧烈？为什么？
   2. 结合Apriori的”候选集生成“与FP-Growth的”FP-Tree“数据结构，从时间复杂度和空间复杂度的角度解释实验观察到的现象。

数据集：https://archive.ics.uci.edu/dataset/352/online+retail

### 2. 根据一份“城市交通记录”的开源数据，编写Python代码。
1. 数据离散化与转换，关联规则算法无法直接处理连续值，要求将数值型或连续型特征进行离散化。
   1. 将时间离散为“早高峰、晚高峰、平峰”；
   2. 将空间离散为“商业区道路、住宅区道路、高架桥”。
2. 设置合理的最小支持度和置信度，挖掘导致 “重度拥堵”的频繁项集。
3. 业务洞察 (Business Insight)：
   1. 挑选出 3 条具有极高现实指导意义的关联规则（例如：{雨天, 晚高峰, 高架桥} => {重度拥堵}）。
   2. 假设你是城市交通管理部门的顾问，基于这 3 条规则，提出具体的交通疏导或预警系统优化建议。

数据集位置：https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page

