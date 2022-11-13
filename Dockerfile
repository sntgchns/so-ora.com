FROM python:3.11.0
LABEL Santiago Soñora "https://soñora.site"
COPY . /app
WORKDIR /app
VOLUME ["/app"]
RUN pip install --no-cache-dir -r requirements.txt
CMD gunicorn --bind 0.0.0.0:5000 --workers=5 --threads=2 app:app
# ENTRYPOINT ["python"]
# CMD ["app.py"]