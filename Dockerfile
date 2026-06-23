FROM python:3.13-alpine

RUN pip install --no-cache-dir mitmproxy

COPY rewrite.py /app/rewrite.py
WORKDIR /app

EXPOSE 8888

ENTRYPOINT ["mitmdump"]
CMD ["-s", "/app/rewrite.py", "--listen-host", "0.0.0.0", "--listen-port", "8888"]
