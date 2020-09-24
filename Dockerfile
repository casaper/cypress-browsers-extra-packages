ARG from_tag=node12.8.1-chrome80-ff72

FROM cypress/browsers:${from_tag}

RUN apt update \
  && apt install -yqq --no-install-recommends rsync \
  && apt-get autoremove -yqq \
  && apt-get autoclean -yqq \
  && rm -rf /var/lib/apt/lists/*
