----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-07-26

----------

# LS-BSR Tutorial Project
Project started 2017-06-05.

I have created shell scripts to perform all analyses in [LS_BSR_manual.pdf](https://github.com/jasonsahl/LS-BSR/blob/master/LS_BSR_manual.pdf)


![https://omictools.com/large-scale-blast-score-ratio-tool](https://omictools.com/upload/tool/image/la/large-scale-blast-score-ratio-1.jpg)

----------

## Project directory structures

    lsbsr/
     README.md: project documentation 
     data/: contains data files
     scripts/: contains Shell scripts
     analysis/: contains results of data analyses

## Scripts

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/lsbsr/scripts/run_lsbsr.sh

    # Running the shell script
    (time bash run_lsbsr.sh &) >& log.txt
	(time bash ./run_lsbsr.sh &) >& log.lsbsr.$(date +%F).txt

    # Use `tail -f` to constantly monitor files (use Control-C to stop)
    tail -f log.txt

----------

## Steps

[LS_BSR_manual.pdf](https://github.com/jasonsahl/LS-BSR/blob/master/LS_BSR_manual.pdf)
The Large Scale Blast Score Ratio (LS-BSR) pipeline

### Installation

Download LS-BSR into your home directory using:

    cd $HOME
    git clone https://github.com/jasonsahl/LS-BSR
    cd LS-BSR/
    python setup.py install
    python $HOME/LS-BSR/tests/test_all_functions.py

    chmod +x $HOME/LS-BSR/ls_bsr.py
    find $HOME/LS-BSR/tools -type f -name "*.py" | xargs ls -l
    find $HOME/LS-BSR/tools -type f -name "*.py" | xargs chmod +x

	# neo:~/projects/mgsa/lsbsr/2017-06-05

    # export these: (either add to bashrc or type as is in the terminal)
    export PATH=$PATH:$HOME/LS-BSR
    export PATH=$PATH:$HOME/LS-BSR/tools
    export PYTHONPATH=$PYTHONPATH:$HOME/LS-BSR
	export PATH=$PATH:/home/haruo/tools/LS-BSR
	export PATH=$PATH:/home/haruo/tools/LS-BSR/tools
	export PYTHONPATH=$PYTHONPATH:/home/haruo/tools/LS-BSR

### Test data – give LS-BSR a whirl on small datasets

	find test_data

1. Test the gene screen method with tblastn:

        ls_bsr.py -d test_data/genomes -g test_data/genes/ecoli_markers.fasta

2. Test the gene screen method with blastn:

        ls_bsr.py -d test_data/genomes -g test_data/genes/ecoli_markers.fasta -b blastn

3. Test the de novo gene prediction method:

        ls_bsr.py -d test_data/genomes -c usearch

### Post-matrix scripts

	# neo:~/projects/mgsa/lsbsr/2017-07-06
	n_cores=$(getconf _NPROCESSORS_ONLN)
	PREFIX="test"

	echo; echo "# Run the de novo gene prediction method:"
	ls_bsr.py -p "${n_cores}" -d data/fna -c usearch -x ${PREFIX}

#### 10. invert_select_group.py
Can be used in conjunction with the compare_BSR.py script. If you are comparing groups, you copy the IDs from group1 into a file, then uses the names.txt file to automatically create the group2 IDs.

    # Input files
    names.txt
	cat ${PREFIX}_names.txt | sort | head -n 2 > group1.txt

    # Running the script
    invert_select_group.py group1.txt names.txt > group2.txt
	invert_select_group.py group1.txt ${PREFIX}_names.txt > group2.txt

#### 1. compare_BSR.py
Looks for CDS differences between two user-defined populations.

    # Input files
    consensus.fasta
    bsr_matrix.txt
	cat ${PREFIX}_names.txt | sort | head -n 2 > group1.txt
	cat ${PREFIX}_names.txt | sort | tail -n 2 > group2.txt

    # Running the script
    compare_BSR.py -1 group1.txt -2 group2.txt -f consensus.fasta -b bsr_matrix.txt
	compare_BSR.py -1 group1.txt -2 group2.txt -f ${PREFIX}_consensus.fasta -b ${PREFIX}_bsr_matrix.txt

    # Output files
    group1_pruned.txt
    group2_pruned.txt
    groups_combined.txt
    group1_unique_seqs.fasta
    group2_unique_seqs.fasta
    groups_combined_header.txt

#### 2. filter_BSR_variome.py
Filters out the conserved regions of the pan-genome, if you are only interested in looking at the “variome” or accessory genome

    # Input files
    bsr_matrix.txt

    # Running the script
    filter_BSR_variome.py -b bsr_matrix.txt
	filter_BSR_variome.py -b ${PREFIX}_bsr_matrix.txt

    # Output files
    variome_BSR_matrix

#### 3. filter_column_BSR.py
Can remove a column from a BSR matrix, in the case where a genome doesn’t belong, or is of poor quality

    # Input files
    bsr_matrix.txt
	cat ${PREFIX}_names.txt | sort | tail -n 2 > to_remove.txt

    # Running the script
    filter_column_BSR.py -b bsr_matrix.txt -p pruned -g to_remove.txt
	filter_column_BSR.py -b ${PREFIX}_bsr_matrix.txt -p pruned -g to_remove.txt

    # Output files
    pruned_genomes.matrix

#### 4. isolate_uniques_BSR.py
Isolates CDSs only present in a single genome, using a user defined threshold for the definition of absence

    # Input files
    bsr_matrix.txt

    # Running the script
    isolate_uniques_BSR.py -b bsr_matrix.txt -t 0.4
	isolate_uniques_BSR.py -b ${PREFIX}_bsr_matrix.txt -t 0.4

    # Output files
    uniques_BSR_matrix

#### 5. pan_genome_stats.py
Calculates several popular pan-genome stats, based on the BSR matrix

    # Input files
    bsr_matrix.txt

    # Running the script
    pan_genome_stats.py -b bsr_matrix.txt
	pan_genome_stats.py -b ${PREFIX}_bsr_matrix.txt -u 0.8 -l 0.4
	# Standard output
	# of conserved genes = 36
	# of unique genes = 64
	# of unique genes per genome = 16.0

    # Output files
    core_gene_ids.txt
    unique_gene_ids.txt
    frequency_data.txt

#### 11. select_seqs_by_IDs.py
Sub-selects a FASTA file based on a list of IDs. This can be used in conjunction with the pangenome_stats script to select the core or unique genes from the consensus.fasta file

    # Input files
    consensus.fasta
    core_gene_ids.txt
    unique_gene_ids.txt

    # Running the script
    select_seqs_by_IDs.py -i in.fasta -d fasta_IDs.txt -o out.fasta
	select_seqs_by_IDs.py -i ${PREFIX}_consensus.fasta -d core_gene_ids.txt -o core_gene.fasta
	select_seqs_by_IDs.py -i ${PREFIX}_consensus.fasta -d unique_gene_ids.txt -o unique_gene.fasta

#### 6. BSR_to_PANGP.py
Converts a BSR matrix to something that can be easily visualized with PanGP (http://PanGP.big.ac.cn). CDSs that are above a given threshold are converted to a “1” and below that threshold are converted to a “-“.

    # Input files
    bsr_matrix.txt

    # Running the script
    BSR_to_PANGP.py -b bsr_matrix.txt -l 0.8
	BSR_to_PANGP.py -b ${PREFIX}_bsr_matrix.txt -l 0.8

    # Output files
    panGP_matrix.txt

#### 7. BSR_to_gene_accumulation_scatter.py
For a given number of iterations, the script randomly samples genomes at various depths, and reports back the number of core and unique CDSs in the pan-genome. The script also determines the gene accumulation in the pan-genome.

    # Input files
    bsr_matrix.txt

    # Running the script
    BSR_to_gene_accumulation_scatter.py -b bsr_matrix.txt -u 0.8 -l 0.4 -n 10 -t all
	BSR_to_gene_accumulation_scatter.py -b ${PREFIX}_bsr_matrix.txt -u 0.8 -l 0.4 -n 10 -t all -p out7

    # Output files
    *_accumulation_replicates.txt
    *_core_replicates.txt
    *_uniques_replicates.txt

#### 8. quantify_BSR_uniques.py
Prints out the number of unique CDSs, sorted by a given tree. Nice way of annotating a tree with where unique CDSs are present

• Newick tree

 uniques_sorted_by_tree.txt

    # Running the script
    quantify_BSR_uniques.py -b bsr_matrix.txt -r test.tree

#### 9. reorder_BSR_matrix_by_tree.py
Transposes a BSR matrix and re-orders the matrix based on the order of the taxa in a newick-formatted tree

    # Input files
    # Running the script
    # Output files

#### 12. slice_ref_genome.py
This script splits a provided reference into fragments using a sliding window approach. This could be useful for the case where you are interested in intergenic regions, deletion junctions, etc.

    # Input files
    data/fna/*.fasta # Reference genome in FASTA format

    # Running the script
    slice_ref_genome.py -r reference.fasta -f 500 -s 200
    for file in `find . -maxdepth 1 -name "*.fasta"`; do name=$(echo $file | cut -f 2 -d "/"); slice_ref_genome.py -r $file; done
	# non-overlapping windows
	slice_ref_genome.py -r data/fna/NC_001735.fasta -f 1000 -s 1000
	for file in `ls data/fna/*.fasta`; do slice_ref_genome.py -r $file -f 1000 -s 1000; done

    # Output files
    *_seqs_shredded.txt

#### 13. transfer_annotation.py
If you have a file with annotated peptide sequences, it will transfer that annotation to your centroids, if there is a close match using a user-defined BSR threshold. In some cases, there might not be a close match, especially with highly plastic genomes.

    # Input files
    data/faa/*.fasta # file with annotated peptide sequences
    consensus.fasta

    # Running the script
    transfer_annotation.py -p NC_017633.pep -c consensus.fasta
	transfer_annotation.py -p data/faa/NC_001735.pep -c ${PREFIX}_consensus.fasta -r 2 -t 80

    # Output files
    in_fasta_annotated.fasta



現在、以下のエラーを出力

$transfer_annotation.py -h
  File "/home/haruo/tools/LS-BSR/tools/transfer_annotation.py", line 82
    print "Problem with gene list.  Are there duplicate headers in your file?"
                                                                             ^
SyntaxError: invalid syntax

#### 14. extract_locus_tags.py
Given a GenBank file, this script will generate a multi-FASTA nucleotide file with all locus tags. Helpful for transferring annotation in script #13.


    # Input files
    data/gbk/*.gbk # GenBank file

    # Running the script
    extract_locus_tags.py test_data/NC_007779.gbk
	find data/gbk -name "*.gbk" | xargs -I{} extract_locus_tags.py {}

    # Output files
    ./*.fasta


#### 15. extract_core_genome.py
This script extracts core genome regions from all genomes, aligns them, then concatenates them into a single multiple sequence alignment

    # Input files
    data/fna # Directory of genomes in FASTA format
    consensus.fasta

    # Running the script
    extract_core_genome.py -d genomes -g consensus.fasta
	extract_core_genome.py -d data/fna -g ${PREFIX}_consensus.fasta

This did not generate any output file...

    # Output files

#### 16. annotate_matrix_by_locus_tags.py
Given a BSR matrix, a consensus file, and locus tags, such as those produced with script described above, a new BSR matrix will be generated and annotated by locus tags if the BSR values are >80% similar.


    # Input files
    bsr_matrix.txt
    consensus.fasta

    # Running the script
    annotate_matrix_by_locus_tags.py -b bsr_matrix.txt -c consensus.fasta -l test_data/NC_007779.fasta -p out
	annotate_matrix_by_locus_tags.py -b ${PREFIX}_bsr_matrix.txt -c ${PREFIX}_consensus.fasta -l ./NC_001735.fasta -t 80 -p out16

    # Output files
    bsr_matrix_annotated.txt
    *.consensus_annotated.fasta

以下の問題

Running a shell script <run_lsbsr.sh> generated the new BSR matrix <bsr_matrix_annotated.txt>, in which lower lines were annotated by locus tags (e.g. "R751p68" "R751p69"), while upper lines were not (e.g. "NC_001735.4_16"), as shown below:
--------------------------------------------------
$(head -n 2; tail -n 2) < bsr_matrix_annotated.txt
        NC_007337       NC_008459       NC_001735       NC_005088
NC_001735.4_16  0.00    0.00    1.00    0.00
R751p68 1.00    1.00    0.99    1.00
R751p69 1.00    0.99    1.00    1.00
--------------------------------------------------


----------

## Acknowledgements

I am grateful to Dr. Jason W. Sahl for his advice on LS-BSR.

----------

## References

- [LS-BSR (Large-Scale BLAST Score Ratio) | Pan-genome analysis - OMICtools](https://omictools.com/large-scale-blast-score-ratio-tool)
- [LS-BSR (Large Scale Blast Score Ratio)](https://github.com/jasonsahl/LS-BSR)
- [Sahl JW et al. (2014) PeerJ. "The large-scale blast score ratio (LS-BSR) pipeline: a method to rapidly compare genetic content between bacterial genomes."](https://www.ncbi.nlm.nih.gov/pubmed/24749011)

### BLAST score ratio (BSR)

http://bsr.igs.umaryland.edu
The Blast Score Ratio Analysis Tool

https://www.ncbi.nlm.nih.gov/pubmed/15634352
BMC Bioinformatics. 2005 Jan 5;6:2.
Visualization of comparative genomic analyses by BLAST score ratio.
Rasko DA1, Myers GS, Ravel J.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC545078/figure/F1/
A. BLAST score ratio analysis (BSR) calculation demonstrating how the two coordinates for plotting in figures B and C are calculated. 

### Unclassified

https://www.ncbi.nlm.nih.gov/pubmed/20661434
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2908626/
Each similarity score was normalized by dividing the bit score between two sequences by the maximum of the bit score of each sequence when scored against itself (norm_score(x,y) = bit_sore(x,y)/max(bit_score(x,x),bit_score(y,y))). 

----------


