FROM node:latest
ADD ../../B-Yond/amaze-us/microservice/challenge-3/cargo .
WORKDIR cargo
RUN npm install mongoose
RUN npm install --save morgan
RUN npm install --save express 
EXPOSE 8080
CMD [ "node", "server.js" ]

# Build instructions
# docker build -t <your username>/node-web-app .
# docker run -p 8080:8080 -d <your username>/node-web-app

