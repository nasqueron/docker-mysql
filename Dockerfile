#
# Nasqueron  - MySQL image
#

FROM mysql:5.7
MAINTAINER Sébastien Santoro aka Dereckson <dereckson+nasqueron-docker@espace-win.org>

COPY files /etc/mysql/
