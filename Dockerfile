#Pull base image
FROM ubuntu:14.04

# Dockerfile that uses mono 4.0.1 and Ubuntu
MAINTAINER Eric Irwin <eirwin@integrate.com>

# Run commands to modify the new image
RUN apt-get update && apt-get install -y \ 
	curl \
	nano 
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy snapshots 4.0.0" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
RUN sudo apt-get install -y mono-devel
