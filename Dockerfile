#writing multi-stage dockerfile to reduce image size
#FIRST_STAGE
#using golang as base image
FROM golang:latest AS base

#Creating a working dir that runs inside container
WORKDIR /app/go-web-app
#whatever we gonna execute after this will be executed inside this
#working dir

#copy the go application dependencies file
COPY go.mod .
#This copies files from current dockerfile dir to workdir inside container

#download go dependencies
RUN go mod download

#copy go-webapp source code files
COPY . .

#build artifact using source code
RUN go build -o main .

#SECOND_STAGE
#using distroless image
FROM gcr.io/distroless/base
#https://github.com/GoogleContainerTools/distroless -- distroless images link

#COPY the artifact from first stage to here
COPY --from=base /app/go-web-app/main .

#copy the static files from first stage to here
COPY --from=base /app/go-web-app/static ./static

#expose on port
EXPOSE 8080

#run the main file
CMD ["./main"]