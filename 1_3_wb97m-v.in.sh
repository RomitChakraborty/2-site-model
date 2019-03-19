#!/bin/bash
#SBATCH --job-name=1_3_wb97m-v.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=32
#SBATCH --output=1_3_wb97m-v.err
#SBATCH --error=1_3_wb97m-v.err

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

mkdir 1_3_wb97m-v.in20190319025029
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.0/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.1/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.2/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.3/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.4/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.5/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.6/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.7/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.8/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.9/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.10/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.11/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.12/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.13/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.14/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.15/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.16/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.17/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.18/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.19/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.20/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.21/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.22/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.23/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.24/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.25/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.26/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.27/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.28/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.29/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.30/
cp -r 1_3_wb97m-v.in20190319025029 1_3_wb97m-v.in20190319025029.31/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97m-v.in 1_3_wb97m-v.in20190319025029qchem
qchem -save -nt 32 1_3_wb97m-v.in20190319025029qchem 1_3_wb97m-v.out20190319025029 1_3_wb97m-v.in20190319025029 > 1_3_wb97m-v.err20190319025029
cp 1_3_wb97m-v.out20190319025029 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97m-v.out
cat 1_3_wb97m-v.err20190319025029 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97m-v.err
rm -rf 1_3_wb97m-v.in20190319025029*
rm 1_3_wb97m-v.out20190319025029
rm 1_3_wb97m-v.err20190319025029
