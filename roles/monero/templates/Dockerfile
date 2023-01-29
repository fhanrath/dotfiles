FROM alpine:latest

RUN wget https://downloads.getmonero.org/cli/linux64
RUN mkdir /monero
RUN tar --wildcards -xf linux64 monero*/monerod -C /monero
WORKDIR /monero
RUN chmod +x monerod
CMD ./monerod
