# Initial Data Analysis
### Database portion of Final-Project

Data collected for this project includes [enrollment](https://www.cde.ca.gov/ds/sd/sd/filesenr.asp), [graduation](https://www.cde.ca.gov/ds/sd/sd/filesgrads.asp), and [finance](https://www.cde.ca.gov/ds/fd/fd/) information from the Department of Education for California.  This longitudinal study focused with years 2012-16.  A [function](https://github.com/cjradomski/Final-Project/blob/Helen/Resources/Finance%20Data/function.csv) table was added to the final database as an appendix.

Steps in intial data analysis are listed below.
- Identify file formats and convert to appropriate format (CSV)
- Identify data types and columns
- Create Schema.png to establish connection through [QuickDBD](https://www.quickdatabasediagrams.com/)
![Schema.png](https://github.com/cjradomski/Final-Project/blob/master/Schema.png)
- Data clean-up includes dropping NAs, keeping columns:
- [Enrollment](https://github.com/cjradomski/Final-Project/tree/Helen/Resources/Enrollment%20Data)
  - CDS_CODE (14 digit code that represents county, district, and school)
  - DISTRICT_NAME
  - ETHNIC (kept for future studies but wasn't used in this project)
  - GENDER (kept for future studies but wasn't used in this project)
  - GR_12 (students enrolled in 12th grade)
  - ENR_Total(total number of students enrolled)
- [Graduation](https://github.com/cjradomski/Final-Project/tree/Helen/Resources/Graduation%20Data)
  - CDS_CODE
  - ETHNIC
  - GRADS (number of students graduated)
  - UC_GRADS (number of students eligible for college admission)
- [Finance](https://github.com/cjradomski/Final-Project/tree/Helen/Resources/Finance%20Data)
  - County_Code
  - District_Code
  - School_Code
    - County_Code, District_Code, and School_code was converted to CDS_CODE to correspond with enrollment and graduation data
  - Function_Code
  - Amount
    - Kept positive and dropped negative amounts
- Function (appendix)
  - Function code was connected with name for greater readability in final database
  
These steps were repeated for school years 2012-2013, 2013-2014, 2014-2015, and 2015-2016.  Final database was made with a join combination of all tables (Enrollment, Finance, Graduation, Function) for [all years](https://github.com/cjradomski/Final-Project/tree/Helen/Resources/All_Data/All_Data_Notebooks).
