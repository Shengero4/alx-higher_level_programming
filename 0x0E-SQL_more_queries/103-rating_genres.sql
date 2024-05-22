-- This script lists all genres in the database hbtn_0d_tvshows_rate by their rating sum
-- Each record displays the genre name and the sum of ratings
-- Results are sorted in descending order by the rating sum
-- One SELECT statement is used to retrieve the required information

-- Select genres and their rating sum
SELECT tv_genres.name, SUM(tv_show_ratings.rating) AS rating_sum
FROM tv_genres
JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
JOIN tv_shows ON tv_show_genres.tv_show_id = tv_shows.id
LEFT JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.tv_show_id
GROUP BY tv_genres.name
ORDER BY rating_sum DESC;
