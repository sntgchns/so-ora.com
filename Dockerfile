FROM python:3
LABEL Santiago Soñora "https://soñora.site"
COPY . /app
WORKDIR /app
VOLUME ["/app"]
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]