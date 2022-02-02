CREATE TABLE games_covers
(
g_id INT,
g_cover VARCHAR(100)
);


CREATE TABLE games_descriptions
(
g_id INT,
g_descriptions TEXT
);

ALTER TABLE games_covers ENGINE = InnoDB;
ALTER TABLE games_descriptions ENGINE = InnoDB;