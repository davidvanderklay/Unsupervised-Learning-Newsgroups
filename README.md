# Data Mining Topic Discovery: 20 Newsgroups Analysis

![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![Data Mining](https://img.shields.io/badge/Course-Data%20Mining-green.svg)
![Status](https://img.shields.io/badge/Status-Checkpoint%201%20Complete-orange.svg)

## Project Objective

This project explores the **20 Newsgroups dataset**, a collection of approximately 18,000 newsgroup posts across 20 topics. The goal is to apply both standard course techniques and advanced "beyond-course" methodologies to uncover latent patterns in unstructured text data.

## 🚀 Key Techniques

- **Course Methods:** Text Mining (TF-IDF), Feature Extraction, Clustering (K-Means), and Association Rule Mining.
- **Beyond-Course Methods:** Latent Dirichlet Allocation (LDA) for Topic Modeling and BERT-based semantic embeddings for document similarity.

## 📊 Checkpoint 1: Exploratory Data Analysis

In the first phase of this project, I performed initial data ingestion and EDA. Key findings include:

- **Dataset Balance:** Identified that the dataset is well-balanced across categories (e.g., `rec.sport.hockey` vs `sci.space`), supporting stable clustering.
- **Text Distribution:** Discovered a median post length of **503 characters**, with a heavy right-tail indicating the presence of system logs/outliers.
- **Preprocessing Needs:** Identified a critical need for custom stop-word removal to handle common newsgroup header artifacts.

## 🛠️ Installation & Setup

To run this project locally, ensure you have the following libraries installed:

```bash
pip install pandas numpy matplotlib seaborn scikit-learn
```

### 1. Clone the respository:

```bash
git clone https://github.com/davidvanderklay/Unsupervised-Learning-Newsgroups.git
```

### 2. Open the Jupyter Notebook:

```bash
jupyter notebook checkpoint_1.ipynb
```

## 📂 Project Structure

- `checkpoint_1.ipynb`: Initial dataset selection, cleaning, and EDA.
- `requirements.txt`: List of dependencies (to be updated as project grows).
- `data/`: (Ignored via .gitignore) Raw data is fetched via scikit-learn API.

## 📝 License

This project is for academic purposes as part of the CS Data Mining course. The 20 Newsgroups dataset is in the public domain.
