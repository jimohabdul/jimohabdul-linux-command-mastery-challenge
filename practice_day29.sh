#!/bin/bash

# 4. $0 - Retrieve the filename of the running script
echo "Running script: $0"

# 2 & 3. Positional arguments and argument counts ($#, $@)

echo "Total arguments passed: $#"
echo "All arguments list: $@"

# Define a custom reusable function (1. function_name() {})
test_function() {
     local arg1="$1" # Accessing first positional argument inside function
     local arg2="$2" # Accessing second positional argument

    echo "Inside function -> Received Arg 1: $arg1, Arg 2: $arg2"

    # Simulate a command and check exit codes (5. exit codes $?)
    ls /nonexistent_directory > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "Command succeeded."
    else
        echo "[INFO] Last command failed with a non-zero exit code ($?). Handled gracefully."
    fi
}

# Call the function using positional arguments ($1, $2)
test_function "$1" "$2"

# 10. logger - Write a custom message to the system journal
logger "Practice Day 29 script executed successfully by user $USER."
echo "Custom log entry sent to system journal using 'logger'."
