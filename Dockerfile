FROM node:12.18.3-alpine3.9
LABEL maintainer="keisuke6065 <keisuke6065@gmail.com>"

ARG VERSION
LABEL version=$VERSION

RUN mkdir /openapi
RUN npm install -g openapi-combine@$VERSION

WORKDIR /openapi

ENTRYPOINT ["openapi-combine"]
