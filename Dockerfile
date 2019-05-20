FROM debian:9
RUN apt-get update && apt-get install -y uwsgi

ENTRYPOINT ["/usr/bin/uwsgi"]

CMD [ "--plugin", "router_uwsgi", \
    "--plugin", "router_redirect", \
    "--http-socket", ":80", \
    "--route-if", "equal:1;1 redirect-permanent:https://${HTTP_HOST}${REQUEST_URI}" \
]
