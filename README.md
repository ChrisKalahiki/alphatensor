# CPSC 8200 Final Project by Chris Kalahiki

## To run the code
This repository is meant to be run in the Palmetto cluster. You will need to log into Palmetto and clone this repository there. The reason for this is that the code is meant to be run on a machine with access to an NVIDIA V100 GPU. Once you are logged into Palmetto and have cloned this repository, run the following commands:
```
mv gpu_bench_alphatensor.sh ../.
cd ../.
qsub gpu_bench_alphatensor.sh
```
The commands provided will move the run script outside of the repository and then submit the job to Palmetto. Once the job is complete, you will be able to view your results in both the output file and the various .prof files that are generated. The output file will contain the runtime output. The .prof files will contain informantion on the memory profiling that was done for each run.

## To view the results
In order to analyze memory profiling, you will need to install Google's pprof tool. You can find the repository for the tool [here](https://github.com/google/pprof). You will also need to install Go and GraphViz. Links are provided in the readme of that repository. One you have that installed, you can run:
```
pprof -web <path to .prof file>
```
This will let you see a visualization of the memory profiling. You can also run:
```
pprof -top <path to .prof file>
```
This will give you a text report iof the profile, sorted by hotness.