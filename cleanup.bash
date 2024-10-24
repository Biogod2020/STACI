#!/bin/bash

# Create new directories
mkdir -p data/raw data/processed notebooks/analysis notebooks/training scripts/preprocessing scripts/training results docs

# Move and rename Jupyter Notebooks
mv getXA_starmap.ipynb notebooks/analysis/01_compute_adjacency_matrices.ipynb
mv train_gae_starmap_multisamples.ipynb notebooks/training/02_train_graph_autoencoder.ipynb
mv train_jointGAEcnn_starmap_multisamples.ipynb notebooks/training/03_train_joint_latent_space.ipynb
mv plotEmbedding_Starmap.ipynb notebooks/analysis/04_plot_autoencoder_latent_space.ipynb
mv translation_jointCNNgae2Starmap_final.ipynb notebooks/analysis/05_translate_latent_to_gene_expression.ipynb
mv segment3D_gpu.ipynb notebooks/analysis/06_nuclei_segmentation.ipynb
mv train_regrsFromJoint_starmap_multisamplesMixed.ipynb notebooks/training/07_train_regression_plaque_size.ipynb
mv plotRegrsFromJoint_starmap_3Dseg.ipynb notebooks/analysis/08_analyze_regression_results.ipynb

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

