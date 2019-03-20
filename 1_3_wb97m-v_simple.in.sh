#!/bin/bash
#SBATCH --job-name=1_3_wb97m-v_simple.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=32
#SBATCH --output=1_3_wb97m-v_simple.err
#SBATCH --error=1_3_wb97m-v_simple.err

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

mkdir 1_3_wb97m-v_simple.in20190319025023
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.0/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.1/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.2/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.3/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.4/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.5/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.6/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.7/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.8/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.9/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.10/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.11/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.12/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.13/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.14/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.15/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.16/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.17/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.18/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.19/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.20/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.21/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.22/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.23/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.24/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.25/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.26/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.27/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.28/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.29/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.30/
cp -r 1_3_wb97m-v_simple.in20190319025023 1_3_wb97m-v_simple.in20190319025023.31/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97m-v_simple.in 1_3_wb97m-v_simple.in20190319025023qchem
qchem -save -nt 32 1_3_wb97m-v_simple.in20190319025023qchem 1_3_wb97m-v_simple.out20190319025023 1_3_wb97m-v_simple.in20190319025023 > 1_3_wb97m-v_simple.err20190319025023
cp 1_3_wb97m-v_simple.out20190319025023 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97m-v_simple.out
cat 1_3_wb97m-v_simple.err20190319025023 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_3_wb97m-v_simple.err
rm -rf 1_3_wb97m-v_simple.in20190319025023*
rm 1_3_wb97m-v_simple.out20190319025023
rm 1_3_wb97m-v_simple.err20190319025023
