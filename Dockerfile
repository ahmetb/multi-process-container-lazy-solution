FROM python:3-alpine

RUN apk add --no-cache \
	nginx \
	bash
RUN pip install Flask

WORKDIR /src
COPY . .

ENTRYPOINT ["./start.sh"]
