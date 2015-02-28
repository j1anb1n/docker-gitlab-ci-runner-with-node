FROM  sameersbn/gitlab-ci-runner:5.0.0-2
MAINTAINER chan.jianbin@gmail.com

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs


ENTRYPOINT ["/app/init"]
CMD ["app:start"]
