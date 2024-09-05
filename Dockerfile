FROM python:3.13.0rc1-alpine3.20
RUN apk add git
RUN git clone https://github.com/mazen160/bfac.git
WORKDIR bfac
RUN python setup.py install
ENTRYPOINT ["bfac"]
