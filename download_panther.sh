#https://data.pantherdb.org/ftp/ortholog/19.0/
DATA_DIR=$(readlink -f Data)
mkdir -p /scratch/tmp/KG_Taxon_Data
cd /scratch/tmp/KG_Taxon_Data
#wget https://data.pantherdb.org/ftp/ortholog/current_release/AllOrthologs.tar.gz
#tar -xf AllOrthologs.tar.gz
head AllOrthologs > AllOrthologs_HEAD
ln -s AllOrthologs $DATA_DIR
ln -s AllOrthologs_HEAD $DATA_DIR