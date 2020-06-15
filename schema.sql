-- Creating tables for Final_Project
CREATE TABLE objects (
    object_Code VARCHAR NOT NULL,
    budget_Categories VARCHAR NOT NULL,
    PRIMARY KEY (object_Code),
    UNIQUE (budget_categories)
);

CREATE TABLE school_budget_data (
    county_Code int NOT NULL,
	district_Code int NOT NULL,
	school_Code int NOT NULL,
	fiscal_year int NOT NULL,
	period_ varchar NOT NULL,
	col_Code varchar NOT NULL,
	account_Code varchar NOT NULL,
	fund_Code int NOT NULL,
	resource_Code int NOT NULL,
	project_year varchar NOT NULL,
	goal varchar NOT NULL,
	function_Code int NOT NULL,
	object_Code varchar NOT NULL,
	amount float(53) NOT NULL,
	FOREIGN KEY (object_code) REFERENCES objects (object_code)
);

CREATE TABLE enrollment (
	cds_code float(53) NOT NULL,
	county varchar NOT NULL,
	district varchar NOT NULL, 
	school_code varchar NOT NULL,
	ethnic int NOT NULL,
	gender varchar NOT NULL,
	kindergarden int NOT NULL,
	grade_1 int NOT NULL,
	grade_2 int NOT NULL,
	grade_3 int NOT NULL,
	grade_4 int NOT NULL,
	grade_5 int NOT NULL,
	grade_6 int NOT NULL,
	grade_7 int NOT NULL,
	grade_8 int NOT NULL,
	grade_9 int NOT NULL,
	grade_10 int NOT NULL,
	grade_11 int NOT NULL,
	grade_12 int NOT NULL,
	ungr_sec int NOT NULL,
	enr_total int NOT NULL,
	adult int NOT NULL,
	UNIQUE (cds_code)
);

CREATE TABLE graduation (
    cds_code float(53) NOT NULL,
    ethnic int NOT NULL,
    gender varchar NOT NULL,
    grads int NOT NULL,
	uc_grads int NOT NULL,
	year int NOT NULL,
	FOREIGN KEY (cds_code) REFERENCES enrollment (cds_code)
);

CREATE TABLE objects (
    index int NOT NULL,
	object_Code VARCHAR NOT NULL,
    budget_Categories VARCHAR NOT NULL
)
DROP TABLE OBJECTS;
DROP TABLE school_budget_data;
CREATE TABLE school_budget_data (
    cds_code float(53) NOT NULL,
	district_code int NOT NULL,
	function_code int NOT NULL,
	function varchar NOT NULL,
	amount float(53) NOT NULL
)

CREATE TABLE grad_enroll (
	cds_code float(53) NOT NULL,
	district varchar NOT NULL, 
	ethnic int NOT NULL,
	grade_12 int NOT NULL,
	enr_total int NOT NULL,
	grads int NOT NULL,
	uc_grads int NOT NULL
);

select * from grad_enroll
select * from objects
select * from school_budget_data
ALTER TABLE school_budget_data
ADD year int;