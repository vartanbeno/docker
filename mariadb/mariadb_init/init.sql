CREATE TABLE IF NOT EXISTS person (
    id BIGINT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO person (first_name, last_name) VALUES
    ('Hello', 'World'),
    ('John', 'Doe');
