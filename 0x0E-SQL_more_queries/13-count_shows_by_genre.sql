-- This script lists all genres from the hbtn_0d_tvshows database and displays the number of shows linked to each
-- Each record displays the TV show genre and the number of shows linked to this genre
-- First column is called 'genre' and second column is called 'number_of_shows'
-- Genres without any linked shows are not displayed
-- Results are sorted in descending order by the number of shows linked
-- One SELECT statement is used to retrieve the required information

-- Select genres and count the number of shows linked to each genre
SELECT tv_show_genres.genre AS genre, COUNT(*) AS number_of_shows
FROM tv_show_genres
JOIN tv_shows ON tv_show_genres.tv_show_id = tv_shows.id
GROUP BY tv_show_genres.genre
ORDER BY number_of_shows DESC;
