# speed_check_ddp

## Summary

It seems PyTorch offers two different methods to handle multi-gpu training, i.e., [Spawning](https://github.com/pytorch/examples/tree/main/imagenet), and [ElasticTorch](https://github.com/pytorch/elastic/tree/master/examples)(newer). The goal is to compare these methods in speed.

## Requirements

PyTorch version: > 1.10
torchelastic

## Run Commands (single node)

1. Spawning

```
python main_spawn.py --dist-url 'tcp://localhost:23456' --multiprocessing-distributed --world-size 1 --rank 0
```


2. ElasticTorch

```
torchrun --standalone --nnodes=1 --nproc_per_node=$NUM_GPU main_launch.py
```

## Results

On CIFAR-10, TITAN V * 8:
|Time per epoch|Spawning|ElasticTorch|
|---|---|---|
|Training (sec)|8.52|5.73|
|Evaluation (sec)|2.62|1.64|

=> In my setting, ElasticTorch is faster than Spawning in about 50%


## References

1. Spawning: [[1](https://github.com/pytorch/examples/tree/main/imagenet)]

2. ElasticTorch: [[1](https://github.com/pytorch/elastic/tree/master/examples)], [[2](https://pytorch.org/docs/stable/elastic/run.html)]
