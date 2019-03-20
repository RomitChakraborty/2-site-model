#!/bin/bash
#SBATCH --job-name=1_3_wb97x-d.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=32
#SBATCH --output=1_3_wb97x-d.err
#SBATCH --error=1_3_wb97x-d.err

. /global/home/users/$USER/.bashrc

export QCTHREADS=32
export OMP_NUM_THREADS=32

rm /clusterfs/mhg/romitchak//variables.txt
set >> /clusterfs/mhg/romitchak//variables.txt

if [ ! -e $QCSCRATCH/ ]
then
   mkdir $QCSCRATCH/
   chmod -R 777 $QCSCRATCH/
fi

cd $QCSCRATCH/

if [ -e TMP ]
then
chmod 777 TMP
fi

mkdir 1_3_wb97x-d.in20190319025005
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.0/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.1/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.2/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.3/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.4/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.5/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.6/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.7/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.8/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.9/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.10/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.11/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.12/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.13/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.14/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.15/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.16/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.17/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.18/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.19/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.20/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.21/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.22/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.23/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.24/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.25/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.26/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.27/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.28/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.29/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.30/
cp -r 1_3_wb97x-d.in20190319025005 1_3_wb97x-d.in20190319025005.31/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97x-d.in 1_3_wb97x-d.in20190319025005qchem
qchem -save -nt 32 1_3_wb97x-d.in20190319025005qchem 1_3_wb97x-d.out20190319025005 1_3_wb97x-d.in20190319025005 > 1_3_wb97x-d.err20190319025005
cp 1_3_wb97x-d.out20190319025005 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97x-d.out
cat 1_3_wb97x-d.err20190319025005 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97x-d.err
rm -rf 1_3_wb97x-d.in20190319025005*
rm 1_3_wb97x-d.out20190319025005
rm 1_3_wb97x-d.err20190319025005
