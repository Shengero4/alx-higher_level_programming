-- This script lists all shows from hbtn_0d_tvshows_rate by their rating sum
-- Each record displays the show title and the sum of ratings
-- Results are sorted in descending order by the rating sum
-- One SELECT statement is used to retrieve the required information

-- Select shows and their rating sum
SELECT tv_shows.title, SUM(tv_show_ratings.rating) AS rating_sum
FROM tv_shows
LEFT JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.tv_show_id
GROUP BY tv_shows.title
ORDER BY rating_sum DESC;
