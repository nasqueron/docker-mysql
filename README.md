# MySQL image

## Description

This MySQL image is fairly conservative: it uses the official MySQL
docker image as base, add customiszed the settings for the applications
used at Nasqueron.

## Ready for Phabricator

The followings settings have been added for Phabricator:

```
#
# * Phabricator specific settings
#
sql_mode=STRICT_ALL_TABLES
ft_stopword_file=/etc/mysql/stopwords.txt
ft_min_word_len=3
ft_boolean_syntax=' |-><()~*:""&^'
innodb_buffer_pool_size=410M
```

## To launch it

Pick a root password and a name, then run it: 

    docker run -d -e MYSQL_ROOT_PASSWORD=HZQ0Gqz7P9L5RT7adqNPivHa0obX05t --name acquisitariat nasqueron/mysql
