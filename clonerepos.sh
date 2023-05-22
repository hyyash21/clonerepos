#!/bin/bash
file="/home/ubuntu/repo.txt"
feature="features"
while IFS= read -r file; do
	git clone "$file"
	name=$(basename "$file" .git)
	cd "$name"
	git checkout -b "$feature"
	cd ..
done < "$file"
