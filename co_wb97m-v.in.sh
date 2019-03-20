#!/bin/bash
#SBATCH --job-name=co_wb97m-v.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=16
#SBATCH --output=co_wb97m-v.err
#SBATCH --error=co_wb97m-v.err

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

mkdir co_wb97m-v.in20190319155208
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.0/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.1/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.2/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.3/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.4/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.5/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.6/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.7/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.8/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.9/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.10/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.11/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.12/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.13/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.14/
cp -r co_wb97m-v.in20190319155208 co_wb97m-v.in20190319155208.15/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_wb97m-v.in co_wb97m-v.in20190319155208qchem
qchem -save -nt 16 co_wb97m-v.in20190319155208qchem co_wb97m-v.out20190319155208 co_wb97m-v.in20190319155208 > co_wb97m-v.err20190319155208
cp co_wb97m-v.out20190319155208 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_wb97m-v.out
cat co_wb97m-v.err20190319155208 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_wb97m-v.err
rm -rf co_wb97m-v.in20190319155208*
rm co_wb97m-v.out20190319155208
rm co_wb97m-v.err20190319155208
