FROM node

RUN mkdir -p /app/code

RUN cd /app && npm install -g sass-lint

WORKDIR /app

ADD sass-lint-rules.yml /sass-lint-rules.yml

ENTRYPOINT [ "sass-lint" ]
