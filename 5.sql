--Значения заглушки
update projects
set cost = id * 100
where cost = 0;

--Cамый дешевый проект (исходя из cost всех проектов)
select * from projects order by cost limit 1;