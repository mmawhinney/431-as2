#!/bin/bash

PARTICLE_COUNT_SORT=40000000
PARTICLE_COUNT_COMPUTE=10000000
PARTICLE_COUNT_REDUCE=100000000
THREAD_COUNT_1=1
THREAD_COUNT_4=4
TRIAL_COUNT=5

echo Running sort w/ 1 thread...
make sort 
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 40000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 35000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 30000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 25000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 20000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 15000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 10000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 5000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 2000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 1000000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 500000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 250000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 100000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 10000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 5000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 2500 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 1000 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 500 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 250 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 100 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 50 --trials $TRIAL_COUNT >> sort1_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_1 --grainsize 10 --trials $TRIAL_COUNT >> sort1_output.txt


echo Running sort w/ 4 threads
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 40000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 35000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 30000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 25000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 20000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 15000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 10000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 5000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 2000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 1000000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 500000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 250000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 100000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 10000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 5000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 2500 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 1000 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 500 --trials $TRIAL_COUNT >> sort4_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 250 --trials $TRIAL_COUNT >> sort4_output.txt


echo Running sort w/ stealing
make sort_steal
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 40000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 35000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 30000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 25000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 20000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 15000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 10000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 5000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 2000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 1000000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 500000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 250000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 100000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 10000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 5000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 2500 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 1000 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 500 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 250 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 100 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 50 --trials $TRIAL_COUNT >> sort_steal_output.txt
./driver-sort --particles $PARTICLE_COUNT_SORT --threads $THREAD_COUNT_4 --grainsize 10 --trials $TRIAL_COUNT >> sort_steal_output.txt


echo Running compute w/ 1 thread...
make compute 
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 40000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 35000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 30000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 25000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 20000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 15000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 10000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 5000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 2000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 1000000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 500000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 250000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 100000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 10000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 5000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 2500 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 1000 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 500 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 250 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 100 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 50 --trials $TRIAL_COUNT >> compute1_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_1 --grainsize 10 --trials $TRIAL_COUNT >> compute1_output.txt


echo Running compute w/ 4 threads
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 40000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 35000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 30000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 25000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 20000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 15000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 10000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 5000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 2000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 1000000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 500000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 250000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 100000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 10000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 5000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 2500 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 1000 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 500 --trials $TRIAL_COUNT >> compute4_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 250 --trials $TRIAL_COUNT >> compute4_output.txt


echo Running compute w/ stealing
make compute_steal
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 40000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 35000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 30000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 25000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 20000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 15000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 10000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 5000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 2000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 1000000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 500000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 250000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 100000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 10000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 5000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 2500 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 1000 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 500 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 250 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 100 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 50 --trials $TRIAL_COUNT >> compute_steal_output.txt
./driver-compute --particles $PARTICLE_COUNT_COMPUTE --threads $THREAD_COUNT_4 --grainsize 10 --trials $TRIAL_COUNT >> compute_steal_output.txt



echo Running reduce w/ 1 thread...
make reduce 
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 40000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 35000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 30000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 25000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 20000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 15000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 10000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 5000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 2000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 1000000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 500000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 250000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 100000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 10000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 5000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 2500 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 1000 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 500 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 250 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 100 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 50 --trials $TRIAL_COUNT >> reduce1_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 10 --trials $TRIAL_COUNT >> reduce1_output.txt


echo Running reduce w/ 4 threads
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 40000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 35000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 30000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 25000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 20000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 15000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 10000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 5000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 2000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 1000000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 500000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 250000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 100000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 10000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 5000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 2500 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 1000 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 500 --trials $TRIAL_COUNT >> reduce4_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 250 --trials $TRIAL_COUNT >> reduce4_output.txt


echo Running reduce w/ stealing
make reduce_steal
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 40000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 35000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 30000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 25000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 20000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 15000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 10000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 5000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 2000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 1000000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 500000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 250000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 100000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 10000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 5000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 2500 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 1000 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 500 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 250 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 100 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 50 --trials $TRIAL_COUNT >> reduce_steal_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 10 --trials $TRIAL_COUNT >> reduce_steal_output.txt
