#!/bin/bash
#SBATCH --job-name=1_1_wb97m-v.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=32
#SBATCH --output=1_1_wb97m-v.err
#SBATCH --error=1_1_wb97m-v.err

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

mkdir 1_1_wb97m-v.in20190319025028
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.0/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.1/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.2/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.3/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.4/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.5/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.6/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.7/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.8/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.9/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.10/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.11/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.12/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.13/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.14/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.15/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.16/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.17/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.18/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.19/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.20/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.21/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.22/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.23/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.24/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.25/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.26/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.27/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.28/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.29/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.30/
cp -r 1_1_wb97m-v.in20190319025028 1_1_wb97m-v.in20190319025028.31/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_1_wb97m-v.in 1_1_wb97m-v.in20190319025028qchem
qchem -save -nt 32 1_1_wb97m-v.in20190319025028qchem 1_1_wb97m-v.out20190319025028 1_1_wb97m-v.in20190319025028 > 1_1_wb97m-v.err20190319025028
cp 1_1_wb97m-v.out20190319025028 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_1_wb97m-v.out
cat 1_1_wb97m-v.err20190319025028 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_1_wb97m-v.err
rm -rf 1_1_wb97m-v.in20190319025028*
rm 1_1_wb97m-v.out20190319025028
rm 1_1_wb97m-v.err20190319025028
