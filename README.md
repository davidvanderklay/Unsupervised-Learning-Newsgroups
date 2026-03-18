# Data Mining Topic Discovery: 20 Newsgroups Analysis

![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![Data Mining](https://img.shields.io/badge/Course-Data%20Mining-green.svg)
![Status](https://img.shields.io/badge/Status-Checkpoint%201%20Complete-orange.svg)

## Project Objective

This project explores the **20 Newsgroups dataset**, applying both standard course techniques and advanced "beyond-course" methodologies to uncover latent patterns in unstructured text data. We focus on the transition from rigid distance-based clustering to probabilistic topic modeling.

## 🚀 Key Techniques

- **Course Methods:** Text Mining (TF-IDF), Dimensionality Reduction (TruncatedSVD/LSA), and Unsupervised Clustering (K-Means).
- **Beyond-Course Methods:** Latent Dirichlet Allocation (LDA) for probabilistic topic modeling and semantic overlap analysis.

## 📂 Project Progress

### 📊 Checkpoint 1: Exploratory Data Analysis

- **Dataset Balance:** The dataset is well-balanced across 20 categories, supporting stable clustering comparisons.
- **Text Distribution:** Median post length is **~500 characters**, following a log-normal distribution.
- **Data Engineering:** Developed a custom manual extraction pipeline to handle the UCI 20 Newsgroups archive (ZIP/TAR.GZ) due to the instability of the Scikit-Learn server mirrors.

### 🔍 Checkpoint 2: Research Questions (RQs)

- **RQ1 (Clustering & SVD):** How does TruncatedSVD impact K-Means cluster cohesion compared to high-dimensional TF-IDF matrices?
- **RQ2 (Hyperparameter Tuning):** To what extent do `max_df` and `min_df` thresholds affect the recovery of ground-truth categories (ARI/NMI)?
- **RQ3 (External - LDA):** Can LDA uncover shared semantic sub-topics across overlapping newsgroups (e.g., `pc.hardware` vs `mac.hardware`) better than rigid K-Means?

## 🛠️ Installation & Setup

To run this project, clone the repo and ensure the data ZIP is in the root directory.

```bash
pip install pandas numpy matplotlib seaborn scikit-learn
```

### 1. Clone the respository:

```bash
git clone https://github.com/davidvanderklay/Unsupervised-Learning-Newsgroups.git
```

### 2. Open the Jupyter Notebook:

```bash
jupyter notebook Project_Notebook.ipynb
```

## 📂 Project Structure

- `Project_Notebook.ipynb`: Initial dataset selection, cleaning, EDA, research question synthesis.
- `requirements.txt`: List of dependencies (to be updated as project grows).
- `data/`: (Ignored via .gitignore) Raw data is fetched via scikit-learn API.

## 📝 License

This project is for academic purposes as part of the CS Data Mining course. The 20 Newsgroups dataset is in the public domain.
