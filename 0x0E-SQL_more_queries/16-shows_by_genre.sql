-- List all shows and genres linked to show from 'hbtn_0d_tvshows'
-- If show doesn't have a genre, display NULL in genre column
-- Each record should display tv_shows.title, tv_genres.name
-- Results must be sorted in ascending order by show title
-- You can only use one SELECT statement
USE hbtn_0d_tvshows;

SELECT tv_shows.title, tv_genres.name
FROM tv_shows
LEFT JOIN shows_genres ON tv_shows.id = shows_genres.show_id
LEFT JOIN tv_genres ON shows_genres.genre_id = tv_genres.id
ORDER BY tv_shows.title ASC, tv_genres.name ASC;
