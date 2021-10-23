--��������� ������� salary
alter table developers 
	add column salary integer default 0
;

--���� ������ ���-�� �����, � ��� ��������
update developers d
set salary = 300
where salary = 0 and (select skill_id from developer_skills ds where ds.developer_id = d.id limit 1) <> 0;

--���� Java-Middle �� ���������� � �������� 200
update developers d
set salary = salary + 200
where d.id = (
	select developer_id from developer_skills ds
		join skills s on
		d.id = ds.developer_id
		and ds.skill_id = s.id
		and s.branch = 'Java' and s.skill_level = 'Middle'
);


--���� ����� Java-(����� �������) �� ���������� � �������� 250
update developers d
set salary = salary + 250
where d.id = (
	select developer_id from developer_skills ds
		join skills s on ds.skill_id = s.id and ds.developer_id = d.id and s.branch = 'SQL'
);