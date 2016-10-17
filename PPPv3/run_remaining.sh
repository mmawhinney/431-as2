#!/bin/bash

PARTICLE_COUNT_SORT=40000000
PARTICLE_COUNT_COMPUTE=10000000
PARTICLE_COUNT_REDUCE=100000000
THREAD_COUNT_1=1
THREAD_COUNT_4=4
TRIAL_COUNT=5


echo Running reduce w/ 1 thread...
make reduce 
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 100000000 --trials $TRIAL_COUNT >> reduce1_remaining_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_1 --grainsize 75000000 --trials $TRIAL_COUNT >> reduce1__remaining_output.txt

echo Running reduce w/ 4 threads
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 100000000 --trials $TRIAL_COUNT >> reduce4_remaining_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 75000000 --trials $TRIAL_COUNT >> reduce4_remaining_output.txt

echo Running reduce w/ stealing
make reduce_steal
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 100000000 --trials $TRIAL_COUNT >> reduce_steal_remaining_output.txt
./driver-reduce --particles $PARTICLE_COUNT_REDUCE --threads $THREAD_COUNT_4 --grainsize 75000000 --trials $TRIAL_COUNT >> reduce_steal_remaining_output.txt
