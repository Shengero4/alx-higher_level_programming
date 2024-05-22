-- This script lists all shows and their linked genres from the hbtn_0d_tvshows database
-- If a show doesn’t have a genre, NULL is displayed in the genre column
-- Each record displays the show title and the genre name
-- Results are sorted in ascending order by the show title and genre name
-- One SELECT statement is used to retrieve the required information

-- Select shows and their linked genres
SELECT tv_shows.title, tv_genres.name
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
ORDER BY tv_shows.title ASC, tv_genres.name ASC;
