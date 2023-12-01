#!/bin/bash

docker build -t age-env-base -f age.Dockerfile .
docker build -t age-env-view -f age_view.Dockerfile .