FROM debian:bullseye
LABEL maintainer="Pietro Prandini" \
      description="A docker image based on Debian that provides pdflatex and common packages for GuitarHub books generation " \
      repo="https://github.com/PietroPrandini/docker-guitarhub-generator"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y install python3 texlive texlive-music texlive-pictures texlive-plain-generic
RUN mkdir /GuitarHub
WORKDIR /GuitarHub
ENTRYPOINT ["./GuitarHubGenerator.py"]

