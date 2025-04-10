FROM python:3.13.3-alpine3.21
RUN apk add git
RUN git clone https://github.com/mazen160/bfac.git
WORKDIR bfac
RUN python setup.py install
ENTRYPOINT ["bfac"]
