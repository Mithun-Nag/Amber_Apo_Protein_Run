# 🧪 Amber Apo Protein MD Run

This repository contains a **Jupyter Notebook workflow** for setting up and running a **fully solvated molecular dynamics simulation** of an apo protein using **Amber 24** and **AmberTools 25**.

---

## 📂 Contents

- **Amber_Apo_Run.ipynb** – End-to-end workflow for protein preparation, system solvation, minimization, equilibration, and production MD
 This is your main file 

---

## 🏗️ System Setup

Amber 24 and AmberTools 25 were used for all steps.

Although designed for **ACCRE (Vanderbilt University HPC cluster)**,  
the workflow can be easily adapted to other HPC clusters or even a local AMBER installation.  

**Important:**  
- On ACCRE, the notebook loads the required Amber modules automatically.  
- On other systems, adjust the module load lines to match your environment.  
- If modules are not available, you can source Amber manually at the top of the notebook:  

!source /sb/apps/amber22/amber.sh



**NOTE**
Large output files from minimization and production stages have been removed —  
this notebook is provided as a **template and reproducible workflow** for setting up and running your own simulations.
EOF

## 📝Pre-processing tips (not included in this workflow)

Please model any **missing loops** or unresolved regions in your structure before running the workflow.  
We recommend preprocessing your structure (e.g., repairing missing residues, protonation states) and then uploading it to the **H++ server** to obtain a properly protonated `.pqr` file.  

Use this `.pqr` file as input to generate your solvated and neutralized system in LEaP.

## 🏃 Minimization, Equilibration & Production

The notebook sets up and runs **multi-stage minimization** (restrained → unrestrained).

NVT & NPT **equilibration** phases stabilize temperature and density.

Production MD is automated using a **Perl driver script** (`production.pl`) which loops over multiple 100ns chunks

Edit production.pl in the scripts according to need if requried to run for a longer time.

        .-""""-.
       /        \
      |,  .-.  ,|
      | )(_o_)( |
      |/   "   \|
      (_.'---'._)
        /     \
       /       \
      /   .-.   \
     /   /   \   \
    (___/     \___)

      Happy Simulation!

