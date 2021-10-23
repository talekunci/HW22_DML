--Зарплата для всех Java разработчиков
select sum(d.salary) from developers d
join developer_skills ds on developer_id = d.id
join skills s on s.branch = 'Java' and ds.skill_id = s.id;
