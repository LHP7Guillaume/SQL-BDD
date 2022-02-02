
SELECT * FROM `games` ;


SELECT DISTINCT `g_name`, g_mode FROM `games` ;


SELECT DISTINCT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_name ;


SELECT DISTINCT g_name, g_mode, g_published_at, g_pegi FROM games ORDER BY g_published_at DESC limit 10;


SELECT DISTINCT * FROM games WHERE g_mode IN("Multijoueur", "Solo") ORDER BY g_mode;


SELECT DISTINCT g_name, date_format(g_published_at, "%Y") FROM games WHERE g_published_at BETWEEN '2015-01-01' AND '2020-12-31' ;


SELECT DISTINCT * FROM games WHERE g_mode IN("Solo", "Solo / Multijoueur") ORDER BY g_mode;


SELECT g_name, g_mode FROM games WHERE g_name LIKE 'the witcher%'; 


SELECT g_name, g_mode FROM games WHERE g_name NOT LIKE '%Halo%';


SELECT g_name, g_published_at FROM games WHERE g_published_at BETWEEN '2012-01-01' AND '2013-01-01' or g_published_at
BETWEEN '2016-01-01' AND '2016-12-31' OR g_published_at BETWEEN '2020-01-01' AND '2020-12-31' ;

SELECT g_name as 'jeu', g_published_at as 'Année' FROM games WHERE g_published_at LIKE '%2012%' OR g_published_at LIKE '%2016%' OR g_published_at LIKE '%2020%' ;


SELECT g_name, s_name FROM games
INNER JOIN studios 
ON games.s_id = studios.s_id ;


SELECT g_name, s_name, s_nationality FROM games
INNER JOIN studios 
ON games.s_id = studios.s_id ;


SELECT g_name, p_name, g_pegi FROM games
INNER JOIN games_platforms
ON games.s_id = games_platforms.g_id 
INNER JOIN platforms
ON games.s_id = platforms.p_id WHERE g_pegi <= 16
ORDER BY g_pegi;


SELECT g_name, p_name FROM games
INNER JOIN games_platforms
ON games.s_id = games_platforms.g_id 
INNER JOIN platforms
ON games.s_id = platforms.p_id 
ORDER BY games.g_name;


SELECT COUNT(g_name)
from games; 


SELECT COUNT(DISTINCT g_name)
from games; 


SELECT COUNT(g_name), s_name FROM games
INNER JOIN studios
ON games.s_id = studios.s_id 
GROUP BY studios.s_name;


SELECT COUNT(*),studios.s_name, platforms.p_name FROM games
INNER JOIN games_platforms
ON games.g_id = games_platforms.g_id 
INNER JOIN platforms
ON games_platforms.p_id = platforms.p_id 
INNER JOIN studios ON studios.s_id = games.s_id
GROUP BY platforms.p_name;


SELECT g_name, COUNT(games_platforms.g_id) FROM games
INNER JOIN games_platforms
ON games.g_id = games_platforms.g_id 
GROUP BY games_platforms.g_id 
HAVING COUNT(games_platforms.g_id) >= 4;


SELECT platforms.p_name, COUNT(game_platforms.g_id) AS "nbjeux" 
From games_platforms
INNER JOIN platforms ON platforms.p_id = games_platforms.p_id
GROUP BY games_platforms.p_id;
