# 1 
FROM python:3.7

# 2
RUN pip install -r requirements.txt

# 3
RUN apt-get install sqlite3

# 3
COPY . /app
WORKDIR /app

# 4
CMD exec gunicorn app
