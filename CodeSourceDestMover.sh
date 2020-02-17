#!/bin/bash

# Thi script is tasked with copying the contents over to the target folders, the ADD and COPY functions, associated with the Dockerfile syntax tend to fail if source is outside the work folder.
cp -p ../../booster Booster/


docker build  -t morawi/missiontomarstodoapp-db:latest -f todoapp-db/Dockerfile 
docker build  -t morawi/missiontomarsbooster:latest -f Booster/Dockerfile
