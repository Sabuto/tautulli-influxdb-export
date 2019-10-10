ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN mkdir /work
COPY . /work
WORKDIR /work

RUN python setup.py install

CMD [ "/run.sh" ]
