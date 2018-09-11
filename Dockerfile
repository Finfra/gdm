
FROM tensorflow/tensorflow
MAINTAINER The finfraTeam Project <nowage@gmail.com>

COPY ./setting.sh /
RUN chmod 755 /setting.sh
RUN /setting.sh

ENV LC_ALL en_US.UTF-8

# CMD /bin/bash
CMD ["/run_jupyter.sh", "--allow-root"]