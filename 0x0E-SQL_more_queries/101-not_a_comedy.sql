-- This script lists all shows without the genre Comedy from the hbtn_0d_tvshows database
-- Each record displays the show title
-- Results are sorted in ascending order by the show title
-- Two SELECT statements are used to retrieve the required information

-- Select shows with the genre Comedy
SELECT tv_shows.title
FROM tv_shows
JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
WHERE tv_genres.name = 'Comedy';

-- Select all shows excluding those with the genre Comedy
SELECT tv_shows.title
FROM tv_shows
WHERE tv_shows.title NOT IN (
    SELECT tv_shows.title
    FROM tv_shows
    JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
    JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
    WHERE tv_genres.name = 'Comedy'
)
ORDER BY tv_shows.title ASC;
