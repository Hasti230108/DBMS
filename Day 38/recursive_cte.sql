use college_management;

with recursive numbers as (
    select 1 as number

    union all

    select number + 1 from numbers where number < 10
) select * from numbers;

with recursive numbers as (
    select 1 as number

    union all

    select number + 1 from numbers where number < 20
) select * from numbers;

with recursive numbers as (
    select 2 as number

    union all

    select number + 2 from numbers where number < 20
) select * from numbers;

with recursive numbers as (
    select 1 as number

    union all

    select number + 2 from numbers where number < 19
) select * from numbers;

with recursive numbers as (
    select 5 as number

    union all

    select number + 5 from numbers where number < 50
) select * from numbers;

with recursive dates as (
    select '2026-07-16' as date
    
    union all

    select date + interval 1 day from dates where date < '2026-08-23'
) select * from dates;