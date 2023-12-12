-- select only these last names that are not repeated
select last_name, count(last_name) as count from actor
group by last_name
having count = 1;

-- select last names that appears more than onces
select last_name, count(last_name) as count from actor
group by last_name
having count > 1
order by count desc;

-- how many rentals by each employee
select staff_id, count(rental_id) as count
from rental
group by staff_id;

-- how many films by each year
select release_year, count(film_id) as count
from film
group by release_year;

-- how many films by rating
select rating, count(film_id) as count
from film 
group by rating;

-- avg of duration per rating
select rating, round(avg(length), 2) as "Avg_duration"
from film
group by rating;

-- rating with a duration of more than 2hrs
select rating, round(avg(length), 2) as "Avg_duration"
from film
group by rating
having Avg_duration > 120;


