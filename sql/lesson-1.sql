1. 

SELECT name,
       year_of_birth,
       year_of_death
FROM   persons;

2.

SELECT avg_rating * 100 as column_1,
       ceil(avg_rating) as column_2,
       floor(avg_rating) as column_3,
       round(vote_cnt / 1000) as column_4
FROM   ratings;

3.

SELECT run_time,
       run_time/60 as hours
FROM   titles;

4.

SELECT name,
       length(name) as len,
       upper(name) as up,
       position('a' in name) as a_pos
FROM   persons;

5.

SELECT concat(name, ' - ', professions) as about
FROM   persons;

6.

SELECT name,
       extract(year from now())::int AS year,
       year_of_birth
FROM persons;

7.

SELECT extract(year
FROM   now()) - year_of_start as years
FROM   titles;

8.

SELECT popular_title,
       original_title,
       popular_title = original_title as title_equality,
       length(popular_title) > length(original_title) as title_over
FROM   titles;

9.

SELECT name,
       case when year_of_birth >= 2000 then 'young'
            else 'old' end as age_group
FROM   persons;

10.

SELECT id,
       position('6' in id::text) as pos_numb
FROM   titles;

11.

SELECT original_title,
       is_adult,
       is_adult::int as is_adult_int
FROM   titles;