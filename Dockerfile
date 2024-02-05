FROM debian:bullseye
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y install python3 texlive texlive-music texlive-pictures texlive-plain-generic
RUN mkdir /GuitarHub
WORKDIR /GuitarHub
ENTRYPOINT ["./GuitarHubGenerator.py"]

