all: stopwords.txt rebuild

stopwords.txt:
	wget https://raw.githubusercontent.com/phacility/phabricator/master/resources/sql/stopwords.txt

rebuild:
	docker build --tag nasqueron/mysql .
