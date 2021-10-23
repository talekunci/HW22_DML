--����� ������� ������ ������ �� salary ���� �������������
select * from projects p
order by (
	select sum(d.salary) from developers d
	join project_developers pd on
	d.id = pd.developer_id
	and pd.project_id = p.id
) desc limit 1;


--���������� cost ������ �� salary ���� �������������
update projects p
set cost = (
	select sum(d.salary) from developers d
		join project_developers pd on
		d.id = pd.developer_id
		and pd.project_id = p.id
);
