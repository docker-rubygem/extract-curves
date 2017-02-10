FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.1-mswin32

RUN gem install extract-curves --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["extract_curves.rb"]
CMD ["--help"]
