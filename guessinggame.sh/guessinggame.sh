#!/usr/bin/env bash
# Guessing Game Project

# Function to count number of files in current directory
count_files() {
  find . -maxdepth 1 -type f | wc -l
}

# Function to ask the user for a guess
ask_guess() {
  echo "How many files are in the current directory?"
  read -r guess
}

# Function to check if input is a number
is_number() {
  [[ "$1" =~ ^[0-9]+$ ]]
}

# Main game loop
main() {
  echo "Welcome to the Guessing Game!"
  target=$(count_files)

  while true; do
    ask_guess
    if ! is_number "$guess"; then
      echo "Please enter a valid number."
      continue
    fi

    if (( guess < target )); then
      echo "Too low. Try again."
    elif (( guess > target )); then
      echo "Too high. Try again."
    else
      echo "🎉 Congratulations! $guess is correct."
      break
    fi
  done
}

main
