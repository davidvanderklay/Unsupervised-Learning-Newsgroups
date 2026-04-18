# Data Mining Topic Discovery: 20 Newsgroups Analysis

This repository contains a curated, reproducible notebook for CSCE 676 covering:
- Checkpoint 1: candidate dataset comparison, selection, and EDA.
- Checkpoint 2: research question formation and method feasibility.
- Final narrative: Q0 baseline validation, RQ1/RQ2 course methods, and RQ3 external topic modeling.

## Canonical Notebook
- `133005021_final_checkpoint.ipynb`

## NixOS + direnv Setup
1. Enable direnv for your shell and run:
```bash
direnv allow
```
2. Enter the dev environment (automatic via `.envrc`) and confirm tools:
```bash
python -V
jupyter --version
```
3. (Optional) register a dedicated kernel:
```bash
python -m ipykernel install --user --name cs676-newsgroups --display-name "CS676 Newsgroups"
```

## Re-run Notebook End-to-End
```bash
./scripts/run_notebook.sh 133005021_final_checkpoint.ipynb
```
This writes an executed copy to `133005021_final_checkpoint.ran.ipynb`.

## Data Requirement
Place `twenty+newsgroups.zip` in the repository root.

## Collaboration Declaration (Notebook Contains Full Detail)
- Collaborators
- Web sources
- AI tools
- Paper citations

## License
Academic course project. Dataset usage follows source terms for 20 Newsgroups.
