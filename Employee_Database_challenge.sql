--1) Creating tables 
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);
CREATE TABLE employees (
	emp_no int not null,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);
CREATE TABLE titles (
  emp_no INT NOT NULL,
  Title Varchar(50) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no Varchar(4) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

-- 2) Create retirment table
select emp.emp_no, emp.first_name, emp.last_name, 
	tit.title, tit.from_date, tit.to_date
into retirement 
from employees as emp
inner join titles as tit
on emp.emp_no = tit.emp_no
WHERE (emp.birth_date between '1952-01-01' and '1955-12-31')
order by emp_no asc, title asc, to_date desc ;

-- Remove duplicate entries/ filter based on to_date
select emp_no, (select distinct on (first_name) first_name), last_name, title 
into retirement_info
from retirement 
where (to_date = '9999-01-01')

-- Retrieve number of employees about to retire by their most recent job
select count(title), title 
into retirement_count
from retirement_info 
group by title
order by count(title) desc

-- create mentorship table
select emp.emp_no, emp.first_name, emp.last_name, emp.birth_date,
	dep.from_date, dep.to_date, tit.title
into mentorship 
from employees as emp
inner join dept_emp as dep
on emp.emp_no = dep.emp_no
inner join titles as tit
on emp.emp_no = tit.emp_no
where ((dep.to_date = '9999-01-01') and (emp.birth_date between '1965-01-01' and '1965-12-31'))
order by emp_no asc, title asc, to_date desc ;

-- Filter the results
select distinct on (emp_no) emp_no, first_name, 
    last_name, birth_date, from_date, to_date, title
into mentorship_info from mentorship 

