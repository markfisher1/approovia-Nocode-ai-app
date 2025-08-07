#!/bin/bash
docker build -t localhost:5000/service-a:latest ./service-a
docker build -t localhost:5000/service-b:latest ./service-b
