FROM centos:7
LABEL maintainer "Marcel Dias <marceldiass@gmail.com>"

RUN yum -y install rpmdevtools && rpmdev-setuptree

WORKDIR /root
VOLUME [ "/root/rpmbuild" ]

ENV SPEC_FILE ""
COPY entrypoint.sh entrypoint.sh 

ENTRYPOINT [ "./entrypoint.sh" ]
CMD ["bash", "-c", "rpmbuild -bb rpmbuild/SPECS/${SPEC_FILE}"]

