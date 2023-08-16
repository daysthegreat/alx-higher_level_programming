-- Use 'hbtn_0d_tvshows' to list all genres of show 'Dexter'
-- 'tv_shows' table contains only one record where title = Dexter
-- Each record should display tv_genres.name
-- Results must be sorted in ascending order by genre name
-- You can only use one SELECT statement
USE hbtn_0d_tvshows;

SELECT tv_genres.name
FROM tv_genres
JOIN shows_genres ON tv_genres.id = shows_genres.genre_id
JOIN tv_shows ON shows_genres.show_id = tv_shows.id
WHERE tv_shows.title = 'Dexter'
ORDER BY tv_genres.name ASC;
