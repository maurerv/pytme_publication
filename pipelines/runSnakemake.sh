#!/bin/bash

snakemake \
  --use-singularity \
  --singularity-args "-B /scratch:/scratch \
    -B /g/kosinski:/g/kosinski" \
  --jobs 500 \
  --restart-times 35 \
  --rerun-incomplete \
  --profile slurm_noSidecar \
  --rerun-triggers mtime \
  --latency-wait 30 \
  -n
