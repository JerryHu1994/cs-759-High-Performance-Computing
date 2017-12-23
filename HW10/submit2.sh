#!/bin/sh
#SBATCH --partition=slurm_shortgpu
#SBATCH --time=0-00:05:00 # run time in days-hh:mm:ss
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --error=/srv/home/jhu76/759--JerryHu1994/HW10/problem2.err
#SBATCH --output=/srv/home/jhu76/759--JerryHu1994/HW10/problem2.out
#SBATCH --gres=gpu:1

module load cuda
#./problem2 999
for((i=1;i<25;i++))
do
./problem2 $((2**i))
done