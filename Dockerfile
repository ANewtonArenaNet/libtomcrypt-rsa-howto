FROM debian
RUN apt-get update -y
RUN apt-get install make g++ -y
ADD ./ /example/

# Build
WORKDIR /example/
RUN make
RUN make key
RUN make test
