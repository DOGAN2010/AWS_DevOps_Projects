FROM python:alpine
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . /app.py
WORKDIR /app
EXPOSE 80
CMD python3 ./app.py