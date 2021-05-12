FROM ubuntu
MAINTAINER stee (stephaneamoussou@gmail.com)
WORKDIR /
RUN apt update -y
RUN apt install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y
RUN apt install -y python3-pip locales
COPY student_* /
COPY requirements.txt /
RUN pip3 install -r requirements.txt
EXPOSE 5000 
CMD [ "python", "./student_age.py" ]
