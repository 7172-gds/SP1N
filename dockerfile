FROM amazonlinux
COPY sp1.sh .
RUN yum -y update && yum -y install yum-utils
RUN chmod ugo+x sp1.sh
CMD ./sp1.sh
