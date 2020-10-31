create table titles (
	title_id VARCHAR not null,
	title VARCHAR not null,
	primary key (title_id)
);

create table departments (
	dept_no VARCHAR not null,
	dept_name VARCHAR not null,
	primary key (dept_no)
);

create table employees (
	emp_no INT not null,
	emp_title_id VARCHAR not null,
	birth_date DATE not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR not null,
	hire_date DATE not null,
	foreign key (emp_title_id) references titles (title_id),
	primary key (emp_no)
);

create table salaries (
	emp_no INT not null,
	salary INT not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no, salary)
);

create table dept_emp (
	emp_no INT not null,
	dept_no VARCHAR not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);

create table dept_manager (
	dept_no VARCHAR not null,
	emp_no INT not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);