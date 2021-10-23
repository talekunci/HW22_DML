--Самый дорогой проект исходя из salary всех разработчиков
select * from projects p
order by (
	select sum(d.salary) from developers d
	join project_developers pd on
	d.id = pd.developer_id
	and pd.project_id = p.id
) desc limit 1;


--Установить cost исходя из salary всех разработчиков
update projects p
set cost = (
	select sum(d.salary) from developers d
		join project_developers pd on
		d.id = pd.developer_id
		and pd.project_id = p.id
);
