-- SELECT * FROM moviesdb.movies
-- -- where title like "%America%";
-- select * from moviesdb.movies
-- where title like "%Avenger%";
-- select release_year from moviesdb.movies
-- where title like "%Godfather%";
-- select  distinct title from moviesdb.movies
-- where industry ="Bollywood";
-- SELECT title, release_year from moviesdb.movies
-- order by release_year DESC;
-- select title from moviesdb.movies
-- where release_year >=2020
-- select title,imdb_rating from moviesdb.movies
-- where release_year >=2020 and imdb_rating>8
-- select title from movies
-- where studio ="Marvel Studios" or studio ="Homable films";
-- select title, release_year from movies
-- where title like "%Thor%"
-- order by release_year DESC
-- select * from movies
-- where studio !="Marvel Studios"  
-- select title,release_year  from movies
-- where release_year between 2015 and 2022
-- order by release_year
-- select 
--       min(release_year) as min_year,
--       max(release_year) as max_year
--    from movies 
-- SELECT release_year,count(release_year) as cnt  FROM moviesdb.movies
-- group by release_year
-- order by cnt DESC;
--    select *,
--    case 
-- 		when unit="Billions" then revenue*1000
--         when unit="Thousands" then revenue/1000
--         else revenue
--    end as profit,
--    if(currency="USD",revenue*77,revenue) as profit	
--    from financials


-- Show all the movies with their language names
select languages.name , title 
from languages
join movies on languages.language_id = movies.language_id 

-- 2. Show all Telugu movie names (assuming you don't know the language
-- id for Telugu)
select m.title from movies m
join languages l on l.language_id = m.language_id
where  l.name ="Telugu"


-- 3. Show the language and number of movies released in that language
select l.name, count(m.language_id) as no_movies
from languages l
join movies m on  m.language_id =l.language_id
group by l.name
order by no_movies