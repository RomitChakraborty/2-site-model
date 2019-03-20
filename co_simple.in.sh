#!/bin/bash
#SBATCH --job-name=co_simple.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=16
#SBATCH --output=co_simple.err
#SBATCH --error=co_simple.err

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

mkdir co_simple.in20190319154724
cp -r co_simple.in20190319154724 co_simple.in20190319154724.0/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.1/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.2/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.3/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.4/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.5/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.6/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.7/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.8/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.9/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.10/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.11/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.12/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.13/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.14/
cp -r co_simple.in20190319154724 co_simple.in20190319154724.15/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_simple.in co_simple.in20190319154724qchem
qchem -save -nt 16 co_simple.in20190319154724qchem co_simple.out20190319154724 co_simple.in20190319154724 > co_simple.err20190319154724
cp co_simple.out20190319154724 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_simple.out
cat co_simple.err20190319154724 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co_simple.err
rm -rf co_simple.in20190319154724*
rm co_simple.out20190319154724
rm co_simple.err20190319154724
