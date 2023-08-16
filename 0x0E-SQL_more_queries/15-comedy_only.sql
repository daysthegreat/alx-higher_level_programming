-- List all Comedy shows in 'hbtn_0d_tvshows'
-- 'tv_genres' table contains only one record where name = Comedy
-- Results must be sorted in ascending order by the show title
-- You can only use one SELECT statement
USE hbtn_0d_tvshows;

SELECT tv_shows.title
FROM tv_shows
JOIN shows_genres ON tv_shows.id = shows_genres.show_id
JOIN tv_genres ON shows_genres.genre_id = tv_genres.id
WHERE tv_genres.name = 'Comedy'
ORDER BY tv_shows.title ASC;
