#!/bin/bash
docker run -d \
  -p 8888:8888 \
  -v ./practice:/home/jovyan/practice \
  -v ./final_tasks:/home/jovyan/final_tasks \
  -v ./learning:/home/jovyan/learning \
  --restart unless-stopped \
  quay.io/jupyter/pyspark-notebook:2025-04-26 \
  start-notebook.sh --NotebookApp.token=''
