FROM python:3.12.4-alpine3.20
RUN apk add git
RUN git clone https://github.com/mazen160/bfac.git
WORKDIR bfac
RUN python setup.py install
ENTRYPOINT ["bfac"]
