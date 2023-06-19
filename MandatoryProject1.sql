use mavenmovies;

/*First-   Write a SQL query to count the number of characters except for the spaces for each actor. Return the first 10 actors' name lengths along with their names.*/

select concat(first_name,last_name) as fullname,length(concat(first_name,last_name)) as namelength from actor limit 10

/*second-  List all Oscar awardees(Actors who received the Oscar award) with their full names and the length of their names.*/

select first_name,last_name,awards from actor_award
where awards='oscar'


/*Third-   Find the actors who have acted in the film ‘Frost Head.’*/

select 
concat(a.first_name,space(1),a.last_name) as fullname,f.title from film f inner join film_actor fa on
f.film_id=fa.film_id inner join actor a on
a.actor_id=fa.actor_id
where f.title='frost head' 

/*Fourth-  Pull all the films acted by the actor ‘Will Wilson.*/

select 
a.first_name,a.Last_name,f.title from film f inner join film_actor fa on
f.film_id=fa.film_id inner join actor a on
a.actor_id=fa.actor_id
where a.first_name='will'

/*Fifth-  Pull all the films which were rented and return them in the month of May*/

select 
f.title,r.rental_date,r.return_date from film f inner join inventory i on
f.film_id=i.film_id inner join rental r on
i.inventory_id=r.inventory_id
where month(return_date)='05' 


/*Sixth-  Pull all the films with ‘Comedy’ category.*/

select 
F.Title, C.name as CategoryName from Film_Category FC INNER JOIN FILM F 
ON F.FILM_ID=FC.FILM_ID
INNER JOIN CATEGORY C ON C.CATEGORY_ID=FC.Category_ID
where name='Comedy'






