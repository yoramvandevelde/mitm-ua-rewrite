# just rewrites the UA 

BROWSER_UA = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
    "AppleWebKit/537.36 (KHTML, like Gecko) "
    "Chrome/120.0.0.0 Safari/537.36"
)

def request(flow):
    # print(f"Rewrite UA for {flow.request.pretty_host}")
    flow.request.headers["User-Agent"] = BROWSER_UA
