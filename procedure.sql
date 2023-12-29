-- Процедура оновлює вміст новини з переданим id
CREATE OR REPLACE PROCEDURE update_show_description(id INT, new_description TEXT)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE show
    SET description = new_description
    WHERE show_id = id;
END;
$$;