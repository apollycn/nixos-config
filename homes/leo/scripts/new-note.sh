#!/usr/bin/env bash

# Configuration
NOTES_DIR="$HOME/notes"  
TEMPLATE_EXTENSION=".md" 

CLASSES=(
    "CSCI-140-CS-for-AP-Students"
    "ECON-101-Microeconomics-Principles"
    "MATH-182-Calculus-II"
    "POLS-205-Int'l-Politics"
    "PSYC-101-Intro-to-Psychology"
)

# File type options
FILE_TYPES=(
    "md"
    "tex"
)

# Get current date in YYYY-MM-DD format
CURRENT_DATE=$(date +%Y-%m-%d)

# Display available classes
echo "Available classes:"
for i in "${!CLASSES[@]}"; do
    echo "$((i+1)). ${CLASSES[i]}"
done
echo ""
echo "Enter class number (1-${#CLASSES[@]}):"
read -r CLASS_NUM

# Validate class selection
if ! [[ "$CLASS_NUM" =~ ^[0-9]+$ ]] || [ "$CLASS_NUM" -lt 1 ] || [ "$CLASS_NUM" -gt ${#CLASSES[@]} ]; then
    echo "Error: Invalid class selection. Please enter a number between 1 and ${#CLASSES[@]}"
    exit 1
fi

# Get the selected class name
CLASS_NAME="${CLASSES[$((CLASS_NUM-1))]}"
echo "Selected: $CLASS_NAME"

# Display file type options
echo ""
echo "Select file type:"
for i in "${!FILE_TYPES[@]}"; do
    echo "$((i+1)). ${FILE_TYPES[i]}"
done
echo ""
echo "Enter file type number (1-${#FILE_TYPES[@]}):"
read -r TYPE_NUM

# Validate file type selection
if ! [[ "$TYPE_NUM" =~ ^[0-9]+$ ]] || [ "$TYPE_NUM" -lt 1 ] || [ "$TYPE_NUM" -gt ${#FILE_TYPES[@]} ]; then
    echo "Error: Invalid file type selection. Please enter a number between 1 and ${#FILE_TYPES[@]}"
    exit 1
fi

# Get the selected file extension
FILE_EXT="${FILE_TYPES[$((TYPE_NUM-1))]}"
TEMPLATE_EXTENSION=".$FILE_EXT"
echo "Selected: $FILE_EXT"

# Create class directory
CLASS_DIR="$NOTES_DIR/$CLASS_NAME"
mkdir -p "$CLASS_DIR"

# Generate filename with timestamp to avoid conflicts
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
TITLE="note"
DEFAULT_FILENAME="${CURRENT_DATE}-${TITLE}_${TIMESTAMP}${TEMPLATE_EXTENSION}"

# Get filename from user or use default
if [ $# -eq 0 ]; then
    echo "Enter note filename (without extension, or press Enter for default):"
    read -r USER_INPUT
    if [ -z "$USER_INPUT" ]; then
        FILENAME="$DEFAULT_FILENAME"
    else
        TITLE="$USER_INPUT"
        # Add date prefix if not already present
        if [[ "$USER_INPUT" != *"$CURRENT_DATE"* ]]; then
            FILENAME="${CURRENT_DATE}-${USER_INPUT}${TEMPLATE_EXTENSION}"
        else
            FILENAME="${USER_INPUT}${TEMPLATE_EXTENSION}"
        fi
    fi
else
    TITLE="$1"
    # Add date prefix if not already present
    if [[ "$1" != *"$CURRENT_DATE"* ]]; then
        FILENAME="${CURRENT_DATE}-${1}${TEMPLATE_EXTENSION}"
    else
        FILENAME="${1}${TEMPLATE_EXTENSION}"
    fi
fi

# Full path to the new note
NOTE_PATH="$CLASS_DIR/$FILENAME"

# Check if file already exists
if [ -f "$NOTE_PATH" ]; then
    echo "File $FILENAME already exists. Opening existing file..."
else
    # Create the note with appropriate template based on file type
    if [ "$FILE_EXT" = "tex" ]; then
        # LaTeX template
        cat > "$NOTE_PATH" << EOF
% Date: $CURRENT_DATE
% Tags: 
% Class: $CLASS_NAME

\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}

\title{Title}
\author{}
\date{$CURRENT_DATE}

\begin{document}

\maketitle

\section{Content}



\end{document}
EOF
    else
        # Markdown template
        cat > "$NOTE_PATH" << EOF
---
date: $CURRENT_DATE
tags: []
class: $CLASS_NAME
---

# $TITLE

## Content

EOF
    fi
    echo "Created new $FILE_EXT note: $CLASS_NAME/$FILENAME"
fi

# Open the file in Helix
echo "Opening $CLASS_NAME/$FILENAME in Helix..."
hx "$NOTE_PATH"
