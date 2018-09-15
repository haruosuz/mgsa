snippy --outdir 'NC_005088' --ctgs '/Users/haruo/Google_Drive/projects/mgsa/tools/snippy/data/fna/NC_005088.fasta' --ref ./data/gbk/NC_008459.gbk --cpus 4
snippy --outdir 'NC_001735' --ctgs '/Users/haruo/Google_Drive/projects/mgsa/tools/snippy/data/fna/NC_001735.fasta' --ref ./data/gbk/NC_008459.gbk --cpus 4
snippy --outdir 'NC_008459' --ctgs '/Users/haruo/Google_Drive/projects/mgsa/tools/snippy/data/fna/NC_008459.fasta' --ref ./data/gbk/NC_008459.gbk --cpus 4
snippy --outdir 'NC_007337' --ctgs '/Users/haruo/Google_Drive/projects/mgsa/tools/snippy/data/fna/NC_007337.fasta' --ref ./data/gbk/NC_008459.gbk --cpus 4
snippy-core --ref 'NC_001735/ref.fa' NC_001735 NC_005088 NC_007337 NC_008459
