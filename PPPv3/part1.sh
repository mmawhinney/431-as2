#!/bin/bash

rm part1_output.txt

PARTICLE_COUNT=40000000
THREAD_COUNT=1
TRIAL_COUNT=5
FUNCTION=sort

g++ -ggdb3 -m64 -std=c++0x -pthread -lrt -Wall -O3 ppp.C random.C TaskGroup.C driver-$FUNCTION.C -o driver-$FUNCTION

echo run 1
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 40000000 --trials $TRIAL_COUNT >> part1_output.txt
echo run 2
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 35000000 --trials $TRIAL_COUNT >> part1_output.txt
echo run 3
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 30000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 4
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 25000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 5
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 20000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 6
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 15000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 7
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 10000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 8
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 5000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 9
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 2000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 10
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 1000000 --trials $TRIAL_COUNT > part1_output.txt
echo run 11
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 500000 --trials $TRIAL_COUNT > part1_output.txt
echo run 12
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 250000 --trials $TRIAL_COUNT > part1_output.txt
echo run 13
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 100000 --trials $TRIAL_COUNT > part1_output.txt
echo run 14
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 10000 --trials $TRIAL_COUNT > part1_output.txt
echo run 15
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 5000 --trials $TRIAL_COUNT > part1_output.txt
echo run 16
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 2500 --trials $TRIAL_COUNT > part1_output.txt
echo run 17
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 1000 --trials $TRIAL_COUNT > part1_output.txt
echo run 18
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 500 --trials $TRIAL_COUNT > part1_output.txt
echo run 19
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 250 --trials $TRIAL_COUNT > part1_output.txt
echo run 20
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 100 --trials $TRIAL_COUNT > part1_output.txt
echo run 21
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 50 --trials $TRIAL_COUNT > part1_output.txt
echo run 22
./driver-$FUNCTION --particles $PARTICLE_COUNT --threads $THREAD_COUNT --grainsize 10 --trials $TRIAL_COUNT > part1_output.txt
