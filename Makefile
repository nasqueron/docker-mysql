all: files/stopwords.txt rebuild

files/stopwords.txt:
	wget -O files/stopwords.txt https://raw.githubusercontent.com/phacility/phabricator/master/resources/sql/stopwords.txt

rebuild:
	docker build --tag nasqueron/mysql .
