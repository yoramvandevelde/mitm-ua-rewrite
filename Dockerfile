FROM python:3.13-alpine

# TOFIX remove stuffz we don't needs
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev cargo rust

RUN pip install --no-cache-dir mitmproxy --no-deps \
    && pip install --no-cache-dir \
        $(python -c "import tomllib,urllib.request; print('placeholder')")

#RUN pip install --no-cache-dir mitmproxy

COPY rewrite.py /app/rewrite.py
WORKDIR /app

EXPOSE 8888

ENTRYPOINT ["mitmdump"]
CMD ["-s", "/app/rewrite.py", "--listen-host", "0.0.0.0", "--listen-port", "8888"]
