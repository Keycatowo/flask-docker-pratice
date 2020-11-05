FROM python:2.7
ADD requirements.txt /usr/src/app/
WORKDIR /usr/src/app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ADD . /usr/src/app
EXPOSE 4000
ENTRYPOINT ["python","index.py"]
