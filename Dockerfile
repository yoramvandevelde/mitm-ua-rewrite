FROM mitmproxy/mitmproxy:latest

COPY rewrite.py /app/rewrite.py
WORKDIR /app

EXPOSE 8080

ENTRYPOINT ["mitmdump"]
CMD ["-s", "/app/rewrite.py", "--listen-host", "0.0.0.0", "--listen-port", "8080"]
