FROM java:8-jre-alpine

RUN apk add --no-cache \
        bash \
        curl \
        unzip \
    && curl -sL 'https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/2.3.1/gatling-charts-highcharts-bundle-2.3.1-bundle.zip' -o gatling-2.3.1.zip \
    && unzip gatling-2.3.1.zip \
    && rm gatling-2.3.1.zip \
    && mv gatling-charts-highcharts-bundle-2.3.1 gatling

WORKDIR /gatling

ENTRYPOINT ["bin/gatling.sh", "-s"]
