FROM python:3.7-slim

# Update & fix for postgres
RUN apt-get update && mkdir -p /usr/share/man/man1 \
  && mkdir -p /usr/share/man/man7

# Basic deps
RUN apt-get -y install curl vim

# Redis
RUN apt-get install -y redis-tools

# Postgres
RUN apt-get install -y postgresql postgresql-client

# Python dependencies
RUN pip install redis elasticsearch SQLAlchemy psycopg2-binary \
  ipython

CMD ["/bin/bash"]
