#!/bin/bash

# Get the list of staged files
changed_files=$(git diff --cached --name-only | paste -sd "," -)

# Prompt for ticket ID and description
read -p "Enter the ticket ID: " ticket_id
read -p "Enter a brief description of what you did: " description

# Execute the git commit command
git commit -m "feat(\"$changed_files:$ticket_id\")" -m "$description"

# Print a confirmation message
echo "Git commit has been configured and executed."