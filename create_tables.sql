use Market;
-- DROP TABLES :
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Manufacturers;

----------------------
-- Manufacturers table
CREATE TABLE Manufacturers (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(300)
);

-- Invetory table
CREATE TABLE Products (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_manufacturer_id SMALLINT UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL NOT NULL,
    description VARCHAR(300),
    submission_date INT NOT NULL,
    CONSTRAINT fk_book_author FOREIGN KEY (fk_manufacturer_id) REFERENCES Manufacturers (id)
);



