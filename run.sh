torchrun --standalone --nnodes=1 --nproc_per_node=8 main_launch.py

torchrun main_spawn.py --multiprocessing-distributed --world-size 1 --rank 0