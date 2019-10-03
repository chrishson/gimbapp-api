vocabDB.pgsql is a backup db with over 5600 korean/english vocab pairs.

the vocab table was populated by the 4 csv files in this folder using:/
COPY vocab (korean, english) FROM '/Users/ChrisSon/desktop/4.csv' DELIMITERS ',' CSV header;

the csv files were created by scraping https://www.topikguide.com/6000-most-common-korean-words-1


NOTE: For Heroku, they require you to backup from a database that was uploaded to public storage. They recommend amazon aws. However, I did not want to do this so I found a way to just run the copy command by doing this:

heroku pg:psql -a gimbapp-api

heroku pg:psql -a gimbapp-api

CREATE TABLE vocab(
   vocab_id serial PRIMARY KEY,
   korean text NOT NULL,
   english text NOT NULL
);

\copy vocab (korean, english) FROM '/Users/ChrisSon/desktop/1.csv' DELIMITERS ',' CSV header;

note that its \copy and not COPY