--Добавляем колонку cost
alter table projects
	add column cost integer default 0
;

--Значения заглушки
update projects
set cost = id * 100
where cost = 0;