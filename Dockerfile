FROM python:3.6

RUN apt update -y 

RUN apt install python-pydot python-pydot-ng graphviz libgraphviz-dev -y

USER root
COPY ./user/build.sh /tmp/build.sh
RUN /tmp/build.sh && rm /tmp/build.sh

EXPOSE 8052

CMD ["python3.6", "AdventureGen/application.py"]