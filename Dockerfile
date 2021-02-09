FROM bfabio/publiccode-parser-action:latest

RUN wget -O - https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s -- -b /usr/local/bin

ENTRYPOINT ["/entrypoint.sh"]
