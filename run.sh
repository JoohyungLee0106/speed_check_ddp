python -m torchelastic.distributed.launch --standalone --nnodes=1 --nproc_per_node=8 main.py

# python main_spawn.py --dist-url 'tcp://127.0.0.1:FREEPORT' --dist-backend 'nccl' --multiprocessing-distributed --world-size 1 --rank 0