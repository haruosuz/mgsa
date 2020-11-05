# mgsa.nucleotide_composition
塩基組成、GC含量

## Table of Contents
- [unclassified](#unclassified)
- [updates](#updates)
[2020](#2020)
[2019](#2019)
- [aerobic](#aerobic) 酸素
- [mutation](#mutation) 変異

----------
## unclassified

- https://github.com/haruosuz/codon#neutral
- https://github.com/haruosuz/DS4GD/blob/master/2018/CaseStudy.md#genome-signature
- http://www.g-language.org/wiki/restgenomeanalysisenglish#nucleotide_composition_analysis
- http://www.g-language.org/wiki/restgenomeanalysisjapanese#塩基組成の解析
ゲノム領域毎のG+C含量の解析
ゲノムのG+C含量 (G+C)/(A+T+G+C) は、様々な因子（ゲノムサイズ、酸素要求性、窒素利用能、生育温度、自由生活性か否か等）と相関を示します (Hildebrand F et al., 2010)。ゲノム内のG+C含量の変動は、外来性遺伝子クラスター (genomic islands) の検出に利用されています (Karlin S., 2001)。

https://twitter.com/MicrobioSoc/status/994932808823943168
Microbiology Society on Twitter: "Correlation between bacterial G+C content, genome size and the G+C content of associated plasmids and bacteriophages #bacteriophages #MGen #OpenAccess. https://t.co/6qYXF8usXJ… https://t.co/0sd1ZrinCF"
9:30 AM - 11 May 2018

https://healthpolicyhealthecon.com/2016/09/08/regression-2/
回帰分析②：線形回帰が使えないときに用いる高度な回帰分析方法 – 医療政策学×医療経済学
最小二乗法（Ordinary Least Square; OLS, 線形回帰）
3．分散が一定ではない場合
Heteroscedasticity-robust

heteroskedasticity
分散不均一性

3．分散が一定ではない場合

「誤差項の分散が一定」の条件を満たさない場合です。誤差項の分散が一定であることを「ホモスケダスティシティ（Homoscedasticity or homoskedasticity）」と呼びます。一方で、これが達成できていない状況のことを「ヘテロスケダスティシティ（Heteroscedasticity or heteroskedasticity）」と表現します。例えば、結果変数を血圧、原因変数をBMIとします。一般的にBMIが高い方が血圧は高くなるのですが、その一方で、血圧が高くなればなるほどそのデータのばらつき自体も大きくなります。これがHeteroscedasticityであり、そのような場合においては普通のOLSを用いることはできません。Heteroscedasticity-robust SEやHuber-White SE（この二人が開発したためです）と呼ばれる特殊なSEがあり、それを用いることで対処可能です。

----------
## updates

### 2020

July 20, 2020.
https://www.biorxiv.org/content/10.1101/2020.07.19.211128v1
Bacterial genomic GC content drifts slowly downward due to a biased mutation rate | bioRxiv


https://mbio.asm.org/content/11/4/e01206-20
Selection for Reducing Energy Cost of Protein Production Drives the GC Content and Amino Acid Composition Bias in Gene Transfer Agents | mBio

### 2019

### Dietel_2019

https://twitter.com/Symbionticism/status/1123203760564637697
Seth Bordenstein on Twitter: "This is a game changer. Many intracellular microbes have a genome wide bias in A’s and T’s. The major assumption has been a mutational bias / drift impacts this outcome. Well, not so fast. Evidence below that selection can contribute or cause it.… https://t.co/yfDqN3b3Lj"
8:33 AM - 30 Apr 2019

https://twitter.com/KostChristian/status/1123158110925934592
Christian Kost on Twitter: "Very happy that our paper: Selective advantages favour high genomic AT-contents in intracellular elements is finally online @PLOSGenetics https://t.co/J40CRRK74N. This work represents a heroic effort by Anne-Kathrin Dietel and a wonderful colaboration with Martin Kaltenpoth.… https://t.co/RUB5kSZELS"
5:32 AM - 30 Apr 2019

https://www.ncbi.nlm.nih.gov/pubmed/31034469
PLoS Genet. 2019 Apr 29;15(4):e1007778. doi: 10.1371/journal.pgen.1007778. [Epub ahead of print]
Selective advantages favour high genomic AT-contents in intracellular elements.
Dietel AK1, Merker H1, Kaltenpoth M2, Kost C1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6519830/
Accordingly, introducing AT-rich and GC-rich plasmids into other bacterial species with different genomic GC-contents revealed that the costs of G+C-rich plasmids decreased with an increasing GC-content of their host’s genomic DNA. 

### 2019-01

https://www.ncbi.nlm.nih.gov/pubmed/30691394
BMC Genomics. 2019 Jan 28;20(1):92. doi: 10.1186/s12864-018-5389-z.
Comparative genomics of Bacteria commonly identified in the built environment.
Merino N, Zhang S, Tomita M, Suzuki H.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6350394/
- GC content has been shown to relate to both the phylogeny and ecological adaptations of a microbial species, as demonstrated by Reichenberger and co-workers [73]. GC content can range from 15 to 75% and can be influenced by environmental factors such as temperature [74], oxygen levels [75], and nucleotide availability [76]. 
- Fig. 2
Density plots comparing “Common BE genomes” against “Other genomes.” a Genome size, b GC Content (%), c GCSI, and d S value.
- The smaller genome size and lower GC content of M. leprae, an obligate pathogen, are a result of genome reduction which has been well documented [97].


### 2018

https://www.ncbi.nlm.nih.gov/pubmed/29633935
Microb Genom. 2018 Apr;4(4). doi: 10.1099/mgen.0.000168. Epub 2018 Apr 10.
Correlation between bacterial G+C content, genome size and the G+C content of associated plasmids and bacteriophages.
Almpanis A1,2, Swain M1, Gatherer D3, McEwan N1,4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5989581/

### 2017

https://www.ncbi.nlm.nih.gov/pubmed/29632552
Evol Appl. 2017 Nov 16;11(3):312-324. doi: 10.1111/eva.12555. eCollection 2018 Mar.
Focusing the diversity of Gardnerella vaginalis through the lens of ecotypes.
Cornejo OE1, Hickey RJ2,3,4, Suzuki H5, Forney LJ2,3.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5881158/
Members of the two genera were strikingly different in both genome size and GC content. Genomes of G. vaginalis (Table 1) ranged in size from 1.47 to 1.73 Mb (average 1.59 Mb) and varied in GC content from 41.0% to 43.4% (average 41.9%). In contrast, the genomes of Bifidobacterium species (Table S1) ranged from 1.94 to 2.42 Mb (average 2.27 Mb) with a GC content of 58.6%–62.6% (average 59.6%), which was consistent with many other Bifidobacterium spp. that have been previously studied (Bottacini et al., 2010; Lukjancenko, Ussery, & Wassenaar, 2011). 

https://www.ncbi.nlm.nih.gov/pubmed/28261263
Front Genet. 2017 Feb 15;8:16. doi: 10.3389/fgene.2017.00016. eCollection 2017.
Analytical Biases Associated with GC-Content in Molecular Evolution.
Romiguier J1, Roux C1.
KEYWORDS:
GC-content; biased gene conversion; codon usage bias; methodological biases; phylogeny; positive selection

### 2015

https://www.ncbi.nlm.nih.gov/pubmed/25814499
Proc Natl Acad Sci U S A. 2015 Aug 18;112(33):10177-84. doi: 10.1073/pnas.1422049112. Epub 2015 Mar 26.
Mitochondrial and plastid genome architecture: Reoccurring themes, but significant differences at the extremes.
Smith DR1, Keeling PJ2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4547224/
Nucleotide Composition.
There is a near-universal adenine (A) and thymine (T) bias in organelle genomes throughout the eukaryotic domain (41), the most extreme of which (∼90% AT) is in the mitochondria of yeasts and arthropods. Plastid genomes can also be very AT rich, reaching 87% in Plasmodium falciparum, but overall, they have less severe nucleotide biases than mtDNAs (41).

review
https://www.ncbi.nlm.nih.gov/pubmed/26029354
Comput Struct Biotechnol J. 2015 May 4;13:352-7. doi: 10.1016/j.csbj.2015.04.005. eCollection 2015.
Homology-independent metrics for comparative genomics.
Coutinho TJ1, Franco GR1, Lobo FP2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4446528/
3.1.1. GC Content
The simplest known HI metric used as genomic signature is the GC content of genomic sequences (percentage of G + C in a sequence). Despite being a simple metric, GC presents a huge variation across genomes, ranging from approximately 20% in Plasmodium falciparum [25] to 70% in some actinobacteria [26]. GC content is reasonably constant within a given genome, and was already found to be correlated with several universal factors of microbial lifestyles such as temperature [27], niche complexity [28] and aerobiosis [29].

https://www.ncbi.nlm.nih.gov/pubmed/25897009
G3 (Bethesda). 2015 Apr 20;5(6):1247-52. doi: 10.1534/g3.115.016824.
Effects of Genic Base Composition on Growth Rate in G+C-rich Genomes.
Kelkar YD1, Phillips DS1, Ochman H2.
Erratum in
Corrigendum.
http://www.g3journal.org/content/5/12/2921.long

### 2014

https://www.ncbi.nlm.nih.gov/pubmed/24983532
Environ Microbiol Rep. 2014 Jun;6(3):278-86. doi: 10.1111/1758-2229.12145. Epub 2014 Mar 25.
Positive correlations between genomic %AT and genome size within strains of bacterial species.
Bohlin J1, Sekse C, Skjerve E, Brynildsrud O.
https://onlinelibrary.wiley.com/doi/full/10.1111/1758-2229.12145
 Fig. 2 
Chlamydia trachomatis, Neisseria meningitidis, Helicobacter pylori, Escherichia coli, Francisella tularensis, Listeria monocytogenes, Strepto- coccus pneumoniae and Streptococcus suis on the other hand were found to have genomes sizes that correlated positively with genomic %AT and thus opposite to what was anticipated. 

- Fig. 1. phyla/subphylaレベルでは12のうち6分類群でゲノムサイズとAT含量に負の相関（GC含量に正の相関）、2分類群のみで正の相関。
- Fig. 2. speciesレベルでは20のうち8分類群でゲノムサイズとAT含量に正の相関（GC含量に負の相関）、4分類群のみで負の相関。
- 図1：門（亜門）レベルでは12のうち6分類群でゲノムサイズとAT含量に負の相関、2分類群のみで正の相関。
- 図2：種レベルでは20のうち8分類群でゲノムサイズとAT含量に正の相関、4分類群のみで負の相関。

http://www.ncbi.nlm.nih.gov/pubmed/24488312
J Bacteriol. 2014 Apr;196(7):1458-70.
Comparative Functional Genomics of Lactobacillus spp. Reveals Possible Mechanisms for Specialization of Vaginal Lactobacilli to Their Environment.
Mendes-Soares H, Suzuki H, Hickey RJ, Forney LJ.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3993339/
- We found that the genomes of the vaginal species were significantly smaller and had significantly lower GC content than those of the nonvaginal species. 
- The values for both the genome size and the GC content of the strains isolated from the vagina are significantly lower than those of the strains isolated from the other sites (Fig. 1) (genome size, 1.71 ± 0.391 Mbp versus 2.33 ± 0.491 Mbp; GC content, 34.17% ± 2.036% versus 41.92% ± 5.609%). 
- FIG 1
Genome size and GC content of Lactobacillus species. 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3993339/figure/F1/?report=objectonly

### 2012

https://www.ncbi.nlm.nih.gov/pubmed/23024607
Curr Genomics. 2012 Apr;13(2):153-62.
Microbial lifestyle and genome signatures.
Dutta C1, Paul S.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3308326/
SEQUENCE FEATURES OF MICROBIAL GENOMES INFLUENCED BY LIFESTYLE
a) G+C-Content
The obligatory intracellular pathogens/symbionts and microorganisms surviving in nutrient-limiting environments are, in most cases, characterized by relatively small genomes of low G+C-content, apparently in attempt to reduce replication expenses [13, 14], while free-living organisms, especially of the ones surviving in the soil [6], usually possess much larger genomes of higher G+C-content.

https://www.ncbi.nlm.nih.gov/pubmed/22325062
BMC Genomics. 2012 Feb 10;13:66. doi: 10.1186/1471-2164-13-66.
Relative entropy differences in bacterial chromosomes, plasmids, phages and genomic islands.
Bohlin J1, van Passel MW, Snipen L, Kristoffersen AB, Ussery D, Hardy SP.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3305612/

### 2010

https://www.ncbi.nlm.nih.gov/pubmed/16200051
EMBO Rep. 2005 Dec;6(12):1208-13.
Environments shape the nucleotide composition of genomes.
Foerstner KU1, von Mering C, Hooper SD, Bork P.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1369203/
- (Fig 1A). Surprisingly, the samples from farm soil and ocean surface water—both of which contain DNA from more than 1,000 diverse, non-abundant species (Venter et al, 2004; Tringe et al, 2005)—are very different, with the surface water sample having a GC-content median of around 34% and the soil sample around 61%.
メタゲノムのGC含量の中央値は、農場の土壌サンプルで34%、海面水サンプルで61%。
- We found that the third codon position is even more extreme with respect to GC distribution than the average of all three positions (Fig 2, the median in farm soil is 74%, versus 24% in the ocean surface water). 

https://www.ncbi.nlm.nih.gov/pubmed/25861819
Genome Biol Evol. 2015 Apr 9;7(5):1380-9. doi: 10.1093/gbe/evv063.
Prokaryotic nucleotide composition is shaped by both phylogeny and the environment.
Reichenberger ER1, Rosen G2, Hershberg U3, Hershberg R4.
we show that GC-content varies greatly as a function of environment, in a manner that cannot be entirely explained by disparities in phylogenetic composition. 

### 2002

https://www.ncbi.nlm.nih.gov/pubmed/12044357
Trends Genet. 2002 Jun;18(6):291-4.
Base composition bias might result from competition for metabolic resources.
Rocha EP1, Danchin A.

----------
## aerobic
酸素要求性とGC含量

https://pubmed.ncbi.nlm.nih.gov/30691392/
BMC Evol Biol
. 2019 Jan 28;19(1):35. doi: 10.1186/s12862-019-1365-8.
Aerobic Prokaryotes Do Not Have Higher GC Contents Than Anaerobic Prokaryotes, but Obligate Aerobic Prokaryotes Have
Sidra Aslam 1, Xin-Ran Lan 1, Bo-Wen Zhang 1, Zheng-Lin Chen 1, Li Wang 1, Deng-Ke Niu 2
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6350292/

https://pubmed.ncbi.nlm.nih.gov/19554248/
J Mol Evol
. 2009 Aug;69(2):203-6. doi: 10.1007/s00239-009-9230-9. Epub 2009 Jun 25.
Oxygen and Guanine-Cytosine Profiles in Marine Environments
Héctor Romero 1, Emiliano Pereira, Hugo Naya, Héctor Musto
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2722718/
In a previous article published by our group, we showed that inside well-defined taxonomic groups of prokaryotes, strictly aerobic organisms tend to display higher genomic GC levels than strictly anaerobic species. 
These results give further support to the link between a physiologic trait (aerobic respiration) and genomic GC content.

Mini Review
https://pubmed.ncbi.nlm.nih.gov/16815305/
Biochem Biophys Res Commun
. 2006 Aug 18;347(1):1-3. doi: 10.1016/j.bbrc.2006.06.054. Epub 2006 Jun 19.
Genomic GC Level, Optimal Growth Temperature, and Genome Size in Prokaryotes
Héctor Musto 1, Hugo Naya, Alejandro Zavala, Héctor Romero, Fernando Alvarez-Valín, Giorgio Bernardi
https://www.sciencedirect.com/science/article/pii/S0006291X06013088?via%3Dihub
- Furthermore, we demonstrate that the relationship that exists between genome size and GC level is valid for aerobic, facultative, and microaerophilic species, but not for anaerobic prokaryotes.
- In this regard, we should mention that the correlation between genome size and genomic GC holds only for aerobic, facultative, and microaerophilic prokaryotes, but not for anaerobic species, as is shown in Fig. 1. 
- Fig. 1. The data for constructing this plot were taken from http://www.ncbi.nlm.nih.gov/genomes/lproks.cgi, which displays several physiological and ecological features for all completed prokaryotic genomes. When several species from the same genus were available, we included the organism with the highest genome size. (a) All species; (b) aerobic, facultative, and microaerophilic prokaryotes; (c) anaerobic prokaryotes.

https://pubmed.ncbi.nlm.nih.gov/12187379/
J Mol Evol
. 2002 Sep;55(3):260-4. doi: 10.1007/s00239-002-2323-3.
Aerobiosis Increases the Genomic Guanine Plus Cytosine Content (GC%) in Prokaryotes
Hugo Naya 1, Héctor Romero, Alejandro Zavala, Beatriz Alvarez, Héctor Musto
http://pbil.univ-lyon1.fr/members/lobry/articles/JME_1997_44_632.kim/NayaH2002.pdf

----------
## mutation

https://en.wikipedia.org/wiki/Mutation_bias

http://www.iu.a.u-tokyo.ac.jp/~hnishida/tokuron4.htm
ゲノム塩基配列の偏りと生物機能
Genome base composition bias and biological function

このGC含量のばらつきの要因は複製時における中立的な変異の偏りにあると考えられている（Sueoka, 1961, PNAS, 47, 1141-1149; Sueoka 1962, PNAS, 48, 582-592; Freese, 1962, J Theoret Biol, 3, 82-101; Sueoka 1988, PNAS, 85, 2653-2657）

他方、この変異の偏りが中立的ではなく、GCからATへの偏りが顕著であることも指摘されている（Hershberg and Petrov, 2010, PLoS Genet, 6, e1001115; Hildebrand et al., 2010, PLoS Genet, 6, e1001107; Rocha and Feil, 2010, PLoS Genet, 6, e1001104）

http://sesj.kenkyuukai.jp/special/index.asp?id=1450
日本進化学会ニュースvol.12 No.3 （2011.11.15発行）■5.1MB
シリーズ「私と進化学」第2回
http://sesj.kenkyuukai.jp/images/sys%5Cinformation%5C20111114200040-DB164BC02BD9DEE68BBF8E76AB9722787A49390FC228BFE89C59C773A5C3A175.pdf
虫から始まり虫で終わる（後編）
「分子生物学から進化学へ」
大澤 省三（初代進化学会会長）
このようなゲノムのGC含量の偏りを説明する
ため、末岡登博士が古く1962年、方向性をもつ突
然変異圧（directional mutation pressure）という考
えを出されている。事実、AT to GC、またはGC to
ATの変異を起こす遺伝子の存在が知られているが、
現存生物のDNAのGC含量が末岡のいう突然変異
圧に関係しているかどうかは解明されていない。

いずれもタン
パク質のアミノ酸配列を変えることのない中立変
異である（図16-3の上）。これが我々の考えた暗号
変化の「コドン捕獲説」の大要である（1987）。こ
のスキームが正しいことは、後にCastresama et
al.（1998）によって証明された（図16-3の下）。
捕獲説はコドンとアンチコドン間のwobble rules
（コドンとtRNAのアンチコドンの相互認識のルー
ル）、同義語コドンの中立変化などをよく理解してい
ないと、わかりにくいことと、

https://www.ncbi.nlm.nih.gov/pubmed/28645195
Mol Biol Evol. 2017 Sep 1;34(9):2163-2172. doi: 10.1093/molbev/msx180.
Mutational Biases Influence Parallel Adaptation.
Stoltzfus A1, McCandlish DM2.
https://www.ncbi.nlm.nih.gov/pubmed/31365533
While mutational biases strongly influence neutral molecular evolution, the role of mutational biases in shaping the course of adaptation is less clear. Here we consider the frequency of transitions relative to transversions among adaptive substitutions. Because mutation rates for transitions are higher than those for transversions, if mutational biases influence the dynamics of adaptation, then transitions should be overrepresented among documented adaptive substitutions. 

https://www.ncbi.nlm.nih.gov/pubmed/21498884
Genome Biol Evol. 2011;3:383-95. doi: 10.1093/gbe/evr032. Epub 2011 Apr 17.
Faster than neutral evolution of constrained sequences: the complex interplay of mutational biases and weak selection.
Lawrie DS1, Petrov DA, Messer PW.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3101017/
When purifying selection is weak and mutation is biased, constrained regions can even evolve faster than neutral sequences and thus can appear to be under positive selection. Moreover, conservation estimates depend also on the orientation of selection relative to mutational biases and can vary over time. In the light of recent data of the ubiquity of mutational biases and weak selective forces, these effects should reduce the power of conservation analyses to define functional regions using comparative genomics data. We argue that the estimation of true mutational biases and the use of explicit evolutionary models are essential to improve methods inferring the action of natural selection and functionality in genome sequences.

https://www.ncbi.nlm.nih.gov/pubmed/15728743
Nucleic Acids Res. 2005 Feb 23;33(4):1141-53. Print 2005.
Variation in the strength of selected codon usage bias among bacteria.
Sharp PM1, Bailes E, Grocock RJ, Peden JF, Sockett RE.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC549432/
Among bacteria, genomic G+C content varies over a wide range, presumably reflecting variation in mutation biases (7), with a major impact on codon usage (8). 

The species analysed here have genomic G+C contents ranging from 22 to 72%. Since bacterial genomes have little non-coding DNA, and the first two positions within codons are constrained by protein-coding requirements, most of the variation is due to the third position of codons [(8) and Figure 2]. Thus the overall G+C content at synonymously variable third positions (GC3S) ranged from 9 to 93% among the 80 genomes (Table 1). 

https://www.ncbi.nlm.nih.gov/pubmed/3467347
Proc Natl Acad Sci U S A. 1987 Jan;84(1):166-9.
The guanine and cytosine content of genomic DNA and bacterial evolution.
Muto A, Osawa S.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC304163/
However, the plotted correlation slopes differ among various parts of the genome or among the first, second, and third positions of the codons depending on their functional importance. Facts suggest that biased mutation pressure, called A X T/G X C pressure, has affected whole DNA during evolution so as to determine the genomic G + C content in a given bacterium. The role of A X T/G X C pressure in diversification of bacterial DNA sequences and codon usage patterns is discussed in the perspective of the neutral theory of molecular evolution.
細菌DNA配列とコドン使用パターンの多様化におけるAT/GC方向の変異圧の役割を分子進化の中立理論の観点から論じる。

https://www.ncbi.nlm.nih.gov/pubmed/8411203
J Mol Evol. 1993 Aug;37(2):137-53.
Directional mutation pressure, mutator mutations, and dynamics of molecular evolution.
Sueoka N1.

https://www.ncbi.nlm.nih.gov/pubmed/3357886
Proc Natl Acad Sci U S A. 1988 Apr;85(8):2653-7.
Directional mutation pressure and neutral molecular evolution.
Sueoka N1.
The theory was based on the assumption that the effect of mutation on a genome is not random but has a directionality toward higher or lower guanine-plus-cytosine content of DNA, and this pressure generates directional changes more in neutral parts of the genome than in functionally significant parts. Now that DNA sequence data are available, the theory allows the estimation of the extent of neutrality of directional mutation pressure against selection. 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC280056/pdf/pnas00260-0245.pdf

----------
