# Setup OS and Compiler

FROM alpine:3
RUN apk add --no-cache gcc musl-dev

# Make the dir for the program

RUN mkdir /helloWorld
WORKDIR /helloWorld

COPY HelloDocker.c .
RUN gcc HellowDocker.c -o a.out

# Set the starting command
CMD ["./a.out"]
