#!/usr/bin/env python3
import MDAnalysis as mda
import os

os.system("gmx editconf -f gmx_X_s.tpr -o dump.pdb")

universe = mda.Universe("gmx_X_s.tpr", "dump.pdb")
universe.atoms.write("reference.pdb")

os.system("rm dump.pdb")
os.system("sed -i 's/seg_LI/seg_Li/' reference.pdb")
