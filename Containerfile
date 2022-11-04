FROM registry.access.redhat.com/ubi8/python-38:1-114.1666661055

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt


CMD ["./gunicorn.sh"]