#!/bin/bash
# echo -e "Executing MPI Sync Implementation\n..."
# mpic++ -o heat_2d_sync_MPI_gnu heat_2d_sync_MPI.cpp
# sleep 1
# mpiexec -np 2 ./heat_2d_sync_MPI_gnu 16 100 S > heat_2d_sync_MPI_gnu.txt

# sleep 5

echo -e "Executing MPI Sync Implementation\n..."
mpic++ -o heat_2d_sync_MPI_gnu heat_2d_sync_MPI.cpp
sleep 1
mpiexec -np 2 ./heat_2d_sync_MPI_gnu 16 100 C > heat_2d_sync_MPI_gnu.txt

# sleep 5

# echo -e "Executing Hybrid Implementation\n..."
# mpic++ -o heat_2d_hybrid_gnu heat_2d_hybrid.cpp -fopenmp -Ofast
# sleep 1
# mpiexec -np 2 ./heat_2d_hybrid_gnu 3 16 100 S > heat_2d_hybrid_gnu.txt

# echo -e "Done!"