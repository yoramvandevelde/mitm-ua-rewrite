

## Running with volume to get the cert on disk to import
```
docker run --rm -p 8888:8080 -v mitm_ca:/home/mitmproxy/.mitmproxy ghcr.io/yoramvandevelde/mitm-ua-rewrite:latest
```
