FROM bfabio/publiccode-parser-go:latest

RUN go get -u github.com/reviewdog/reviewdog/cmd/reviewdog

COPY .reviewdog.yml .reviewdog.yml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
