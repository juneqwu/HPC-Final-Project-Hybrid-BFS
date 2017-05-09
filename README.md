## Spring 2017: High Performance Computing 

### Final Project: Hybrid Breadth-First Search with MPI 

A hybrid Breadth-First Search (BFS) is implemented for distributed memory system using 1D partitioning of vertices. The implementation is ran on R-MAT graph and the results are validated. The graph generator and all helper functions are from [Graph 500](http://www.graph500.org/).

The implementation of the BFS is in bfs.c file. This hybrid BFS is built upon a pre-exisiting simple BFS (license and the original authors are included in the code). 

To run the code, specifiy the second and the third argument. The second argument is SCALE (log 2 # of total edges); the third argument is Edgefactor (average edges per vertex).


