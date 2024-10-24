#!/bin/bash

# Create new directories
mkdir -p data/raw data/processed notebooks/analysis notebooks/training scripts/preprocessing scripts/training results docs

# Move and rename Jupyter Notebooks
mv batchMetrics.ipynb notebooks/analysis/09_batch_metrics.ipynb
mv clusterComposition.ipynb notebooks/analysis/10_cluster_composition.ipynb
mv DEcluster_Starmap.ipynb notebooks/analysis/11_de_cluster_starmap.ipynb
mv DEplaque.ipynb notebooks/analysis/12_de_plaque.ipynb
mv explainGraphLatent.ipynb notebooks/analysis/13_explain_graph_latent.ipynb
mv plotEmbedding_10xADFFPE_extBatchCorrection.ipynb notebooks/analysis/14_plot_embedding_10xADFFPE_ext_batch_correction.ipynb
mv plotEmbedding_10xADFFPE.ipynb notebooks/analysis/15_plot_embedding_10xADFFPE.ipynb
mv plotEmbedding_jointCNNgae_Starmap.ipynb notebooks/analysis/16_plot_embedding_joint_CNN_gae_starmap.ipynb
mv plotEmbedding_Starmap_newdata.ipynb notebooks/analysis/17_plot_embedding_starmap_newdata.ipynb
mv plotEmbedding_Starmap_scrnaseq.ipynb notebooks/analysis/18_plot_embedding_starmap_scrnaseq.ipynb
mv plotPlaqueDistr_newdata.ipynb notebooks/analysis/19_plot_plaque_distr_newdata.ipynb
mv plotPlaqueDistr.ipynb notebooks/analysis/20_plot_plaque_distr.ipynb

# Move scripts
mv preprocess*.py scripts/preprocessing/
mv train*.py scripts/training/

# Move raw and processed data
mv *raw_data* data/raw/
mv *processed_data* data/processed/

# Move documentation files to docs directory
mv *.md docs/

# Move results
mv *results* results/

# Update README file
echo "## New Directory Structure" >> README.md
echo "1. data/: Contains raw and processed data." >> README.md
echo "2. notebooks/: Jupyter Notebooks for analysis and training." >> README.md
echo "3. scripts/: Python scripts for preprocessing and training." >> README.md
echo "4. results/: Contains results of the analyses." >> README.md
echo "5. docs/: Documentation files." >> README.md

echo "Repository reorganized and files renamed successfully!"
