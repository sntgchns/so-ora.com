FROM python:3.13.6-alpine3.22
LABEL name="Santiago Soñora" website="https://santiago.soñora.com"
COPY . /app
WORKDIR /app
# VOLUME ["/app"]
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install --upgrade pip
RUN pip install --no-cache-dir  -r requirements.txt
CMD ["gunicorn", "--bind", "0.0.0.0:2000", "--workers=5", "--threads=2", "app:app"]
# ENTRYPOINT ["python"]
# CMD ["app.py"]