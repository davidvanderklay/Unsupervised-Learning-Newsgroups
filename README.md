# Uncovering Semantic Structure in 20 Newsgroups

A graduate data-mining project on why unsupervised text clustering fails on noisy discussion corpora, and which modeling choices recover structure more reliably. The notebook frames the corpus around vocabulary collision, quoted-reply contamination, and header leakage, then compares lexical clustering pipelines against semantic sentence embeddings and mixed-membership topic modeling.

👉 Start here: `main_notebook.ipynb`

Project video: https://youtu.be/cIzEQrFlmAg

## Research Questions
- `RQ1:` Does Truncated Singular Value Decomposition (SVD) improve cluster geometry and label recovery relative to raw TF-IDF?
- `RQ2:` How sensitive is lexical clustering quality to TF-IDF document-frequency thresholds?
- `RQ3:` Do Sentence-BERT embeddings recover category boundaries that bag-of-words representations systematically miss?
- `RQ4:` Can Latent Dirichlet Allocation (LDA) expose overlap structure that hard clustering flattens?

## Results Summary
The strongest result is that semantic embeddings substantially outperform lexical clustering on the overlap-heavy newsgroup categories. TF-IDF tuning matters, but it does not eliminate the core vocabulary-collision problem; SBERT recovers much more of the category structure, while LDA helps explain why some documents remain mixed rather than cleanly clusterable.

## Data
- **Primary dataset:** 20 Newsgroups archive, provided here as `twenty+newsgroups.zip`.
- **Source lineage:** UCI / classic 20 Newsgroups archive; the notebook uses a local archive loader rather than the deprecated scikit-learn fetch path.
- **Preprocessing in the notebooks:** archive extraction, `latin-1` decoding, header/body handling where appropriate, lowercasing, empty-document removal, duplicate removal, and TF-IDF-based token filtering.
- **Checkpoint comparison datasets:** Online Retail (UCI) and Twitch graph data (SNAP) are documented in the checkpoint notebooks for dataset-selection comparison only; they are not used in the final experiments.

## Reproducing the Project
This repo supports both a local Nix workflow and a plain Python/requirements workflow.

### Option 1: NixOS / direnv workflow
```bash
direnv allow
python --version
jupyter --version
./scripts/run_notebook.sh main_notebook.ipynb
```
This writes an executed copy to `main_notebook.ran.ipynb`.

### Option 2: Python + requirements workflow
```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
./scripts/run_notebook.sh main_notebook.ipynb
```
Notes:
- `SentenceTransformer("all-MiniLM-L6-v2")` may download from Hugging Face on first run.
- For fully offline reruns, pre-cache that model once while online.
- Place `twenty+newsgroups.zip` in the repo root before running the notebooks.

### Run order
1. Read or execute `main_notebook.ipynb` for the final curated analysis.
2. Consult `checkpoints/checkpoint_1.ipynb` for dataset selection and initial EDA.
3. Consult `checkpoints/checkpoint_2.ipynb` for research-question formation and feasibility testing.

## Key Dependencies
- `python 3.13.12`
- `pandas 2.3.3`
- `scikit-learn 1.8.0`
- `sentence-transformers 3.4.1`
- `torch 2.11.0`
- `matplotlib 3.10.8`
- `seaborn 0.13.2`
- `jupyterlab 4.5.6`

## Repository Structure
```text
.
├── README.md
├── main_notebook.ipynb
├── checkpoints/
│   ├── checkpoint_1.ipynb
│   └── checkpoint_2.ipynb
├── scripts/
│   └── run_notebook.sh
├── twenty+newsgroups.zip
├── requirements.txt
├── flake.nix
└── .envrc
```

## Checkpoint Notes
- `checkpoint_1.ipynb` preserves the original dataset-selection and EDA submission state.
- `checkpoint_2.ipynb` is packaged as a standalone notebook for the RQ-formation stage. It includes the minimal setup cells needed to run independently, even though the original working notebook evolved cumulatively.

## Collaboration Declaration
The full collaboration declaration lives inside the notebooks and includes collaborators, web sources, AI tools, and paper citations used in the project.
