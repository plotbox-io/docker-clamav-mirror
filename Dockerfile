FROM python:latest

RUN pip install cvdupdate schedule
RUN cvd config set --dbdir /clamav
RUN mkdir -p /opt/clamav-mirror

COPY mirror.py /opt/clamav-mirror

WORKDIR /opt/clamav-mirror
RUN mkdir /clamav

CMD python3 mirror.py
