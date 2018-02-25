FROM centos:centos7

RUN yum -y update \
    && yum -y install \
        openssh-server \
        passwd

ADD bin/init.sh /usr/local/bin/init.sh

RUN /usr/local/bin/init.sh

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]