import sys
from Bio import SeqIO
filename = sys.argv[1] # Takes first command line argument input filename
for record in SeqIO.parse(filename, "genbank"):
    for feature in record.features:
        if feature.type == "CDS":
            locus_tag = feature.qualifiers.get("locus_tag", ["-"])[0]
            product = feature.qualifiers.get("product", ["-"])[0]
            print("%s\t%s" % (locus_tag, product))
