FROM python:3.6
ENV DISPLAY=host.docker.internal:0 TD_DATA=/home/traded/data TD_TMP=/home/traded/tmp
RUN pip install --upgrade tradedangerous
RUN trade import -P eddblink
CMD [ "trade" ]