-- Creating tables for Final_Project
CREATE TABLE grad_enroll (
	blank int NOT NULL,
	cds_code float(53) NOT NULL,
    district varchar NOT NULL,
	ethnic int NOT NULL,	
	gr_12 int NOT NULL,
	enr_total int NOT NULL,
	grads int NOT NULL,
	uc_grads int NOT NULL
);
	
CREATE TABLE finance (
	blank int NOT NULL,
	cds_code float(53) NOT NULL,
   	district_code int NOT NULL,
	function_code int NOT NULL,
	function varchar NOT NULL,
	amount float(53) NOT NULL,
	year int NOT NULL	
);
select * from grad_enroll
select * from finance
	
ALTER TABLE grad_enroll
DROP blank;

ALTER TABLE finance
DROP blank;

SELECT * from grad_enroll 
INNER JOIN finance 
on grad_enroll.cds_code=finance.cds_code 
and grad_enroll.year=finance.year;