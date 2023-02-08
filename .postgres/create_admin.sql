create user muser password '123456';

create database moviedb owner muser;

GRANT ALL PRIVILEGES ON DATABASE moviedb TO muser;
