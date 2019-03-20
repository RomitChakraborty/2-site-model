#!/bin/bash
#SBATCH --job-name=co.in.sh
#SBATCH --time=336:00:00
#SBATCH --partition=mhg
#SBATCH --account=mhg
#SBATCH --nodes=1
#SBATCH --constraint=mhg_m256
#SBATCH --ntasks-per-node=16
#SBATCH --output=co.err
#SBATCH --error=co.err

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

mkdir co.in20190319154758
cp -r co.in20190319154758 co.in20190319154758.0/
cp -r co.in20190319154758 co.in20190319154758.1/
cp -r co.in20190319154758 co.in20190319154758.2/
cp -r co.in20190319154758 co.in20190319154758.3/
cp -r co.in20190319154758 co.in20190319154758.4/
cp -r co.in20190319154758 co.in20190319154758.5/
cp -r co.in20190319154758 co.in20190319154758.6/
cp -r co.in20190319154758 co.in20190319154758.7/
cp -r co.in20190319154758 co.in20190319154758.8/
cp -r co.in20190319154758 co.in20190319154758.9/
cp -r co.in20190319154758 co.in20190319154758.10/
cp -r co.in20190319154758 co.in20190319154758.11/
cp -r co.in20190319154758 co.in20190319154758.12/
cp -r co.in20190319154758 co.in20190319154758.13/
cp -r co.in20190319154758 co.in20190319154758.14/
cp -r co.in20190319154758 co.in20190319154758.15/
cp /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co.in co.in20190319154758qchem
qchem -save -nt 16 co.in20190319154758qchem co.out20190319154758 co.in20190319154758 > co.err20190319154758
cp co.out20190319154758 /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co.out
cat co.err20190319154758 >> /clusterfs/mhg/romitchak//techniques/delG/2-site/co/co/co.err
rm -rf co.in20190319154758*
rm co.out20190319154758
rm co.err20190319154758
