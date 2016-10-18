FROM openshift/base-centos7

MAINTAINER amazee.io hello@amazee.io

RUN \
    wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo && \
    curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && \
    yum install -y \
                ocaml \
                elfutils-libelf-devel \
                nodejs \
                git \
                yarn \
                && \
    yum clean all -y
