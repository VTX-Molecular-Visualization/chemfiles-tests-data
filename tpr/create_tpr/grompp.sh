#!/bin/sh

gmx grompp -f default.mdp -p topology.top -c init_conf.gro -o gmx_X_s.tpr -maxwarn 1
gmx_d grompp -f default.mdp -p topology.top -c init_conf.gro -o gmx_X_d.tpr -maxwarn 1

# Old versions of GROMACS
#grompp -f default.mdp -p topology.top -c init_conf.gro -o gmx_X_s.tpr -maxwarn 1
#grompp_d -f default.mdp -p topology.top -c init_conf.gro -o gmx_X_d.tpr -maxwarn 1

rm \#mdout*
