#!/bin/bash

echo "Running all tests..."

TEST_DIR="./tests"

cd $TEST_DIR

for test_script in *.sh; do

    if [ "$test_script" = "utils.sh" ]; then
        continue
    fi

    echo "--------------------------------"
    echo "Running: $test_script"

    bash "$test_script"

    result=$?
    if [ $result -eq 0 ]; then
        echo "$test_script PASSED"
    else
        echo "❌ $test_script FAILED (exit code $result)"
    fi
done

echo "--------------------------------"
echo "All tests finished."
