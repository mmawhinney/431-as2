#!/bin/bash

PARTICLE_COUNT=40000000
THREAD_COUNT=1
TRIAL_COUNT=5

g++ -ggdb3 -m64 -std=c++0x -pthread -lrt -Wall -O3 ppp.C random.C TaskGroup.C driver-sort.C -o driver-sort

./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 40000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 35000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 30000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 25000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 20000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 15000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 10000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 5000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 2000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 1000000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 500000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 250000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 100000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 10000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 5000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 2500 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 1000 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 500 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 250 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 100 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 50 --trials $TRIAL_COUNT > part1_output.txt
./driver-sort --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 10 --trials $TRIAL_COUNT > part1_output.txt