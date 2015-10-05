FROM gliderlabs/alpine:3.2
RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk --update add emacs@testing openssl && rm -rf /var/cache/apk/*

COPY ./scripts/install.el /scripts/install.el
RUN ["emacs", "--batch", "-l", "/scripts/install.el"]

COPY ./scripts/clean.el /scripts/clean.el

WORKDIR /code/
CMD ["emacs", "--batch", "-l", "/scripts/clean.el"]