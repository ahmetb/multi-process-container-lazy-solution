FROM python:3-alpine

RUN apk add --no-cache \
	nginx \
	bash
RUN pip install Flask
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static /tini
RUN chmod +x /tini

WORKDIR /src
COPY . .

ENTRYPOINT ["/tini", "--", "./start.sh"]
