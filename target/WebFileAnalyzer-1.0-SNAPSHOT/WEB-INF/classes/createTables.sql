
/*
POST GRESS db
*/
CREATE DATABASE "APP"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;

CREATE TABLE public.files (
	ID SERIAL NOT NULL  ,
	FILENAME VARCHAR(300) NOT NULL,
	PROCDATE TIMESTAMP NOT NULL,
	 CONSTRAINT "FILES_pkey_" PRIMARY KEY (ID)
	
);

CREATE TABLE public.filestatistic (
	ID SERIAL  NOT NULL,
	FILEID BIGINT,
	LINE VARCHAR(2048),
	MAXWORD INTEGER,
	MINWORD INTEGER,
	LENGTHLINE BIGINT NOT NULL,
	AVGWORD NUMERIC(16,2),
	CONSTRAINT "FILESTATISTIC_pkey_" PRIMARY KEY (ID)
);
