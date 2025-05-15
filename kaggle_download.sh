#!/bin/bash
mkdir -p ~/.kaggle
cp /path/to/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json
kaggle datasets download -d apoorvaappz/global-super-store-dataset
unzip global-super-store-dataset.zip -d data/