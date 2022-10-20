FROM puppet/pdk:latest

LABEL maintainer="Jeff Byrnes <rbyrnes@athenahealth.com>"

# Install build-essential so some Rubygems needing builds can be installed
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential

COPY  entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
