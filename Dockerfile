from python

COPY *.ks /var/www/html
WORKDIR /var/www/html
ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "8000"]
