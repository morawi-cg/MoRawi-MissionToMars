#!/bin/bash
# These containers for the base for the microservices structure
# The golang one will host the booster
# The mysql hosts the db components for the gorm
# The Python is for stage 2
# The node is for the 3 stage
sudo docker pull golang
sudo docker pull mysql
sudo docker pull python
sudo docker pull node

exit 0
