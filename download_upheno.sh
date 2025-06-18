mkdir -p Data/UPheno
cd Data/UPheno
wget https://github.com/monarch-initiative/upheno-cross-species-ingest/releases/download/2025-06-08/upheno_phenotype_to_phenotype_edges.tsv
head -n 100 upheno_phenotype_to_phenotype_edges.tsv > upheno_phenotype_to_phenotype_edges_HEAD.tsv