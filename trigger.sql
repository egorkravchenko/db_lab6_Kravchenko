-- Функція тригеру, яка змініює першу літеру на велику
CREATE OR REPLACE FUNCTION capitalize_first_letter()
RETURNS TRIGGER AS $$
BEGIN
    NEW.description = INITCAP(LEFT(NEW.description, 1)) || SUBSTRING(NEW.description FROM 2);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for INSERT
CREATE TRIGGER capitalize_first_letter_insert_trigger
BEFORE INSERT ON show
FOR EACH ROW
EXECUTE FUNCTION capitalize_first_letter();

-- Create trigger for UPDATE
CREATE TRIGGER capitalize_first_letter_update_trigger
BEFORE UPDATE ON show
FOR EACH ROW
EXECUTE FUNCTION capitalize_first_letter();