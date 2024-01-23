CREATE TABLE tietokone (tietokone_id INTEGER IDENTITY(1,1) PRIMARY KEY, merkki TEXT, malli TEXT,);

CREATE TABLE asiakkaat (asiakas_id INTEGER IDENTITY (1,1) PRIMARY KEY, nimi VARCHAR(50), puhelinnumero VARCHAR(50),);

CREATE TABLE huolto (huolto_id INTEGER IDENTITY (1,1) PRIMARY KEY, asiakas_id INTEGER REFERENCES asiakkaat ON DELETE CASCADE, tietokone_id INTEGER REFERENCES tietokone ON DELETE CASCADE);

CREATE TABLE tilanne (tilanne_id INTEGER IDENTITY (1,1) PRIMARY KEY,  huolto_id INTEGER REFERENCES huolto ON DELETE CASCADE);


INSERT INTO	asiakkaat( nimi, puhelinnumero) VALUES ('Aleksi Leppävuori' , '0523123421');

INSERT INTO	tietokone( merkki, malli) VALUES ('lenovo' , 'x1231');

INSERT INTO huolto(asiakas_id, tietokone_id) VALUES (1, 1);


SELECT * FROM tietokone;

SELECT * FROM asiakkaat;

SELECT * FROM huolto;


SELECT ti.id AS id, a.nimi AS asiakas, tu.nimi AS tuote, ti.toimitettu AS toimitettu  FROM tilaukset ti, asiakkaat a, tuotteet tu WHERE a.id=ti.asiakas_id AND tu.id=ti.tuote_id

