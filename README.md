
# MATLAB Machine Learning and Image Processing Project

### Author: Nichita-Adrian Bunu, 323CA Facultatea de Automatica si Calculatoare UNSTPB
**Contact:** [nichita_adrian.bunu@stud.acs.upb.ro](mailto:nichita_adrian.bunu@stud.acs.upb.ro)

---

## Overview

This project contains a set of MATLAB scripts designed for machine learning and image processing tasks. The primary components focus on implementing K-Nearest Neighbors (KNN) for classification, preparing data for analysis, visualizing images, and utilizing Principal Component Analysis (PCA) for dimensionality reduction.

---

## Features and Functionality

The main features include:

- **K-Nearest Neighbors (KNN) Classification**: A basic implementation for predicting labels based on the nearest neighbors.
- **Data Preparation**: Functions for preprocessing and organizing data for machine learning tasks.
- **Principal Component Analysis (PCA)**: Used to reduce the dimensionality of data for more efficient processing.
- **Image Visualization**: Tools to reconstruct and display images from datasets.

---

## Scripts Overview

### `KNN.m`

Implements the K-Nearest Neighbors algorithm:
- Calculates the Euclidean distance between the input test sample and each training sample.
- Sorts distances to find the nearest neighbors and determines the label by taking the median of the nearest labels.

### `classifyImage.m`

Performs classification of an image based on trained data using the KNN algorithm:
- Loads the dataset and prepares it for classification.
- Uses KNN to classify the provided image data.

### `magic_with_pca.m`

Handles dimensionality reduction using PCA:
- Computes the principal components from the data matrix.
- Projects data onto a reduced dimensional space for better efficiency in processing and visualization.

### `prepare_data.m`

Prepares datasets by normalizing and structuring data for analysis:
- Centralizes data by removing the mean.
- Adjusts data to improve the performance of machine learning algorithms.

### `prepare_photo.m`

Specifically prepares image data for PCA processing:
- Reshapes and normalizes image matrices.
- Handles conversion between different data formats.

### `task1.m`, `task2.m`, and `task3.m`

Contain various tasks for performing specific machine learning experiments and visualizations:
- May include tasks like feature extraction, training different models, or applying transformations.

### `visualise_image.m`

Reconstructs and visualizes images from data matrices:
- Reshapes data back into the original image format for display.
- Converts processed data into a visual format suitable for interpretation.

---
