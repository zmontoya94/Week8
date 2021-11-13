-- select titles.title as Title,COUNT(*) as count
-- from employees
-- inner join titles on employees.emp_no =titles.emp_no
-- where birth_date > '1965-01-01'
-- group by titles.title
-- order by  count desc;
-- select title as title , avg(salary) as averageSalary from salaries
-- inner join titles on salaries.emp_no = titles.emp_no
-- group by title;
select dept_name, sum(salary) as total from salaries
inner join dept_emp on salaries.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = "Marketing"
and (year(salaries.from_date))between "1990" and "1992"
or  (year(salaries.to_date))between "1990" and "1992"
group by dept_emp.dept_no;