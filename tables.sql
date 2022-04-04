
DROP TABLE Movies;
DROP VIEW Filme;

DROP TABLE Personen;

CREATE TABLE Movies(
  ID NUMBER(8) PRIMARY KEY, 
  Title VARCHAR2(128), 
  ReleaseDate DATE, 
  GenreID NUMBER(8), 
  Budget NUMBER(10), 
  OpeningWeek NUMBER(10), 
  Profit NUMBER(10), 
  Runtime NUMBER(3), 
  Certificate NUMBER(3), 
  SequelOf NUMBER(8),
  Distribution VARCHAR(32)
);

DESC Movies;

CREATE TABLE Personen(
  ID NUMBER(8) PRIMARY KEY, 
  Fristname VARCHAR2(128),
  Lastname VARCHAR2(128)
);

CREATE TABLE PersonMoive(
	PersonID NUMBER(8),
	MovieID NUMBER(8),
	Role VARCHAR(32),
	PRIMARY KEY (PersonID, MovieID, Role)
);

CREATE VIEW Filme AS
  SELECT
    ID, 
    Title AS Titel, 
    ReleaseDate AS PremierenDatum, 
    GenreID, 
    Budget, 
    OpeningWeek AS EroeffnungWoche, 
    Profit AS Gewinn, 
    Runtime AS Laufzeit, 
    Certificate AS Altersbeschraenkung, 
    SequelOf AS FortsetzungVon,
    distribution AS Verleih
  FROM Movie;


DROP TABLE Genres;

CREATE TABLE Genres (
  ID NUMBER(8) PRIMARY KEY, 
  Name VARCHAR2(32)
);

INSERT INTO Genres VALUES (1, 'Sci-Fi');
INSERT INTO Genres VALUES (2, 'Drama');
INSERT INTO Genres VALUES (3, 'Comic Verfilmung');
INSERT INTO Genres VALUES (4, 'Action');
INSERT INTO Genres VALUES (5, 'Fantasy');
INSERT INTO Genres VALUES (6, 'Animation');
INSERT INTO Genres VALUES (7, 'Thriller');

SET DEFINE OFF;

INSERT INTO Movies 
  VALUES(1, 'Avatar - Aufbruch nach Pandora', TO_DATE('2009/12/17', 'yyyy/mm/dd'), 1, 237000000, 77025481, 760505847, 162, 12, null, '20th Century Fox');

INSERT INTO Movies
  VALUES(2, 'Titanic', TO_DATE('1997/12/14', 'yyyy/mm/dd'), 2, 200000000, 28638131, 658672302, 194, 12, null, 'Paramount Pictures');

INSERT INTO Movies 
  VALUES(3, 'Star Wars: Das Erwachen der Macht', TO_DATE('2015/12/14', 'yyyy/mm/dd'), 1, 245000000 , 247966675, 936627416, 136, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(4, 'Jurassic World', TO_DATE('2015/12/14', 'yyyy/mm/dd'), 1, 150000000 , 204600000, 652177271 , 124, 12, null, 'Universal Studios');
  
INSERT INTO Movies 
  VALUES(5, 'The Avengers', TO_DATE('2012/04/11', 'yyyy/mm/dd'), 3, 220000000, 207438708, 623279547  , 143, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(6, 'Fast & Furios 7', TO_DATE('2016/03/15', 'yyyy/mm/dd'), 4, 190000000, 147187040, 350034110, 137, 12, null, 'Universal Studios');  

INSERT INTO Movies 
  VALUES(7, 'Avengers: Age of Ultron', TO_DATE('2015/04/13', 'yyyy/mm/dd'), 3, 250000000  , 191271109 , 458991599, 141, 12, 5, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(8, 'Harry Potter und die Heiligtümer des Todes – Teil 2', TO_DATE('2011/07/11', 'yyyy/mm/dd'), 5, 125000000, 169189427, 380955619, 130, 12, null, 'Warner Bros. Entertainment');

INSERT INTO Movies 
  VALUES(9, 'Die Eiskönigin – Völlig unverfroren', TO_DATE('2011/10/11', 'yyyy/mm/dd'), 6, 150000000, 67391326, 400736600, 102, 0, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(10, 'Die Schöne und das Biest', TO_DATE('2017/03/17', 'yyyy/mm/dd'), 5, 160000000, 174750616, 503974884, 129, 6, null, 'Walt Disney Studios');
 
INSERT INTO Movies 
  VALUES(11, 'Fast & Furious 8', TO_DATE('2017/04/04', 'yyyy/mm/dd'), 4, 250000000, 98786705, 225697400, 136, 12, 6, 'Universal Studios');

INSERT INTO Movies 
  VALUES(12, 'Iron Man 3', TO_DATE('2013/04/12', 'yyyy/mm/dd'), 4, 200000000, 174144585 , 408992272, 130, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(13, 'Minions', TO_DATE('2015/06/11', 'yyyy/mm/dd'), 4, 74000000, 115200000, 336029560, 91, 0, null, 'Universal Studios');

INSERT INTO Movies 
  VALUES(14, 'The First Avenger: Civil War', TO_DATE('2016/04/28', 'yyyy/mm/dd'), 3, 250000000, 179139142, 408080554 , 147, 12, null, 'Walt Disney Studios');

INSERT INTO Movies 
  VALUES(15, 'Transformers 3 – Die dunkle Seite des Mondes', TO_DATE('2011/06/29', 'yyyy/mm/dd'), 3, 195000000, 115886050 , 352358779, 154, 12, null, 'Paramount Pictures');

INSERT INTO Movies 
  VALUES(16, 'Der Herr der Ringe: Die Rückkehr des Königs', TO_DATE('2003/12/17', 'yyyy/mm/dd'), 5, 94000000, 72629713, 377019252, 201, 12, null, 'New Line Cinema');

INSERT INTO Movies 
  VALUES(17, 'James Bond 007: Skyfall', TO_DATE('2012/11/01', 'yyyy/mm/dd'), 4, 200000000, 88364714, 304360277, 143, 12, null, 'Metro-Goldwyn-Mayer');

INSERT INTO Movies 
  VALUES(18, 'Transformers: Ära des Untergangs', TO_DATE('2014/07/17', 'yyyy/mm/dd'), 3, 210000000, 100038390, 245428137 , 165, 12, 15, 'Paramount Pictures');

INSERT INTO Movies 
  VALUES(19, 'The Dark Knight Rises', TO_DATE('2012/07/26', 'yyyy/mm/dd'), 3, 250000000, 160887295, 448130642, 164, 12, null, 'Warner Bros. Entertainment');

INSERT INTO Movies 
  VALUES(20, 'Toy Story 3', TO_DATE('2010/07/29', 'yyyy/mm/dd'), 6, 200000000, 109000000, 414984497, 103, 0, null, 'Walt Disney Studios');

INSERT INTO Personen (1, 'James', 'Cameron');
INSERT INTO Personen (2, 'J. J.', 'Abrams');
INSERT INTO Personen (3, 'Colin', 'Trevorrow');
INSERT INTO Personen (4, 'Joss', 'Whedon');
INSERT INTO Personen (5, 'James', 'Wan');
INSERT INTO Personen (6, 'David', 'Yates');
INSERT INTO Personen (7, 'Chris', 'Buck');
INSERT INTO Personen (8, 'Jennifer', 'Lee');
INSERT INTO Personen (9, 'Bill', 'Condon');
INSERT INTO Personen (10, 'F. Gary', 'Gray');
INSERT INTO Personen (11, 'Shane', 'Black');
INSERT INTO Personen (12, 'Pierre', 'Coffin');
INSERT INTO Personen (13, 'Kyle', 'Balda');
INSERT INTO Personen (14, 'Anthony', 'Russo');
INSERT INTO Personen (15, 'Joe', 'Russo');
INSERT INTO Personen (16, 'Michael', 'Bay');
INSERT INTO Personen (17, 'Peter', 'Jackson');
INSERT INTO Personen (18, 'Sam', 'Mendes');
INSERT INTO Personen (19, 'Christopher', 'Nolan');
INSERT INTO Personen (20, 'Lee', 'Unkrich');

INSERT INTO PersonMoive(1,1, 'direction');
INSERT INTO PersonMoive(1,2, 'direction');
INSERT INTO PersonMoive(2,3, 'direction');
INSERT INTO PersonMoive(3,4, 'direction');
INSERT INTO PersonMoive(4,5, 'direction');
INSERT INTO PersonMoive(5,6, 'direction');
INSERT INTO PersonMoive(4,7, 'direction');
INSERT INTO PersonMoive(6,8, 'direction');
INSERT INTO PersonMoive(7,9, 'direction');
INSERT INTO PersonMoive(8,9, 'direction');
INSERT INTO PersonMoive(9,10, 'direction');
INSERT INTO PersonMoive(10,11, 'direction');
INSERT INTO PersonMoive(11,12, 'direction');
INSERT INTO PersonMoive(12,13, 'direction');
INSERT INTO PersonMoive(13,13, 'direction');
INSERT INTO PersonMoive(14,14, 'direction');
INSERT INTO PersonMoive(15,14, 'direction');
INSERT INTO PersonMoive(16,15, 'direction');
INSERT INTO PersonMoive(17,16, 'direction');
INSERT INTO PersonMoive(18,17, 'direction');
INSERT INTO PersonMoive(16,18, 'direction');
INSERT INTO PersonMoive(19,19, 'direction');
INSERT INTO PersonMoive(20,20, 'direction');

