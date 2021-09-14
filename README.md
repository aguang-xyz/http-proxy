# dular-proxy

A web proxy server based [squid](https://ubuntu.com/server/docs/proxy-servers-squid).

## Usage

```bash
docker run --name dular-proxy -d -p 3128:3128 \
  docker.pkg.github.com/dular-xyz/dular-proxy/dular-proxy:v1.0.0
```

