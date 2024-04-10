# partition=your_partition
partition=$1
   
srun -p ${partition} --gres=gpu:1 --ntasks-per-node=1 --kill-on-bad-exit \
    python web_app.py > ../ip.txt\