#!/bin/bash

#PBS -N AT.gpu_bench
#PBS -l select=1:ncpus=16:mem=16gb:ngpus=1:gpu_model=v100:interconnect=hdr,walltime=12:00:00
#PBS -j oe

module load cuda/11.6.2-gcc

source ckalahi_benchmarking_env/bin/activate
# pip3 install -r alphatensor/benchmarking/requirements.txt -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html

cd $PBS_O_WORKDIR
echo $PWD

# Run a command
echo "Starting run..."

python -m alphatensor.benchmarking.run_gpu_benchmark

echo "waiting for runs to finish"
wait

