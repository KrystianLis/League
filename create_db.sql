CREATE TABLE termin (
	id SERIAL NOT NULL PRIMARY KEY,
	data_spotkania DATE,
	godzina TIME WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE sedzia (
	id SERIAL NOT NULL PRIMARY KEY,
	imie VARCHAR(40) NOT NULL,
	nazwisko VARCHAR(40) NOT NULL
);

CREATE TABLE stadion (
	id SERIAL NOT NULL PRIMARY KEY,
	nazwa VARCHAR(40) NOT NULL,
	adres VARCHAR(40) NOT NULL
);

CREATE TABLE klub (
	id SERIAL NOT NULL PRIMARY KEY,
	nazwa VARCHAR(40) NOT NULL,
	miejscowosc VARCHAR(40) NOT NULL,
	id_stadion INT NOT NULL,
	CONSTRAINT id_stadion_fk FOREIGN KEY(id_stadion) REFERENCES stadion(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE zawodnik (
	id SERIAL NOT NULL PRIMARY KEY,
	imie VARCHAR(40) NOT NULL,
	nazwisko VARCHAR(40) NOT NULL,
	data_urodzenia TIMESTAMP,
	id_klub INT NOT NULL,
	CONSTRAINT id_klub_fk FOREIGN KEY(id_klub) REFERENCES klub(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE mecz (
	id SERIAL NOT NULL PRIMARY KEY,
	wynik_meczu char(5),
	id_termin INT NOT NULL,
    id_klub_gosc INT NOT NULL,
    id_klub_gospodarz INT NOT NULL,
    id_sedzia INT NOT NULL,
	CONSTRAINT id_termin_fk FOREIGN KEY(id_termin) REFERENCES termin(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT id_klub_gosc_fk FOREIGN KEY(id_klub_gosc) REFERENCES klub(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT id_klub_gospodarz_fk FOREIGN KEY(id_klub_gospodarz) REFERENCES klub(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT id_sedzia_fk FOREIGN KEY(id_sedzia) REFERENCES sedzia(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE bramka (
	id SERIAL NOT NULL PRIMARY KEY,
	id_zawodnik INT NOT NULL,
	id_mecz INT NOT NULL,
	CONSTRAINT id_mecz_fk FOREIGN KEY(id_mecz) REFERENCES mecz(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT id_zawodnik_fk FOREIGN KEY(id_zawodnik) REFERENCES zawodnik(id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION
);





