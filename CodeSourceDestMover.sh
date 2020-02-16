#!/bin/bash

# Thi script is tasked with copying the contents over to the target folders, the ADD and COPY functions, associated with the Dockerfile syntax tend to fail if source is outside the work folder.
cp -p ../booster B


docker build --squash -t morawi/missiontomarstodoapp-db:latest -f todoapp-db/Dockerfile 
docker build --squash  -t morawi/missiontomarsbooster:latest -f Booster/Dockerfile
