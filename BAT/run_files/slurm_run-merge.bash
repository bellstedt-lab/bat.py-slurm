


x=0
while [  $x -lt 10 ]; do
cd m0$x
sbatch SLURM-run
cd ../
cd n0$x
sbatch SLURM-run
cd ../
let x=x+1
done