#!/usr/bin/env bash
echo "Waiting for job $1"
sem --wait --id "$1"
echo "Done waiting for job $1"