# mgsa.virus

## Table of Contents
- [updates](#updates)
[2023](#2023)
[2020](#2020)
[2019](#2019)
[2018](#2018)
[2017](#2017)
[2016](#2016)
[2001](#2001)
- [phage](#phage)
- [people](#people)
[Ikemura](#ikemura)
[yokazaki](#yokazaki)
- 
- [VirFinder](#)
- 

----------

9:18 AM · Feb 15, 2023
https://twitter.com/linsalrob/status/1625650675236454400
Rob Edwards on X: "Need a #virus or #phage bioinformatics tool? Have a #virus or #phage bioinformatics tool? Check out this google sheet and add your new tools https://t.co/cULTGWQfva" / X
https://docs.google.com/spreadsheets/d/1ClNgip08olKK-oBMMlPHBwIcilqSxsan8MEaYphUei4/edit#gid=0
Viral Bioinformatics Tools - Google スプレッドシート

----------

10:56 PM · Nov 2, 2022
https://twitter.com/pacyc1841/status/1587805748435640320
K TOMINAGA(tomiken) on X: "ウイルス分野ツール多すぎる問題を少しでも解決したくて微力ながら集めてみました https://t.co/vQ9UNP9mNd" / X


https://github.com/Tomikent/Capsid_community
Capsid Community
近年、環境ウイルス分野のツールが数多く報告され、ツール選択は非常に困難です。 このように類似ツールが群雄割拠している現状は、新規参入の障壁や研究間比較の難化など、分野の大きな問題になっていると考えられます。
Capsid Communityは、このような環境ウイルス分野のツールの情報をまとめ、(今後)比較することで、そのような課題を解決する場になることを目指したコミュニティです。 本コミュニティはまだまだ未熟ですが、ぜひ気軽にContributeしていただき、コミュニティ参加者の力によってより使いやすいものにしていければと思います。 Contributeの仕方がわからない場合は、Issueにコメントいただけますと、リストに加えます。カプシドタンパクが自己集合するように、研究に役立つ知識が自己集合するコミュニティとなることを願っています。

----------
## VirFinder


https://kazumaxneo.hatenablog.com/entry/2020/06/14/175750
ゲノム配列からウィルス配列を同定してアノテーションをつける VIBRANT - macでインフォマティクス

　より最近のツールはVirSorterの代替または補足ツールとして開発されてきた。VirFinder [ref.41]は、機械学習を実装し、ウイルス予測のアノテーションデータベースから完全に独立した最初のツールであり、後にPPR-Meta [ref.42]で実装されたプラットフォームであった。VirFinderは、ウイルスが8ヌクレオチド頻度の特徴的なパターン（8-merと呼ばれる）を示す傾向があることを考慮して構築されたが、これはウイルスが宿主と非常に類似したヌクレオチドパターンを共有できるという知識にもかかわらず提案されたものである[ref.43]。これらの8-merパターンは、500 bp以下の短い配列を迅速に分類し、モデルに基づいたスコアを生成するために使用されるが、スコアのカットオフを定義するのはユーザー次第である。VirFinderはVirSorterと比較してウイルスの回収能力を大幅に向上させることが示されたが、機械学習モデルのトレーニング中におそらくはリファレンスデータベースに関連したバイアスから、多様なウイルスを予測する際にホストとソース環境にかなりのバイアスがかかっていることも示された[ref.41]。さらに、特定の環境からのウイルスの回収率が低いことも確認されている[ref.44]。

　ここで著者らはVIBRANT（Virus Identification By iteRative ANnoTation）を開発した。VIBRANTは、メタゲノムアセンブリとゲノム配列から遊離のウイルスとintegratedウイルスの両方を自動で回収、アノテーション、キュレーションするためのツールである。


更新日 2019年08月08日
https://qiita.com/Yohei__K/items/b713220e5b6cc8000acb
コンテナ環境にVirFinderのインストール - Qiita

VirFinder概要
論文：https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-017-0283-5

ウイルス由来の配列を抽出するソフトウェアで、VirSorter(2015, 引用>200)に次いで使われている(2017, 引用>60)
後発なので論文でVirSorterとの比較もしていて、特にショートコンティグでVirSorterより精度が出るとのこと
VirSorterはめちゃくちゃアドホックに複数の手法(既知ウイルスとの相同性、遺伝子の長さ、未知遺伝子の割合など)を組み合わせて独自の基準を算出し、ウイルスかどうかを判断するが、VirFinderはウイルスと非ウイルスのデータを集めて単純な機械学習の判別問題として解いているのがイケてる

VirFinder: a novel k-mer based tool for identifying viral sequences from assembled metagenomic data


----------
## updates

----------
## 2023

12:09 PM · Nov 1, 2023
https://twitter.com/gggtta/status/1719552137095713211
松本 on X: "日本バイオインフォマティクス学会によるオープンアクセスの日本語総説誌『JSBi Bioinformatics Review』の第4巻2号を公開しました。今号では、Primers記事1編と総説記事2編を掲載します。https://t.co/gVpgrbRm8I" / X
https://twitter.com/gggtta/status/1719552138551185671
松本 on X: "Primers1編目は、総研大・西村さんらによる「メタゲノムデータからのウイルス探索とバイローム構築」です。メタゲノムデータからウイルスを見つけるためのバイオインフォ技術を広く解説いただきました。https://t.co/WUrV0uWKqC" / X
https://www.jstage.jst.go.jp/article/jsbibr/4/2/4_jsbibr.2023.primer5/_article/-char/ja/
メタゲノムデータからのウイルス探索とバイローム構築
Primers
メタゲノムデータからのウイルス探索とバイローム構築
西村 瑠佳  , 井ノ上 逸朗 


----------
## 2020

2020-06-05
https://covid-19chronicles.cseas.kyoto-u.ac.jp/post-041-jp-html/
東南アジアにおける新型コロナウイルスの突然変異と拡散──今後のワクチンの行方── | Corona Chronicles: Voices from the Field

図3 RNAウイルスの進化速度の比較。進化速度（s/n/y、塩基置換を塩基あたり、年あたりで示す）はy軸上、ゲノムサイズ（nt、塩基数に基づく）はx軸上に示す。より大きなゲノムを持つ生命体は、変異速度がより遅い傾向にある。SARS-CoV-2を含むコロナウイルス科は、30,000ntという巨大なゲノムを持ち、その他のRNAウイルスに比べて遅い変異を示す。DNAウイルスの単純ヘルペスウイルスは、比較のために示すもの。データは複数の資料を基に編集した16,17,19–22。

参考文献

### Khot_2020_Review

https://pubmed.ncbi.nlm.nih.gov/32670501/
Review Comput Struct Biotechnol J
. 2020 Jun 19;18:1605-1612. doi: 10.1016/j.csbj.2020.06.019. eCollection 2020.
Computational approaches in viral ecology
Varada Khot 1, Marc Strous 1, Alyse K Hawley 1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7334295/
Here, we review recently developed computational methods for identifying viral sequences, exploring viral diversity in environmental samples, and predicting hosts from metagenomic sequence data. 


----------
## 2019

----------
## 2018
## 2018-06-29

6:01 AM · Jul 18, 2018
https://twitter.com/ASMicrobiology/status/1019326186625912832
ASM on Twitter: "Complexities of viral mutation rates, including 3 hypotheses for why mutation rates have not evolved to be zero, in a new @JVirology Gem: https://t.co/bWwl3Xa6Ti https://t.co/SnGlN65JxL" / Twitter

https://pubmed.ncbi.nlm.nih.gov/29720522/
Review J Virol
. 2018 Jun 29;92(14):e01031-17. doi: 10.1128/JVI.01031-17. Print 2018 Jul 15.
Complexities of Viral Mutation Rates
Kayla M Peck 1, Adam S Lauring 2 3
https://journals.asm.org/doi/10.1128/JVI.01031-17
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6026756/
substitutions per nucleotide site per cell infection (s/n/c)

----------
## 2016

https://pubmed.ncbi.nlm.nih.gov/26657537/
Review FEMS Microbiol Rev
. 2016 Mar;40(2):258-72. doi: 10.1093/femsre/fuv048. Epub 2015 Dec 9.
Computational approaches to predict bacteriophage-host relationships
Robert A Edwards 1, Katelyn McNair 2, Karoline Faust 3, Jeroen Raes 3, Bas E Dutilh 4
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5831537/

----------
## phage

https://www.sbj.or.jp/wp-content/uploads/file/sbj/8904/8904_biomedia_1.pdf
[PDF]過小評価されているファージの宿主域
井町 寛之

----------
## people
### Ikemura

https://h50146.www5.hpe.com/products/servers/news/topics/nagahama_bio/
膨大なデータ件数ｘ高次元のビッグデータを可能にするHPE Integrity Superdome X | HPE 日本（日本ヒューレット・パッカード株式会社）
その一つが核酸医薬ですが、核酸医薬の英語名がtherapeutic oligonucleotideであることからも明らかなように、オリゴヌクレオチド（具体的には、20～30連続塩基の核酸断片）を「アンチセンスRNAやsiRNA」のような遺伝子発現の“ブレーキ役”として使います。エボラの待ったなしの状況が「ゲノム解析を核酸医薬品の開発に活かす」取り組みを加速させているとも言えます。BLSOM法によるオリゴヌクレオチド組成の解析は、核酸医薬オリゴヌクレオチドの候補をサーチし最適にデザインするために欠かせない手法となっています。

https://www.nagahama-i-bio.ac.jp/research/教員の紹介（池村-淑道）/
（1）「ビッグデータからの知識発見」
ゲノム配列の連続塩基（オリゴヌクレオチド）組成には、各生物のサインと呼べるような明瞭な特徴が存在するが、kbレベルに断片化してもその特徴を検出できるBLSOMと呼ぶ新手法を確立した。

（２） 「エボラ出血熱、インフルエンザ、HIV用の核酸医薬のデザイン」
エボラやインフルエンザウイルスやHIVの増殖を抑える医薬品の候補の一つとして核酸医薬が考えられているが、核酸医薬の英語名がtherapeutic oligonucleotideであることからも明らかなように、オリゴヌクレオチド（具体的には、20 ～ 30連続塩基の核酸断片）を「アンチセンスRNA やsiRNA」のような遺伝子発現のブレーキ役として用いる方法である。我々のチームは、多様なゲノムのオリゴヌクレオチド組成をBLSOMで研究してきた成果を基礎に、病原ウイルスの遺伝子発現を抑えるが、ヒト遺伝子の発現には影響を与えない核酸医薬を、高機能計算機を用いてデザインしている。

https://www.ncbi.nlm.nih.gov/pubmed/28905886
Gene Ther. 2017 Oct;24(10):668-673. doi: 10.1038/gt.2017.76. Epub 2017 Sep 14.
Time-series oligonucleotide count to assign antiviral siRNAs with long utility fit in the big data era.
Wada K1, Wada Y1, Iwasaki Y1,2, Ikemura T1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5658673/
Oligonucleotides are key elements of nucleic acid therapeutics such as small interfering RNAs (siRNAs). Influenza and Ebolaviruses are zoonotic RNA viruses mutating very rapidly, and their sequence changes must be characterized intensively to design therapeutic oligonucleotides with long utility.

https://kimuraseminar.wordpress.com/2017年8月4日-ウイルスの進化/
20連塩基組成（約１兆1千億次元の変数）等の長いオリゴヌクレオチドについて,変化をもたらす分子機構を解析すると, 核酸医薬の開発に有用な知見がえ得られると考えている.

https://www.nagahama-i-bio.ac.jp/research/人類を脅かすエボラウイルス等のrnaウイルスの弱/
人類を脅かすエボラウイルス等のRNAウイルスの弱点を探索 – 長浜バイオ大学
エボラウイルス病やインフルエンザ、中東呼吸器症候群（MERS）など、人類の脅威となる感染症を引き起こすウイルスをコンピュータで探索し、ゲノムの変化に一定の規則性や再現性があることを見出しました。これにより、次世代医薬として注目される「核酸医薬」など、薬効の持続性が高い「待ちかまえ型医薬」開発への貢献が期待されます。これらの研究論文は、2016年11月3日発行の『Nature』の姉妹誌『SCIENTIFIC REPORTS』で紹介されました。

----------
### yokazaki

https://yokazaki.hatenablog.com/
yokaのblog
https://yokazaki.hatenablog.com/archive/category/研究

https://yokazaki.hatenablog.com/entry/2019/10/17/233545
琵琶湖の細菌・ウイルスのゲノムカタログ - yokaのblog

----------








