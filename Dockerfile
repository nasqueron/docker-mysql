#
# Nasqueron  - MySQL image
#

FROM mysql
MAINTAINER Sébastien Santoro aka Dereckson <dereckson+nasqueron-docker@espace-win.org>

#
# Phabricator desiderata
#

COPY stopwords.txt /etc/mysql/
RUN sed -i "s/\[mysqld\]/[mysqld]\n#\n# * Phabricator specific settings\n#\nsql_mode=STRICT_ALL_TABLES\nft_stopword_file=\/etc\/mysql\/stopwords.txt\nft_min_word_len=3\nft_boolean_syntax=' |-><()~*:\"\"\\&^'\ninnodb_buffer_pool_size=410M\n/" /etc/mysql/my.cnf
