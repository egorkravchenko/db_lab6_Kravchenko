-- Функція get_show_genres(id INT) повертає жанри фільму з переданим id
CREATE OR REPLACE FUNCTION get_show_genres(id INT)
RETURNS TABLE (genre_name VARCHAR)
AS $$
BEGIN
    RETURN QUERY
    SELECT g.genre_name
    FROM show_genre sg
        JOIN genre g ON sg.genre_id = g.genre_id
    WHERE sg.show_id = id;
END;
$$ LANGUAGE plpgsql;