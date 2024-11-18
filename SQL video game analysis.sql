create schema video_game;
drop schema employ;
select * from video_game.video_game_reviews as v_game;

#List all the game titles.
select * from video_game.video_game_reviews;
select `Game Title` from video_game.video_game_reviews;

#2. Find all the games that have a rating greater than 40.
select * from video_game.video_game_reviews;
select `Game Title` , `User Rating` 
from video_game.video_game_reviews
where `User Rating` > '10';

#3. Count the total number of games available in the dataset.
select * from video_game.video_game_reviews;
select count(*) as Total_Games from video_game.video_game_reviews;

#4. Retrieve all the games that are targeted at the "Adult" age group.
select * from video_game.video_game_reviews;
select `Game Title` ,  `Age Group Targeted` 
from video_game.video_game_reviews
where `Age Group Targeted` = 'Adults';

#5. Find the average price of every games in the dataset.
select * from video_game.video_game_reviews;
select `Game Title` , Avg(Price)
from video_game.video_game_reviews
group by `Game Title`;

#6. Show the game titles and their prices where the price is less than $20.
select * from video_game.video_game_reviews;
select `Game Title` , Price 
from video_game.video_game_reviews
where Price < 20;

#7. List all the platforms available for the games.
select * from video_game.video_game_reviews;
select `Game Title` , Platform 
from video_game.video_game_reviews;

#8. Get the game titles and their developers for games that require a special device.
select * from video_game.video_game_reviews;
select `Game Title` , Developer , `Requires Special Device` 
from video_game.video_game_reviews
where `Requires Special Device` = 'Yes';

#9. Find the highest-rated game(s) (i.e., the game(s) with the highest user rating).
select * from video_game.video_game_reviews;
select `Game Title` ,`User Rating`
from video_game.video_game_reviews
where `User Rating` = (select max(`User Rating`) from video_game.video_game_reviews);

#10. List the total number of games available per platform.
select * from video_game.video_game_reviews;
select Platform ,count(Platform)
from video_game.video_game_reviews
group by Platform;

#11. Retrieve the games that have a multiplayer feature and have a rating above 40.
select * from video_game.video_game_reviews;
select `Game Title` , Multiplayer , `User Rating` 
from video_game.video_game_reviews
where `User Rating` > 40 and Multiplayer = 'Yes';

#12. Find the average rating for each genre of games.
select * from video_game.video_game_reviews;
select Genre , avg(`User Rating`)
from video_game.video_game_reviews
group by Genre;

#13. List all the games that were released after 2015.
select * from video_game.video_game_reviews;
select `Game Title` , `Release Year` 
from video_game.video_game_reviews
where `Release Year` > 2015 ;

#14. Find the games with the shortest game length (i.e., the minimum number of hours).
select * from video_game.video_game_reviews;
select `Game Title`, `Game Length (Hours)`
from video_game.video_game_reviews
where `Game Length (Hours)` = (select min(`Game Length (Hours)`) from video_game.video_game_reviews);

# 15. Get the total number of games for each "Age Group Targeted", sorted by the count of games in descending order.
select * from video_game.video_game_reviews;
select `Age Group Targeted`, count(*) as number_of_games
from video_game.video_game_reviews
group by `Age Group Targeted`
order by number_of_games desc;
