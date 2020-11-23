-- SELECT * FROM Genre;

-- SELECT * FROM Artist 
-- ORDER BY Artist.ArtistName

-- SELECT s.Title, a.ArtistName 
-- FROM Song s
-- LEFT JOIN  Artist a on s.ArtistId = a.Id


-- SELECT a.ArtistName, al.Title, g.Label 
-- FROM  Artist a
-- LEFT JOIN Album al on al.ArtistId = a.Id
-- LEFT JOIN Genre g on al.GenreId = g.Id
-- WHERE g.Label = 'Pop'

-- SELECT a.ArtistName, al.Title, g.Label 
-- FROM  Artist a
-- LEFT JOIN Album al on al.ArtistId = a.Id
-- LEFT JOIN Genre g on al.GenreId = g.Id
-- WHERE g.Label = 'Rock'
-- OR g.Label = 'Jazz'

-- SELECT al.Title
-- FROM Album al
-- LEFT JOIN Song s on s.AlbumId = al.Id
-- WHERE s.Title IS NULL

-- INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Echos', 2013)

-- INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Saints', '2019', 2000, 'Records', 28, 14)

-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Gold', 180, '10/5/2015', 14, 28, 23)

-- SELECT s.Title, a.ArtistName, al.Title
-- FROM Song s
-- LEFT JOIN Album al on s.AlbumId = al.Id
-- LEFT JOIN Artist a on a.Id = s.ArtistId
-- WHERE a.ArtistName = 'Echos'

-- SELECT al.Title, COUNT(s.Id)
-- FROM Album al
-- LEFT JOIN Song s on s.AlbumId = al.Id
-- GROUP BY al.Title

-- SELECT a.ArtistName, COUNT(s.Id)
-- FROM Artist a
-- LEFT JOIN Song s on s.ArtistId = a.Id
-- GROUP BY a.ArtistName

-- SELECT g.Label, COUNT(s.id)
-- FROM Genre g
-- LEFT JOIN Song s on s.GenreId = g.Id
-- GROUP BY g.Label

-- SELECT a.ArtistName, al.Label, COUNT(al.Title)
-- FROM Artist a
-- INNER JOIN Album al on al.ArtistId = a.Id
-- GROUP BY a.ArtistName, al.Label
-- HAVING COUNT(al.Title) > 1

-- SELECT al.Title, al.AlbumLength
-- FROM Album al
-- WHERE AlbumLength IN (SELECT MAX(AlbumLength) FROM Album)

-- Select s.Title, al.Title AS Album, s.SongLength
-- FROM Song s
-- LEFT JOIN Album al on  al.Id = s.AlbumId
-- WHERE SongLength IN (SELECT MAX(SongLength) FROM Song)