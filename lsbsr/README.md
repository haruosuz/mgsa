----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-06-05

----------

# LS-BSR Tutorial Project
Project started 2017-06-05.

I have created shell scripts to perform all analyses in [LS_BSR_manual.pdf](https://github.com/jasonsahl/LS-BSR/blob/master/LS_BSR_manual.pdf)
The Large Scale Blast Score Ratio (LS-BSR) pipeline
Updated 12/13/2016

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

    # Use `tail -f` to constantly monitor files (use Control-C to stop)
    tail -f log.txt

----------

## Steps

----------

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


    # export these: (either add to bashrc or type as is in the terminal)
    export PATH=$PATH:$HOME/LS-BSR
    export PATH=$PATH:$HOME/LS-BSR/tools
    export PYTHONPATH=$PYTHONPATH:$HOME/LS-BSR

### Test data – give LS-BSR a whirl on small datasets


1. Test the gene screen method with tblastn:

        ls_bsr.py -d test_data/genomes -g test_data/genes/ecoli_markers.fasta

2. Test the gene screen method with blastn:

        ls_bsr.py -d test_data/genomes -g test_data/genes/ecoli_markers.fasta -b blastn

3. Test the de novo gene prediction method:

        ls_bsr.py -d test_data/genomes -c usearch

### Post-matrix scripts


#### 1. compare_BSR.py
Looks for CDS differences between two user-defined populations.

    # Preparing input files
    cat ${PREFIX}names.txt | sort | head -n 2 > group1.txt
    cat ${PREFIX}names.txt | sort | tail -n 2 > group2.txt

    # Input files
    group1.txt
    group2.txt
    consensus.fasta
    bsr_matrix.txt

    # Running the script
    compare_BSR.py -1 group1.txt -2 group2.txt -f consensus.fasta -b bsr_matrix.txt

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

    # Output files
    variome_BSR_matrix

#### 3. filter_column_BSR.py
Can remove a column from a BSR matrix, in the case where a genome doesn’t belong, or is of poor quality

    # Preparing input files
    cat ${PREFIX}names.txt | sort | tail -n 2 > to_remove.txt

    # Input files
    bsr_matrix.txt
    to_remove.txt

    # Running the script
    filter_column_BSR.py -b bsr_matrix.txt -p pruned -g to_remove.txt

    # Output files
    pruned_genomes.matrix

#### 4. isolate_uniques_BSR.py
Isolates CDSs only present in a single genome, using a user defined threshold for the definition of absence

    # Input files
    bsr_matrix.txt

    # Running the script
    isolate_uniques_BSR.py -h
    isolate_uniques_BSR.py -b bsr_matrix.txt -t 0.4

    # Output files
    uniques_BSR_matrix

#### 5. pan_genome_stats.py
Calculates several popular pan-genome stats, based on the BSR matrix -what do you need for the script to run?

    # Input files
    bsr_matrix.txt

    # Running the script
    pan_genome_stats.py -b bsr_matrix.txt -t 0.8 -l 0.4

    # Standard output
    # of conserved genes = 36
    # of unique genes = 64
    # of unique genes per genome = 16.0

    # Output files
    core_gene_ids.txt
    unique_gene_ids.txt
    frequency_data.txt

#### 6. BSR_to_PANGP.py
Converts a BSR matrix to something that can be easily visualized with PanGP (http://PanGP.big.ac.cn). CDSs that are above a given threshold are converted to a “1” and below that threshold are converted to a “-“.

    # Input files
    bsr_matrix.txt

    # Running the script
    BSR_to_PANGP.py -b bsr_matrix.txt -l 0.8

    # Output files
    panGP_matrix.txt

#### 7. BSR_to_gene_accumulation_scatter.py
For a given number of iterations, the script randomly samples genomes at various depths, and reports back the number of core and unique CDSs in the pan-genome. The script also determines the gene accumulation in the pan-genome.

    # Input files
    bsr_matrix.txt

    # Running the script
    BSR_to_gene_accumulation_scatter.py -b bsr_matrix.txt -u 0.8 -l 0.4 -n 10 -t all

Must provide prefix.

Options:

  -p PREFIX, --prefix=PREFIX
                        prefix for naming output files [REQUIRED]

 analysis/BSR_to_gene_accumulation_scatter/

    # Output files

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
    
#### 10. invert_select_group.py
Can be used in conjunction with the compare_BSR.py script. If you are comparing groups, you copy the IDs from group1 into a file, then uses the names.txt file to automatically create the group2 IDs.

    # Preparing input files
    cat ${PREFIX}names.txt | sort | head -n 2 > group1.txt

    # Input files
    group1.txt
    names.txt

    # Running the script
    invert_select_group.py group1.txt names.txt > group2.txt

#### 11. select_seqs_by_IDs.py
Sub-selects a FASTA file based on a list of IDs. This can be used in conjunction with the pangenome_stats script to select the core or unique genes from the consensus.fasta file


    # Input files
    consensus.fasta
    core_gene_ids.txt
    unique_gene_ids.txt

    # Running the script
    select_seqs_by_IDs.py -i in.fasta -d fasta_IDs.txt -o out.fasta
    select_seqs_by_IDs.py -i consensus.fasta -d core_gene_ids.txt -o core_gene.fasta
    select_seqs_by_IDs.py -i consensus.fasta -d unique_gene_ids.txt -o unique_gene.fasta


#### 12. slice_ref_genome.py
This script splits a provided reference into fragments using a sliding window approach. This could be useful for the case where you are interested in intergenic regions, deletion junctions, etc.

    # Input files
    data/fna/*.fasta # Reference genome in FASTA format

    # Running the script
    slice_ref_genome.py -r reference.fasta -f 500 -s 200
    for file in `find . -maxdepth 1 -name "*.fasta"`; do slice_ref_genome.py -r $file; done
    # non-overlapping windows
    slice_ref_genome.py -r data/fna/NC_001735.fasta -f 1000 -s 1000
    for file in `ls data/fna/*.fasta`; do slice_ref_genome.py -r $file -f 1000 -s 1000; done

    # Output files
    *_seqs_shredded.txt

#### 13. transfer_annotation.py
If you have a file with annotated peptide sequences, it will transfer that annotation to your centroids, if there is a close match using a user-defined BSR threshold. In some cases, there might not be a close match, especially with highly plastic genomes.

    # Input files
    data/faa/*.fasta # Reference genome in FASTA format
    consensus.fasta

    # Running the script
    transfer_annotation.py -p NC_017633.pep -c consensus.fasta

    # Output files
    in_fasta_annotated.fasta

#### 14. extract_locus_tags.py
Given a GenBank file, this script will generate a multi-FASTA nucleotide file with all locus tags. Helpful for transferring annotation in script #13.

    # Input files
    data/gbk/*.gbk # GenBank file

    # Running the script
    extract_locus_tags.py data/gbk/NC_001735.gbk

    # Output files
    data/gbk/NC_001735.fasta

#### 15. extract_core_genome.py
This script extracts core genome regions from all genomes, aligns them, then concatenates them into a single multiple sequence alignment

    # Input files
    data/fna # Directory of genomes in FASTA format
    consensus.fasta

    # Running the script
    extract_core_genome.py -d genomes -g consensus.fasta
    extract_core_genome.py -d data/fna -g ${PREFIX}consensus.fasta

This did not generate any output file...

    # Output files

#### 16. annotate_matrix_by_locus_tags.py
Given a BSR matrix, a consensus file, and locus tags, such as those produced with script described above, a new BSR matrix will be generated and annotated by locus tags if the BSR values are >80% similar.

    # Input files
    bsr_matrix.txt
    consensus.fasta

    # Running the script
    annotate_matrix_by_locus_tags.py -b ${PREFIX}bsr_matrix.txt -c ${PREFIX}consensus.fasta -l data/gbk/NC_001735.fasta -t 80

    # Output files
    bsr_matrix_annotated.txt
    consensus_annotated.fasta


The new BSR matrix were not annotated by locus tags...

----------

## Acknowledgements

I am grateful to Dr. Jason W. Sahl for his advice on LS-BSR.

----------

## References

- [LS-BSR (Large-Scale BLAST Score Ratio) | Pan-genome analysis - OMICtools](https://omictools.com/large-scale-blast-score-ratio-tool)
- [LS-BSR (Large Scale Blast Score Ratio)](https://github.com/jasonsahl/LS-BSR)
- [Sahl JW et al. (2014) PeerJ. "The large-scale blast score ratio (LS-BSR) pipeline: a method to rapidly compare genetic content between bacterial genomes."](https://www.ncbi.nlm.nih.gov/pubmed/24749011)

----------


