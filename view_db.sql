CREATE OR REPLACE VIEW mecz_data AS
SELECT m.id, m.wynik_meczu, t.data_spotkania, t.godzina, s.imie AS sedzia_imie, s.nazwisko AS sedzia_nazwisko
FROM mecz m JOIN termin t
ON m.id_termin = t.id
JOIN sedzia s
ON m.id_sedzia = s.id
WHERE S.imie LIKE 'Krystian';