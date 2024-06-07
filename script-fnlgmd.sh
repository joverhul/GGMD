#!/bin/bash

conda install networkx 
conda install joblib


#conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch

#WRK="./JTVAE/CPU-P3/fast_bo/Theano-master/"
#echo $WRK
#cd $WRK
#python setup.py install

#cd ../../../..

#HOM="/home/azureuser/cloudfiles/code/Users/overhulsejm/job-test/src/"
#echo $HOM
#cd $HOM



echo "hello"

WRK="."
echo $WRK




CODE="./source/main.py"
CONF="./examples/LogP_JTVAE/config.yaml"

smiles_input_file=$1
output_directory=$4

vocab_path=$2
model_path=$3


echo $*

python $CODE -config $CONF     \
            -smiles_input_file $smiles_input_file    \
            -vocab_path $vocab_path     \
            -model_path $model_path     \
            -output_directory $output_directory






