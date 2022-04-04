# MovieDB

Einfaches Schema einer Filme-Datenbank

```
Movies(Movie_ID, Title, ReleaseDate, Genre_ID, Budget, OpeningWeek, Profit, Runtime, Certificate, SequelOf, Distribution)
```

## Tabelle Movies

| Attribut | Datentyp              | Beschreibung |
| -------- | --------------------- | ------------ |
| Movie_ID | NUMBER(8) PRIMARY KEY | ID als Primärschlüssel, Zahl die Hochgezählt wird |
| Title    | VARCHAR2(128)         | Titel des Films in deutscher Sprache |
| ReleaseDate | DATE | Erscheinungsdatum bzw. Primere des Films
| Genre_ID | NUMBER(8) | Genre des Films als Fremdschlüssel (zu Genre.ID)
| Budget | NUMBER(10) | Budget des Films in Dollar
| OpeningWeek | NUMBER(10) | Einspielergebnis in der ersten Woche (USA)
| Profit | NUMBER(10) | Gesamt Einspielergebnis / Gewinn (USA)
| Runtime | NUMBER(3) | Laufzeit des Films in Minuten
| Certificate | NUMBER(3) | Altersbeschränkung
| SequelOf| NUMBER(8) | Fremdschlüssel, Vorgänger Film (Movies.Movie_ID)
| Distribution | VARCHAR(32) | Filmverleih

Lizenz: CC BY-SA
