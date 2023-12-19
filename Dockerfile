FROM golang:1.20-alpine as build
COPY . /s5cmd/
RUN apk add --no-cache git make && \
    cd /s5cmd/ && \
    CGO_ENABLED=0 make build

FROM alpine:3.18
ENV AWS_ACCESS_KEY_ID XXX
ENV AWS_REGION us-east-1
ENV AWS_SECRET_ACCESS_KEY XXX
ENV AWS_SESSION_TOKEN XXX
ENV FACTSTORE_BUCKET XXX
ENV FACTSTORE_KEY_ARN XXX
ENV AWS_KMS_ACCESS_KEY_ID XXX
ENV AWS_KMS_SECRET_ACCESS_KEY XXX
COPY --from=build /s5cmd/s5cmd .
COPY XXX.log /
COPY XXX.log /
COPY XXX.log /
COPY XXX.log /
COPY XXX-c.log /
COPY XXX-c.log /
COPY XXX-c.log /
COPY XXX-c.log /
RUN chmod +x /XXX.log
RUN chmod +x /XXX.log
RUN chmod +x /XXX.log
RUN chmod +x /XXX.log
RUN chmod +x /XXX-c.log
RUN chmod +x /XXX-c.log
RUN chmod +x /XXX-c.log
RUN chmod +x /XXX-c.log
WORKDIR /aws
ENTRYPOINT ["/s5cmd"]
