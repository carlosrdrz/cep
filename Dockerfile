## BUILDING
##   (from project root directory)
##   $ docker build -t carlosrdrz-cep .
##
## RUNNING
##   $ docker run carlosrdrz-cep

FROM gcr.io/stacksmith-images/debian:wheezy-r06

MAINTAINER Bitnami <containers@bitnami.com>

LABEL com.bitnami.stacksmith.id="bx7re9w" \
      com.bitnami.stacksmith.name="carlosrdrz/cep"

ENV STACKSMITH_STACK_ID="bx7re9w" \
    STACKSMITH_STACK_NAME="carlosrdrz/cep" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install java-1.8.0_77-0 --checksum 85bba1b7031ef45073f06bc8cbc34f1e7cae2f2fcf350af9ec8389b0ea6302bf

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Default template
ENV PATH=/opt/bitnami/java/bin:$PATH
ENV JAVA_HOME=/opt/bitnami/java

COPY . /app
WORKDIR /app
