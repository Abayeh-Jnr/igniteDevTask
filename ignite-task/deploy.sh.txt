#!/bin/bash

# Define your Kind cluster name
CLUSTER_NAME=ignite-task

# Create a Kind cluster
kind create cluster --name=$CLUSTER_NAME


# Verify the cluster is running

kubectl cluster-info --context kind-$CLUSTER_NAME

echo "Kind cluster $CLUSTER_NAME is running!"

