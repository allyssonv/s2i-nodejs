# sample-app

FROM quay.io/centos7/s2i-base-centos7:2021-08-30T12_30_58_02_00-e49e191

RUN yum -y update && \
    curl -sL https://rpm.nodesource.com/setup_14.x | bash - && \
    yum install -y nodejs

COPY ./s2i/bin/ /usr/libexec/s2i

USER 1001

EXPOSE 8080

CMD ["/usr/libexec/s2i/usage"]