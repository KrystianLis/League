INSERT INTO sedzia(imie, nazwisko ) VALUES
('Paweł', 'Kowalski'),
('Krystian', 'Lis'),
('Monika', 'Gapińska'),
('Witold', 'Bednarek'),
('Daniel', 'Męndak'),
('Dawid', 'Narloch');

INSERT INTO termin(data_spotkania, godzina) VALUES
('2019-10-09', '21:45:00'),
('2019-10-09', '21:45:00'),
('2019-10-10', '21:45:00'),
('2019-10-12', '18:45:00'),
('2019-10-12', '14:45:00'),
('2019-10-15', '14:45:00'),
(null,'15:45:00'),
(null,'18:45:00'),
('2019-10-21', ' 20:45:00');

INSERT INTO stadion(nazwa, adres) VALUES
('Fire', 'Rodziny nalazków 3'),
('Water', 'Bydgoska 4'),
('Earth', 'Fromborska 1'),
('Energa', 'Józefa Stasińskiego 9'),
('Wind', 'Do Studzienki 10'),
('Tibia', 'Witolda 33');

INSERT INTO klub(nazwa, miejscowosc, id_stadion) VALUES
('FcGdansk', 'Gdańsk', 4),
('FcElblag', 'Elbląg', 2),
('OlimpiaDworzec', 'Gdańsk', 1),
('FcIngland', 'Warszawa', 3);

INSERT INTO mecz(wynik_meczu, id_termin, id_klub_gosc, id_klub_gospodarz, id_sedzia) VALUES
('00:00', 1, 1, 2, 1),
('06:12 ', 2, 1, 3, 2),
('00:00', 3, 2, 3, 1),
('12:24', 4, 4, 3, 4),
(null, 5, 4, 2, 3),
(null, 6, 4, 1, 3);

INSERT INTO zawodnik(imie, nazwisko, data_urodzenia, id_klub) VALUES
('Radomir', 'Lis', '1995-10-09 21:45:00', 1),
('Mirosław', 'Widowski', '1988-10-09 21:45:00', 1),
('Radomir', 'Gapiński', '1966-10-09 21:45:00', 1),
('Sławomir', 'Ludomir', '2000-12-09 21:45:00', 2),
('Sobiesław', 'Kraków', '1990-01-09 21:45:00', 2),
('Sambor', 'Gdańsk', null, 2),
('Witosław', 'Widowski', '1990-10-10 21:45:00', 3),
('Włodzimierz', '"Mazurski"', '1990-01-11 21:45:00', 3),
('Wojciech', 'Widowski', '1995-10-12 21:45:00', 3),
('Bogdan', 'Warminski', null, 4),
('Krystian', 'Wielki', '1995-04-09 21:45:00', 4),
('Adam', 'Gapiński', '2000-10-09 21:45:00', 4);

INSERT INTO bramka(id_zawodnik, id_mecz) VALUES
(1, 2),
(8, 2),
(8, 2),
(11, 4),
(11, 4),
(7, 4),
(8, 4),
(9, 4),
(8, 4);


