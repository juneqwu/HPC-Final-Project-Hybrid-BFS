CFLAGS = -fopenmp -std=c99 -g -Drestrict=__restrict__ -O3 -DNDEBUG -ffast-math -DGRAPH_GENERATOR_MPI # -g -pg
# CFLAGS = -g -Wall -Drestrict= -DGRAPH_GENERATOR_MPI
LDFLAGS = -fopenmp -g # -g -pg
MPICC = mpicc

all: bfs

GENERATOR_SOURCES = ./generator/graph_generator.c ./generator/make_graph.c ./generator/splittable_mrg.c ./generator/utils.c
SOURCES = main.c oned_csr.c oned_csc.c utils.c validate.c onesided.c onesided_emul.c
HEADERS = common.h oned_csr.h oned_csc.h redistribute.h mpi_workarounds.h onesided.h

bfs: bfs.c $(SOURCES) $(HEADERS) $(GENERATOR_SOURCES)
	$(MPICC) $(CFLAGS) $(LDFLAGS) -o bfs bfs.c $(SOURCES) $(GENERATOR_SOURCES) -lm

clean:
	-rm -f bfs
