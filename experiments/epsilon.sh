#!/bin/bash

CACHE_SIZE=(0.009 50)
FILES=(epsilon_lru_lfu.txt epsilon_lfu_lru.txt)
ALGORITHMS=(LRU LFU ARC LeCaR)
BLOCKSIZE=1

for ((cz=0;cz<${#CACHE_SIZE[@]};++cz)); do
	for ((i=0;i<${#FILES[@]};++i)); do
	    python ../run.py "${CACHE_SIZE[cz]}" "${FILES[i]}" "${BLOCKSIZE}" "${ALGORITHMS[@]}"
	done
done 