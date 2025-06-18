mkdir -p Data/GO_Annotation
DATA_DIR=$(readlink -f Data/GO_Annotation)
#cd Data/GO_Annotation
#wget https://github.com/monarch-initiative/go-ingest/releases/latest/download/go_annotation_edges.tsv
cd /scratch/tmp
#wget https://release.geneontology.org/2025-06-01/annotations/filtered_goa_uniprot_all.gaf.gz
gunzip filtered_goa_uniprot_all.gaf.gz
head -n 1000 filtered_goa_uniprot_all.gaf filtered_goa_uniprot_all_HEAD.gaf
ln -s filtered_goa_uniprot_all.gaf $DATA_DIR/filtered_goa_uniprot_all.gaf
ln -s filtered_goa_uniprot_all_HEAD.gaf $DATA_DIR/filtered_goa_uniprot_all_HEAD.gaf