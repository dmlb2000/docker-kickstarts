from python

RUN mkdir /app
COPY *.ks /app/
WORKDIR /app
ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "8000"]
