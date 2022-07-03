#!/bin/bash
#SBATCH --job-name=dppc_164_npt      # Job name
#SBATCH --nodes=1                  # Number of MPI tasks (i.e. processes)
#SBATCH --ntasks-per-node=32            # Number of cores per MPI task
#SBATCH --time=24:00:00               # walltime
#SBATCH --partition=main                #partition type
#SBATCH -v

module load apps/gromacs/parallel_studio_xe_2020.0.166/gromacs-2020.1

cd /home/SSM_grp/20310060/gromacs               #navigate to working directory
MACHINEFILE=machinefile
scontrol show hostname $SLURM_JOB_NODELIST > MACHINEFILE

mpirun -np 32 gmx_mpi grompp -f step_a_npt.mdp -c step_b_nvt.gro -r step_b_nvt.gro -n index.ndx -p topol.top -o step_a_npt.tpr
mpirun -np 32 gmx_mpi mdrun -deffnm step_a_npt

mpirun -np 32 gmx_mpi grompp -f step_b_npt.mdp -c step_a_npt.gro -r step_a_npt.gro -n index.ndx -p topol.top -o step_b_npt.tpr
mpirun -np 32 gmx_mpi mdrun -deffnm step_b_npt

mpirun -np 32 gmx_mpi grompp -f step_c_npt.mdp -c step_b_npt.gro -r step_b_npt.gro -n index.ndx -p topol.top -o step_c_npt.tpr
mpirun -np 32 gmx_mpi mdrun -deffnm step_c_npt

mpirun -np 32 gmx_mpi grompp -f step_d_npt.mdp -c step_c_npt.gro -r step_c_npt.gro -n index.ndx -p topol.top -o step_d_npt.tpr
mpirun -np 32 gmx_mpi mdrun -deffnm step_d_npt



