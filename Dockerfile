FROM python:3.12.3-alpine
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY main.py /app
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]