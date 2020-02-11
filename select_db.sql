SELECT z.imie, z.nazwisko, COUNT(b.id) AS suma
FROM zawodnik z LEFT JOIN bramka b
ON z.id = b.id_zawodnik
GROUP BY z.imie, z.nazwisko
ORDER BY suma DESC;

SELECT m.id, m.wynik_meczu, t.data_spotkania, t.godzina, s.imie AS sedzia_imie, s.nazwisko AS sedzia_nazwisko
FROM mecz m JOIN termin t
ON m.id_termin = t.id
JOIN sedzia s
ON m.id_sedzia = s.id
WHERE m.wynik_meczu != '00:00';

SELECT k.nazwa, s.nazwa AS stadion, k.miejscowosc, s.adres
FROM klub k JOIN stadion s
ON k.id_stadion = s.id;

SELECT m.id, g.nazwa AS gosc, p.nazwa AS gospodarz
FROM mecz m JOIN klub g
ON m.id_klub_gosc = g.id
JOIN klub p
ON m.id_klub_gospodarz = p.id
WHERE wynik_meczu IN ('00:00');
