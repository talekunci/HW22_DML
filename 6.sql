--������� �������� ������������� � ����� ������� �������(������ �� salary ���� �������������)
select avg(salary) from developers d
join project_developers pd on pd.developer_id = d.id and
pd.project_id = 
(select id from projects p
order by (
	select sum(d.salary) from developers d
	join project_developers pd on
	d.id = pd.developer_id
	and pd.project_id = p.id
) limit 1);

--������� �������� ������������� � ����� ������� �������(������ �� cost ���� ��������)
select avg(salary) from developers d
join project_developers pd on pd.developer_id = d.id and
pd.project_id = (select id from projects order by cost limit 1);