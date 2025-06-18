mkdir -p Data/OMIA
DATA_DIR=$(readlink -f Data/OMIA)
#cd Data/GO_Annotation
#wget https://github.com/monarch-initiative/go-ingest/releases/latest/download/go_annotation_edges.tsv
cd /scratch/tmp

#wget https://www.omia.org/static/omia.xml.gz
#gunzip -f omia.xml.gz
#head -n 10000 omia.xml > omia_HEAD.xml
echo $DATA_DIR
rm $DATA_DIR/*
ln -s /scratch/tmp/omia.xml $DATA_DIR/omia.xml
ln -s /scratch/tmp/omia_HEAD.xml $DATA_DIR/omia_HEAD.xml