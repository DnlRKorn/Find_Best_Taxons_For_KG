#https://data.pantherdb.org/ftp/ortholog/19.0/
mkdir -p Data/Panther
mkdir -p Data/OMA
DATA_DIR=$(readlink -f Data/Panther)
mkdir -p /scratch/tmp/KG_Taxon_Data
cd /scratch/tmp/KG_Taxon_Data
#wget https://data.pantherdb.org/ftp/ortholog/current_release/AllOrthologs.tar.gz
#tar -xf AllOrthologs.tar.gz
head -n 10000 AllOrthologs > AllOrthologs_HEAD
#curl "https://rest.uniprot.org/taxonomy/stream?compressed=true&fields=id%2Cmnemonic&format=tsv&query=%28*%29+AND+%28taxonomies_with%3A1_uniprotkb%29" > taxons_with_uniprotkb.tsv.gz
gunzip -f taxons_with_uniprotkb.tsv.gz
head -n 10000 taxons_with_uniprotkb.tsv > taxons_with_uniprotkb_HEAD.tsv

curl "https://rest.uniprot.org/taxonomy/stream?compressed=true&fields=id%2Cmnemonic&format=tsv&query=%28*%29+AND+%28taxonomies_with%3A2_reviewed%29" > swissprot_taxons.tsv.gz
gunzip -f swissprot_taxons.tsv.gz


#mkdir -p /scratch/tmp/OMA_Species
#cd /scratch/tmp/OMA_Species
#wget https://omabrowser.org/All/oma-species.txt
#wget https://services.healthtech.dtu.dk/services/SignalP-6.0/public_data/ref_prot_preds_eukarya.csv

rm $DATA_DIR/*
ln -s /scratch/tmp/KG_Taxon_Data/AllOrthologs $DATA_DIR/AllOrthologs
ln -s /scratch/tmp/KG_Taxon_Data/AllOrthologs_HEAD $DATA_DIR/AllOrthologs_HEAD
ln -s /scratch/tmp/KG_Taxon_Data/taxons_with_uniprotkb.tsv $DATA_DIR/taxons_with_uniprotkb.tsv
ln -s /scratch/tmp/KG_Taxon_Data/taxons_with_uniprotkb_HEAD.tsv $DATA_DIR/taxons_with_uniprotkb_HEAD.tsv

ln -s /scratch/tmp/KG_Taxon_Data/swissprot_taxons.tsv $DATA_DIR/swissprot_taxons.tsv

#ln -s /scratch/tmp/OMA_Species/oma-species.txt $DATA_DIR/../OMA/oma-species.txt
#ln -s /scratch/tmp/OMA_Species/ref_prot_preds_eukarya.csv $DATA_DIR/../OMA/ref_prot_preds_eukarya.csv