-- List all shows without genre 'Comedy' in 'hbtn_0d_tvshows'
-- 'tv_genres' table contains only one record where name = Comedy
-- Each record should display tv_shows.title
-- You can use max of 2 SELECT statements
USE hbtn_0d_tvshows_rate;

SELECT tv_genres.name, SUM(ratings.rating) AS rating_sum
FROM tv_genres
JOIN shows_genres ON tv_genres.id = shows_genres.genre_id
JOIN tv_shows ON shows_genres.show_id = tv_shows.id
JOIN ratings ON tv_shows.id = ratings.show_id
GROUP BY tv_genres.name
ORDER BY rating_sum DESC;
