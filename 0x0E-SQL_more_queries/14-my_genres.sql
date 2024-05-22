-- This script lists all genres of the show Dexter from the hbtn_0d_tvshows database
-- Each record displays the genre name
-- Results are sorted in ascending order by the genre name
-- One SELECT statement is used to retrieve the required information

-- Select genres of the show Dexter
SELECT tv_genres.name
FROM tv_shows
JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
WHERE tv_shows.title = 'Dexter'
ORDER BY tv_genres.name ASC;
