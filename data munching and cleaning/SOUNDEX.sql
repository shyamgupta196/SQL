create extension fuzzystrmatch;


create extension if not exists fuzzystrmatch;

-- I urge you to do this HANDS ON 
select
   soundex(‘Postgres’)


select
   soundex(‘Postgres’),
   soundex(‘Postgresss’)


select
   soundex(‘Postgres’),
   soundex(‘Postgresss’),
   (‘Postgres’ = ‘Postgresss’),
   soundex(‘Postgres’) = soundex(‘Postgresss’)


-- very necessary for accurately cleaningdata.

select
   difference(‘Postgres’,’Postgresss’)




select
   soundex(‘Postgres’),
   soudnex(‘Kostgres’),
   difference(‘Postgres’,’Kostgres’)




select
    levenshtein(‘Postgres’,’Postgres’)


select
    levenshtein(‘Postgres’,’Kostgres’)


select
    levenshtein(‘Postgres’,mySQL’)