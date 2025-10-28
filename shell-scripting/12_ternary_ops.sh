#!/bin/bash

# cond 1 && cond 2 || cond 3

age=18
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
