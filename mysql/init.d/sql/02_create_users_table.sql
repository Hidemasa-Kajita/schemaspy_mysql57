USE app_db;

CREATE TABLE users(
    user_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    group_id INT,
    CONSTRAINT fk_group_id FOREIGN KEY(group_id) REFERENCES groups(group_id)
);
