#!/bin/bash
#SBATCH --job-name=1_5_simple.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=16
#SBATCH --output=1_5_simple.err
#SBATCH --error=1_5_simple.err

. /global/home/users/$USER/.bashrc

export QCTHREADS=16
export OMP_NUM_THREADS=16

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

mkdir 1_5_simple.in20190319010853
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.0/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.1/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.2/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.3/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.4/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.5/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.6/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.7/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.8/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.9/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.10/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.11/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.12/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.13/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.14/
cp -r 1_5_simple.in20190319010853 1_5_simple.in20190319010853.15/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_5_simple.in 1_5_simple.in20190319010853qchem
qchem -save -nt 16 1_5_simple.in20190319010853qchem 1_5_simple.out20190319010853 1_5_simple.in20190319010853 > 1_5_simple.err20190319010853
cp 1_5_simple.out20190319010853 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_5_simple.out
cat 1_5_simple.err20190319010853 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/s1/1_5_simple.err
rm -rf 1_5_simple.in20190319010853*
rm 1_5_simple.out20190319010853
rm 1_5_simple.err20190319010853
