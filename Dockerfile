FROM graylog/graylog:3.3
USER root
RUN apt-get update \
  && apt-get install -y wget \
  && wget -o /usr/share/graylog/plugin/graylog-plugin-auth-sso-3.3.0.jar https://github.com/Graylog2/graylog-plugin-auth-sso/releases/download/3.3.0/graylog-plugin-auth-sso-3.3.0.jar \
  && rm -rf /var/lib/apt/lists/*
USER graylog
