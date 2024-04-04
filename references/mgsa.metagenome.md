# mgsa.metagenomics
**メタゲノム**

## Table of Contents
- [codon](https://github.com/haruosuz/codon/blob/master/README.md#metagenome)
- [](#)
- [unclassified](#unclassified)
- [updates](#updates)
[2019](#2019)
[2018](#2018)
[2017](#2017)
- [review](#review)
- [Metagenomic Assembly]
- [book](#book)
- [video](#video)
- [CAMI_challenge](#cami) Critical Assessment of Metagenome Interpretation
- [batch effect](#batch-effect)
- [meta-analysis](#meta-analysis)
- [people](#people)
[duvallet](#duvallet) Claire Duvallet
[Mori](#mori)
[Rocha](#rocha)
- [mothur-qiime](#mothur-qiime)
- [16S](#16s)
- [amplicon-shotgun](#amplicon-shotgun)
- [rRNA](#rrna)
- [metabolic inference](#metabolic-inference)
  - [PICRUSt](#picrust)
  - [Tax4Fun](#tax4fun)
  - [themetagenomics](#themetagenomics) removed from CRAN
  - [paprica](#paprica)
  - [Piphillin](#piphillin)
- [HGT](#hgt)
- [MGnify](#mgnify) EBI metagenomics
- [kazumaxneo](#kazumaxneo)
- [](#)
- [benchmark](#benchmark)
- [](#)
- [kaiju](#kaiju)
- [](#)
- [web-tool](#web-tool)
  - [MANTA](#manta) 水口賢司研究室
  - [pavian](#pavian)
  - [taxonomer](#taxonomer)
- [MEDUSA](#medusa)
- [recentrifuge](#recentrifuge)
- [centrifuge](#centrifuge)
- [](#)
- [MAG](#mag) Metagenome Assembled Genome
- [MAG](#mag) Metagenome-Assembled Genome
  - [MAGNETO](#magneto)
  - [MDMcleaner](#mdmcleaner)
  - [MetaWRAP](#metawrap)
  - [](#)
- [](#)
- [PhyloSift](#PhyloSift)
- [](#)
- [unifrac](#unifrac)
- [LEfSe](#lefse)
- [diversity index](#diversity-index) 多様性指数

----------

### 2018-06-05

https://pubmed.ncbi.nlm.nih.gov/29871915/
mBio
. 2018 Jun 5;9(3):e00525-18. doi: 10.1128/mBio.00525-18.
Identifying and Overcoming Threats to Reproducibility, Replicability, Robustness, and Generalizability in Microbiome Research
Patrick D Schloss 1
https://journals.asm.org/doi/10.1128/mBio.00525-18
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5989067/

 replicability
 confounding variable
 samples are not randomized across sequencing runs.
 batch effects

----------

### 2018-03-19
https://pubmed.ncbi.nlm.nih.gov/29427429/
Review Appl Environ Microbiol
. 2018 Mar 19;84(7):e02627-17. doi: 10.1128/AEM.02627-17. Print 2018 Apr 1.
The Madness of Microbiome: Attempting To Find Consensus "Best Practice" for 16S Microbiome Studies
Jolinda Pollock # 1 2, Laura Glendinning # 2, Trong Wisedchanwet 2, Mick Watson 2
https://journals.asm.org/doi/full/10.1128/AEM.02627-17
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861821/
Of the three most commonly used alignments which are guided by secondary structure (i.e., Greengenes [73], RDP [74], and SILVA [75]), the Greengenes alignment was observed to be of poor quality, leading to significantly greater richness and diversity estimates.

https://www.microbe.net/2018/03/03/the-attempt-to-find-best-practice-for-16s-studies/
The attempt to find “best practice” for 16S studies – microBEnet: the microbiology of the Built Environment network

12:34 AM · Feb 27, 2018
https://twitter.com/BioMickWatson/status/968147242401058817
Mick W@tson 🐄 on Twitter: "If you're working in 16S microbiome research, please read our paper which tries to suggest best practices! https://t.co/XWVRxUKFRW" / Twitter

----------



----------

https://gitlab.univ-nantes.fr/bird_pipeline_registry/magneto

----------
### 

https://github.com/haruosuz/microbe/blob/master/references/microbe.urban.md

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8238498/
A global metagenomic map of urban microbiomes and antimicrobial resistance

Applying these thresholds, we identified 1,145 microbial species (Figure 1B), as defined by the NCBI annotation in KrakenUniq, that make up the sub-core urban microbiome with 31 species in the true core microbiome (Figure 1A).






----------
## rRNA

https://kazumaxneo.hatenablog.com/archive/category/rRNA
rRNA カテゴリーの記事一覧 - macでインフォマティクス

https://kazumaxneo.hatenablog.com/entry/2022/06/24/011756
ペアエンドシークエンシングリードを使ってメタゲノムアセンブリゲノムと16S rRNAマーカー遺伝子を結び付ける MarkerMAG - macでインフォマティクス

https://kazumaxneo.hatenablog.com/entry/2022/03/09/233539
メタゲノム、メタトランススクリプトーム、ncRNAのシークエンシングデータからrRNA配列を正確かつ高速に検出・除去する RiboDetector - macでインフォマティクス

https://kazumaxneo.hatenablog.com/entry/2019/02/12/073000
メタゲノムデータからrRNAをターゲットアセンブリし、系統アサイン、定量、比較する phyloFlash - macでインフォマティクス

イメージングベース分析における価値と共に、水平伝播の速度が遅いため、SSU rRNA遺伝子は系統発生的多様性の観点から最も優れたサンプリングマーカーとなっている（ref.21）。現在のメタゲノム解析の進歩（22）では、メタゲノムアセンブリから微生物ゲノムのドラフトを自動的に抽出 (“binned”) することができるが、SSU rRNA遺伝子は同じ本質的な役割を持ち、系統学、イメージング、および実験的検証に不可欠になっている。しかし、自動ビニングの進歩にもかかわらず（ref.23）、ほとんどのmetagenome assembled genomes (MAGs) は、SSU rRNA遺伝子の断片さえ含んでいない、また全遺伝子は言うまでもなく含んでいない（ref.1、24）。

　理想的には、既存の膨大なSSU rRNA遺伝子のナレッジベースを（メタ）ゲノミクスプロジェクトで活用して、いくつかの異なる結果を得たいと考えている：アセンブリなしの分類学的プロファイリング（ref.6、7）、系統学のための全長配列のターゲットアセンブリと、それよるプローブ設計（ref.15、16、25、26）、およびSSU rRNA配列を完全なゲノムへリンクさせる（ref.27）。これらの各目的のために、それぞれ独自の長所と短所を持つ別々のソフトウェアツールがすでに開発されている（ref.16）（MATAM紹介）。ただし、これらは同じ問題の最終的には異なる側面であるため、一緒に検討する必要がある。

https://pubmed.ncbi.nlm.nih.gov/33109753/
mSystems
. 2020 Oct 27;5(5):e00920-20. doi: 10.1128/mSystems.00920-20.
phyloFlash: Rapid Small-Subunit rRNA Profiling and Targeted Assembly from Metagenomes
Harald R Gruber-Vodicka # 1, Brandon K B Seah # 2, Elmar Pruesse 3
https://journals.asm.org/doi/10.1128/msystems.00920-20
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7593591/


MATAM紹介

https://kazumaxneo.hatenablog.com/entry/2018/09/18/162843
メタゲノムから16Sなどのターゲットアセンブリを行う MATAM - macでインフォマティクス

https://pubmed.ncbi.nlm.nih.gov/29040406/
Bioinformatics
. 2018 Feb 15;34(4):585-591. doi: 10.1093/bioinformatics/btx644.
MATAM: reconstruction of phylogenetic marker genes from short sequencing reads in metagenomes
Pierre Pericard 1 2, Yoann Dufresne 1 2, Loïc Couderc 1 3, Samuel Blanquart 1 2, Hélène Touzet 1 2
https://academic.oup.com/bioinformatics/article/34/4/585/4457361

https://github.com/bonsai-team/matam


----------

----------
## diversity index
多様性指数

https://www.nies.go.jp/kanko/news/20/20-1/20-1-06.html
「生物多様性の減少機構と保全プロジェクト」が目指すもの（2001年度 20巻1号）｜
多様性を，それぞれ種類数，均等性，系統的距離で計っていることになる。

![https://www.nies.go.jp/kanko/news/20/20-1/20-1-06.html](https://www.nies.go.jp/kanko/news/20/20-1/gh5r5k000001g6rd-img/20-1-06-f1.jpg)

https://search.lib.keio.ac.jp/permalink/81SOKEI_KEIO/188bto4/alma9926310659504034
生物多様性の多様性 / 森章著 ; 甲山隆司コーディネーター.
東京: 共立出版, 2018.1.
2018.1

Maruzen eBook Library Purchased Titles
購入済/Purchased

https://www.kyoritsu-pub.co.jp/bookdetail/9784320009226
生物多様性の多様性 / 森 章　著 甲山 隆司　コーディネーター | 共立出版
2.5 生物多様性の定量化
2.5.1 種という尺度に基づく 49
2.5.2 生き物の特性に基づく 62

系統的多様性

Box 2.6
系統樹に基づく多様性の評価

73
 異なる指標から見えてくること
方法論に重きを置いてしまったが，ここまでで伝えたいことは， 「異なる指標を用いると，生物多様性の評価の結果が変わる」とい
うことである.ベータ多様性が上がる一方でアルファ多様性が下が
ることがあること，種数が同じでも系統的多様性が大きく異なり得
ること，評価対象の機能形質を変えると機能的多様性の計算結果が
逆転し得ることなどを解説した.


https://github.com/haruosuz/evolve/blob/master/README.md#fifthdimension
https://www.fifthdimension.jp/wiki.cgi?page=FrontPage&file=20100522BiometricsJapanPreprint%2Epdf&action=ATTACH
系統樹の第 3 の用途は、多様性の定量化である。生物多様性の重要性が叫ばれて久しい が、いまだに多様性は種・属・科などの分類群の数で定量化されている。しかしこれらの 分類群は人間が便宜的に設定したものであり、その数では十分に自然界の多様性を認識 できているとは言い難いと考えられる。これを、系統樹上での生物間のパスの長さの和= 系統的多様性で置き換えることで解決しようという研究が徐々に増えてきている (Faith, 1992; Forest et al., 2007)。

https://github.com/haruosuz/evolve/blob/master/README.md#leeswijzer
2007.3
http://www.naro.affrc.go.jp/archive/niaes/magazine/083/mgzn08304.html
論文の紹介： 生物多様性を進化系統学的な尺度で測る (情報：農業と環境 No.83 2007.3)
「系統学的多様性（PD: phylogenetic diversity）」
旧来の種数ベースの生物多様度に代わる尺度として提唱されたのが系統学的多様度である。しかし、系統学的多様度それ自体に関して、いまなお理論的・概念的な論争が続いている （3）。系統学的多様性の尺度は、系統樹の樹形を考慮しつつ生物多様性の重みづけをしている。提唱者である Daniel P. Faith の定義では （1）、ある生物群の系統学的多様度とは、その生物群を系統樹上で結ぶ枝の長さの総和として求められる。このとき、枝の長さをどのようにして推定するのかという現実的問題がある（分子系統樹と形態系統樹では「枝」の意味は異なっているだろう）。

2015
https://www.jstage.jst.go.jp/article/taxa/38/0/38_KJ00009847305/_article/-char/ja/
タクサ：日本動物分類学会誌/38 巻 (2015)/書誌
生物多様性と固有種の関係をめぐる若干の考察
関口 秀夫
https://www.jstage.jst.go.jp/article/taxa/38/0/38_KJ00009847305/_pdf
生物相のもつ多様性は，地域環境のもとで進化的
ならびに生物地理的な歴史を背負って成立してお
り，各生物は進化的に結びついている（Faith, 1992;
Mooers, 2007）．この基本認識のもとでは，地域の
生物多様性の表現は単に「種数」をカウントするだ
けでは不十分であり，生物多様性として保全すべき
ものは，むしろ進化的な関係を示す分岐系統樹に基
づく系統学的多様性phylogenetic diversity (PD)であ
ろう．系統学的多様度は従来の種数をもとにした生
物多様度に代わる尺度として提唱された．

### Koyano_2012

2012
https://www.ism.ac.jp/editsec/toukei/pdf/60-2-263.pdf
統計数理 60(2), 263-278, 2012-12
特集「多様性と進化の統計解析」α 多様性の測定と確率文字列の理論
小谷野 仁†
（受付 2012 年 1 月 4 日；改訂 5 月 29 日；採択 5 月 31 日）
代替的な方法の研究として，Watve and Gangal（1996）, Hughes et al.（2001）, Hong et al.（2006）などがあるが，理論的な基礎を持つ体系的な方法とは言えなかった．
https://pubmed.ncbi.nlm.nih.gov/20866445/
Phys Rev E Stat Nonlin Soft Matter Phys
. 2010 Jun;81(6 Pt 1):061912. doi: 10.1103/PhysRevE.81.061912. Epub 2010 Jun 7.
Quantifying biodiversity and asymptotics for a sequence of random strings
Hitoshi Koyano 1, Hirohisa Kishino
https://journals.aps.org/pre/abstract/10.1103/PhysRevE.81.061912

### McCoy_2013

https://pubmed.ncbi.nlm.nih.gov/24058885/
PeerJ
. 2013 Sep 12;1:e157. doi: 10.7717/peerj.157. eCollection 2013.
Abundance-weighted phylogenetic diversity measures distinguish microbial community states and are robust to sampling depth
Connor O McCoy 1, Frederick A Matsen 4th
https://peerj.com/articles/157/
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC3775626/
Based on these results we encourage the use of abundance-weighted phylogenetic diversity measures, especially for cases such as microbial ecology where species delimitation is difficult.

### Kembel_2012

https://pubmed.ncbi.nlm.nih.gov/22278670/
ISME J
. 2012 Aug;6(8):1469-79. doi: 10.1038/ismej.2011.211. Epub 2012 Jan 26.
Architectural design influences the diversity and structure of the built environment microbiome
Steven W Kembel 1, Evan Jones, Jeff Kline, Dale Northcutt, Jason Stenson, Ann M Womack, Brendan Jm Bohannan, G Z Brown, Jessica L Green
https://www.nature.com/articles/ismej2011211
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3400407/
The phylogenetic diversity of airborne bacterial communities was lower indoors than outdoors, and mechanically ventilated rooms contained less diverse microbial communities than did window-ventilated rooms.

Phylogenetic diversity (PD) was calculated as Faith's PD (Faith, 1992), the total phylogenetic branch length separating OTUs in each rarefied sample.

The PD of airborne bacterial communities differed significantly among environments (ANOVA; F2,6=15.5, P=0.005), with highest diversity in outdoor air and lowest in indoor air from rooms that were mechanically ventilated (Figure 2). 

Figure 2
PD (total phylogenetic branch length; Faith's PD per 700 sequences) in different environments at a health-care facility: outdoors and indoors in patient rooms exposed to different ventilation sources (mechanical or window ventilation). 

### Kembel_2011

https://pubmed.ncbi.nlm.nih.gov/21912589/
PLoS One
. 2011;6(8):e23214. doi: 10.1371/journal.pone.0023214. Epub 2011 Aug 31.
The phylogenetic diversity of metagenomes
Steven W Kembel 1, Jonathan A Eisen, Katherine S Pollard, Jessica L Green
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0023214
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC3166145/
Bacterial phylogenetic diversity was highest at intermediate depths beneath the ocean surface, whereas taxonomic diversity (diversity measured by binning sequences into taxonomically similar groups) showed no relationship with depth.

Figure 3
Taxonomic diversity and standardized phylogenetic diversity versus depth in environmental samples along an oceanic depth gradient at the HOT ALOHA site.

Jul 2011
http://www.ted.com/talks/jessica_green_are_we_filtering_the_wrong_microbes?language=ja
ジェシカ・グリーン「微生物を正しく取り除くために」

### Dmean

2019
https://github.com/haruosuz/microbe/blob/master/references/README.MoBE.md
16SリボソームRNA遺伝子配列に基づく細菌の多様性レベルは属間で大きく異なった。
https://www.ncbi.nlm.nih.gov/pubmed/30691394
BMC Genomics. 2019 Jan 28;20(1):92. doi: 10.1186/s12864-018-5389-z.
Comparative genomics of Bacteria commonly identified in the built environment.
Merino N, Zhang S, Tomita M, Suzuki H.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6350394/
The Dmean was also selected over the phylogenetic diversity index (PD) [64, 65] because it is less affected by the number of taxa (N) available in the LTP database, 

2018年9月8日
https://sites.google.com/site/colloqfoundbio/conference/conference-12
第１２回生物学基礎論研究会 - 生物学基礎論研究会
鈴木治夫（慶應義塾大学環境情報学部）「プラスミドの宿主細菌の過去予測と多様性測定」
　細菌間を移動する染色体外DNA、すなわちプラスミドは、細菌の機能（薬剤耐性、病原性、物質代謝能など）の獲得に関与することが知られている。遺伝子水平伝播の理解には、プラスミドの宿主域の予測が不可欠である。様々な細菌で染色体とプラスミドの連続塩基組成（オリゴヌクレオチド出現頻度）が類似していることは、プラスミドが宿主の塩基組成を獲得したことを示唆する。そこで、細菌染色体とプラスミドの連続塩基組成に関する類似度に基づいて、各プラスミドの宿主域を過去予測した。すなわち、連続塩基組成に関する非類似度（マハラノビス距離）の小さい細菌をプラスミドの宿主候補とし、狭宿主域プラスミドと広宿主域プラスミドとの間で過去に滞在した宿主細菌の多様性に違いが認められるかどうかを検証した。
　プラスミド間の宿主域を比較するために、「細菌の種類」と「細菌間の距離」に基づいて宿主候補の多様性を測定した。先ず、「細菌の種類」（門・綱・目・科・属・種・株などの分類群の数）に基づいて各プラスミドの宿主多様性を測定した。分類群の数は、細菌間の距離を考慮しておらず、宿主候補として検出された菌株の数（利用可能なゲノム配列の偏り）によっても影響され得るという欠点を有する。例えば、プラスミド間の宿主多様性の高低が分類階級により逆転することがある。さらに新種・新属に再分類されている菌株もある。次に、種などの分類学的情報を用いることなく、16S rRNA遺伝子配列に基づく「細菌間の距離」に基づいてプラスミドの宿主多様性を測定した。狭宿主域プラスミドは、広宿主域プラスミドと比較して、宿主候補の多様性が低かった。この結果は、DNA塩基組成の解析がプラスミドの宿主域の予測に有効であることを示唆する。

2010
https://www.ncbi.nlm.nih.gov/pubmed/20851899
J Bacteriol. 2010 Nov;192(22):6045-55. doi: 10.1128/JB.00277-10. Epub 2010 Sep 17.
Predicting plasmid promiscuity based on genomic signature.
Suzuki H1, Yano H, Brown CJ, Top EM.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2976448/
Second, we inferred plasmid host range based on genetic distance between putative evolutionary hosts without using taxonomic information. “Taxonomic richness” has drawbacks, because it does not take into account distances between bacterial strains and also can be influenced by the number of strains detected as candidate evolutionary hosts, which in turn is biased by the genome sequences available. For example, as shown in Table ​Table1,1, the numbers of classes, orders, families, genera, species, and strains for IncP plasmid pQKH54 were 2, 3, 3, 3, 6, and 11, respectively, while those for IncN plasmid R46 were 1, 1, 1, 13, 17, and 55. Thus, while pQKH54 showed higher taxonomic richness values at the class, order, and family levels, R46 showed higher taxonomic richness values at the genus, species, and strain levels. Moreover, several bacterial strains are still being reclassified into new species and even new genera. Therefore, a method for inferring evolutionary host diversity that does not require a species or any other taxonomic information was conducted.

1996
https://www.ncbi.nlm.nih.gov/pubmed/16535456
Appl Environ Microbiol. 1996 Nov;62(11):4299-301.
Problems in measuring bacterial diversity and a possible solution.
Watve MG, Gangal RM.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1388994/pdf/hw4299.pdf
Simpson’s
index, the Shannon index, and evenness indices give enough
weighting to the relative abundances along with species richness but fail to take into account the taxonomic distances
between species, individuals, or any other appropriate unit. An
information-based index would treat a community of four different biotypes of coliforms identical to another community
consisting of one species of coliforms, one of actinomycetes,
one of myxobacteria, and one of archaebacteria, whereas we
feel that the latter should be treated as more diverse. 

A simple alternative is to use the mean taxonomic distance (Dmean) between all pairs of isolates as a diversity index (14): 

----------

### NGS_DAT
https://twitter.com/hashtag/NGS_DAT

2019年12月12日
https://gakken-mesh.jp/book/detail/9784780909838.html
次世代シークエンサーDRY解析教本　改訂第2版 | 学研メディカル秀潤社
0 から始めるメタゲノム解析 志波 優 https://github.com/youyuh48/NGSDRY2/
p.216
faith-pd-group-significance.qzv | 系統学的多様性とその統計解析

https://docs.qiime2.org/2019.10/tutorials/moving-pictures/
Generate a tree for phylogenetic diversity analyses
QIIME supports several phylogenetic diversity metrics, including Faith’s Phylogenetic Diversity and weighted and unweighted UniFrac. 

https://github.com/youyuh48/NGSDRY2/
次世代シークエンサーDRY解析教本 改訂第2版 サポートサイト

QIIME2-01
Level2：実践編5「０から始めるメタゲノム解析」本文部分のコマンドとデータ
QIIME2-02
Level2：実践編5「０から始めるメタゲノム解析」解析手順書のコマンドとデータ
Yamamoto-etal-2018-FrontMicrobiol
Level3：応用編14「メタ16Sシークエンスの各サンプルから得られた細菌叢組成の差を主座標分析・クラスター分析により可視化する

----------

https://kazumaxneo.hatenablog.com/entry/2020/04/28/073000
DEICODE - macでインフォマティクス

β多様性とは、生物群集間の分類学的または系統的構成の違いを表す生態学的な概念である。
UniFrac (ref.8)で示されたように、系統情報を取り入れることで、微生物のβ多様性の推定は大幅に改善された。しかし、 presence/absence methodでは、しばしばコミュニティ間の差が顕著に現れ、それは豊富さに基づいた方法では不明瞭である。これは逆説的に見えるかもしれないが、豊富さに基づいた手法はコミュニティに関するより多くの情報を統合しているからである。しかし、重要な担い手が豊富な種ではなく希少な種であったり、豊富な種が大きなランダム変動を示す場合には、豊富さの情報は系統的な指標を用いても結果を明確にするどころか不明瞭にしてしまう可能性がある(ref.9)。

----------

https://github.com/haruosuz/statistics/blob/master/README.md#distance

## UniFrac
UniFracは、距離計量 distance metric の要件を満たす。

https://twitter.com/search?q=UniFrac%20lang%3Aja&src=typed_query&f=top
UniFrac lang:ja

https://en.wikipedia.org/wiki/UniFrac
This definition satisfies the requirements of a distance metric, being non-negative, zero only when entities are identical, transitive, and conformant to the triangle inequality.


1:52 AM · Feb 7, 2022
https://twitter.com/nishimoto_gut/status/1490367765445681153
にしもと@腸内細菌 on X: "# 微生物叢の距離指標に関する比較 Bray-Curtis like な重み付け UniFracがいいんじゃない？という論文っぽい。分離能が高いぞ！と主張しているようだが、普段解析で使っている立場としては、特徴を説明しやすい手法の方がいいですね。https://t.co/kEqDGRe6j9" / X

2022-02-05
https://pubmed.ncbi.nlm.nih.gov/35120564/
Microbiome
. 2022 Feb 5;10(1):25. doi: 10.1186/s40168-021-01199-3.
Performance determinants of unsupervised clustering methods for microbiome data
Yushu Shi 1, Liangliang Zhang 2, Christine B Peterson # 3, Kim-Anh Do # 3, Robert R Jenq # 4 5
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-021-01199-3
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8817542/

2020-06-22
http://www.kaimeisha.com/index.php?共生微生物からみた新しい進化学
https://www.hanmoto.com/bd/isbn/9784875253501
共生微生物からみた新しい進化学
長谷川政美(著)
p.57: UniFrac 距離

Dec 2019
https://forum.qiime2.org/t/does-it-make-sense-to-use-weighted-unifrac-distances-for-16s-data/12768
Does it make sense to use weighted unifrac distances for 16s data? - General Discussion - QIIME 2 Forum

https://www.ncbi.nlm.nih.gov/pubmed/30377368
Nat Methods. 2018 Nov;15(11):847-848. doi: 10.1038/s41592-018-0187-8.
Striped UniFrac: enabling microbiome analysis at unprecedented scale.
McDonald D1, Vázquez-Baeza Y1, Koslicki D2, McClelland J2, Reeve N1,3, Xu Z1, Gonzalez A1, Knight R4,5,6,7.


2018/10
https://www.kinokuniya.co.jp/f/dsg-02-9789811315336
マイクロバイオーム・データのＲ統計解析

        3.3.2 UniFrac Distance Metric Family       49 (1)

      9.5 Compare Microbiome Communities Using     320(7)
      the GUniFrac Package
        9.5.1 Introduction to UniFrac, Weighted    320(2)
        UniFrac and Generalized UniFrac
        Distance Metrics
        9.5.2 Breast Milk Data Set                 322(1)
        9.5.3 Comparing Microbiome Communities     323(4)
        Using the GUniFrac Package

https://link.springer.com/book/10.1007/978-981-13-1534-3
Statistical Analysis of Microbiome Data with R | SpringerLink

https://link.springer.com/chapter/10.1007/978-981-13-1534-3_3
Introductory Overview of Statistical Analysis of Microbiome Data
3.3.2 UniFrac Distance Metric Family

https://link.springer.com/chapter/10.1007/978-981-13-1534-3_9
Multivariate Community Analysis | SpringerLink
9.5 Compare Microbiome Communities Using the GUniFrac Package


2016-09-15
https://pubmed.ncbi.nlm.nih.gov/27632205/
PLoS One
. 2016 Sep 15;11(9):e0161196. doi: 10.1371/journal.pone.0161196. eCollection 2016.
Expanding the UniFrac Toolbox
Ruth G Wong 1, Jia R Wu 1, Gregory B Gloor 1
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0161196
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5025018/

Jan 29, 2016
https://www.youtube.com/watch?v=M8ylvsS0MHg
Microbiome Discovery 9: UniFrac - YouTube

2012-08-15
https://pubmed.ncbi.nlm.nih.gov/22711789/
Comparative Study Bioinformatics
. 2012 Aug 15;28(16):2106-13. doi: 10.1093/bioinformatics/bts342. Epub 2012 Jun 17.
Associating microbiome composition with environmental covariates using generalized UniFrac distances
Jun Chen 1, Kyle Bittinger, Emily S Charlson, Christian Hoffmann, James Lewis, Gary D Wu, Ronald G Collman, Frederic D Bushman, Hongzhe Li
https://academic.oup.com/bioinformatics/article/28/16/2106/324465?login=false
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3413390/

2011-02
https://pubmed.ncbi.nlm.nih.gov/20827291/
ISME J
. 2011 Feb;5(2):169-72. doi: 10.1038/ismej.2010.133. Epub 2010 Sep 9.
UniFrac: an effective distance metric for microbial community comparison
Catherine Lozupone 1, Manuel E Lladser, Dan Knights, Jesse Stombaugh, Rob Knight
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3105689
https://www.nature.com/articles/ismej2010133

2005-12
https://pubmed.ncbi.nlm.nih.gov/16332807/
Comparative Study Appl Environ Microbiol
. 2005 Dec;71(12):8228-35. doi: 10.1128/AEM.71.12.8228-8235.2005.
UniFrac: a new phylogenetic method for comparing microbial communities
Catherine Lozupone 1, Rob Knight
https://journals.asm.org/doi/10.1128/aem.71.12.8228-8235.2005
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1317376/



平成 28 年 3 月版（Ver.0.9）
https://www.nite.go.jp/data/000081956.pdf
次世代シーケンサーを用いた菌叢解析
（16S rRNA 遺伝子 PCR サンプルの解析）
独立行政法人 製品評価技術基盤機構
バイオテクノロジーセンター
2.5 UniFrac 解析
比較するサンプルの OTU 代表配列を用いて系統樹解析を行い、試料間で共有されるOTU の枝長と各試料で固有な枝長の割合から、菌叢構造の違いを距離 UniFrac distance として計算する解析方法をいう。算出された UniFrac distance を用いて、主座標分析(PCoA:Principal Coordinate Analysis)や UPGMA 法によるクラスタリング解析を行うことで、試料間の相違度を視覚化することができる。また、リード数を考慮し細菌叢の構成を表す Weighted UniFrac 解析と、リード数を考慮せず細菌叢の構成メンバーを表す UnweightedUniFrac 解析がある。

2014 年
https://www.jstage.jst.go.jp/article/jsci/37/5/37_412/_article/-char/ja
特集：腸内細菌と免疫疾患
ヒト腸内マイクロバイオーム解析のための最新技術
服部 正平
https://www.jstage.jst.go.jp/article/jsci/37/5/37_412/_pdf/-char/ja
二つ目は検出された OTU 間の配列類似度から各細菌叢の系統樹を作成し，その系統樹の類似性（比較する細菌叢との系統樹間で共有する枝の長さとそれぞれの細菌叢に固有な枝の割合）から，細菌叢間の全体構造の相違の程度を求める．この解析を UniFrac 解析と言い，細菌叢間の類似性を 0（100% 類似する）～ 1（100% 類似しない）の距離（UniFrac 距離）で表す6）．UniFrac 解析にはOTU に含まれるリード数（組成比）を考慮しないunweighted と考慮した weighted UniFrac 解析がある．前者は菌種の有無だけが，後者は同一菌種の組成比の相違が両細菌叢間の類似性の距離に反映される．

----------

https://www.ncbi.nlm.nih.gov/pubmed/25815895
PLoS Comput Biol. 2015 Mar 27;11(3):e1004186. doi: 10.1371/journal.pcbi.1004186. eCollection 2015 Mar.
Explaining diversity in metagenomic datasets by phylogenetic-based feature weighting.
Albanese D1, De Filippo C2, Cavalieri D1, Donati C1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4376673/

Given that the sequences of marker genes are available, phylogenetic measures of diversity such as UniFrac [19,20] have proven to be able to identify subtle differences in the structures of microbial communities by weighting species abundances with the phylogenetic relationships amongst taxa.

Here we present PhyloRelief, a ranking strategy to identify the taxa significantly contributing to the differentiation of groups of amplicon metagenomic samples. 

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4376673/figure/pcbi.1004186.g001/
Fig 1
Schema of the method.
B) Next, the matrix of the distances between the samples must be computed using a phylogenetic measure of β-diversity, such as weighted or unweighted UniFrac must be provided. C) The PhyloRelief strategy. 

We compared the performance of PhyloRelief coupled with the RF classifier to LEfSe [30], an algorithm that uses statistical tests for biomarker discovery, to MetaPhyl, a recent phylogeny-based method for the classification of microbial communities [31] and to Random Forest, used both as classifier and feature selection method. 

Software dependencies and availability
PhyloRelief is implemented in Python (http://www.python.org), and requires Python > = 2.7 with the NumPy/SciPy (http://www.scipy.org), Pandas (http://pandas.pydata.org/), DendroPy [43] and Statsmodels (http://statsmodels.sourceforge.net/) libraries. PhyloRelief software, scripts and data analyzed in this paper are available at http://compmetagen.github.io/phylorelief.

----------
## LEfSe
linear discriminant analysis (LDA) effect size (LEfSe) 
線形判別分析（LDA）効果量（LEfSe）

https://www.ncbi.nlm.nih.gov/pubmed/21702898
Genome Biol. 2011 Jun 24;12(6):R60. doi: 10.1186/gb-2011-12-6-r60.
Metagenomic biomarker discovery and explanation.
Segata N1, Izard J, Waldron L, Gevers D, Miropolsky L, Garrett WS, Huttenhower C.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3218848/
LEfSe determines the features (organisms, clades, operational taxonomic units, genes, or functions) most likely to explain differences between classes
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3218848/figure/F6/
(a) Step 1, Kruskal–Wallis
(b) Step 2, Wilcoxon (pairwise comparisons)
(c) Step 3, build a LDA model, effect size

LEfSeのステップ

https://twbattaglia.gitbooks.io/introduction-to-qiime/content/lefse.html
LEfSe · An Introduction to QIIME 1.9.1

LEfSe (Linear discriminant analysis effect size) is a tool developed by the Huttenhower group to find biomarkers between 2 or more groups using relative abundances.

LEfSe uses a table of relative abundances which also includes sample identifiers and group meta data. 

https://picrust.github.io/picrust/tutorials/humann_tutorial.html#differential-abundance-analysis-with-lefse
Differential abundance analysis with LEfSe

2020/01/11
https://note.com/ytomy/n/n39b64afd3862
LEfSeの使用法
Galaxy

https://doi.org/10.7875/togotv.2019.102
2019-04-12 LEfSeを使って細菌叢(Microbiome)の群間比較解析とバイオマーカー探索を行う
Galaxy

27 April 2017
http://wiki.pitagora-galaxy.org/wiki/index.php/Huttenhower_Lab_Workflows#LEfSe_.28Galaxy.29
LEfSe (Linear discriminant analysis Effect Size) は、クラス間の違いを説明する可能性が最も高い 特徴（生物、クレード、OTU、遺伝子、機能）を決定する。

https://www.pediatricsurgery.site/archive/category/菌叢解析
菌叢解析

2016-10-31
LEfSeを実際にやってみる

2016-10-31
LEfSeをインストールする

https://www.pediatricsurgery.site/entry/2016/10/31/214233
LEfSeを実際にやってみる - Note of Pediatric Surgery

https://www.pediatricsurgery.site/entry/2016/10/31/210537
LEfSeをインストールする - Note of Pediatric Surgery

----------

## MAG
Metagenome Assembled Genome (MAG)

https://www.ddbj.nig.ac.jp/ddbj/qualifiers.html
DDBJ Qualifier key
metagenome_source
定義	Metagenome Assembled Genome (MAG) として得られた配列、すなわち、metagenome から単一 taxon として assemble された場合に、その由来となった metagenome を記載します。

----------

### 2022-06-15
### MAGNETO

https://gitlab.univ-nantes.fr/bird_pipeline_registry/magneto

11:20 PM · Jun 24, 2022
https://twitter.com/schaffron/status/1540338989240033282
Samuel Chaffron on Twitter: "Have you ever wondered how to group metagenomic samples for co-assembly to improve MAGs recovery? Check out our solution implemented in MAGNETO: An Automated Workflow for Genome-Resolved Metagenomics | mSystems https://t.co/zykKasJwIq" / Twitter
https://journals.asm.org/doi/10.1128/msystems.00432-22
MAGNETO: An Automated Workflow for Genome-Resolved Metagenomics | mSystems

----------
### 2022-05-10
### MDMcleaner

https://pubmed.ncbi.nlm.nih.gov/35536293/
Nucleic Acids Res
. 2022 May 10;gkac294. doi: 10.1093/nar/gkac294. Online ahead of print.
How clear is our current view on microbial dark matter? (Re-)assessing public MAG & SAG datasets with MDMcleaner
John Vollmers 1, Sandra Wiegand 1, Florian Lenk 1, Anne-Kristin Kaster 1
https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkac294/6583244

8:05 PM · May 20, 2022
https://twitter.com/kasterlab/status/1527606371872546818
Kaster Lab on Twitter: "Our genome assessment pipeline for microbial dark matter, MDMcleaner, is now available via Pip & Conda! Also check out the corresponding publication at NAR: https://t.co/8lqdLnNQfD" / Twitter

6:13 PM · May 16, 2022
https://twitter.com/BioMickWatson/status/1526128600617046022
Mick W@tson on Twitter: "Another taxonomy-based approach to MAG contamination: How clear is our current view on microbial dark matter? (Re-)assessing public MAG & SAG datasets with MDMcleaner | Nucleic Acids Research | Oxford Academic https://t.co/Fpl1iHhR4K" / Twitter

In our experience these really don't work very well especially for MAGs distant from the reference DB

And if your MAGs are not distant from the reference DB, why are you creating them>

I mean if your microbiome contains known genomes (which you can find out using containment queries), you don't need to create MAGs


----------
### 2018-09-15
### MetaWRAP

https://kazumaxneo.hatenablog.com/entry/2018/10/07/073000
複数のbiningツールを統合し、包括的なメタゲノム解析を行うパイプライン metaWRAP - macでインフォマティクス
https://github.com/bxlab/metaWRAP
https://pubmed.ncbi.nlm.nih.gov/30219103/
Microbiome
. 2018 Sep 15;6(1):158. doi: 10.1186/s40168-018-0541-1.
MetaWRAP-a flexible pipeline for genome-resolved metagenomic data analysis
Gherman V Uritskiy 1, Jocelyne DiRuggiero 2, James Taylor 3
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-018-0541-1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6138922/




2019年4月25日
https://www.natureasia.com/ja-jp/nature/highlights/98543
Nature ハイライト：ヒト腸内微生物相の構成をこれまでにない分解能で明らかにする
、1万1850のヒト腸のマイクロバイオームから、9万2143のメタゲノムアセンブリーによる再構築ゲノム（MAG）を得て、1952種の未培養の候補細菌を特定した。
、系統発生学的多様性を281％増大させた。
、数百の新しい生合成遺伝子クラスターをコードしていることが分かった。
https://www.nature.com/articles/s41586-019-0965-1
A new genomic blueprint of the human gut microbiota | Nature
Phylogenetic diversity was quantified by the sum of branch lengths using the phytools R package59.


https://twitter.com/jgi/status/1106429999974772736
Joint Genome Inst. on Twitter: "Read "Novel insights from uncultivated genomes of the global human gut #microbiome" in @nature from @BerkeleyLab @LBNLBioSci @jgi and @GladstoneInst @UCSF @czbiohub researchers: https://t.co/5dUrX7zHzd #BioEGSB #DataScience… https://t.co/ExoEkSqpRp"
1:40 AM - 15 Mar 2019
![](https://pbs.twimg.com/media/D1rUODCUgAA8bDz.jpg)

https://twitter.com/TrendsMicrobiol/status/1106251713122578433
Trends Microbiol on Twitter: "Sam Minot spotlights how de novo assembly vastly expands the known microbial universe of the gut microbiome https://t.co/kyUgu6tu1Q"
1:52 PM - 14 Mar 2019
https://www.sciencedirect.com/science/article/pii/S0966842X19300587

https://www.ncbi.nlm.nih.gov/pubmed/30867587
Nature. 2019 Mar 13. doi: 10.1038/s41586-019-1058-x. [Epub ahead of print]
Novel insights from uncultivated genomes of the global human gut microbiome.
Nayfach S1,2, Shi ZJ3,4, Seshadri R5,6, Pollard KS3,4,7, Kyrpides N8,9.

2019Feb28
https://bibgraph.hpcr.jp/abst/pubmed/30816235
メタゲノム集合ゲノムはロシアのカムチャツカにおける2つの温泉プールの微生物多様性への新しい洞察を提供する - Bibgraph（ビブグラフ）| PubMedを日本語で論文検索

再現性のあるパイプライン
https://github.com/WatsonLab/MAGpy
https://www.ncbi.nlm.nih.gov/pubmed/30418481
Bioinformatics. 2018 Nov 10. doi: 10.1093/bioinformatics/bty905. [Epub ahead of print]
MAGpy: a reproducible pipeline for the downstream analysis of metagenome-assembled genomes (MAGs).
Stewart RD1, Auffret M2, Snelling TJ3, Roehe R2, Watson M1.

未培養原核生物のゲノム
https://www.ncbi.nlm.nih.gov/pubmed/30266101
Microbiome. 2018 Sep 28;6(1):173. doi: 10.1186/s40168-018-0550-0.
Genomes from uncultivated prokaryotes: a comparison of metagenome-assembled and single-amplified genomes.
Alneberg J1, Karlsson CMG2, Divne AM3, Bergin C3, Homa F3, Lindh MV2,4, Hugerth LW1,5, Ettema TJG3, Bertilsson S6, Andersson AF7, Pinhassi J8.

http://kazumaxneo.hatenablog.com/entry/2018/10/09/003000
NGSデータまたはアセンブリからバクテリアやアーキアのtaxanomic assignmentを行い、ゲノムのnoveltyなどを評価する MIGA - macでインフォマティクス
　微生物ゲノムアトラス（MiGA）プロジェクトは、ANIに基づいてクエリーゲノムまたはアセンブリされたコンティグ配列の頑強な分類学的分類を提供する。
　さらに、クエリーゲノム配列は、単離されたが分類されていないゲノムや、metagenome-assembled genomes（MAG）およびsingle-cell amplified genome（SAG）コレクションに対して検索し、

http://kazumaxneo.hatenablog.com/entry/2018/05/08/212758
クラスタを自動で決めてビニングする BinSanity - macでインフォマティクス
。Metagenome-assembled genomes （MAG）にcontigを分類することは、メタゲノムデータを分析する際に直面するハードルの1つである。

https://www.ncbi.nlm.nih.gov/pubmed/29234139
Nat Microbiol. 2018 Feb;3(2):253. doi: 10.1038/s41564-017-0083-5.
Author Correction: Recovery of nearly 8,000 metagenome-assembled genomes substantially expands the tree of life.
Parks DH1, Rinke C1, Chuvochina M1, Chaumeil PA1, Woodcroft BJ1, Evans PN1, Hugenholtz P2, Tyson GW3.

https://www.ncbi.nlm.nih.gov/pubmed/28894102
Nat Microbiol. 2017 Nov;2(11):1533-1542. doi: 10.1038/s41564-017-0012-7. Epub 2017 Sep 11.
Recovery of nearly 8,000 metagenome-assembled genomes substantially expands the tree of life.
Parks DH1, Rinke C1, Chuvochina M1, Chaumeil PA1, Woodcroft BJ1, Evans PN1, Hugenholtz P2, Tyson GW3.

2017年09月12日
http://crisp-bio.blog.jp/archives/3772216.html
メタゲノムからアッセンブルしたゲノムにより微生物系統樹30％以上拡張

2017-03
https://repository.kulib.kyoto-u.ac.jp/dspace/bitstream/2433/227988/1/scr_2017_56.pdf
Title 琵琶湖沖に生息する細菌・ウイルスのメタゲノム解析
Author(s) 岡崎, 友輔
細菌メタゲノムにおいては、SPAdes でアセンブリされた塩基配列断片に対し、4-mer および
サンプル間のカバレッジの差異を用いてクラスタリングする手法(binning) を用いた。これによ
り、各細菌系統の MAG(Metagenome Assembled Genome)を構築し、琵琶湖の表水層および
深水層に生息する優占的な細菌系統のゲノムを 90％以上の Completeness で得ることができ
た。


----------
### PhyloSift

https://pubmed.ncbi.nlm.nih.gov/35749534/
PLoS One
. 2022 Jun 24;17(6):e0270372. doi: 10.1371/journal.pone.0270372. eCollection 2022.
Phylogenetic diversity analysis of shotgun metagenomic reads describes gut microbiome development and treatment effects in the post-weaned pig
Daniela Gaio 1, Matthew Z DeMaere 1, Kay Anantanawat 1, Graeme J Eamens 2, Linda Falconer 2, Toni A Chapman 2, Steven Djordjevic 1, Aaron E Darling 1
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0270372
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9232140/

----------
### kazumaxneo

http://kazumaxneo.hatenablog.com/archive/category/metagenome
metagenome カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/05/22/164017
メタゲノム解析ツール - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2019/02/15/073000
メタゲノムのアセンブリcontig.fastaに精度の高い系統情報をアサインするCATと、binned.fastaに精度の高い系統情報をアサインするBAT - macでインフォマティクス


----------
## 
kraken2 alpha beta diversity

----------

https://github.com/DerrickWood/kraken2/issues/80
Input assembled metagenoms · Issue #80 · DerrickWood/kraken2

https://github.com/DerrickWood/kraken2/issues/80#issuecomment-565222474
isardi commented on Dec 13, 2019
Hi @MichaelAngelou,
I have been trying to figure out how to calculate alpha and beta diversity using the Bracken output with no luck. What package do you use? Did you have to modify the output in anyway? I spent the whole day trying to figure this out so your input is very much appreciated. Thanks in advanced!

https://github.com/DerrickWood/kraken2/issues/80#issuecomment-565422169
ciemanek commented on Dec 13, 2019
Hi @isardi !
You can use R package vegan for calculating the diversity indices on Bracken output :)

----------

https://carpentries-incubator.github.io/metagenomics/aio/index.html
Data processing and visualization for metagenomics


Packages like Quiime2, MEGAN, Vegan or Phyloseq in R allows us to obtain these diversity indexes by manipulating taxonomic-assignation data. In this lesson, we will use Phyloseq. In order to do so, we need to generate an abundance matrix from the Kraken output files. One program widely used for this purpose is kraken-biom.

----------

https://www.cell.com/cms/10.1016/j.isci.2020.100905/attachment/d3d5d291-4f11-4ecf-af92-558af5d1f474/mmc7
Data S1: Code Used for Analysis, Related to Figures 1-6
This file includes all of the analysis code used for QIIME2, Kraken2 and Bracken2, Phyloseq,
HUMANn2, and DeepARG.
All metagenomic processing was run using the Brown University OSCAR computing cluster

https://pubmed.ncbi.nlm.nih.gov/32106056/
iScience
. 2020 Mar 27;23(3):100905. doi: 10.1016/j.isci.2020.100905. Epub 2020 Feb 13.
Antimicrobial Resistance Gene Prevalence in a Population of Patients with Advanced Dementia Is Related to Specific Pathobionts
Aislinn D Rowan-Nash 1, Rafael Araos 2, Erika M C D'Agata 3, Peter Belenky 4
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7044522/

Associated Data
Supplementary Materials

Data S1. Code Used for Analysis, Related to Figures 1–6 This file includes all of the analysis code used for QIIME2, Kraken2 and Bracken2, Phyloseq, HUMANn2, and DeepARG.
All metagenomic processing was run using the Brown University OSCAR computing cluster.

mmc7.pdf (100K)

----------
## unclassified

http://clark.cs.ucr.edu
CLARK :: Fast and accurate classification method for metagenomic/genomic sequences

https://www.ncbi.nlm.nih.gov/pubmed/27540266
Bioinformatics. 2016 Dec 15;32(24):3823-3825. Epub 2016 Aug 18.
Higher classification sensitivity of short metagenomic reads with CLARK-S.
Ounit R1, Lonardi S1.

https://www.ncbi.nlm.nih.gov/pubmed/25879410
BMC Genomics. 2015 Mar 25;16:236. doi: 10.1186/s12864-015-1419-2.
CLARK: fast and accurate classification of metagenomic and genomic sequences using discriminative k-mers.
Ounit R1, Wanamaker S2, Close TJ3, Lonardi S4.

- [Kraken](http://ccb.jhu.edu/software/kraken/)
 - 論文 [Wood DE, Salzberg SL. Genome Biol. 2014 "Kraken: ultrafast metagenomic sequence classification using exact alignments."]()



2019年09月02日
https://qiita.com/xvtyzn/items/6a008b61d852dcbaed57
Qiime2を使ったメタゲノム解析パイプライン

http://fox-bioinformatics.net/2019/01/05/qiime2-how-to-install/
QIIME2インストールの方法解説 | Rとバイオインフォマティクス


https://twitter.com/sjackman/status/1045005404227362817
Shaun Jackman on Twitter: "I have a 16 kbp query sequence, and I'd like to search all of SRA (including metagenomes) to see if any SRA read sets match this query sequence. Does this tool exist?"
1:41 PM - 26 Sep 2018

https://twitter.com/i/moments/1000738412117147648
All metagenomes searched at once?

https://twitter.com/tylerbarnumphd/status/1010247842772815872
Tyler Barnum on Twitter: "I wrote a tutorial on how to find new proteins in the ~8,000 Uncultivated Bacteria and Archaea (UBA) genomes from @donovan_parks. It's the largest collection of genomes that you can't search for on BLAST or IMG. ~1,500 metagenomes. https://t.co/PgavpbmsQg Feedback welcome!"
3:47 PM - 22 Jun 2018
https://tylerbarnum.wordpress.com/2018/06/22/searching-uncultivated-bacteria-and-archaea-uba-genomes-for-important-genes/
Searching Uncultivated Bacteria and Archaea (UBA) Genomes for Important Genes – The Biolo-Gist
June 22, 2018


https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.pdf
https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.html
生態学のためのメタバーコーディングとDNAバーコーディング
田辺晶史
2018年5月8日

----------
## 2022


----------

### MuDoGeR
査読前

https://github.com/mdsufz/MuDoGeR
mdsufz/MuDoGeR: MuDoGeR makes the recovery of genomes from prokaryotes, viruses, and eukaryotes from metagenomes easy.
Multi-Domain Genome Recovery v1.0 (MuDoGeR v1.0)

https://twitter.com/ulisses_rocha/status/1538814305965068290
Dr. Ulisses Rocha (he/him) on Twitter: "Are you interested in recovering genomes from Prokaryotes, viruses, and/or Eukaryotes? We just released the MuDoGeR: https://t.co/gZ7qL9KDk1 Let us know what you think about the tool. The manuscript will be uploaded to @biorxivpreprint in the next few days. #bioinformatics https://t.co/QbvZ9rYBz6" / Twitter

Posted June 24, 2022.
https://www.biorxiv.org/content/10.1101/2022.06.21.496983v2
MuDoGeR: Multi-Domain Genome Recovery from metagenomes made easy | bioRxiv

Only 8 of the 574 metagenomic libraries showed no recovery of Prokaryotic metagenome-assembled genomes (MAGs), putative viral contigs, or Eukaryotic metagenome-assembled bins (MABs) (Supplementary Table 1). In the following paragraphs, we detailed the data for recovering Prokaryotic MAGs, high-quality and complete uncultivated viral genomes (UViGs), and Eukaryotic MABs. Nevertheless

----------
### 2022-03-07
### MEDUSA

https://github.com/dalmolingroup/MEDUSA_supplements

8:05 PM · Mar 7, 2022
https://twitter.com/DalmolinRodrigo/status/1500789806795788288
Rodrigo Dalmolin on Twitter: "A new paper by our group published today. Medusa is a complete, freely available, modular pipeline for shotgun metagenomics with high performance, especially for identifying rare species. https://t.co/d3tpnWfGmr https://t.co/GuZMWNjlpk" / Twitter

https://pubmed.ncbi.nlm.nih.gov/35330728/
Front Genet
. 2022 Mar 7;13:814437. doi: 10.3389/fgene.2022.814437. eCollection 2022.
MEDUSA: A Pipeline for Sensitive Taxonomic Classification and Flexible Functional Annotation of Metagenomic Shotgun Sequences
Diego A A Morais 1, João V F Cavalcante 1, Shênia S Monteiro 2, Matheus A B Pasquali 2 3, Rodrigo J S Dalmolin 1 4
https://www.frontiersin.org/articles/10.3389/fgene.2022.814437/full


----------
## 2021
----------
## 2021-10-26
## kaiju

https://anaconda.org/bioconda/kaiju
conda install -c bioconda kaiju

https://kaiju.binf.ku.dk/
Kaiju: Fast and sensitive taxonomic classification for metagenomics

Version 1.8.2
2021-10-26

https://github.com/bioinformatics-centre/kaiju

https://github.com/bioinformatics-centre/kaiju/blob/master/README.md#creating-the-reference-database-and-index

https://github.com/bioinformatics-centre/kaiju/blob/master/README.md#running-kaiju

For paired-end reads use -i firstfile.fastq and -j secondfile.fastq.

Kaiju can read input files in FASTQ and FASTA format, which may also be gzip-compressed.

https://pubmed.ncbi.nlm.nih.gov/27071849/
Nat Commun
. 2016 Apr 13;7:11257. doi: 10.1038/ncomms11257.
Fast and sensitive taxonomic classification for metagenomics with Kaiju
Peter Menzel 1, Kim Lee Ng 1, Anders Krogh 1
https://www.nature.com/articles/ncomms11257
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC4833860/

In such samples using protein-level classification can increase accuracy, because protein sequences are more conserved than the underlying DNA, and microbial and viral genomes are typically densely packed with protein-coding genes13,14. 


Results
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4833860/#__sec1title

Protein-level sequence classification
Kaiju translates metagenomic sequencing reads into the six possible reading frames and searches for maximum exact matches (MEMs) of amino acid sequences in a given database of annotated proteins from microbial reference genomes. If matches to one or more database sequences are found for a read, Kaiju outputs the taxonomic identifier of the corresponding taxon, or it determines the LCA in the case of equally good matches to different taxa. Kaiju's underlying sequence comparison algorithm uses the Burrows–Wheeler transform (BWT) of the protein database, which enables exact string matching in time proportional to the length of the query, to achieve a high classification speed.



We compared the performance of Kaiju with the two k-mer-based programs Kraken and Clark, which performed best in speed and accuracy in a recent benchmark study18. 


https://kazumaxneo.hatenablog.com/entry/2018/05/23/121418
タンパク質を使って高感度にメタゲノムのtaxonomy assignmentを行う kaiju - macでインフォマティクス


----------
## 2020
----------

----------
### 2020-12-14
### metaphlan

https://github.com/biobakery/MetaPhlAn/wiki/MetaPhlAn-3.0
Francesco Beghini edited this page on Dec 14, 2020 · 13 revisions

https://kazumaxneo.hatenablog.com/entry/2022/02/21/220453
MetaPhlAn3 - macでインフォマティクス

----------
### 2020-11-02
### recentrifuge

https://sites.google.com/view/recentrifuge

https://github.com/khyox/recentrifuge/wiki
Jose Manuel Martí edited this page on Nov 2, 2020 · 23 revisions

https://pubmed.ncbi.nlm.nih.gov/30958827/
Comparative Study PLoS Comput Biol
. 2019 Apr 8;15(4):e1006967. doi: 10.1371/journal.pcbi.1006967. eCollection 2019 Apr.
Recentrifuge: Robust comparative analysis and contamination removal for metagenomics
Jose Manuel Martí 1
https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1006967
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6472834/

7:30 AM · Apr 20, 2019
https://twitter.com/kazumachack/status/1119367593821741056
Kazuma Uesaka on Twitter: "centrifugeやkraken、CLARK、LMATの結果を入力としてネガコンのメタゲノムサンプルやコンタミを除き、エンリッチされている生物の分析を助けるツールです。 Recentrifuge - macでインフォマティクス https://t.co/sBrRgFunfo" / Twitter

https://kazumaxneo.hatenablog.com/entry/2019/04/20/073000
メタゲノムのコンタミ除去やメタゲノムのサンプル間比較を行って結果を視覚化する Recentrifuge - macでインフォマティクス


----------
### 2020-03-29
### centrifuge

http://ccb.jhu.edu/software/centrifuge/index.shtml
Centrifuge
Classifier for metagenomic sequences

Due to the rapid spread of SARS-CoV-2 and its devastating effects, we provide additional Centrifuge indices in the hope that they will be useful for biomedical research related to the virus. The first two indexes include 106 complete SARS-CoV-2 genomes downloaded from GenBank as follows: (3/29/2020)

http://ccb.jhu.edu/software/centrifuge/manual.shtml

https://pubmed.ncbi.nlm.nih.gov/27852649/
Genome Res
. 2016 Dec;26(12):1721-1729. doi: 10.1101/gr.210641.116. Epub 2016 Oct 17.
Centrifuge: rapid and sensitive classification of metagenomic sequences
Daehwan Kim 1, Li Song 1 2, Florian P Breitwieser 1, Steven L Salzberg 1 2 3
https://genome.cshlp.org/content/26/12/1721.long
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5131823/
Data access
Centrifuge is available as free, open-source software from https://github.com/infphilo/centrifuge/archive/centrifuge-genome-research.zip and provided in Supplemental Data S1. The fruitshake sequencing data from this study have been submitted to the NCBI BioProject database (http://www.ncbi.nlm.nih.gov/bioproject/) under accession number PRJNA343503.


https://kazumaxneo.hatenablog.com/entry/2018/05/30/150433
メタゲノムのリードの系統アサインメントを行う Centrifuge - macでインフォマティクス



----------
### 2020-12
### kraken2

https://ccb.jhu.edu/software/kraken2/
2020/12 UPDATE
https://ccb.jhu.edu/software/kraken2/index.shtml?t=downloads
2020/06 UPDATE


https://pubmed.ncbi.nlm.nih.gov/31779668/
Genome Biol
. 2019 Nov 28;20(1):257. doi: 10.1186/s13059-019-1891-0.
Improved metagenomic analysis with Kraken 2
Derrick E Wood 1 2, Jennifer Lu 2 3, Ben Langmead 4 5
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1891-0
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6883579/

https://pubmed.ncbi.nlm.nih.gov/24580807/
Comparative Study Genome Biol
. 2014 Mar 3;15(3):R46. doi: 10.1186/gb-2014-15-3-r46.
Kraken: ultrafast metagenomic sequence classification using exact alignments
Derrick E Wood, Steven L Salzberg
https://genomebiology.biomedcentral.com/articles/10.1186/gb-2014-15-3-r46
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4053813/


更新日 2020年11月25日
https://qiita.com/Adaachill/items/ec08e7701c9975616f36
metagenome シークエンスから高速に各readの系統を推定するKraken2[環境構築] - Qiita

https://kazumaxneo.hatenablog.com/entry/2017/08/28/235248
メタゲノムデータの高速なtaxonomy assignmentを行う kraken - macでインフォマティクス

----------
### 2021-10-09
### krakenuniq

https://github.com/fbreitwieser/krakenuniq

https://github.com/fbreitwieser/krakenuniq/blob/master/MANUAL.md
Pavian works great for visualizing and analyzing KrakenUniq results!

https://pubmed.ncbi.nlm.nih.gov/30445993/
Genome Biol
. 2018 Nov 16;19(1):198. doi: 10.1186/s13059-018-1568-0.
KrakenUniq: confident and fast metagenomics classification using unique k-mer counts
F P Breitwieser 1, D N Baker 2 3, S L Salzberg 4 5 6
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1568-0
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6238331/

https://kazumaxneo.hatenablog.com/entry/2019/01/16/073000
KrakenUniq - macでインフォマティクス

----------
### 2019-08-07
### bracken

http://ccb.jhu.edu/software/bracken/
08/07/2019 - v2.5.0 release

https://peerj.com/articles/cs-104/
Bracken: estimating species abundance in metagenomics data [PeerJ]

Software and data availability
Bracken is written in Perl and Python and is freely available for download at http://ccb.jhu.edu/software/bracken/. The reads from the skin microbiome experiment are freely available from NCBI under BioProject PRJNA316735.

https://kazumaxneo.hatenablog.com/entry/2019/02/01/073000
Bracken - macでインフォマティクス


----------
## web-tool

### manta

https://mizuguchilab.org/ja
水口賢司研究室

https://mizuguchilab.org/manta/
MANTA
Microbiota And pheNotype correlaTion Analysis platform

An integrative database and analysis platform that relates microbiome and phenotypic data


https://pubmed.ncbi.nlm.nih.gov/33275647/
PLoS One
. 2020 Dec 4;15(12):e0243609. doi: 10.1371/journal.pone.0243609. eCollection 2020.
MANTA, an integrative database and analysis platform that relates microbiome and phenotypic data
Yi-An Chen 1, Jonguk Park 1, Yayoi Natsume-Kitatani 1, Hitoshi Kawashima 1, Attayeb Mohsen 1, Koji Hosomi 2, Kumpei Tanisawa 3, Harumi Ohno 3, Kana Konishi 3, Haruka Murakami 3, Motohiko Miyachi 3, Jun Kunisawa 2, Kenji Mizuguchi 1


https://kazumaxneo.hatenablog.com/entry/2021/06/09/073000
マイクロバイオームと表現型のデータを関連付ける統合データベース解析プラットフォーム MANTA - macでインフォマティクス

MicrobiomeAnalyst、Calypso、Shiny-phyloseq、およびMianは、これらの課題に対処するためのウェブベースのオンラインツールである。これらのツールは、R（phyloseq、vegan、ade4など）やPythonパッケージを仲介するための対話的なウェブインターフェースを提供している。





### pavian
https://github.com/fbreitwieser/pavian
Pavian is a interactive browser application for analyzing and visualization metagenomics classification results from classifiers such as Kraken, KrakenUniq, Kraken 2, Centrifuge and MetaPhlAn. Pavian also provides an alignment viewer for validation of matches to a particular genome.

https://fbreitwieser.shinyapps.io/pavian/

https://github.com/fbreitwieser/pavian/blob/master/README.md#supported-formats
Supported formats
pavian natively supports the Kraken and MetaPhlAn-style report formats. In extension, you can use Centrifuge results by running centrifuge-kreport on Centrifuge output files, and Kaiju results by running kraken-report on Kaiju output files (see issue #11)

### 2020-02-15
https://pubmed.ncbi.nlm.nih.gov/31553437/
Bioinformatics
. 2020 Feb 15;36(4):1303-1304. doi: 10.1093/bioinformatics/btz715.
Pavian: interactive analysis of metagenomics data for microbiome studies and pathogen identification
Florian P Breitwieser 1, Steven L Salzberg 2
https://academic.oup.com/bioinformatics/article/36/4/1303/5573755
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8215911/

https://kazumaxneo.hatenablog.com/entry/2018/05/30/210209
メタゲノム分析ツール Pavian - macでインフォマティクス

分類と視覚化を統合したTaxonomer（Flygare et al、2016）（紹介）と比較して、Pavianはいくつかのサンプルの視覚化と比較のための追加の方法を提供する。

### 2016-05-26
### taxonomer

https://taxonomer.iobio.io/
Taxonomer is a kmer-based ultrafast metagenomics tool for assigning taxonomy to sequencing reads from both clinical and environmental samples.

https://pubmed.ncbi.nlm.nih.gov/27224977/
Genome Biol
. 2016 May 26;17(1):111. doi: 10.1186/s13059-016-0969-1.
Taxonomer: an interactive metagenomics analysis portal for universal pathogen detection and host mRNA expression profiling
Steven Flygare 1, Keith Simmon 2, Chase Miller 1, Yi Qiao 1, Brett Kennedy 1, Tonya Di Sera 1, Erin H Graf 3, Keith D Tardif 4, Aurélie Kapusta 1, Shawn Rynearson 1, Chris Stockmann 5, Krista Queen 6, Suxiang Tong 6, Karl V Voelkerding 3 4, Anne Blaschke 5, Carrie L Byington 5, Seema Jain 6, Andrew Pavia 5, Krow Ampofo 5, Karen Eilbeck 2 7, Gabor Marth 1 7, Mark Yandell 8 9, Robert Schlaberg 10 11
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0969-1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4880956/

https://kazumaxneo.hatenablog.com/entry/2018/05/31/170700
メタゲノムを分類し、結果を可視化する Taxonomer - macでインフォマティクス

　Taxonomerは、超高速、ユーザーフレンドリーなウェブベースのメタゲノム配列解析ツールである。

Taxonomer webサービスにアクセスする。使用するにはSign upが必要になる。Sign up for freeから登録する。

----------
## benchmark

### 2022-03-24

古代ウイルスDNAに関するメタゲノム分類法のベンチマーク。4つの分類法（Centrifuge、Kraken2、DIAMOND、MetaPhlAn2）について、リード配列の由来するウイルスを同定する性能を評価した結果、Centrifugeが最高の感度と精度を達成した推奨ツール。
The authors compared Centrifuge, Kraken2, DIAMOND and MetaPhlAn2. Centrifuge is their recommended tool.
https://pubmed.ncbi.nlm.nih.gov/35356467/
PeerJ
. 2022 Mar 24;10:e12784. doi: 10.7717/peerj.12784. eCollection 2022.
Benchmarking metagenomics classifiers on ancient viral DNA: a simulation study
Yami Ommar Arizmendi Cárdenas 1 2, Samuel Neuenschwander 1 3, Anna-Sapfo Malaspinas 1 2
https://peerj.com/articles/12784/
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8958974/
Across most simulations, more than 228 out of the 233 simulated viruses were recovered by Centrifuge, Kraken2 and DIAMOND, in contrast to MetaPhlAn2 which recovered only around one third. Overall, Centrifuge and Kraken2 had the best performance with the highest values of sensitivity and precision. We found that deamination damage had little impact on the performance of the classifiers, less than the sequencing error and the length of the reads. Since Centrifuge can handle short reads (in contrast to DIAMOND and Kraken2 with default settings) and since it achieve the highest sensitivity and precision at the species level across all the simulations performed, it is our recommended tool. 

### 2019-08-08
### Ye_2019

https://pubmed.ncbi.nlm.nih.gov/31398336/
Review Cell
. 2019 Aug 8;178(4):779-794. doi: 10.1016/j.cell.2019.07.010.
Benchmarking Metagenomics Tools for Taxonomic Classification
Simon H Ye 1, Katherine J Siddle 2, Daniel J Park 3, Pardis C Sabeti 4
https://www.sciencedirect.com/science/article/pii/S0092867419307755
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC6716367/

Several groups have previously benchmarked metagenomic tools (Lindgreen et al., 2016, Mavromatis et al., 2007, McIntyre et al., 2017, Meyer et al., 2019, Sczyrba et al., 2017), but the continual introduction of newer tools requires ongoing evaluation to compare them against established tools. 

Evaluating the precision-recall of 20 classifiers
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC6716367/#S4title
Here we benchmarked 20 metagenomic classifiers to compare performance in classification precision, recall, F1, speed, and other metrics using a uniform database to eliminate any confounding effects of differences in default databases. DNA to DNA classifiers evaluated here were Kraken (and its add-on for more accurate abundance quantification Bracken), Kraken2, KrakenUniq, k-SLAM, MegaBLAST, metaOthello, CLARK, CLARK-S, GOTTCHA, taxMaps, prophyle, PathSeq, Centrifuge, and Karp. DNA to Protein classifiers evaluated were DIAMOND, Kaiju, and MMseqs2. We

https://scholar.google.co.jp/scholar?cites=6688630901807222522&as_sdt=2005&sciodt=0,5&hl=ja

### 2017-09-21
https://pubmed.ncbi.nlm.nih.gov/28934964/
Genome Biol
. 2017 Sep 21;18(1):182. doi: 10.1186/s13059-017-1299-7.
Comprehensive benchmarking and ensemble approaches for metagenomic classifiers
Alexa B R McIntyre 1 2 3, Rachid Ounit 4, Ebrahim Afshinnekoo 2 3 5, Robert J Prill 6, Elizabeth Hénaff 2 3, Noah Alexander 2 3, Samuel S Minot 7, David Danko 1 2 3, Jonathan Foox 2 3, Sofia Ahsanuddin 2 3, Scott Tighe 8, Nur A Hasan 9 10, Poorani Subramanian 9, Kelly Moffat 9, Shawn Levy 11, Stefano Lonardi 4, Nick Greenfield 7, Rita R Colwell 9 12, Gail L Rosen 13, Christopher E Mason 14 15 16
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1299-7
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5609029/
Overall, pairing tools with different classification strategies (k-mer, alignment, marker) can combine their respective advantages.

https://scholar.google.co.jp/scholar?cites=8605030642958534701&as_sdt=2005&sciodt=0,5&hl=ja



----------

## updates

### 2022

### 2022-11-28

https://www.nature.com/articles/s43705-022-00204-6
Unexpected absence of ribosomal protein genes from metagenome-assembled genomes | ISME Communications


6:25 AM · Dec 8, 2022
https://twitter.com/luispedrocoelho/status/1600602523206791168
Luis Pedro Coelho🌻 on Twitter: ""Unexpected absence of ribosomal protein genes from metagenome-assembled genomes" by Mise &amp; Iwasaki (Quoted text is from paper [slightly edited for space], unquoted from me) https://t.co/Xlw9v5V3c6" / Twitter


6:40 AM · Nov 30, 2022
https://twitter.com/iwasakiw/status/1597707175836934146
論文「メタゲノムアセンブルゲノムからの予想外のリボソームタンパク質遺伝子の欠失」を出版しました！
Kazumori Mise and Wataru Iwasaki.
Unexpected absence of ribosomal protein genes from metagenome-assembled genomes.
ISME Communications, 2, 118. (2022)
ショットガンシーケンスから環境微生物のゲノムを復元するMAG（メタゲノムアセンブルゲノム）解析が一般的になり、未培養微生物の進化や生理・生態に関する研究が大きく進んでいます。一方でMAGにはまだ問題点も多く、例えば、反復配列や外来配列はMAGから欠落しやすいことが良く知られています。
本研究では、反復配列でも外来配列でもない「リボソームタンパク質遺伝子」もまた、予想外にMAGから欠落しやすいことを明らかにしました。そして、コドン使用頻度の偏りによるビニングの誤りがその原因であり、これが微生物の生存戦略にもリンクしていることを明らかにしました。

### 2021-01-07

https://pubmed.ncbi.nlm.nih.gov/33462601/
Genome Biol Evol
. 2021 Jan 7;13(1):evaa238. doi: 10.1093/gbe/evaa238.
Anomalous Phylogenetic Behavior of Ribosomal Proteins in Metagenome-Assembled Asgard Archaea
Sriram G Garg 1, Nils Kapust 1, Weili Lin 2, Michael Knopp 1, Fernando D K Tria 1, Shijulal Nelson-Sathi 3, Sven B Gould 1, Lu Fan 4 5 6, Ruixin Zhu 2, Chuanlun Zhang 4 5 7, William F Martin 1
https://academic.oup.com/gbe/article/13/1/evaa238/5988511
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7813640/

### 

8:50 AM · Apr 29, 2022
https://twitter.com/RobynJWright/status/1519826469610041344
Robyn Wright on Twitter: "Q: Which is better for taxonomic classification of #metagenomics samples - Kraken2 or MetaPhlAn 3? A: It really depends! Read the very short story in this thread, or the full story in my preprint w/ @BetaScience and André Comeau: https://t.co/2U3e7odn8Y 1/" / Twitter

### 2022-02-05

1:34 AM · Feb 6, 2022
https://twitter.com/arroboso/status/1490000882980769792
ᴀʟᴇᴊᴀɴᴅʀᴏ ꜱᴀɴᴄʜᴇᴢ-ꜰʟᴏʀᴇꜱ 🧬👨🏽‍💻 on Twitter: "@bielleogy Have you tried MetaPhlAn? I think that using single copy marker genes will get you a better classification than using k-mer signatures like Kraken2 or others. At least that is what we tested in a publication some time ago. https://t.co/NijLnyVA7v https://t.co/nj0hE7UTad" / Twitter
https://www.nature.com/articles/s41598-018-30515-5
Analysis of sequencing strategies and tools for taxonomic annotation: Defining standards for progressive metagenomics | Scientific Reports


11:13 PM · Feb 5, 2022
https://twitter.com/AMohamed85/status/1489965514902446083
Amin Mohamed on Twitter: "@bielleogy For MAGs I recently used GTDB (bacteria and archaea only). For read-based analyses, I used kraken2 and metaphlan after removing host reads. Might be better to try on contigs (metaSpades) rather than reads!" / Twitter


6:10 AM · Feb 5, 2022
https://twitter.com/bielleogy/status/1489708006283440129
Dr. Elinne Becket on Twitter: "Any marine (or related) microbiologists have recs for metagenome taxonomic classifiers for those sample types? Or has anyone in those fields had success getting a decent % classified from Kraken2? I'm only getting like 10-15% classified despite every option I've tried." / Twitter


### 2021


### 2020


https://twitter.com/gggtta/status/1215107137476513792
松本 on Twitter: "サンプル中に含まれるOTUやバクテリアの相対存在量のプロファイルがまとまった、サンプル数×OTU数の行列のデータベースってどこかにないかな？" / Twitter
12:04 PM · Jan 9, 2020



### 2019

https://qiita.com/advent-calendar/2019/metagenome
メタゲノム Advent Calendar 2019 - Qiita

https://qiita.com/hi-mori/items/a1d3e0923f2cc85edb84
メタゲノムの情報解析が学べるWeb教材（スライドや動画） - Qiita

https://qiita.com/Yohei__K/items/dffc8767581bfbaad812
メタゲノムのイケてるネットワーク解析手法、WGCNA解説 - Qiita
R packageに関して

https://www.ncbi.nlm.nih.gov/pubmed/31848574/
Brief Bioinform. 2019 Dec 18. pii: bbz155. doi: 10.1093/bib/bbz155. [Epub ahead of print]
Current challenges and best-practice protocols for microbiome analysis.
Bharti R, Grimm DG.
https://github.com/grimmlab/MicrobiomeBestPracticeReview
Both the workflows are controlled by bash scripts


https://twitter.com/tjsharpton/status/1192820360556793856
Thomas Sharpton on Twitter: "Published! Happy to share our review on statistical methods for integrating multi'omic microbiome data. This results from a wonderful NIGMS/DMS sponsored collaboration with my brilliant statistics colleagues. I hope you find it helpful! cc @CourtneyRArmour https://t.co/lrXI2PXrZK https://t.co/b2mIbFcKSU" / Twitter
12:05 AM · Nov 9, 2019
![](https://pbs.twimg.com/media/EI2_yXcX0AM31w3?format=jpg&name=small)



https://twitter.com/WvSchaik/status/1148595145790689281
Willem van Schaik on Twitter: "Really interesting approach to link ALL microbiome studies and allow for comparative analyses: https://t.co/PVM3HCi7hT by João Rodriguez #FEMS2019"
10:09 AM - 9 Jul 2019

Posted May 21, 2019.
https://www.biorxiv.org/content/10.1101/644740v1
Cartography of opportunistic pathogens and antibiotic resistance genes in a tertiary hospital environment
https://twitter.com/NiranjanTW/status/1131022012556533760
Our hospital microbiome work as part of @metasub! All Illumina and Nanopore data should be available from ENA: Cartography of opportunistic pathogens and antibiotic resistance genes in a tertiary hospital environment https://www.biorxiv.org/content/10.1101/644740v1 …
@kalisvar @oontek1 @mason_lab
1000s of @nanopore assembled genomes and circular plasmid sequences too!


https://www.ncbi.nlm.nih.gov/pubmed/30418481
Bioinformatics. 2019 Jun 1;35(12):2150-2152. doi: 10.1093/bioinformatics/bty905.
MAGpy: a reproducible pipeline for the downstream analysis of metagenome-assembled genomes (MAGs).
Stewart RD1, Auffret MD2, Snelling TJ3, Roehe R2, Watson M1.


https://twitter.com/ASMicrobiology/status/1126925145069817856
We need an ecological understanding of the microbiome as a community of interacting individuals  and an evolutionary understanding of the microbiome as a trait of the host: an @mSystemsJ perspective from @sarahmhird http://ow.ly/UAkL50u2gEp 
3:01 PM - 10 May 2019
https://twitter.com/sarahmhird
Sarah Hird


https://twitter.com/Tyu_Shi/status/1110601849386618880
Tyu_Shi on Twitter: "マウスgut microbiomeの解析でベンダーが違うマウスは別物として扱うのはほぼ常識なので驚きは無いが、こういうのを論文にしてくれるのは引用で済ませられるのでありがたい。 Mouse vendor influence on the bacterial and viral gut composition exceeds the effect of diet https://t.co/mwS8HwmvMf"
1:58 PM - 26 Mar 2019

https://twitter.com/Tyu_Shi/status/1110583615526596609
reference basedとde novo basedのhybrid型ということで一時期持て囃されて流行りそうになったopen or closed reference OTU clustering法が、わりとしっかりと批判されている。
12:45 PM - 26 Mar 2019

https://twitter.com/PatSchloss/status/1110509388664619009
Pat Schloss on Twitter: "Please stop using the open (and closed) reference clustering methods based on USEARCH/VSEARCH. Instead, use de novo clustering algorithms to form OTUs 1/"
7:50 AM - 26 Mar 2019

https://www.ncbi.nlm.nih.gov/pubmed/30902113
Microbiome. 2019 Mar 22;7(1):46. doi: 10.1186/s40168-019-0658-x.
Sunbeam: an extensible pipeline for analyzing metagenomic sequencing experiments.
Clarke EL1, Taylor LJ1, Zhao C2, Connell A1, Lee JJ2, Fett B2, Bushman FD1, Bittinger K3.


### 2018

https://twitter.com/pathogenomenick/status/1053620015579172864
Nick Loman on Twitter: "An extremely informative thread explaining why metagenomic assemblies of related species and strains results in subsequent difficulties during binning:… https://t.co/CzUcpRiYdJ"
8:12 AM - 20 Oct 2018

https://www.ncbi.nlm.nih.gov/pubmed/29950328
J Clin Microbiol. 2018 Aug 27;56(9). pii: e00813-18. doi: 10.1128/JCM.00813-18. Print 2018 Sep.
Lowering the Barriers to Routine Whole-Genome Sequencing of Bacteria in the Clinical Microbiology Laboratory.
Rhoads DD1,2.


https://www.ncbi.nlm.nih.gov/pubmed/29460198
J Plant Res. 2018 Jul;131(4):709-717. doi: 10.1007/s10265-018-1017-x. Epub 2018 Feb 19.
Collaborative environmental DNA sampling from petal surfaces of flowering cherry Cerasus × yedoensis 'Somei-yoshino' across the Japanese archipelago.
Ohta T1, Kawashima T2, Shinozaki NO3, Dobashi A4, Hiraoka S5, Hoshino T6, Kanno K7, Kataoka T8, Kawashima S9, Matsui M10, Nemoto W11, Nishijima S12,13,14, Suganuma N15, Suzuki H16, Taguchi YH17, Takenaka Y18, Tanigawa Y19, Tsuneyoshi M20, Yoshitake K21, Sato Y22, Yamashita R22, Arakawa K23, Iwasaki W10.

Fig.2: "Deblur" -> "Deblur or DADA2" に修正し
https://twitter.com/merenbey/status/999416078446071809
A. Murat Eren (Meren) on Twitter: "This is unfair to DADA2
6:25 PM - 23 May 2018


### 2017

https://www.ncbi.nlm.nih.gov/pubmed/28321234
Front Genet. 2017 Mar 6;8:23. doi: 10.3389/fgene.2017.00023. eCollection 2017.
A Review of Bioinformatics Tools for Bio-Prospecting from Metagenomic Sequence Data.
Roumpeka DD1, Wallace RJ2, Escalettes F3, Fotheringham I3, Watson M1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5337752/
Data Sharing and Online Portals
MG-RAST (Glass et al., 2010) 
EBI MetaGenomics (Hunter et al., 2014) 
IMG/M (Markowitz et al., 2014) 

https://www.ncbi.nlm.nih.gov/pubmed/25983555
Bioinform Biol Insights. 2015 May 5;9:75-88. doi: 10.4137/BBI.S12462. eCollection 2015.
Metagenomics: tools and insights for analyzing next-generation sequencing data derived from biodiversity studies.
Oulas A1, Pavloudi C2, Polymenakou P1, Pavlopoulos GA3, Papanikolaou N3, Kotoulas G1, Arvanitidis C1, Iliopoulos I3.


### 2017

https://www.microbe.net/2017/11/15/nice-title-nice-paper-microbiome-datasets-are-compositional-and-this-is-not-optional/
Nice title, nice paper: Microbiome Datasets Are Compositional: And This Is Not Optional  – microBEnet: the microbiology of the Built Environment network

1:39 PM - 18 Dec 2017
https://twitter.com/Tyu_Shi/status/942826707022520320
Tyu_Shi on Twitter: "まだ記事は少ないが、ヒト腸内メタ関連のDalhousie Universityでのjournal clubのblog。Points of InterestとPoints of Confusionが箇条書きにされているので、元論文自分で読んだ後にblog読んで人との解釈の差異を知る… https://t.co/HdO5AftF7a"

https://www.ncbi.nlm.nih.gov/pubmed/30197908
Genes Dis. 2017 Sep;4(3):138-148. doi: 10.1016/j.gendis.2017.06.001. Epub 2017 Jun 23.
Hypothesis Testing and Statistical Analysis of Microbiome.
Xia Y1,2, Sun J2.

2017年11月23日
http://www.natureasia.com/ja-jp/nature/551/7681/nature24460/
バイオインフォマティクス：定量的マイクロバイオームプロファイリングで明らかになった腸内細菌群集の変動と微生物量の関連

3:09 PM - 7 Nov 2017
beneficial microbes 有益な微生物 https://twitter.com/phylogenomics/status/927991509017866240


### 2011

https://wg.biosciencedbc.jp/doku.php/ゲノム・メタゲノム情報を基盤とした微生物dbの統合
ゲノム・メタゲノム情報を基盤とした微生物dbの統合.txt · 最終更新: 2011/12/27 09:54 +0900 (外部編集)


----------


----------
### ASaiM
https://www.biorxiv.org/content/early/2017/09/04/183970
ASaiM: a Galaxy-based framework to analyze raw shotgun data from microbiota | bioRxiv

Published on Jul 9, 2015
https://www.slideshare.net/bebatut/asaim-an-environment
JOBIM 2015 - ASaiM: an environment to analyze intestinal microbiota - Demo with analysis of gut metatranscriptomic sequences

https://twitter.com/galaxyproject/status/794453380202725376
Galaxy Project on Twitter: "Computational workflow for fine-grained analysis of metagenomic samples, Pérez-Wohlfeil et al. https://t.co/MAJKM97Pxb #usegalaxy @InfoUMA https://t.co/FAtN47hRES"


----------
## HGT

メタゲノムにおける遺伝子水平伝播イベント同定手法に関する総説
review
https://www.ncbi.nlm.nih.gov/pubmed/31504488
Genome Biol Evol. 2019 Oct 1;11(10):2750-2766. doi: 10.1093/gbe/evz184.
Current and Promising Approaches to Identify Horizontal Gene Transfer Events in Metagenomes.
Douglas GM1, Langille MGI1.


### DaisyGPS
https://www.ncbi.nlm.nih.gov/pubmed/31335917
PLoS Comput Biol. 2019 Jul 23;15(7):e1007208. doi: 10.1371/journal.pcbi.1007208. eCollection 2019 Jul.
Where did you come from, where did you go: Refining metagenomic analysis tools for horizontal gene transfer characterisation.
Seiler E1,2, Trappe K1, Renard BY1.

### MetaCHIP

https://www.ncbi.nlm.nih.gov/pubmed/30832740
Microbiome. 2019 Mar 4;7(1):36. doi: 10.1186/s40168-019-0649-y.
MetaCHIP: community-level horizontal gene transfer identification through the combination of best-match and phylogenetic approaches.
Song W1,2, Wemheuer B1,3, Zhang S1,2, Steensen K1,4, Thomas T5,6.

http://kazumaxneo.hatenablog.com/entry/2019/03/12/224600
メタゲノムbinsからHGTを検出する MetaCHIP - macでインフォマティクス

----------
## MGnify

https://www.ebi.ac.uk/metagenomics/
MGnify

https://www.ebi.ac.uk/metagenomics/sequence-search/search/phmmer
phmmer search | EBI metagenomics


https://www.ncbi.nlm.nih.gov/pubmed/31696235
Nucleic Acids Res. 2019 Nov 7. pii: gkz1035. doi: 10.1093/nar/gkz1035. [Epub ahead of print]
MGnify: the microbiome analysis resource in 2020.
Mitchell AL1, Almeida A1,2, Beracochea M1, Boland M1, Burgin J1, Cochrane G1, Crusoe MR3, Kale V1, Potter SC1, Richardson LJ1, Sakharova E1, Scheremetjew M1, Korobeynikov A4, Shlemov A4, Kunyavskaya O4, Lapidus A4, Finn RD1.
https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkz1035/5614179

https://integbio.jp/dbcatalog/record/nbdc01916
EBI Metagenomics は 対象範囲変更にあわせて名称をMgnifyに変更しました。こちらはすべてのメタゲノミクス研究者を支援することを目的とした、自由に利用可能なリソースです。メタゲノムデータを自動的に解析･保存するパイプラインとして機能します。系統発生の多様性の他、サンプルの機能的および代謝的ポテンシャルについての知見を提供することを目的としています。リポジトリ内のすべての公開データは、自由に参照することができます。





----------

### Metagenomic Assembly

https://omictools.com/metagenomic-assembly-category
Assembly software tools | Metagenomic sequencing analysis - OMICtools

https://www.ncbi.nlm.nih.gov/pubmed/28693474
BMC Genomics. 2017 Jul 10;18(1):521. 
Assembling metagenomes, one community at a time.

https://twitter.com/StevenJRobbins/status/849484107797204997
Three very recent papers comparing metagenome assembly tools:

https://www.ncbi.nlm.nih.gov/pubmed/28099457
PLoS One. 2017 Jan 18;12(1):e0169662.
Comparing and Evaluating Metagenome Assembly Tools from a Microbiologist's Perspective - Not Only Size Matters!

https://www.ncbi.nlm.nih.gov/pubmed/27698619
Yale J Biol Med. 2016 Sep 30;89(3):353-362. eCollection 2016.
Metagenomic Assembly: Overview, Challenges and Applications.
Ghurye JS1, Cepeda-Espinoza V1, Pop M1.

[MetAMOS](https://github.com/treangen/MetAMOS)
https://www.ncbi.nlm.nih.gov/pubmed/23320958
Genome Biol. 2013 Jan 15;14(1):R2. doi: 10.1186/gb-2013-14-1-r2.
MetAMOS: a modular and open source metagenomic assembly and analysis pipeline.

[MOCAT](http://www.bork.embl.de/mocat/)
https://www.ncbi.nlm.nih.gov/pubmed/23082188
PLoS One. 2012;7(10):e47656.
MOCAT: a metagenomics assembly and gene prediction toolkit.

----------
## book

### 2018-11-19
よくわかるバイオインフォマティクス入門/藤博幸/講談社
https://www.kspub.co.jp/book/detail/5138212.html
http://bookclub.kodansha.co.jp/product?item=0000275926
９章　メタゲノム解析

### 2016-12-01
https://www.yodosha.co.jp/yodobook/book/9784758101974/
実験医学別冊：NGSアプリケーション 今すぐ始める！　メタゲノム解析　実験プロトコール〜ヒト常在細菌叢から環境メタゲノムまでサンプル調製と解析のコツ - 羊土社
第1章　メタゲノム解析の基本知識
2．メタゲノムデータの情報解析のオーバービュー【東　光一，森　宙史，黒川　顕】 
### 2016-09-12
http://www.kyoto-up.or.jp/book.php?id=2128
微生物生態学　ゲノム解析からエコシステムまで
Chapter 10　微生物とウィルスのゲノムおよびメタゲノム

----------



----------
## NA
not available
このツールは使用できなくなりました。

### cognizer
https://omictools.com/cognizer-tool
This tool is not available anymore.
https://www.ncbi.nlm.nih.gov/pubmed/26561344
PLoS One. 2015 Nov 11;10(11):e0142102. doi: 10.1371/journal.pone.0142102. eCollection 2015.
COGNIZER: A Framework for Functional Annotation of Metagenomic Datasets.
Bose T1, Haque MM1, Reddy C1, Mande SS1.
The COGNIZER framework includes a cross-mapping database that enables end-users to simultaneously derive/infer KEGG, Pfam, GO, and SEED subsystem information from the COG annotations.




----------
## CAMI
Critical Assessment of Metagenome Interpretation

https://twitter.com/CAMI_challenge

https://msystems.asm.org/content/3/4/e00103-18
Critical Assessment of Metagenome Interpretation Enters the Second Round | mSystems

Currently, CAMI is preparing for a second round of challenges, tentatively planned to open later this year. CAMI will provide data sets representing different environments and again offer assembly, taxonomic and genomic binning, as well as taxonomic profiling challenges (Fig. 1). Two multisample “toy” data sets representing microbial communities from different human body sites and from mouse gut are already provided to allow participants to prepare for the challenges (https://data.cami-challenge.org/participate).

https://www.ncbi.nlm.nih.gov/pubmed/28967888
Nat Methods. 2017 Nov;14(11):1063-1071. doi: 10.1038/nmeth.4458. Epub 2017 Oct 2.
Critical Assessment of Metagenome Interpretation-a benchmark of metagenomics software.

----------
## batch effect

1:15 AM · May 23, 2021
https://twitter.com/phylogenomics/status/1396137556345974788
Jonathan Eisen on X: "This is really a phenomenally useful paper that I think everyone interested in #microbiome studies should read: "Identifying biases and their potential solutions in human microbiome studies" by @JTNearing et al. https://t.co/dhWrS1sj1E https://t.co/Icn6HWhkrN" / X
https://pubmed.ncbi.nlm.nih.gov/34006335/
Review Microbiome
. 2021 May 18;9(1):113. doi: 10.1186/s40168-021-01059-0.
Identifying biases and their potential solutions in human microbiome studies
Jacob T Nearing 1, André M Comeau 2, Morgan G I Langille 3 4
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-021-01059-0
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8132403/

https://www.ncbi.nlm.nih.gov/pubmed/31776547
Brief Bioinform. 2019 Nov 28. pii: bbz105. doi: 10.1093/bib/bbz105. [Epub ahead of print]
Managing batch effects in microbiome data.
Wang Y1, LêCao KA1.

https://www.ncbi.nlm.nih.gov/pubmed/30388197
Bioinformatics. 2019 Jul 1;35(13):2348. doi: 10.1093/bioinformatics/bty874.
Batch effects correction for microbiome data with Dirichlet-multinomial regression.
Dai Z, Wong SH, Yu J, Wei Y.

8x臨床研究の約2,000x糞便メタゲノムのメタアナリシスにより、複数の疾患／特定の病気に関連するヒト腸内マイクロバイオームの機能(KEGG annotated gene families)を同定。バッチ効果(batch effects)に言及
https://www.ncbi.nlm.nih.gov/pubmed/31120034
mSystems. 2019 May 14;4(4). pii: e00332-18. doi: 10.1128/mSystems.00332-18.
A Metagenomic Meta-analysis Reveals Functional Signatures of Health and Disease in the Human Gut Microbiome.
Armour CR1,2, Nayfach S3,4, Pollard KS4,5,6, Sharpton TJ7,8.
https://msystems.asm.org/content/4/4/e00332-18
"certain study effects (i.e., batch effects) are unlikely to be the source of variance between samples."

----------
## meta-analysis
https://ja.wikipedia.org/wiki/メタアナリシス

https://github.com/haruosuz/statistics#meta-analysis

https://twitter.com/search?f=tweets&q=microbiome%20meta-analysis

----------
### metamicrobiomeR

https://github.com/haruosuz/r4bioinfo/blob/master/R_microb/README.md#metamicrobiomer

----------

https://twitter.com/EricTopol/status/1112741724302893056
Eric Topol on Twitter: "It's not enough to characterize the gut #microbiome by bacterial content. How #metagenomics tracks with colon #cancer, specific signatures https://t.co/yIH1TeYeVg https://t.co/jqRIcffhGZ @NatureMedicine… https://t.co/VfDiUXjqvO"
11:41 AM - 1 Apr 2019

https://www.nature.com/articles/s41591-019-0406-6
Meta-analysis of fecal metagenomes reveals global microbial signatures that are specific for colorectal cancer | Nature Medicine
Here, a meta-analysis of eight geographically and technically diverse fecal shotgun metagenomic studies of colorectal cancer (CRC, n = 768), which was controlled for several confounders, identified a core set of 29 species significantly enriched in CRC metagenomes (false discovery rate (FDR) < 1 × 10−5). 

https://www.nature.com/articles/s41591-019-0405-7
Metagenomic analysis of colorectal cancer datasets identifies cross-cohort microbial diagnostic signatures and a link with choline degradation | Nature Medicine
We performed a meta-analysis of five publicly available datasets and two new cohorts and validated the findings on two additional cohorts, considering in total 969 fecal metagenomes. 

### Qiita
### 2018-10

10:30 PM · Oct 4, 2018
https://twitter.com/strnr/status/1047841444214558720
Stephen Turner on Twitter: "Qiita (pronounced chee-tah): rapid, web-enabled microbiome meta-analysis Paper: https://t.co/aXTv0cTCND Web: https://t.co/XfwpO4bP0I Docs: https://t.co/CKEEffUSCW Source: https://t.co/HWOT2qYHeZ https://t.co/d13hW5GJ3n" / Twitter

6:44 AM · Oct 2, 2018
https://twitter.com/gibbological/status/1046878477981343744
Sean Gibbons 🦠💩 @gibbological@mstdn.science on Twitter: "Qiita: rapid, web-enabled microbiome meta-analysis https://t.co/4Osl11rR8X from @KnightLabNews @gregcaporaso and @Pdorrestein1 labs. Useful tool for all us 'data parasites' :)" / Twitter
https://twitter.com/inschool4life/status/1047107731327467521
Did they comment on batch effects?

https://pubmed.ncbi.nlm.nih.gov/30275573/
Meta-Analysis Nat Methods
. 2018 Oct;15(10):796-798. doi: 10.1038/s41592-018-0141-9. Epub 2018 Oct 1.
Qiita: rapid, web-enabled microbiome meta-analysis
Antonio Gonzalez 1, Jose A Navas-Molina 1 2 3, Tomasz Kosciolek 1, Daniel McDonald 1, Yoshiki Vázquez-Baeza 1, Gail Ackermann 1, Jeff DeReus 1, Stefan Janssen 1, Austin D Swafford 4, Stephanie B Orchanian 4, Jon G Sanders 1, Joshua Shorenstein 1 5, Hannes Holste 1 2, Semar Petrus 6, Adam Robbins-Pianka 7, Colin J Brislawn 8, Mingxun Wang 9, Jai Ram Rideout 10, Evan Bolyen 10, Matthew Dillon 10, J Gregory Caporaso 10 11, Pieter C Dorrestein 1 4 9, Rob Knight 12 13 14
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6235622/
Despite these challenges, meta-analyses of microbiomes have a rich history of success, identifying the major global drivers of diversity in microbial communities4, characterizing the evolution of the vertebrate gut microbiome5, and surveying specialized fields such as the built environment6. Meta-analyses also enable scientists to identify important biases such as DNA extraction, primers, or analytical pipelines7,8, which need to be controlled to generate biological discoveries.

### almlab
### 2018-04-23

https://be.mit.edu/directory/eric-alm
Eric Alm
http://almlab.mit.edu/

2:55 AM · Apr 24, 2018
https://twitter.com/gibbological/status/988476547614105601
Sean Gibbons 🦠💩 @gibbological@mstdn.science on Twitter: "Befuddled by batch effects? Check out our simple, non-parametric solution for 16S case-control studies in @PLOSCompBiol https://t.co/grMDm7SIQl -- method available as a @qiime2 plugin thanks to @cduvallet" / Twitter

https://pubmed.ncbi.nlm.nih.gov/29684016/
Comparative Study PLoS Comput Biol
. 2018 Apr 23;14(4):e1006102. doi: 10.1371/journal.pcbi.1006102. eCollection 2018 Apr.
Correcting for batch effects in case-control microbiome studies
Sean M Gibbons 1 2 3, Claire Duvallet 1 2, Eric J Alm 1 2 3

April 17, 2018
https://cduvallet.github.io/posts/2018/04/microbiome-data
An empirical analysis of microbiome data availability - Claire Duvallet

https://www.ncbi.nlm.nih.gov/pubmed/29209090
Nat Commun. 2017 Dec 5;8(1):1784. doi: 10.1038/s41467-017-01973-8.
Meta-analysis of gut microbiome studies identifies disease-specific and shared responses.
Duvallet C1,2, Gibbons SM1,2,3, Gurry T1,2,3, Irizarry RA4,5, Alm EJ6,7,8.
We perform a cross-disease meta-analysis of these studies using standardized methods. 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5716994/
Code availability
The code to reproduce all of the analyses in this paper is available at https://github.com/cduvallet/microbiomeHD. 

3:05 AM · Dec 7, 2017
https://twitter.com/Kazu_Kasahara/status/938469390739234816
Kazuyuki Kasahara on Twitter: "流行しているマイクロバイオーム研究に警鐘を鳴らす論文。28報の研究、10疾患のメタ解析から、病気で認める"dysbiosis"の多くは疾患特異的ではなく、バイオマーカーになり難い。 https://t.co/AVJHhcCCcI" / Twitter

5:45 AM · Dec 6, 2017
https://twitter.com/cduvallet/status/938147253512015873
Claire Duvallet on Twitter: "The meta-analysis is out in @NatureComms! We found that diseases are characterized by consistent types of microbial community shifts, and that lots of bacteria respond non-specifically to multiple diseases. @gibbological @ThomasGurry @ejalm @rafalab https://t.co/XJxmxApgXv" / Twitter

### 2018-06
https://twitter.com/ayaKT/status/1005378142146457600
ayaKT on Twitter: "~19000人規模のmicrobiome-GWAS に着手しました論文。どんな解析結果が出てくるのか楽しみ。 いろんな16Sシーケンス手法を比較可能にする考えかたも、勉強になる。fmfm https://t.co/hNMXyZHzWj"
5:16 AM - 9 Jun 2018

https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-018-0479-3
Meta-analysis of human genome-microbiome association studies: the MiBioGen consortium initiative | Microbiome
We are now in the process of benchmarking the association tests and performing meta-analyses of genome-wide associations. All pipeline and summary statistics results will be shared using public data repositories.

### 2017-12-22
https://www.ncbi.nlm.nih.gov/pubmed/29273717
Nat Commun. 2017 Dec 22;8(1):2260. doi: 10.1038/s41467-017-02209-5.
Strain profiling and epidemiology of bacterial species from metagenomic sequencing.
Albanese D1, Donati C2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5741664/
- Here we present StrainEst, a novel, reference-based method that uses the single-nucleotide variants (SNV) profiles of the available genomes of selected species to determine the number and identity of coexisting strains and their relative abundances in mixed metagenomic samples.
- meta-analyses

### 2017-11-20
https://twitter.com/NatureMicrobiol/status/932704694912389120
Nature Microbiology on Twitter: ".@drkellysierra & co: Integration and meta-analysis of global #soil datasets uncover patterns of #microbial structure,… https://t.co/QB51kFBtK5"
3:18 PM - 20 Nov 2017

https://pubmed.ncbi.nlm.nih.gov/29158606/
Nat Microbiol
. 2018 Feb;3(2):189-196. doi: 10.1038/s41564-017-0062-x. Epub 2017 Nov 20.
Detecting Macroecological Patterns in Bacterial Communities Across Independent Studies of Global Soils
- Whereas previous meta-analysis efforts have focused on bacterial diversity measures or abundances of major taxa, we show that disparate amplicon sequence data can be combined at the taxonomy-based level to assess bacterial community structure.

### 2016
https://www.ncbi.nlm.nih.gov/pubmed/27400279
PLoS Comput Biol. 2016 Jul 11;12(7):e1004977. doi: 10.1371/journal.pcbi.1004977. eCollection 2016 Jul.
Machine Learning Meta-analysis of Large Metagenomic Datasets: Tools and Biological Insights.
Pasolli E1, Truong DT1, Malik F2, Waldron L2, Segata N1.
http://segatalab.cibio.unitn.it/tools/metaml
MetAML - Metagenomic prediction Analysis based on Machine Learning
機械学習

### 2015
https://www.ncbi.nlm.nih.gov/pubmed/26459172
Microbiome. 2015 Oct 13;3:49. doi: 10.1186/s40168-015-0108-3.
Microbiota of the indoor environment: a meta-analysis.
Adams RI1, Bateman AC2, Bik HM3,4, Meadow JF5.
室内環境の微生物群集：メタアナリシス

----------
## mothur-qiime
https://mothur.org

https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
メタ16S解析利点
・マシンパワーは少なくて済み、解析ツールも普及(QIIME・mothur等)

https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_article/-char/ja/
総　　説 ＜特集：腸内細菌叢Microbiotaの分子生物学的解析法の成果と未来＞
進化する次世代シーケンサーによる腸内細菌叢の解析
東 佳那子, 中山 二郎
2015 年 29 巻 3 号 p. 135-144
https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_pdf
データセットは,16S rRNA 配列から菌叢データを 得るためのオープンソースソフトウェアを開発してい る Mothur プロジェクト(4)が,Silva の 16S rRNA の全長配列データベースから 14,956 本を網羅的に抽出 し作成したデータセット silva.bacteria.fasta を用いた(http://www.mothur.org/wiki/Silva_reference_files).

ここで は,Mothur 同様,菌叢解析のオープンソースソフトウェ アである QIIME(Quantitative Insights into Microbial Ecology, http://qiime.org/)(5) の assign_taxonomy.py のプログラムの uclust のアルゴリズムを用いた.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3775626/
PeerJ. 2013; 1: e157.
Abundance-weighted phylogenetic diversity measures distinguish microbial community states and are robust to sampling depth

In microbial ecology studies, the most commonly used ways of investigating alpha (within-sample) diversity are either to apply non-phylogenetic measures such as Simpson’s index to Operational Taxonomic Unit (OTU) groupings, or to use classical phylogenetic diversity (PD), which is not abundance-weighted. 

As of the publication of this paper, no abundance-weighted phylogenetic alpha diversity measures are implemented in either mothur (Schloss et al., 2009) or QIIME (Caporaso et al., 2010), two of the most popular tools for analysis of microbial ecology data. 


----------
## Greengenes

http://greengenes.secondgenome.com
The Greengenes Database

http://greengenes.secondgenome.com/downloads
Download Area

----------
## RDP

https://www.ncbi.nlm.nih.gov/pubmed/24288368
Nucleic Acids Res. 2014 Jan;42(Database issue):D633-42. doi: 10.1093/nar/gkt1244. Epub 2013 Nov 27.
Ribosomal Database Project: data and tools for high throughput rRNA analysis.
Cole JR1, Wang Q, Fish JA, Chai B, McGarrell DM, Sun Y, Brown CT, Porras-Alfaro A, Kuske CR, Tiedje JM.

http://rdp.cme.msu.edu
RDP Release 11 -- Sequence Analysis Tools

http://rdp.cme.msu.edu/misc/resources.jsp
RDP Resource Download Area

----------
## 16S

https://www.biorxiv.org/content/early/2018/10/13/441576
Nomenclature Errors in Public 16S rRNA Gene Reference Databases



https://www.ncbi.nlm.nih.gov/pubmed/29688343
FEMS Microbiol Lett. 2018 May 1;365(10). doi: 10.1093/femsle/fny104.
A town on fire! Integrating 16S rRNA gene amplicon analyses into an undergraduate microbiology lecture class.
Tobin TC1, Shade A2.


https://pubmed.ncbi.nlm.nih.gov/29688343/
FEMS Microbiol Lett
. 2018 May 1;365(10):fny104. doi: 10.1093/femsle/fny104.
A town on fire! Integrating 16S rRNA gene amplicon analyses into an undergraduate microbiology lecture class
Tammy C Tobin 1, Ashley Shade 2
https://academic.oup.com/femsle/article/365/10/fny104/4980908?login=false
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5954299/
In this module, microbiology students used Quantitative Insights into Microbial Ecology (QIIME) to perform taxonomic, phylogenetic and statistical analyses on bacterial communities from three hot mine fire-impacted surface soils using 16S rRNA gene amplicon sequences. 



https://twitter.com/BioMickWatson



https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery

mothurではRDP、SILVA、greengenesを使用することができる

https://www.ncbi.nlm.nih.gov/pubmed/28705636
J Biotechnol. 2017 Nov 10;261:2-9. doi: 10.1016/j.jbiotec.2017.07.010. Epub 2017 Jul 10.
A review of bioinformatics platforms for comparative genomics. Recent developments of the EDGAR 2.0 platform and its utility for taxonomic and phylogenetic studies.
Yu J1, Blom J2, Glaeser SP3, Jaenicke S4, Juhre T4, Rupp O4, Schwengers O4, Spänig S4, Goesmann A4.
https://www.sciencedirect.com/science/article/pii/S0168165617315225
But, because it is well known that the phylogenetic resolution of the primary phylogenetic marker, the 16S rRNA gene, is limited at the lower taxonomic levels, the integration of a genome sequence based phylogeny into the polyphasic approach of the prokaryotic taxonomy and systematics is the clear consequence in the genome area (Chun and Rainey, 2014, Ramasamy et al., 2014, Oren and Garrity, 2014, Vandamme and Peeters, 2014, Sangal et al., 2016).

https://www.ncbi.nlm.nih.gov/pubmed/28662636
BMC Genomics. 2017 Jun 29;18(1):499. doi: 10.1186/s12864-017-3888-y.
Relating genomic characteristics to environmental preferences and ubiquity in different microbial taxa.
Cobo-Simón M1, Tamames J2.

https://www.researchgate.net/post/Is_Greengenes_or_SILVA_better_for_bacterial_microbiome_studies
Is Greengenes or SILVA better for bacterial microbiome studies?

https://www.ncbi.nlm.nih.gov/pubmed/28361695
BMC Genomics. 2017 Mar 14;18(Suppl 2):114. doi: 10.1186/s12864-017-3501-4.
SILVA, RDP, Greengenes, NCBI and OTT - how do these taxonomies compare?
Balvočiūtė M1, Huson DH2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5374703/
For the comparisons we used a taxonomy associated with the Greengenes database as released on May 2013. Although Greengenes is still included in some metagenomic analyses packages, for example QIIME [22], it has not been updated for the last three years.

Mar 2017
https://forum.qiime2.org/t/classification-using-greengenes-v-silva/409
Classification using GreenGenes v. SILVA - User support - QIIME 2 Forum

https://www.ncbi.nlm.nih.gov/pubmed/27166378
Nucleic Acids Res. 2016 Jun 20;44(11):5022-33. doi: 10.1093/nar/gkw396. Epub 2016 May 10.
Phylogeny-aware identification and correction of taxonomically mislabeled sequences.
Kozlov AM1, Zhang J2, Yilmaz P3, Glöckner FO4, Stamatakis A5.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4914121/
First, we evaluate taxonomic annotations of type strains only, using the same sequence set and alignment (LTP v123) for all four databases (data sets GG13_T, LTP123_T, RDP11_T and SLV123_T in Table ​Table1).1). 

https://mothur.org/blog/2015/No-greengenes-hasnt-improved/
No, greengenes' reference alignment hasn't improved

- SILVA (good for alignment and classification)
- greengenes (good for alignment and classification)
- RDP (good for classification)

https://www.ncbi.nlm.nih.gov/pubmed/27603265
Genome. 2016 Oct;59(10):783-791. Epub 2016 May 11.
bcgTree: automatized phylogenetic tree building from bacterial core genomes.
Ankenbrand MJ1,1, Keller A1,1.
The need for multi-gene analyses in scientific fields such as phylogenetics and DNA barcoding has increased in recent years. In particular, these approaches are increasingly important for differentiating bacterial species, where reliance on the standard 16S rDNA marker can result in poor resolution. 

https://www.ncbi.nlm.nih.gov/pubmed/23460914
PLoS One. 2013;8(2):e57923. doi: 10.1371/journal.pone.0057923. Epub 2013 Feb 27.
The variability of the 16S rRNA gene in bacterial genomes and its consequences for bacterial community analyses.
Větrovský T1, Baldrian P.


2017/08/30
https://www.aist.go.jp/aist_j/press_release/pr2017/pr20170830/pr20170830.html
産総研：進化系統分類の指標となる16S rRNA遺伝子の進化的な中立性を実験的に証明

https://www.nite.go.jp/nbrc/safety/risk_assessment.html
微生物利用におけるリスク評価に関する技術情報の提供 | バイオテクノロジー | 製品評価技術基盤機構
DDHにおける菌種判定の閾値である類似度70%は、ANIにおいて95-96%に相当すると報告されています。このことから、近年では、DDHの代替としてANIに基づく新種の提案が行われてきています(Baek et al. 2015, IJSEM 65: 504; Shahraki et al. 2015, IJSEM 65: 504)。
OTUとは、ある一定以上の類似性（一般的には96-97%）を持つ配列同士を一つの菌種のように扱うための操作上の分類単位です。

バイオレメディエーションにおける生態系影響評価手法	Illumina社MiSeqシーケンサーを用いた、環境中の微生物生態系解析の実験手法およびパイプラインツール「QIIME」を用いたデータ解析手法の手順書です。 2016年3月25日 https://www.nite.go.jp/data/000081956.pdf

https://seikagaku.jbsoc.or.jp/10.14952/SEIKAGAKU.2015.870475/data/index.html
Journal of Japanese Biochemical Society 87(4): 475-477 (2015)
16SリボソームRNAの水平伝播実験からみえてくるリボソームの可塑性
佃 美雪1,2，宮崎 健太郎1,3

https://www.jstage.jst.go.jp/article/kagakutoseibutsu/52/2/52_70/_pdf
化学と生物 Vol. 52, No. 2, 2014
16S rRNA遺伝子の「水平伝播」
異種16S rRNAによる遺伝的相補

2014
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3903645/
MetaMetaDB: A Database and Analytic System for Investigating Microbial Habitability

Therefore, MetaMetaDB chooses the hits exhibiting above 97%, 95%, 90%, 85%, and 80% identity from the search result list, which correspond approximately to the taxonomic levels of species, genus, family, order, and class [1], respectively, 

02/02/13
http://www.jarmam.gr.jp/situmon/16sr_rna.html
16s rRNA の相同性と同定精度の関係は???
一般的には, 97%以上の相同性があれば類縁関係があり、99%以上であれば同種である可能性が高いとしています。
極端な例では, 100%の相同性が認められても, 属レベルで異なる例さえ示されているのです。

2012 年
https://www.jstage.jst.go.jp/article/jslab/23/1/23_24/_pdf
総説
16S rRNA 遺伝子の大量シークェンシングによる 菌叢解析の現状と問題点
是則 有希, Jiahui Jiang, 中山 二郎
属レベルまでの菌叢プロファイルであ れば、Ribosomal Database Project I(I 以下、RDP II)のウェ ブサイトにある RDP classifier を用いることで容易に菌叢 プロファイルに変換することができる。
一方、種レベルでの菌叢データを得ることは非常に困難 である。実際に、理論上 16S rRNA 遺伝子の部分配列か ら種を特定することは不可能であり、

http://www.aist.go.jp/aist_j/press_release/pr2012/pr20121030/pr20121030.html
産総研：生物種を越えた16S rRNA遺伝子の機能相補性を確認

2011
https://www.sbj.or.jp/wp-content/uploads/file/sbj/8912/8912_yomoyama_2.pdf
生物工学基礎講座 バイオよもやま話 何から始めよう 微生物の同定 細菌・アーキア編
浜田 盛之,鈴木 健一朗
特に 16S rRNA 遺伝子配列の相同値が 97% に満たない場合 などは新属になる可能性もあるため,系統樹を作成して 既知の属のクラスターに含まれるのかどうかを慎重に確 認したほうがよい.

https://www.mitsui-norin.co.jp/mmid/knowledge/yokota/index3.html
MMID｜微生物を知ろう｜微生物分類同定講座
16S ｒRNA遺伝子塩基配列の相同性が98％以上の場合、必ずしも同種であるとは限らず、属によっては99％以上であっても別種の場合があります。

https://ja.wikipedia.org/wiki/16S_rRNA系統解析

http://www.jarmam.gr.jp/situmon3/16sr-rna.html
16S rRNAでの微生物同定

----------
## amplicon-shotgun

targeted amplicon sequencing (16S, 18S, ITS) vs. shotgun sequencing (metagenomics)

https://pubmed.ncbi.nlm.nih.gov/28337071/
Review J Biomol Tech
. 2017 Apr;28(1):8-18. doi: 10.7171/jbt.17-2801-006. Epub 2017 Mar 17.
International Standards for Genomes, Transcriptomes, and Metagenomes
Christopher E Mason 1, Ebrahim Afshinnekoo 2, Scott Tighe 3, Shixiu Wu 4, Shawn Levy 5
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5359768/

TABLE 3
Comparison of metagenomic assay capabilities and limitations

Data type	16S	18S	ITS	Shotgun


https://www.ncbi.nlm.nih.gov/pubmed/28761145
Sci Rep. 2017 Jul 31;7(1):6589. doi: 10.1038/s41598-017-06665-3.
Large-scale differences in microbial biodiversity discovery between 16S amplicon and shotgun sequencing.
Tessler M1,2, Neumann JS3, Afshinnekoo E4,5,6, Pineda M4,5, Hersch R7, Velho LFM8,9, Segovia BT8, Lansac-Toha FA8, Lemke M10, DeSalle R7, Mason CE11,12,13, Brugler MR14,15.

https://www.ncbi.nlm.nih.gov/pubmed/21121044
Pac Symp Biocomput. 2011:165-76.
Comparing bacterial communities inferred from 16S rRNA gene sequencing and shotgun metagenomics.
Shah N1, Tang H, Doak TG, Ye Y.

ボストン交通システムのマイクロバイオーム
https://github.com/haruosuz/metasub/tree/master/references#boston-subway-microbiome
https://microbe.net/2016/06/30/microbes-on-the-boston-t/
The 16S and shotgun results were mostly complementary. Both showed high abundances of Staphylococcus, Corynebacterium, and Streptococcus. The main difference was that the V4 primers could not detect Propionibacterium acnes: these primers are not ideal for skin microbial communities – which is what the subway most resembled (based on Microbial SourceTracker and correlations in abundance with skin taxa). 

https://twitter.com/Tyu_Shi/status/982940944495403009
Tyu_Shi on Twitter: "したがって、16S rRNA遺伝子のみの解析をメタゲノム解析と呼ぶのは、マイクロバイオーム業界で常識ではありません。概念としては誤用だと個人的には考えておりますし、古くからメタゲノム解析に関わってきたUC DavisのJ. Eisen等の研究者も、たびたびその誤用を批判しております。… https://t.co/SpajjZUOIW"
7:19 AM - 8 Apr 2018

https://twitter.com/Tyu_Shi/status/248334905816276993
Tyu_Shi on Twitter: "Many INSDC entry of 16S rRNA amplicon study use terms "metagenome". troublesome! #GSC14"
4:17 AM - 19 Sep 2012

https://twitter.com/phylogenomics/status/966887584608567297
Jonathan Eisen on Twitter: "Not sure where you are going with this but I don't think there can be any debate here - the term "metagenome" and its variants like "metagenomics" clearly refer to genome-scale studies and thus there is simply no way a 16S study should be called "metagenomics"… https://t.co/ScdBSzIzlG"
11:08 PM - 22 Feb 2018

https://phylogenomics.blogspot.com/2012/08/referring-to-16s-surveys-as.html
The Tree of Life: Referring to 16S surveys as "metagenomics" is misleading and annoying #badomics #OmicMimicry


----------
## people


### duvallet
Claire Duvallet

MITのEric Almラボ。微生物群集データのメタアナリシス。バッチ効果。

https://twitter.com/cduvallet

7:42 PM - 23 Apr 2018
https://twitter.com/cduvallet/status/988563768765505536
Claire Duvallet on Twitter: "Meaning to make a meta-analysis but blocked or bothered by batch effects? Use your controls as nulls: normalize features in cases relative to their distribution in control samples. Learn more at @PLOSCompBiol https://t.co/PHyVZoZlej Congrats @gibbological!! @ejalm"

1:55 PM - 23 Apr 2018
https://twitter.com/gibbological/status/988476547614105601
Sean Gibbons on Twitter: "Befuddled by batch effects? Check out our simple, non-parametric solution for 16S case-control studies in @PLOSCompBiol https://t.co/grMDm7SIQl -- method available as a @qiime2 plugin thanks to @cduvallet"

April 17, 2018
https://cduvallet.github.io/posts/2018/04/microbiome-data
An empirical analysis of microbiome data availability - Claire Duvallet

19 January 2018
https://onlinelibrary.wiley.com/doi/full/10.1111/1751-7915.13047
Meta‐analysis generates and prioritizes hypotheses for translational microbiome research - Duvallet - 2018 - Microbial Biotechnology - Wiley Online Library
Claire Duvallet

https://pubmed.ncbi.nlm.nih.gov/29209090/
2017 Dec 5;8(1):1784. doi: 10.1038/s41467-017-01973-8.
Meta-analysis of Gut Microbiome Studies Identifies Disease-Specific and Shared Responses
Claire Duvallet 1 2, Sean M Gibbons 1 2 3, Thomas Gurry 1 2 3, Rafael A Irizarry 4 5, Eric J Alm 6 7 8


05 December 2017
https://www.nature.com/articles/s41467-017-01973-8
Meta-analysis of gut microbiome studies identifies disease-specific and shared responses | Nature Communications
Claire Duvallet, Sean M. Gibbons, Thomas Gurry, Rafael A. Irizarry & Eric J. Alm
https://www.nature.com/articles/s41467-017-01973-8
We perform a cross-disease meta-analysis of these studies using standardized methods. 

----------
### Mori

https://researchmap.jp/himori/


2020.12.12
https://doi.org/10.7875/togotv.2020.090
メタゲノム解析 (MicrobeDB.jp) @ AJACSオンライン3 | TogoTV

2019.12.16
https://doi.org/10.7875/ajacs.2019.033
メタゲノム解析ツール | TogoTV
講師
森 宙史
https://doi.org/10.7875/togotv.2019.203
メタゲノム解析ツール @ AJACS十勝2 | TogoTV


https://www.jsbi.org/iibmp2020/program/sponsor.html
9/2（水）14:45〜16:15	データサイエンティスト養成セッション：実践的オミックス解析
https://www.jsbi.org/iibmp2020/program/sponsor.html#sp6
森 宙史（国立遺伝学研究所）
「メタゲノム解析」
https://www.youtube.com/watch?v=7mhsOuGYgYM&list=PL_dbAF_dbOEpcBhGhyv9Wvl2XU9MnmFUD&index=5
メタゲノム解析（IIBMP2020） - YouTube
12:00 / 20:31
- 16S rRNA gene reference DB
  - SILVA
  - Greengenes
  - RDP

2019年9月25日
https://github.com/AJACS-training/AJACS79
統合データベース講習会：AJACS 十勝2
帯広畜産大学　情報処理センター1階　第1実習室 （北海道帯広市稲田町西2線11番地）
15:30-17:00　メタゲノム解析ツール ……森 宙史（国立遺伝学研究所）
http://doi.org/10.7875/ajacs.2019.033
メタゲノム解析ツール｜統合TV(togotv)
1:28:59

http://doi.org/10.7875/ajacs.2017.016
開催日時：2017-08-31
講習会名： 2017NGSハンズオン
講師： 森 宙史　（ 国立遺伝学研究所）
会場： 東京大学 農学部2号館 2階第1講義室

https://doi.org/10.7875/togotv.2017.119
2017-12-06 【NGSハンズオン2017】NGS解析(初〜中級) メタゲノム解析
本日の統合TVは、2017年8月28日(月) ～ 9月2日(金)に開催された、バイオインフォマティクス人材育成カリキュラム 平成29年度 NGSハンズオン講習会 から、国立遺伝学研究所 森 宙史 氏 による「NGS解析(初〜中級) メタゲノム解析」をお送りします。約5時間22分です。

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
2017年 NGSハンズオン講習会 8月31日
メタゲノム解析
森 宙史(HiroshiMori),Ph.D.

代表的なメタゲノムデータベース
MG-RAST
EBI-Metagenomics


https://www.slideshare.net/DDBJslide/ddbjing30-43012395
[DDBJing30] メタゲノム解析と微生物統合データベース
講師：森 宙史
2014年12月18日


### Rocha

https://www.ncbi.nlm.nih.gov/pubmed/20090831
PLoS Genet. 2010 Jan 15;6(1):e1000808. doi: 10.1371/journal.pgen.1000808.
The systemic imprint of growth and its uses in ecological (meta)genomics.
Vieira-Silva S1, Rocha EP.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797632/

----------
## Knight R

https://knightlab.ucsd.edu/wordpress/?page_id=25

7:25 AM · May 24, 2018
https://twitter.com/merenbey/status/999416078446071809
A. Murat Eren (Meren) on Twitter: "This is unfair to DADA2 😐 When someone as big as Rob Knight says "this is the best practice", it creates a nightmare for younger scientists to promote their tool. I think, from "Deblur" to "Deblur or DADA2" would've added much more than just 9 more characters to this chart. https://t.co/5q71yxh4Yt" / Twitter

### 2018-07

https://pubmed.ncbi.nlm.nih.gov/29795328/
Review Nat Rev Microbiol
. 2018 Jul;16(7):410-422. doi: 10.1038/s41579-018-0029-9.
Best practices for analysing microbiomes
Rob Knight 1 2 3, Alison Vrbanac 4, Bryn C Taylor 4, Alexander Aksenov 5, Chris Callewaert 6 7, Justine Debelius 6, Antonio Gonzalez 6, Tomasz Kosciolek 6, Laura-Isobel McCall 5, Daniel McDonald 6, Alexey V Melnik 5, James T Morton 6 8, Jose Navas 8, Robert A Quinn 5, Jon G Sanders 6, Austin D Swafford 9, Luke R Thompson 10 11, Anupriya Tripathi 12, Zhenjiang Z Xu 6, Jesse R Zaneveld 13, Qiyun Zhu 6, J Gregory Caporaso 14, Pieter C Dorrestein 9 5 6
https://www.nature.com/articles/s41579-018-0029-9
As rodents are coprophagic, cage mate faecal microbiomes become more homogeneous over time, so experiments must be replicated across multiple cages to control for cage effects19.

### 2018-06

https://pubmed.ncbi.nlm.nih.gov/29795540/
Review Nat Microbiol
. 2018 Jun;3(6):652-661. doi: 10.1038/s41564-018-0156-0. Epub 2018 May 24.
Methods for phylogenetic analysis of microbiome data
Alex D Washburne # 1, James T Morton # 2 3, Jon Sanders 3, Daniel McDonald 3, Qiyun Zhu 3, Angela M Oliverio 4 5, Rob Knight 2 3
https://www.nature.com/articles/s41564-018-0156-0
In this Review Article, we organize the field of phylogenetically structured data analysis by discussing the major classes of methods. We first emphasize a fundamental issue in the field: the imperfection of estimated phylogenies. We then define four classes: (1) comparative methods; (2) ancestral state reconstruction and descendant trait imputation; (3) phylogenetic variables; and (4) phylogeny-aware distances (Table 1); and provide Supplementary Online Tutorials with examples (https://knightlab-analyses.github.io/phylogenetic-tutorials/). 


----------
## Mason CE

https://www.ncbi.nlm.nih.gov/pubmed/29930288
Nat Rev Microbiol. 2018 Jun 21. doi: 10.1038/s41579-018-0047-7. [Epub ahead of print]
Surveying what's flushed away.
Iraola G1,2,3, Kumar N3.
https://www.nature.com/articles/s41579-018-0047-7

https://www.ncbi.nlm.nih.gov/pubmed/29890228
Drug Discov Today. 2018 Jun 8. pii: S1359-6446(17)30357-4. doi: 10.1016/j.drudis.2018.06.005. [Epub ahead of print]
Interrogating the microbiome: experimental and computational considerations in support of study reproducibility.
Poussin C1, Sierro N1, Boué S1, Battey J1, Scotti E1, Belcastro V1, Peitsch MC1, Ivanov NV1, Hoeng J2.
Review
Informatics

https://link.springer.com/protocol/10.1007/978-1-4939-7463-4_8
Comparative Metagenomics | SpringerLink
Andrew Maltez ThomasFelipe Prata LimaLivia Maria Silva MouraAline Maria da SilvaEmmanuel Dias-NetoJoão C. SetubalEmail author
Protocol
First Online: 26 December 2017

https://www.ncbi.nlm.nih.gov/pubmed/28978331
Microbiome. 2017 Oct 4;5(1):132. doi: 10.1186/s40168-017-0349-4.
Communicating the promise, risks, and ethics of large-scale, open space microbiome and metagenome research.
Shamarina D1, Stoyantcheva I1, Mason CE2,3,4, Bibby K5, Elhaik E6.



https://www.ncbi.nlm.nih.gov/pubmed/28349976
Nat Microbiol. 2017 Mar 28;2:16275. doi: 10.1038/nmicrobiol.2016.275.
Geomicrobiology of the built environment.
Gadd GM1.
http://www.nature.com/articles/nmicrobiol2016275

https://www.ncbi.nlm.nih.gov/pubmed/27941038
Br Med Bull. 2016 Dec;120(1):27-33. Epub 2016 Nov 23.
Globalizing and crowdsourcing biomedical research.
Afshinnekoo E1,2,3, Ahsanuddin S1,2,4, Mason CE5,2,6.




----------


https://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/publicaton_metagenome_for-human-health-j.pdf
ヒトの健康における細菌およびメタゲノムイルミナテクノロジーを使用した最新論文の概要
https://jp.illumina.com/science/publication-reviews.html
論文集 | 最近発表された研究の要点

山田拓司 著

https://www.jstage.jst.go.jp/article/jim/29/1/29_19/_article/-char/ja/
https://www.jstage.jst.go.jp/article/jim/29/1/29_19/_pdf
腸内細菌群集構造のメタゲノム解析 - J-Stage
腸内細菌学雑誌 29 : 19-22,2015

https://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/2014_webinar_mktg30_microbiology.pdf
[PDF]ヒト腸内細菌叢メタゲノム解析

https://www.jstage.jst.go.jp/article/kagakutoseibutsu/51/12/51_802/_pdf
ヒト腸内メタゲノム解析が 広げる医療展開 - J-Stage
化学と生物 Vol. 51, No. 12, 2013

----------
## metabolic inference
メタ16Sからメタゲノム機能推定
functional prediction

日本語のツイート
https://twitter.com/search?q=lang%3Aja%20(PICRUSt%20OR%20Tax4Fun%20OR%20Piphillin)&src=typed_query&f=live

https://doi.org/10.7875/togotv.2019.203
2019-12-16 メタゲノム解析ツール @ AJACS十勝2
1:10:50 / 1:28:59
アンプリコン解析データからの遺伝子機能組成推定

### PICRUSt

01 June 2020
https://www.nature.com/articles/s41587-020-0548-6
PICRUSt2 for prediction of metagenome functions | Nature Biotechnology

11:32 AM · Jun 5, 2020
https://twitter.com/maskot1977/status/1268732318077693952
微生物群集のマーカー遺伝子シークエンシングの限界の一つは、サンプリングされた群集の機能的構成に関する情報が得られないことである。
PICRUSt1は2013年に開発され、マーカー遺伝子シークエンシングプロファイルに基づいて細菌群集の機能的可能性を予測するために開発されましたが、この度、オリジナルの手法を改良したPICRUSt2（https://github.com/picrust/picrust2）を発表します。
具体的には、PICRUSt2は、遺伝子ファミリーと参照ゲノムの更新された大規模なデータベースを含み、任意のオペレーショナル・タクソノミック・ユニット（OTU）ピッキングまたはデノアイジング・アルゴリズムとの相互運用性を提供し、表現型予測を可能にします。
ベンチマークでは、PICRUSt2はPICRUStや他の競合する手法よりも全体的に精度が高いことが示されています。PICRUSt2では、カスタムの参照データベースを追加することも可能です。これらの改善点と、予測されたメタゲノムの使用に関する重要な注意点を強調しています。

https://twitter.com/NoahFierer/status/1179101529044766720
Noah Fierer on Twitter: "PiCrust2: when you want to predict metagenomes slightly better than random (sometimes) https://t.co/4FGgo4oAHN" / Twitter
3:31 AM · Oct 2, 2019

Posted June 15, 2019.
https://www.biorxiv.org/content/10.1101/672295v1
PICRUSt2: An improved and extensible approach for metagenome inference | bioRxiv
https://github.com/picrust/picrust2
Please note that PICRUSt2 is currently in beta.
https://github.com/picrust/picrust2/wiki
PICRUSt2 (Phylogenetic Investigation of Communities by Reconstruction of Unobserved States) is a software for predicting functional abundances based only on marker gene sequences.

https://en.wikipedia.org/wiki/PICRUSt

http://picrust.github.io/picrust/
Please note that PICRUSt2 is now available. PICRUSt2 is a re-written version of PICRUSt and is available here. We are no longer developing PICRUSt1 and we recommend users shift to PICRUSt2.

http://anonym.hatenablog.jp/entry/2018/10/25/172452
QIIME2でPICRUSt2が利用可能になったらしい
http://anonym.hatenablog.jp/entry/2018/09/10/183941
細菌叢解析におけるFunctional Inference
PICRUSt
PICRUSt2
Tax4Fun
Piphillin
SINAPS
http://anonym.hatenablog.jp/entry/2018/07/05/100753
PICRUSt2を使用してみる
http://anonym.hatenablog.jp/entry/2018/03/12/123658
DADA2からPICRUStへ

### Tax4Fun
http://tax4fun.gobics.de/
Tax4Fun: predicting functional profiles from metagenomic 16S rRNA data

09 Dec 2018
http://europepmc.org/article/PPR/PPR64283
Tax4Fun2: a R-based tool for the rapid prediction of habitat-specific functional profiles and functional redundancy based on 16S rRNA gene marker gene sequences - Abstract - Europe PMC
https://www.biorxiv.org/content/10.1101/490037v1
https://www.biorxiv.org/content/10.1101/490037v1.full.pdf
In recent years, several freely available tools such as PICRUSt10, Tax4Fun11, Piphillin12, Faprotax13 and paprica14 have been developed. 

https://www.ncbi.nlm.nih.gov/pubmed/25957349
Bioinformatics. 2015 Sep 1;31(17):2882-4. doi: 10.1093/bioinformatics/btv287. Epub 2015 May 7.
Tax4Fun: predicting functional profiles from metagenomic 16S rRNA data.
Aßhauer KP1, Wemheuer B2, Daniel R2, Meinicke P1.

### themetagenomics
https://github.com/EESI/themetagenomics
themetagenomics provides functions to explore topics generated from 16S rRNA sequencing information on both the abundance and functional levels. It also provides an R implementation of PICRUSt and wraps Tax4fun, giving users a choice for their functional prediction strategy.

Posted June 21, 2019.
https://www.biorxiv.org/content/10.1101/678110v1
Themetagenomics: Exploring Thematic Structure and Predicted Functionality of 16s rRNA Amplicon Data | bioRxiv
https://www.biorxiv.org/content/10.1101/678110v1.full.pdf
Standard methods that predict function from 16S rRNA survey data include PICRUSt, Tax4fun, Piphillin, and SINAPS [14–17]. 

https://github.com/EESI/themetagenomics/issues/10
Package 'themetagenomics' removed from CRAN · Issue #10 · EESI/themetagenomics
The R package on CRAN was removed apparently because of "check errors":
https://cran.r-project.org/web/packages/themetagenomics/index.html
```
Package ‘themetagenomics’ was removed from the CRAN repository.

Formerly available versions can be obtained from the archive.

Archived on 2019-12-21 as check problems were not corrected in time.
```

### paprica

Nov 10, 2019
https://github.com/bowmanjeffs/paprica
PAthway PRediction by phylogenetIC plAcement

August 18, 2015 by Jeff
https://www.polarmicrobes.org/introducing-paprica/
Introducing PAPRICA | The Bowman Lab

### Piphillin
http://piphillin.secondgenome.com/

https://www.ncbi.nlm.nih.gov/pubmed/31952477
BMC Genomics. 2020 Jan 17;21(1):56. doi: 10.1186/s12864-019-6427-1.
Piphillin predicts metagenomic composition and dynamics from DADA2-corrected 16S rDNA sequences.
Narayan NR1, Weinmaier T1, Laserna-Mendieta EJ2,3, Claesson MJ2,3, Shanahan F2,4, Dabbagh K1, Iwai S1, DeSantis TZ5.

https://www.ncbi.nlm.nih.gov/pubmed/27820856
PLoS One. 2016 Nov 7;11(11):e0166104. doi: 10.1371/journal.pone.0166104. eCollection 2016.
Piphillin: Improved Prediction of Metagenomic Content by Direct Inference from Human Microbiomes.
Iwai S1, Weinmaier T1, Schmidt BL2, Albertson DG2,3, Poloso NJ4, Dabbagh K1, DeSantis TZ1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5098786/
Table 2
Piphillin has less pre-requisites than PICRUSt and Tax4Fun.
https://journals.plos.org/plosone/article/figure?id=10.1371/journal.pone.0166104.t002

2017-03-13
https://pediatricsurgery.hatenadiary.jp/entry/2017/03/13/152234
16S rRNA遺伝子解析の限界と予測メタゲノム解析 - Piphillinの導入 - Note of Pediatric Surgery 
下記の図にPICRUStとTax4Funに必要な条件がまとめられています。
![](http://journals.plos.org/plosone/article/figure/image?size=large&download=&id=10.1371/journal.pone.0166104.t002)

2016-08-13
http://blog.goo.ne.jp/gooquruquru/e/72dd0c0494c54e0f2be827b54af33ba7
予測のためのツールが３つ（PICRUSt, Tax4Fun, paprica）、

### 


https://twitter.com/sai_kai_cs/status/1115428029235322880
腸内細菌の16Sとメタゲノム比較論文。ちゃんと読んでないけど、PICRUStはPathwayレベルで相関係数0.80くらいのようだ 似てる経路もあれば似てない経路もある様子
https://www.ncbi.nlm.nih.gov/pubmed/27148170
Front Microbiol. 2016 Apr 20;7:459. doi: 10.3389/fmicb.2016.00459. eCollection 2016.
Characterization of the Gut Microbiome Using 16S or Shotgun Metagenomics.
Jovel J1, Patterson J1, Wang W1, Hotte N1, O'Keefe S1, Mitchel T1, Perry T1, Kao D1, Mason AL1, Madsen KL1, Wong GK2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4837688/
The software PICRUSt (Langille et al., 2013) can be used to infer metabolic capacity of the microbiome contained in 16S libraries.

https://www.nature.com/articles/s41579-018-0029-9
Best practices for analysing microbiomes

Predictive functional profiling38,39,40,41 is a technique for linking marker gene data with available microbial genomes to make predictions about metagenomic content and thus the putative biological functions of a microbial community. This analysis generally requires a reference-based OTU table. Methods based on evolutionary models (for example, PICRUSt39) provide confidence intervals on these predictions of gene content, which will tend to be wider in regions of the tree distant from reference genome sequences and narrower where many reference genomes are available. 

https://www.ncbi.nlm.nih.gov/pubmed/26409790
BMC Res Notes. 2015 Sep 26;8:479. doi: 10.1186/s13104-015-1462-8.
PanFP: pangenome-based functional profiles for microbial communities.
Jun SR1,2, Robeson MS3,4, Hauser LJ5, Schadt CW6,7, Gorin AA8.

https://www.ncbi.nlm.nih.gov/pubmed/23149747
Nat Commun. 2012;3:1203. doi: 10.1038/ncomms2203.
Virtual metagenome reconstruction from 16S rRNA gene sequences.
Okuda S1, Tsuchiya Y, Kiriyama C, Itoh M, Morisaki H.


----------








