--�������� ��������
update projects
set cost = id * 100
where cost = 0;

--C���� ������� ������ (������ �� cost ���� ��������)
select * from projects order by cost limit 1;