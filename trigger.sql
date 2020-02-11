CREATE TABLE sedzia_log(id SERIAL, id_sedzia int, imie VARCHAR(40), nazwisko VARCHAR(40), czas_wstawienia TIMESTAMP(6));

CREATE OR REPLACE FUNCTION sedzia_log_trigger()
RETURNS TRIGGER AS
$BODY$
BEGIN
	if (NEW.nazwisko <> OLD.nazwisko AND NEW.imie <> OLD.imie) THEN
		INSERT INTO sedzia_log(id_sedzia, imie, nazwisko, czas_wstawienia) VALUES (OLD.id, OLD.imie, OLD.nazwisko, now());
	END IF;
RETURN NEW;
END;
$BODY$
LANGUAGE PLPGSQL;

CREATE TRIGGER sedzia_trigger
BEFORE UPDATE
ON sedzia
FOR EACH ROW
EXECUTE PROCEDURE sedzia_log_trigger();


CREATE OR REPLACE FUNCTION ochrona_danych()
RETURNS TRIGGER AS 
$BODY$
    BEGIN 
        IF EXISTS (SELECT id FROM klub WHERE id_stadion = NEW.id_stadion ) THEN
            RAISE 'Stadion o podanej nazwie w bazie już istnieje';
        END IF;
    END;
$BODY$
LANGUAGE PLPGSQL;

CREATE TRIGGER ochrona_danych_trigger
BEFORE INSERT
ON klub
FOR EACH ROW
EXECUTE PROCEDURE ochrona_danych();

