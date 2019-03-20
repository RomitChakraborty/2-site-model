#!/bin/bash
#SBATCH --job-name=1_5_wb97x-d_simple.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=32
#SBATCH --output=1_5_wb97x-d_simple.err
#SBATCH --error=1_5_wb97x-d_simple.err

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

mkdir 1_5_wb97x-d_simple.in20190319025016
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.0/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.1/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.2/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.3/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.4/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.5/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.6/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.7/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.8/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.9/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.10/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.11/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.12/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.13/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.14/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.15/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.16/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.17/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.18/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.19/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.20/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.21/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.22/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.23/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.24/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.25/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.26/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.27/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.28/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.29/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.30/
cp -r 1_5_wb97x-d_simple.in20190319025016 1_5_wb97x-d_simple.in20190319025016.31/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_5_wb97x-d_simple.in 1_5_wb97x-d_simple.in20190319025016qchem
qchem -save -nt 32 1_5_wb97x-d_simple.in20190319025016qchem 1_5_wb97x-d_simple.out20190319025016 1_5_wb97x-d_simple.in20190319025016 > 1_5_wb97x-d_simple.err20190319025016
cp 1_5_wb97x-d_simple.out20190319025016 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_5_wb97x-d_simple.out
cat 1_5_wb97x-d_simple.err20190319025016 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_5_wb97x-d_simple.err
rm -rf 1_5_wb97x-d_simple.in20190319025016*
rm 1_5_wb97x-d_simple.out20190319025016
rm 1_5_wb97x-d_simple.err20190319025016
