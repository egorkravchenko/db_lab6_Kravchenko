-- Run the function
SELECT get_show_genres(1) AS show_1_genres;

-- Old message
SELECT *
FROM show
WHERE show_id = 2;

-- Run the procedure to update news content (and trigger will capitalize the first letter)
CALL update_show_description(2, 'updated description');

-- Updated message with capitalized first letter
SELECT *
FROM show
WHERE show_id = 2;