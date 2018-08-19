from python

RUN mkdir /app
COPY *.ks /app/
WORKDIR /app
ENTRYPOINT ["python", "-m", "http.server", "8000"]
