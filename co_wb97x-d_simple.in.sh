#!/bin/bash
#SBATCH --job-name=co_wb97x-d_simple.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=16
#SBATCH --output=co_wb97x-d_simple.err
#SBATCH --error=co_wb97x-d_simple.err

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

mkdir co_wb97x-d_simple.in20190319154536
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.0/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.1/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.2/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.3/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.4/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.5/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.6/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.7/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.8/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.9/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.10/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.11/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.12/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.13/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.14/
cp -r co_wb97x-d_simple.in20190319154536 co_wb97x-d_simple.in20190319154536.15/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_wb97x-d_simple.in co_wb97x-d_simple.in20190319154536qchem
qchem -save -nt 16 co_wb97x-d_simple.in20190319154536qchem co_wb97x-d_simple.out20190319154536 co_wb97x-d_simple.in20190319154536 > co_wb97x-d_simple.err20190319154536
cp co_wb97x-d_simple.out20190319154536 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_wb97x-d_simple.out
cat co_wb97x-d_simple.err20190319154536 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_wb97x-d_simple.err
rm -rf co_wb97x-d_simple.in20190319154536*
rm co_wb97x-d_simple.out20190319154536
rm co_wb97x-d_simple.err20190319154536
