-- This script lists all genres not linked to the show Dexter from the hbtn_0d_tvshows database
-- Each record displays the genre name
-- Results are sorted in ascending order by the genre name
-- Two SELECT statements are used to retrieve the required information

-- Select genres linked to the show Dexter
SELECT tv_genres.name
FROM tv_shows
JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
WHERE tv_shows.title = 'Dexter';

-- Select all genres excluding those linked to the show Dexter
SELECT tv_genres.name
FROM tv_genres
WHERE tv_genres.name NOT IN (
    SELECT tv_genres.name
    FROM tv_shows
    JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
    JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
    WHERE tv_shows.title = 'Dexter'
)
ORDER BY tv_genres.name ASC;
