#!/bin/bash

echo "The name of the Script is ${0}" > redirect.log

ping -c 1 www.google.com >> redirect.log
