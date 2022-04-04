# MovieDB

Einfaches Schema einer Filme-Datenbank

## Tabelle Movies

| Attribut | Datentyp              | Beschreibung |
| -------- | --------------------- | ------------ |
| ID       | NUMBER(8) PRIMARY KEY | ID als Primärschlüssel |
| Title    | VARCHAR2(128)         | Titel des Films in deutscher Sprache |
| ReleaseDate | DATE | Erscheinungsdatum bzw. Primere des Films
| GenreID  | NUMBER(8) | Genre des Films als Fremdschlüssel (zu Genre.ID)
| Budget | NUMBER(10) | Budget des Films in Dollar
| OpeningWeek | NUMBER(10) | Einspielergebnis in der ersten Woche (USA)
| Profit | NUMBER(10) | Gesamt Einspielergebnis / Gewinn (USA)
| Runtime | NUMBER(3) | Laufzeit des Films in Minuten
| Certificate | NUMBER(3) | Altersbeschränkung
| SequelOf| NUMBER(3) | Fremdschlüssel, Vorgänger Film (Movie.ID)
| Distribution | VARCHAR(32) | Filmverleih

Lizenz: CC BY-SA
