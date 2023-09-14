SELECT albom_name, albom_release_year FROM albom
WHERE albom_release_year = '2018';

SELECT streck_name FROM sound_treck
WHERE streck_duration > '00:03:30';

SELECT collection_name FROM collection_of_songs
WHERE collection_release_year >= 2018-01-01 and 
collection_release_year <= 2020-12-31; 

SELECT streck_name FROM sound_treck /* Имя трека из таблицы треков */
WHERE streck_name ILIKE 'My %' /* Где слово в начале строки */
OR streck_name ILIKE '% My' /* Где слово в конце строки */
OR streck_name ILIKE '% My %' /* Где слово в середине строки */
OR streck_name ILIKE 'My'; /* Где название трека состоит из одного искомого слова */

Select artist_name 
From artist
Where artist_name Not Like '% %'

SELECT streck_name, streck_duration
FROM sound_treck
WHERE streck_duration = 
(SELECT MAX(streck_duration) FROM sound_treck);