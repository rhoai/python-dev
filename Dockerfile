FROM python:3.7-slim

RUN apt-get update && apt-get -y install curl

RUN pip install redis elasticsearch SQLAlchemy

CMD ["/bin/bash"]
