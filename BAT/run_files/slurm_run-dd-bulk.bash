

x=0
while [  $x -lt 7 ]; do
cd f0$x
sbatch SLURM-run
cd ../
cd w0$x
sbatch SLURM-run
cd ../
let x=x+1
done