#!/usr/bin/env bash

for dir in /assignments/*/; do
    if ! test -f "$dir/assignment.yaml"; then
        continue
    fi

    dir_name=$(basename "$dir")
    id=$(echo "$dir_name" | sed "s/\s.*$//")

    # Set the name to the name of the directory for consistency
    # There's a few assignments for which this is not the case by default
    sed -i "s/^name:.*/name: $dir_name/" "$dir/assignment.yaml"

    # Prefix the display name with the id (e.g. 2020.1, 2020.2, etc.)
    sed -i "s/^display-name:/display-name: $id/" "$dir/assignment.yaml"

    # Ensure all assignment.yaml files have one or more labels
    # The server errors when starting an assignment without a label
    if ! grep -q "labels:" "$dir/assignment.yaml"; then
        echo "" >> "$dir/assignment.yaml"
        echo "labels:" >> "$dir/assignment.yaml"
        echo "- label1" >> "$dir/assignment.yaml"
    fi
done
