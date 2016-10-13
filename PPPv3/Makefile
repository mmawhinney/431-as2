all: stuff

stuff: ppp.C random.C TaskGroup.c sort compute reduce

sort: driver-sort.C
	g++ -ggdb3 -m64 -std=c++0x -pthread -lrt -Wall -O3 ppp.C random.C TaskGroup.C driver-sort.C -o driver-sort

compute: driver-compute.C
	g++ -ggdb3 -m64 -std=c++0x -pthread -lrt -Wall -O3 ppp.C random.C TaskGroup.C driver-compute.C -o driver-compute

reduce: driver-reduce.C
	g++ -ggdb3 -m64 -std=c++0x -pthread -lrt -Wall -O3 ppp.C random.C TaskGroup.C driver-reduce.C -o driver-reduce

clean:
	rm *.o driver-sort driver-compute driver-reduce
