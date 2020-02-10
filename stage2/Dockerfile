From python:latest

ADD ../B-Yond/amaze-us/microservice/challenge-3/stage2 .
WORKDIR stage2


#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt


CMD [ "python", "./stage2.py" ]

#$ docker build -t stage2 .
#$ docker run -it --rm --name my-running-app stage2

ENTRYPOINT ["python", "./stage2.py"]
EXPOSE 80

