#!/bin/bash

## diferent compression tests with NVTT3
INPUT_DIR="./images"
OUTPUT_DIR="./dds_output"

mkdir -p "$OUTPUT_DIR"

for file in "$INPUT_DIR"/*.png; do
  filename=$(basename "$file")
  base="${filename%.*}"
  output="$OUTPUT_DIR/${base}.dds"

  echo "Compressing $filename → $output"
  nvcompress -bc7 "$file" "$output"
done

echo "files compressed."
