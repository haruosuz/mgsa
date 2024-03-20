
# pangenome

## Table of Contents
- [unclassified](#unclassified)
  - [definition](#definition)
- [updates](#updates)
- [organism](#organism)
  - [archaea](#archaea)
  - Rhodococcus equi
  - Pseudomonas aeruginosa
- [japanese](#japanese) 日本語
- [tools](#tools)
  - [PGAP](#pgap)
  - [panX](#panX)
  - [BPGA](#BPGA)
  - [ITEP](#ITEP)
- [pipeline](#pipeline)
  - [scoary](#scoary)
  - [piggy](#piggy)
  - [bactopia](#bactopia)
  - [get_homologues](#get_homologues)
  - [pirate](#pirate)
  - [panaroo](#panaroo)


----------
## unclassified

https://twitter.com/pangenomepapers

### definition

https://en.wikipedia.org/wiki/Pan-genome

https://www.sciencedirect.com/topics/biochemistry-genetics-and-molecular-biology/pan-genome

http://www.metagenomics.wiki/pdf/definition/pangenome
Pangenome - Metagenomics
Pangenome tools


----------
## books

https://link.springer.com/book/10.1007/978-3-030-38281-0
The Pangenome
Diversity, Dynamics and Evolution of Genomes

3:07 AM · May 5, 2020
https://twitter.com/jomcinerney/status/1257371283819462658
James McInerney on Twitter: "#OA New book chapter with @alanmcn1 @Evol_Molly @whelanfj @blackpassiflora McInerney JO, Whelan FJ, Domingo-Sananes MR, McNally A, O’Connell MJ (2020) Pangenomes and Selection: The Public Goods Hypothesis. In: Tettelin H., Medini D. (eds) The Pangenome https://t.co/EoLCWAO9pL https://t.co/QLyjSBXRUg" / Twitter


10:45 PM · May 4, 2020
https://twitter.com/XavierDidelot/status/1257305244146360320
Xavier Didelot on Twitter: "I'm pleased to have contributed a chapter with @LassalleFlo to this great new book on pangenome evolution and even more pleased that it is completely open access! https://t.co/EBytWHZVnn https://t.co/kPDXGWcZqQ" / Twitter


----------
### bactopia
- https://github.com/bactopia/bactopia
- https://bactopia.github.io/

https://pubmed.ncbi.nlm.nih.gov/32753501/
mSystems
. 2020 Aug 4;5(4):e00190-20. doi: 10.1128/mSystems.00190-20.
Bactopia: a Flexible Pipeline for Complete Analysis of Bacterial Genomes
Robert A Petit 3rd 1, Timothy D Read 2
https://msystems.asm.org/content/5/4/e00190-20
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7406220/

http://kazumaxneo.hatenablog.com/entry/2020/03/17/090935
計算リソースを効率的に使って多数のよく似たバクテリアゲノムを素早く分析する自動化されたパイプライン Bactopia - macでインフォマティクス

----------
### panaroo

https://pubmed.ncbi.nlm.nih.gov/32698896/
Comparative Study Genome Biol
. 2020 Jul 22;21(1):180. doi: 10.1186/s13059-020-02090-4.
Producing polished prokaryotic pangenomes with the Panaroo pipeline
Gerry Tonkin-Hill 1 2, Neil MacAlasdair 3 4, Christopher Ruis 4 5 6, Aaron Weimann 4 5 6 7, Gal Horesh 3, John A Lees 8, Rebecca A Gladstone 9, Stephanie Lo 3, Christopher Beaudoin 10, R Andres Floto 5 11, Simon D W Frost 12 13, Jukka Corander 3 9 14, Stephen D Bentley 3, Julian Parkhill 4
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-020-02090-4
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7376924/


https://github.com/gtonkinhill/panaroo
Documentation
Documentation for Panaroo can be found here

https://gtonkinhill.github.io/panaroo/#/gettingstarted/params
Parameters

Matching:
  -c ID, --threshold ID
                        sequence identity threshold (default=0.98)
  -f FAMILY_THRESHOLD, --family_threshold FAMILY_THRESHOLD
                        protein family sequence identity threshold
                        (default=0.7)
  --len_dif_percent LEN_DIF_PERCENT
                        length difference cutoff (default=0.98)
  --merge_paralogs      don't split paralogs

https://kazumaxneo.hatenablog.com/entry/2021/09/08/101147
パンゲノム解析によってアノテーション情報の改善を試みる panaroo - macでインフォマティクス


----------
### Scoary

https://github.com/AdmiralenOla/Scoary

https://github.com/AdmiralenOla/Scoary/issues/86
gene_presence_absence.csv file from Roary · Issue #86 · AdmiralenOla/Scoary

https://pubmed.ncbi.nlm.nih.gov/27887642/
Genome Biol
. 2016 Nov 25;17(1):238. doi: 10.1186/s13059-016-1108-8.
Rapid scoring of genes in microbial pan-genome-wide association studies with Scoary
Ola Brynildsrud 1, Jon Bohlin 2, Lonneke Scheffer 2 3, Vegard Eldholm 2
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-1108-8
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5124306/

https://sanger-pathogens.github.io/Roary/
Pan-genome wide association studies
Ola Brynildsrud has created a python script called scoary which takes in a csv file of traits, and the gene presence and absense spreadsheet, then performs a pan genome wide association analysis. It highlights genes which appear to be linked to the traits and gives lots of stats.

----------
### piggy

https://github.com/harry-thorpe/piggy

https://pubmed.ncbi.nlm.nih.gov/29635296/
Gigascience
. 2018 Apr 1;7(4):1-11. doi: 10.1093/gigascience/giy015.
Piggy: a rapid, large-scale pan-genome analysis tool for intergenic regions in bacteria
Harry A Thorpe 1, Sion C Bayliss 1, Samuel K Sheppard 1, Edward J Feil 1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5890482/

https://academic.oup.com/gigascience/article/7/4/giy015/4919733
Roary and Piggy parameter settings
Roary [4] was run using default parameters except for the following: -e -n (to produce alignments with MAFFT [23]); -i 90 (lower amino acid identity than the default); -s (to keep paralogs together); and -z (to keep intermediate files). 

----------
### pirate
https://github.com/SionBayliss/PIRATE

https://pubmed.ncbi.nlm.nih.gov/31598686/
Gigascience
. 2019 Oct 1;8(10):giz119. doi: 10.1093/gigascience/giz119.
PIRATE: A fast and scalable pangenomics toolbox for clustering diverged orthologues in bacteria
Sion C Bayliss 1, Harry A Thorpe 1, Nicola M Coyle 1, Samuel K Sheppard 1, Edward J Feil 1
https://academic.oup.com/gigascience/article/8/10/giz119/5584409
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6785682/
For comparison, we chose 2 of the most widely used packages, Roary and PanX [2,6]. 

----------
### GET_HOMOLOGUES

https://github.com/eead-csic-compbio/get_homologues/releases

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7738440/
A Novel Family of Acinetobacter Mega-Plasmids Are Disseminating Multi-Drug Resistance Across the Globe While Acquiring Location-Specific Accessory Genes

Plasmid pan‐ and core-genome analyses were carried out using Perl scripts available in the GET_HOMOLOGUES v20092018 software package (Contreras-Moreira and Vinuesa, 2013; Vinuesa and Contreras-Moreira, 2015).

Appropriate phylogenetic loci were identified using the GET_PHYLOMARKERS software package (Vinuesa et al., 2018) with default parameters. The GET_PHYLOMARKERS uses the single-copy plasmid core-genome clusters identified by GET_HOMOLOGUES and removes recombinant sequences as well as loci that produce outlier phylogenies. 

https://pubmed.ncbi.nlm.nih.gov/29765358/
Front Microbiol
. 2018 May 1;9:771. doi: 10.3389/fmicb.2018.00771. eCollection 2018.
GET_PHYLOMARKERS, a Software Package to Select Optimal Orthologous Clusters for Phylogenomics and Inferring Pan-Genome Phylogenies, Used for a Critical Geno-Taxonomic Revision of the Genus Stenotrophomonas
Pablo Vinuesa 1, Luz E Ochoa-Sánchez 1, Bruno Contreras-Moreira 2 3
https://www.frontiersin.org/articles/10.3389/fmicb.2018.00771/full
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5938378/
The code, a detailed manual and tutorials are freely available for Linux/UNIX servers under the GNU GPLv3 license at https://github.com/vinuesa/get_phylomarkers. A docker image bundling GET_PHYLOMARKERS with GET_HOMOLOGUES is available at https://hub.docker.com/r/csicunam/get_homologues/, which can be easily run on any platform.


Materials and methods

Overview of the computational steps performed by the GET_PHYLOMARKERS pipeline

The pipeline is primarily intended to run DNA-based phylogenies (“-R 1 -t DNA”) on a collection of genomes from different species of the same genus or family. However, it can also select optimal markers for population genetics (“-R 2 -t DNA”), when the source genomes belong to the same species (not shown here). For more divergent genomes, the pipeline should be run using protein sequences (“-R 1 -t PROT”). 

These are subsequently scanned with the Phi-test (Bruen et al., 2005) to identify and discard those with significant evidence for recombinant sequences. 


Results

Rapid phylogenetic exploration of Stenotrophomonas genome sequences available at NCBI's RefSeq repository running GET_PHYLOMARKERS in fast runmode

Only 79 alignments passed the Phi recombination test.

GET_PHYLOMARKERS in action: benchmarking the performance of FastTree and IQ-tree to select top-scoring markers for phylogenomics

Only 127 alignments (53.14%) passed the Phi-test (Table ​(Table2).2). 


Table 2

Alignments passing the Phi recombination test

Discussion

Hence, the first filtering step in the pipeline is the detection of putative recombinant sequences using the very fast, sensitive and robust phi(w) statistic (Bruen et al., 2005). The genus Stenotrophomonas has been previously reported to have high recombination rates (Yu et al., 2016; Ochoa-Sánchez and Vinuesa, 2017). It is therefore not surprising that the phi(w) statistic detected significant evidence for recombination in up to 47% of the orthologous clusters.


https://pubmed.ncbi.nlm.nih.gov/28261241/
Front Plant Sci
. 2017 Feb 14;8:184. doi: 10.3389/fpls.2017.00184. eCollection 2017.
Analysis of Plant Pan-Genomes and Transcriptomes with GET_HOMOLOGUES-EST, a Clustering Solution for Sequences of the Same Species
Bruno Contreras-Moreira 1, Carlos P Cantalapiedra 2, María J García-Pereira 2, Sean P Gordon 3, John P Vogel 3, Ernesto Igartua 2, Ana M Casas 2, Pablo Vinuesa 4
https://www.frontiersin.org/articles/10.3389/fpls.2017.00184/full
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5306281/

https://pubmed.ncbi.nlm.nih.gov/25343868/
Methods Mol Biol
. 2015;1231:203-32. doi: 10.1007/978-1-4939-1720-4_14.
Robust identification of orthologues and paralogues for microbial pan-genomics using GET_HOMOLOGUES: a case study of pIncA/C plasmids
Pablo Vinuesa 1, Bruno Contreras-Moreira
https://link.springer.com/protocol/10.1007%2F978-1-4939-1720-4_14
https://core.ac.uk/reader/36182144

https://pubmed.ncbi.nlm.nih.gov/24096415/
Appl Environ Microbiol
. 2013 Dec;79(24):7696-701. doi: 10.1128/AEM.02411-13. Epub 2013 Oct 4.
GET_HOMOLOGUES, a versatile software package for scalable and robust microbial pangenome analysis
Bruno Contreras-Moreira 1, Pablo Vinuesa
https://journals.asm.org/doi/10.1128/AEM.02411-13
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3837814/

https://bibgraph.hpcr.jp/abst/pubmed/24096415
get_homoleues、スケーラブルで堅牢な微生物パンゲノーム分析のための多用途のソフトウェアパッケージ。 - Bibgraph（ビブグラフ）| PubMedを日本語で論文検索

https://kazumaxneo.hatenablog.com/entry/2020/05/27/140848
パンゲノム解析を行う GET HOMOLOGUES - macでインフォマティクス

https://kazumaxneo.hatenablog.com/entry/2017/08/24/163914
複数のトランスクリプトーム解析からコア遺伝子を探索するGET_HOMOLOGUES-EST - macでインフォマティクス
 GET_HOMOLOGUESの説明は別の記事に移しました。



----------





----------
## updates

### 2023-05


https://pubmed.ncbi.nlm.nih.gov/37227251/
Review Microb Genom
. 2023 May;9(5):mgen001021. doi: 10.1099/mgen.0.001021.
Challenges in prokaryote pangenomics
Gerry Tonkin-Hill 1, Jukka Corander 1 2 3, Julian Parkhill 4
https://www.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.001021#tab2
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10272878/


### 


### 2021

https://pubmed.ncbi.nlm.nih.gov/34007059/
ISME J
. 2021 May 18. doi: 10.1038/s41396-021-00995-x. Online ahead of print.
Genomic evolution of the class Acidithiobacillia: deep-branching Proteobacteria living in extreme acidic conditions
Ana Moya-Beltrán 1 2 3, Simón Beard 1 3 4, Camila Rojas-Villalobos 1 3, Francisco Issotta 1 2, Yasna Gallardo 1, Ricardo Ulloa 5, Alejandra Giaveno 5, Mauro Degli Esposti 6, D Barrie Johnson 7, Raquel Quatrini 8 9 10
https://www.nature.com/articles/s41396-021-00995-x
Comparative genomics methods
The predicted amino acid sequences of all open reading frames identified in the genomes of interest were analyzed in search for orthology. Genome comparisons were performed using the GET_HOMOLOGUES [53] software package v3.3.2. Orthology was determined using COGtriangles (v2.1) as clustering algorithm and triangle reciprocal hits were clustered in Protein Families (PFs). 


### 2020

https://pubmed.ncbi.nlm.nih.gov/32047279/
ISME J
. 2020 May;14(5):1247-1259. doi: 10.1038/s41396-020-0600-z. Epub 2020 Feb 11.
Disentangling the impact of environmental and phylogenetic constraints on prokaryotic within-species diversity
Oleksandr M Maistrenko 1, Daniel R Mende 1 2, Mechthild Luetge 1 3, Falk Hildebrand 1 4 5, Thomas S B Schmidt 1, Simone S Li 1 6, João F Matias Rodrigues 7, Christian von Mering 7, Luis Pedro Coelho 1 8, Jaime Huerta-Cepas 1 9, Shinichi Sunagawa 1 10, Peer Bork 11 12 13 14
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7174425/


https://www.ncbi.nlm.nih.gov/pubmed/32299360
BMC Genomics. 2020 Apr 16;21(Suppl 2):274. doi: 10.1186/s12864-020-6610-4.
Getting insight into the pan-genome structure with PangTree.
Dziadkiewicz P1,2, Dojer N3.
Ebola virus pan-genome. Furthermore, two software packages are provided: PangTreeBuild constructs affinity tree, while PangTreeVis presents its result.


https://twitter.com/jomcinerney/status/1232385925189111808
James McInerney on Twitter: "Finally it’s out. Coinfinder: detecting significant associations and dissociations in pangenomes. Microbial Genomics DOI 10.1099/mgen.0.000338 https://t.co/vbduewc7RC" / Twitter
4:24 AM · Feb 26, 2020
https://www.ncbi.nlm.nih.gov/pubmed/32100706
Microb Genom. 2020 Feb 25. doi: 10.1099/mgen.0.000338. [Epub ahead of print]
Coinfinder: detecting significant associations and dissociations in pangenomes.
Whelan FJ1, Rusilowicz M2, McInerney JO2,1.
Coinfinder employs a user-supplied phylogenetic tree in order to assess the lineage-dependence (i.e. the phylogenetic distribution) of each accessory gene
https://github.com/fwhelan/coinfinder


### 2019


https://www.ncbi.nlm.nih.gov/pubmed/31891864
Curr Opin Biotechnol. 2019 Dec 28;63:54-62. doi: 10.1016/j.copbio.2019.12.001. [Epub ahead of print]
Current status of pan-genome analysis for pathogenic bacteria.
Kim Y1, Gu C1, Kim HU2, Lee SY3.
https://www.sciencedirect.com/science/article/abs/pii/S0958166919301387
Pan-genome analysis has been shown to be an effective approach to better understand a clade of pathogenic bacteria because it helps developing various and tailored therapeutic strategies on the basis of their biological similarities and differences. Here, we review



https://www.ncbi.nlm.nih.gov/pubmed/31626589
Microb Genom. 2019 Oct 18. doi: 10.1099/mgen.0.000309. [Epub ahead of print]
Pangenome of Acinetobacter baumannii uncovers two groups of genomes, one of them with genes involved in CRISPR/Cas defence systems associated with the absence of plasmids and exclusive genes for biofilm formation.
Mangas EL1, Rubio A1, Álvarez-Marín R2, Labrador-Herrera G2, Pachón J3,2, Pachón-Ibáñez ME3,2, Divina F4, Pérez-Pulido AJ1.

https://www.ncbi.nlm.nih.gov/pubmed/31584605
Bioinformatics. 2019 Oct 4. pii: btz735. doi: 10.1093/bioinformatics/btz735. [Epub ahead of print]
simurg: simulate bacterial pangenomes in R.
Ferrés I1, Fresia P1,2, Iraola G1,3,4.

https://twitter.com/copypasteusa/status/1132305387472822273
微生物ゲノム配列データ解析ウェブサーバ M1CR0B1AL1Z3R（microbializerと発音）
https://microbializer.tau.ac.il/
ProdigalでORF予測。MMSEQS2(tBlastX)で相同性検索し、双方向ベストヒットによるオーソログ同定。MAFFTで多重整列し、RAxMLでコア遺伝子結合データの系統樹作成。GC含量
https://www.ncbi.nlm.nih.gov/pubmed/31114912
Nucleic Acids Res. 2019 Jul 2;47(W1):W88-W92. doi: 10.1093/nar/gkz423.
M1CR0B1AL1Z3R-a user-friendly web server for the analysis of large-scale microbial genomics data.
Avram O1, Rapoport D1, Portugez S1, Pupko T1.



4:10 PM - 24 May 2019
https://twitter.com/jcveritas/status/1132015987019210753
Juan J. Carmona on Twitter: "Our @Philips team's new @Nature @SciReports article is in press: "A core genome approach that enables prospective and dynamic monitoring of infectious outbreaks" #InfectionPrevention #InfectiousOutbreaks #InfectiousDiseases https://t.co/aNy2TA8Lwc | @BillHanage @SundermannAJ"
https://pubmed.ncbi.nlm.nih.gov/31127153/
Sci Rep
. 2019 May 24;9(1):7808. doi: 10.1038/s41598-019-44189-0.
A core genome approach that enables prospective and dynamic monitoring of infectious outbreaks
Helen van Aggelen 1, Raivo Kolde 2, Hareesh Chamarthi 2, Joshua Loving 2, Yu Fan 2, John T Fallon 3rd 3 4, Weihua Huang 3, Guiqing Wang 4, Mary M Fortunato-Habib 5, Juan J Carmona 5, Brian D Gross 5
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6534532/
Conserved-gene core genome
Conserved-sequence core genome

9:53 AM · May 25, 2019
https://twitter.com/copypasteusa/status/1132087168388571136
細菌間で保存されたゲノム領域core genomeを得る方法として、Roaryで得た保存「遺伝子」conserved-geneに比べ、k-mer（31連続塩基）頻度に基づいて得た保存「配列」conserved-sequenceは、同一患者サンプルの同定精度が高い（図4）。黄色ブドウ球菌3436株、肺炎桿菌1362株、腸球菌348株サンプルの臨床データを使用。
https://twitter.com/copypasteusa/status/1132102268461785089
31 bp kmersを使用
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5124939/
overlapping, 31-bp DNA motifs or kmers 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5049680/
the presence or absence of short 31 bp haplotypes or ‘kmers’





https://www.frontiersin.org/articles/10.3389/fmicb.2019.00834/full
Frontiers | Large-Scale Genomics Reveals the Genetic Characteristics of Seven Species and Importance of Phylogenetic Distance for Estimating Pan-Genome Size | Microbiology
, clustering was conducted with UCLUST

https://www.biostars.org/p/360432/
Is it possible to carry-out pan-genome analysis of interspecies bacterial genome?
You could take a look at any of: Roary, OrthoMCL, PanOCT, PanSeq, LS-BSR, FindMyFriends, PopPunk, MicroPan and PGAP.

https://bioinformatics.stackexchange.com/questions/2067/what-tools-can-i-use-for-a-bacterial-core-pan-genome-pipeline
1 year, 4 months ago
software recommendation - What tools can I use for a bacterial core/pan genome pipeline? - Bioinformatics Stack Exchange

https://bioinformatics.stackovernet.com/ja/q/2455
genome - 細菌コア/パンゲノムのパイプラインにはどのツールを使用でき ...

https://www.ncbi.nlm.nih.gov/pubmed/30714895
Microb Genom. 2019 Feb 4. doi: 10.1099/mgen.0.000243. [Epub ahead of print]
Pan-genome analyses of model fungal species.
McCarthy CGP1,2, Fitzpatrick DA1,2.
, we have investigated the pan-genomes of four model fungal species: Saccharomyces cerevisiae, Candida albicans, Cryptococcus neoformans var. grubii and Aspergillus fumigatus. 
https://mgen.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000243#tab2
Pan-genome analysis of fungal species
Analysis of the pan-genomes of the four fungal species in our study was performed using the Perl software PanOCT [ 38 ].

Bacillus cereus and Staphylococcus aureus
https://www.microbe.net/2019/01/08/great-paper-on-space-station-microbes-and-how-they-are-not-all-waiting-to-kill-you/
https://www.ncbi.nlm.nih.gov/pubmed/30637341
mSystems. 2019 Jan 8;4(1). pii: e00281-18. doi: 10.1128/mSystems.00281-18. eCollection 2019 Jan-Feb.
Pangenomic Approach To Understanding Microbial Adaptations within a Model Built Environment, the International Space Station, Relative to Human Hosts and Soil.
Blaustein RA1, McFarland AG1, Ben Maamar S1, Lopez A2, Castro-Wallace S3, Hartmann EM1.

### 2018

https://www.ncbi.nlm.nih.gov/pubmed/29785479
Adv Exp Med Biol. 2018;1052:39-49. doi: 10.1007/978-981-10-7572-8_4.
NGSPanPipe: A Pipeline for Pan-genome Identification in Microbial Strains from Experimental Reads.
Kulsum U1, Kapil A2, Singh H3, Kaur P4.
https://link.springer.com/chapter/10.1007%2F978-981-10-7572-8_4
We have designed an easy-to-use integrated pipeline, NGSPanPipe, which can directly identify the pan-genome from short reads. 

https://www.ncbi.nlm.nih.gov/pubmed/30165579
Bioinformatics. 2018 Aug 25. doi: 10.1093/bioinformatics/bty744. [Epub ahead of print]
Large-Scale Comparative Analysis of Microbial Pan-genomes using PanOCT.
Inman JM1, Sutton GG1, Beck E1, Brinkac LM1, Clarke TH1, Fouts DE1.
J. Craig Venter Institute, Rockville, MD USA.

https://www.ncbi.nlm.nih.gov/pubmed/29942087
Sci Rep. 2018 Jun 25;8(1):9670. doi: 10.1038/s41598-018-27800-8.
Pan4Draft: A Computational Tool to Improve the Accuracy of Pan-Genomic Analysis Using Draft Genomes.
Veras A1, Araujo F1, Pinheiro K1, Guimarães L1, Azevedo V2, Soares S3, da Costa da Silva A1, Ramos R4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6018222/


https://www.ncbi.nlm.nih.gov/pubmed/29635296
Gigascience. 2018 Apr 1;7(4):1-11. doi: 10.1093/gigascience/giy015.
Piggy: a rapid, large-scale pan-genome analysis tool for intergenic regions in bacteria.
Thorpe HA1, Bayliss SC1, Sheppard SK1, Feil EJ1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5890482/
The large-scale blast score ratio (LS-BSR) introduced a preclustering step that substantially reduced the number of BLAST comparisons, enabling it to be feasibly run on thousands of samples [10]. More recently, the Roary pipeline has rapidly gained popularity for scalable, user-friendly, pan-genome characterization [4].

https://twitter.com/NatureRevMicro/status/969629255352152064
Nature Rev Microbiol on Twitter: "Systematic discovery of antiphage defense systems in the microbial pangenome @SorekLab @sciencemagazine https://t.co/h2NRQymzzT… https://t.co/jA9uWzYMXe"
12:43 PM - 2 Mar 2018


https://www.ncbi.nlm.nih.gov/pubmed/27769991
Brief Bioinform. 2018 Jan 1;19(1):118-135. doi: 10.1093/bib/bbw089.
Computational pan-genomics: status, promises and challenges.
Computational Pan-Genomics Consortium.

### 2017

https://twitter.com/NatureMicrobiol/status/940566982742740992
Nature Microbiology on Twitter: "Current issue: #pangenome correspondences: 1. Michiel Vos & @AdamEyreWalker: are #pangenomes adaptive? https://t.co/m71AxCNO78 2. @bjesseshapiro on applying population genetics: https://t.co/Sbvuo86QEQ 3. @jomcinerney @alanmcn1 & @Evol_Molly reply: https://t.co/5q2UQXukrp… https://t.co/gVZeROsJvg"
8:00 AM - 12 Dec 2017

Current issue: #pangenome correspondences: 

1. Michiel Vos & @AdamEyreWalker: are #pangenomes adaptive? http://bit.ly/2nHM5DU  

2. @bjesseshapiro on applying population genetics: http://bit.ly/2nHM82y  

3. @jomcinerney @alanmcn1 & @Evol_Molly reply: http://bit.ly/2nHMaaG 


https://www.ncbi.nlm.nih.gov/pubmed/28321969
Environ Microbiol. 2017 Jul;19(7):2588-2603.
The pangenome of the genus Clostridium.
Udaondo Z1,2, Duque E1,2, Ramos JL1,2.

https://www.ncbi.nlm.nih.gov/pubmed/28350002
Nat Microbiol. 2017 Mar 28;2:17040. doi: 10.1038/nmicrobiol.2017.40.
Why prokaryotes have pangenomes.
McInerney JO1, McNally A2, O'Connell MJ3.

https://www.ncbi.nlm.nih.gov/pubmed/29183286
BMC Microbiol. 2017 Nov 28;17(1):222. doi: 10.1186/s12866-017-1132-1.
First gene-ontology enrichment analysis based on bacterial coregenome variants: insights into adaptations of Salmonella serovars to mammalian- and avian-hosts.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5706153/
a pangenomic approach, 


https://twitter.com/jason_sahl/status/924029119871905793
Jason Sahl on Twitter: "Some recent thoughts on LS-BSR/Roary comparisons. Feedback/thoughts welcome: https://t.co/Q9MbJfnmqY"
5:44 PM - 27 Oct 2017

### 2016



https://www.ncbi.nlm.nih.gov/pubmed/27855160
PLoS Genet. 2016 Nov 17;12(11):e1006401. doi: 10.1371/journal.pgen.1006401. eCollection 2016 Nov.
Transcription Factors Encoded on Core and Accessory Chromosomes of Fusarium oxysporum Induce Expression of Effector Genes.

Several DNA binding sites are enriched on accessory chromosomes, and expression of FTF1, its core homolog FTF2 and SGE1 from a constitutive promoter can induce expression of effector genes. The DNA binding sites of only these three transcription factors are enriched among genes up-regulated during infection. 

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5039349/
Published online 2016 Sep 28. doi:  10.3389/fmicb.2016.01531
Analysis of the Core Genome and Pan-Genome of Autotrophic Acetogenic Bacteria

To decipher the 474 core genes of the 14 acetogenic bacteria, functionally grouped networks of enriched categories were generated for the biological interpretation of core genes using ClueGo version 2.2.4 (Saito et al., 2012), which is a widely used Cytoscape version 3.3.0 (Shannon et al., 2003) plugin.

As a result, 95 GO terms were significantly enriched and categorized into 10 groups according to their kappa scores (Figure ​Figure3A3A). 

Based on enrichment p-values, 27 GO terms and 8 KEGG pathways were enriched (Supplementary Table S3) and functionally categorized into 12 groups (Supplementary Figure S2).



https://pubmed.ncbi.nlm.nih.gov/27618184/
PLoS Genet
. 2016 Sep 12;12(9):e1006280. doi: 10.1371/journal.pgen.1006280. eCollection 2016 Sep.
Combined Analysis of Variation in Core, Accessory and Regulatory Genome Regions Provides a Super-Resolution View into the Evolution of Bacterial Populations
Alan McNally 1 2, Yaara Oren 3, Darren Kelly 4, Ben Pascoe 5, Steven Dunn 1, Tristan Sreecharan 1, Minna Vehkala 6, Niko Välimäki 6, Michael B Prentice 7, Amgad Ashour 7, Oren Avram 3, Tal Pupko 3, Ulrich Dobrindt 8, Ivan Literak 9, Sebastian Guenther 10, Katharina Schaufler 10, Lothar H Wieler 10 11, Zong Zhiyong 12, Samuel K Sheppard 5, James O McInerney 4 13, Jukka Corander 6 14
https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1006280
Core genome analysis
A core genome phylogeny was produced using Parsnp in the Harvest suite of phylogenetic tools [35], which makes an alignment from localised co-linear blocks. 




June, 2016
https://bivi.co/visualisation/phandango
Phandango | Biological Visualisation Community

![](https://bivi.co/sites/default/files/styles/portfolio_fullwidth/public/phandango.png?itok=zFMBTx5M)

https://www.slideshare.net/torstenseemann/bioinformatics-tools-for-the-diagnostic-laboratory-tseemann-antimicrobials-2016-melb-au-sat-27-feb-2016
Bioinformatics tools for the diagnostic laboratory - T.Seemann - Antimicrobials 2016 - Melb, AU - sat 27 feb 2016
43. Example pan genome Roary, LS-BSR, OrthoMCL, Degust Rows are genomes, columns are genes.

### 2015

https://www.ncbi.nlm.nih.gov/pubmed/26032364
J Microbiol Biotechnol. 2015 Oct;25(10):1599-605. doi: 10.4014/jmb.1504.04008.
Comparative Genomics Reveals the Core and Accessory Genomes of Streptomyces Species.
Kim JN1, Kim Y2, Jeong Y3, Roe JH2, Kim BG1, Cho BK3.

Functional enrichment analysis showed that genes involved in transcription were most abundant in the Streptomyces pan-genome. 

https://www.ncbi.nlm.nih.gov/pubmed/27006628
Curr Genomics. 2015 Aug;16(4):245-52. doi: 10.2174/1389202916666150423002311.
Inside the Pan-genome - Methods and Software Overview.
Guimarães LC1, Florczak-Wyspianska J2, de Jesus LB3, Viana MV3, Silva A2, Ramos RT2, Soares Sde C4, Soares Sde C4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4765519/
Table 1
Pan-genome studies.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4765519/table/T1/

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4765519/figure/F1/)

https://www.ncbi.nlm.nih.gov/pubmed/26442149
New Microbes New Infect. 2015 Jun 26;7:72-85. doi: 10.1016/j.nmni.2015.06.005. eCollection 2015 Sep.
The bacterial pangenome as a new tool for analysing pathogenic bacteria.
Rouli L1, Merhej V1, Fournier PE1, Raoult D1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4552756/
Table 3
Ratio core/pangenome of several bacterial species according to their life style
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4552756/table/tbl3/

https://www.ncbi.nlm.nih.gov/pubmed/25721608
Genomics Proteomics Bioinformatics. 2015 Feb;13(1):73-6. doi: 10.1016/j.gpb.2015.01.007. Epub 2015 Feb 23.
A brief review of software tools for pangenomics.
Xiao J1, Zhang Z2, Wu J2, Yu J2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4411478/table/t0005/?report=objectonly
Table 1
Software tools for pangenomic studies

https://www.ncbi.nlm.nih.gov/pubmed/25483351
Curr Opin Microbiol. 2015 Feb;23:148-54. doi: 10.1016/j.mib.2014.11.016. Epub 2014 Dec 5.
Ten years of pan-genome analyses.
Vernikos G1, Medini D2, Riley DR3, Tettelin H4.
https://www.sciencedirect.com/science/article/pii/S1369527414001830?via%3Dihub
Table 1. Examples of the application of pan-genome approaches at different levels of phylogenetic resolution
```
Level	Organism	Approacha	# genomes	Core size (# genes)	Year (reference)
中略
Super kingdom	Eubacteria	Gene freq.	573	250	2009 [4••]
```
https://www.ncbi.nlm.nih.gov/pubmed/19168257
Trends Genet. 2009 Mar;25(3):107-10. doi: 10.1016/j.tig.2008.12.004. Epub 2009 Jan 23.
Estimating the size of the bacterial pan-genome.
Lapierre P1, Gogarten JP.

![](https://ars.els-cdn.com/content/image/1-s2.0-S1369527414001830-gr1.jpg)

### 2014

https://www.ncbi.nlm.nih.gov/pubmed/24460813
BMC Genomics. 2014 Jan 24;15:65. doi: 10.1186/1471-2164-15-65.
CodaChrome: a tool for the visualization of proteome conservation across all fully sequenced bacterial genomes.
Rokicki J, Knox D, Dowell RD1, Copley SD.






----------
## organism

### archaea

September 6, 2018
https://phys.org/news/2018-09-pan-genome-antarctic-archaea.html
Defining a pan-genome for Antarctic archaea

SEPTEMBER 5, 2018
https://jgi.doe.gov/defining-a-pan-genome-for-antarctic-archaea/
Defining a Pan-Genome for Antarctic Archaea - DOE Joint Genome Institute

https://twitter.com/msmjetten/status/884694940055416833
Mike Jetten on Twitter: "#FEMS2017 @eugene_koonin open vs closed #pangenome in #bacteria & #archaea with core, shell, & cloud orfs… "
4:44 AM - 11 Jul 2017

![](https://pbs.twimg.com/media/DEcRUf_XsAAAfYP.jpg)
![](https://pbs.twimg.com/media/DEcRWEzXkAEwoRe.jpg)

https://www.ncbi.nlm.nih.gov/pubmed/25764277
Life (Basel). 2015 Mar 10;5(1):818-40. doi: 10.3390/life5010818.
Archaeal Clusters of Orthologous Genes (arCOGs): An Update and Application for Analysis of Shared Features between Thermococcales, Methanococcales, and Methanobacteriales.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4390880/
The new arCOGs were constructed using refined algorithms for orthology identification combined with extensive manual curation, including incorporation of the results of several completed and ongoing research projects in archaeal genomics.


https://www.ncbi.nlm.nih.gov/pubmed/23241446
Biol Direct. 2012 Dec 14;7:46. doi: 10.1186/1745-6150-7-46.
Updated clusters of orthologous genes for Archaea: a complex ancestor of the Archaea and the byways of horizontal gene transfer.
Wolf YI1, Makarova KS, Yutin N, Koonin EV.
The updated version of the arCOG database incorporates 91% of the pangenome of 120 archaea (251,032 protein-coding genes altogether) into 10,335 arCOGs.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3534625/
Indeed, analysis of the commonality distribution [37,38] for the new arCOG collection gives estimates for the size of the “core” (highly conserved) and the “shell” (moderately conserved) components of the archaeal pangenome that are almost unchanged since 2007 (current estimates of ~220 and ~2,200 vs. ~230 and ~2,200, respectively, for the 2007 arCOG set).

https://www.ncbi.nlm.nih.gov/pubmed/27864514
Proc Natl Acad Sci U S A. 2016 Dec 6;113(49):E7937-E7946. Epub 2016 Nov 18.
Proteomics and comparative genomics of Nitrososphaera viennensis reveal the core genome and adaptations of archaeal ammonia oxidizers.
Kerou M1, Offre P1, Valledor L1, Abby SS1, Melcher M1, Nagler M1, Weckwerth W2, Schleper C3.

https://twitter.com/bioinfobact/status/440791373537898496
bioinfoproka on Twitter: "Ribosomal proteins : rigorous minimal & universal Core Genome #procaryotes #phylogeny http://t.co/TmgIxGmVoc #archaea http://t.co/LItv4B3pLG"
5:10 AM - 4 Mar 2014

### Rhodococcus equi

https://www.ncbi.nlm.nih.gov/pubmed/27638249
Genome Biol Evol. 2016 Oct 23;8(10):3140-3148.
Pangenome and Phylogenomic Analysis of the Pathogenic Actinobacterium Rhodococcus equi.
Anastasi E1, MacArthur I1, Scortti M1,2, Alvarez S1, Giguère S3, Vázquez-Boland JA4,2,5.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5174736/

![https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5174736/figure/evw222-F2/?report=objectonly](https://www.ncbi.nlm.nih.gov/core/lw/2.0/html/tileshop_pmc/tileshop_pmc_inline.html?title=Click%20on%20image%20to%20zoom&p=PMC3&id=5174736_evw222f2p.jpg)


### Pseudomonas aeruginosa

https://www.ncbi.nlm.nih.gov/pubmed/25961859
PLoS One. 2015 May 11;10(5):e0126468. doi: 10.1371/journal.pone.0126468. eCollection 2015.
What It Takes to Be a Pseudomonas aeruginosa? The Core Genome of the Opportunistic Pathogen Updated.
Valot B1, Guyeux C2, Rolland JY3, Mazouzi K4, Bertrand X5, Hocquet D5.

https://www.ncbi.nlm.nih.gov/pubmed/25168460
BMC Genomics. 2014 Aug 29;15:737. doi: 10.1186/1471-2164-15-737.
Characterization of the core and accessory genomes of Pseudomonas aeruginosa using bioinformatic tools Spine and AGEnt.
Ozer EA1, Allen JP, Hauser AR.

----------
## japanese

http://kazumaxneo.hatenablog.com/archive/category/pan-genome
pan-genome カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2019/02/08/073000
オルソログデータベース OrthoDB - macでインフォマティクス
OrthoDB v10は、1271の真核生物、5609のバクテリア、404のアーキア、および6488のウイルスをカバーしている（2018年9月現在）。

http://kazumaxneo.hatenablog.com/entry/2018/09/09/131729
Pan-genome解析をwebで実行できる PanWeb - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/12/09/014407
バクテリアのPan genome解析ツール FRIPAN - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/09/08/194159
パンゲノム解析ツール PGAP - macでインフォマティクス

http://omics-club.blogspot.jp/2014/07/20140707.html
Omics Club（オミックス・クラブ）: Quasispeciesとは
Quasispeciesの拡張概念：Core GenomeとPan Genome

http://gene-nex.com/service/pan-genome.html
パンゲノム - 対象研究分野 - Gene Nex — 次世代シーケンス受託解析サービス「ジーンネックス」

----------
## tools

https://omictools.com/pangenomics-category
Pan-genome analysis bioinformatics tools - omicX

https://www.researchgate.net/post/Favorite_tools_for_pan-genomic_analysis_of_bacterial_genomes

----------
### PGAP

https://www.ncbi.nlm.nih.gov/pubmed/30186253
Front Microbiol. 2018 Aug 21;9:1910. doi: 10.3389/fmicb.2018.01910. eCollection 2018.
PGAweb: A Web Server for Bacterial Pan-Genome Analysis.
Chen X1, Zhang Y2,3,4, Zhang Z2,3, Zhao Y5, Sun C6, Yang M7, Wang J2,3,4, Liu Q1,8, Zhang B1,8, Chen M2,3, Yu J3,4, Wu J3, Jin Z1,8, Xiao J2,3,4.

19 January 2018
https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-017-4326-x
Pan-genome tool PGAP-X is a cross-platform software to analyze and visualize genome structure dynamics and and gene content [54].

https://pgapx.zhaopage.com/
PGAP-X: Extension on pan-genome analysis pipeline


https://www.ncbi.nlm.nih.gov/pubmed/29363431
BMC Genomics. 2018 Jan 19;19(Suppl 1):36. doi: 10.1186/s12864-017-4337-7.
PGAP-X: extension on pan-genome analysis pipeline.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5780747/

As a web server, panX provides an interactive interface to visualize various data, including pan-genome statistical charts, gene cluster table, alignment, comparative phylogenies, metadata table [28]. However, it does not provide information about genome structure, gene distribution on the genome, and genetic variation. 

https://www.ncbi.nlm.nih.gov/pubmed/22130594
https://www.ncbi.nlm.nih.gov/pubmed/22130594
Bioinformatics. 2012 Feb 1;28(3):416-8. doi: 10.1093/bioinformatics/btr655. Epub 2011 Nov 29.
PGAP: pan-genomes analysis pipeline.
Zhao Y1, Wu J, Yang J, Sun S, Xiao J, Yu J.


----------
### panX

http://pangenome.de

https://www.ncbi.nlm.nih.gov/pubmed/29077859
Nucleic Acids Res. 2018 Jan 9;46(1):e5. doi: 10.1093/nar/gkx977.
panX: pan-genome analysis and exploration.
Ding W1, Baumdicker F2, Neher RA1,3.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5758898/
Tree building and ancestral reconstruction
PanX extracts all variable positions from the nucleotide alignments of all single copy core genes (those gene clusters in which all strains are represented exactly once) to construct a core-genome SNP matrix.

https://www.biorxiv.org/content/early/2018/08/12/286187
Real-time analysis and visualization of pathogen sequence data | bioRxiv
Here, we review recent developments in real-time analysis of pathogen sequence data with a particular focus on visualization and integration of sequence and phenotypic data.


https://www.ncbi.nlm.nih.gov/pubmed/29204317
PeerJ. 2017 Nov 30;5:e3948. doi: 10.7717/peerj.3948. eCollection 2017.
BGDMdocker: a Docker workflow for data mining and visualization of bacterial pan-genomes and biosynthetic gene clusters.
Cheng G1,2, Lu Q3, Ma L4, Zhang G4, Xu L5, Zhou Z1.
https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/29204317/
The analytical workflow consisted of three toolkits: Prokka v1.11 (Seemann, 2014), panX (Ding, Baumdicker & Neher, 2017), and antiSMASH3.0 (Weber et al., 2015), for prokaryotic genome annotation, pan-genome analysis and visualization, and analysis of biosynthetic gene clusters, respectively.

----------
### BPGA
Bacterial Pan Genome Analysis Pipeline
http://www.iicb.res.in/bpga/index.html

http://www.ncbi.nlm.nih.gov/pubmed/27071527
Sci Rep. 2016 Apr 13;6:24373. doi: 10.1038/srep24373.
BPGA- an ultra-fast pan-genome analysis pipeline.
Chaudhari NM1, Gupta VK1, Dutta C1.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4829868/table/t2/
Table 2. Comparison of 7 pan-genome analysis tools (BPGA, Roary, PanGP, PGAP, PGAT, Panseq, ITEP)

----------
### 2015

### Roary

https://sanger-pathogens.github.io/Roary/
Roary: the pan genome pipeline

https://www.ncbi.nlm.nih.gov/pubmed/26198102
Bioinformatics. 2015 Nov 15;31(22):3691-3. doi: 10.1093/bioinformatics/btv421. Epub 2015 Jul 20.
Roary: rapid large-scale prokaryote pan genome analysis.
Page AJ1, Cummins CA1, Hunt M1, Wong VK2, Reuter S3, Holden MT4, Fookes M1, Falush D5, Keane JA1, Parkhill J1.

----------
### 2014

### ITEP

https://hood-price.systemsbiology.org/research/itep/
ITEP: Integrated Toolkit for Exploration of Pan-genomes | The Hood-Price Lab for Systems Biomedicine

https://www.ncbi.nlm.nih.gov/pubmed/24387194
BMC Genomics. 2014 Jan 3;15:8. doi: 10.1186/1471-2164-15-8.
ITEP: an integrated toolkit for exploration of microbial pan-genomes.
Benedict MN, Henriksen JR, Metcalf WW, Whitaker RJ, Price ND1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3890548/

![https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3890548/figure/F1/](https://www.ncbi.nlm.nih.gov/core/lw/2.0/html/tileshop_pmc/tileshop_pmc_inline.html?title=Click%20on%20image%20to%20zoom&p=PMC3&id=3890548_1471-2164-15-8-1.jpg)

----------
### Panseq

https://www.ncbi.nlm.nih.gov/pubmed/20843356
BMC Bioinformatics. 2010 Sep 15;11:461. doi: 10.1186/1471-2105-11-461.
Pan-genome sequence analysis using Panseq: an online tool for the rapid analysis of core and accessory genomic regions.
Laing C1, Buchanan C, Taboada EN, Zhang Y, Kropinski A, Villegas A, Thomas JE, Gannon VP.



----------
### 




