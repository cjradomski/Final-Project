# Assessing School Funding: Predicting Graduation with District Funding  
## *Presented by Bharat Aggarwal, Kate Beliankova, Helen Nguyen-Quach, & Christian Radomski*


### High School Graduation Rates Based on District Funding Patterns
We will be analyzing California school district data for the school years 2012 through 2017 to determine if there is a relation between district funding patterns and student success. We will measure student success by taking student enrollment and graduation amounts to determine graduation rate. Our steps for this project include attaining data from various years of school district data from a reliable source, cleaning the data to fit the parameters of our model, testing our model, and making a conclusion of our analysis on whether our hypothesis can be supported. Our goal is that our findings will help school districts in determining what programs to invest funds into.

![](Visualizations/Outline_Flowchart.png)


### Data Source
The data that is being used in this analysis will be attained from the California Department of Education. 
* Datasets for CA Enrollment https://www.cde.ca.gov/ds/sd/sd/filesenr.asp
* Datasets for CA Graduation by Race and Gender https://www.cde.ca.gov/ds/sd/sd/filesgrads.asp
* Datasets for CA Annual Financial Data https://www.cde.ca.gov/ds/fd/fd/

### Research Questions
* Does school funding directly correlate to school performance? 
* Do the spending patterns of a school district impact student success/graduation rate?

### EDA
Steps in exploring the collected data and determining what can be analyzed includes:
* Identifying file formats and converting to appropriate format (CSV)
* Loading data into dataset
* Understanding column labels and identifying significant labels we will use for analysis (Fund/Function codes, Amount/Values, CDS Codes, Graduation/UC Graduation, Grade 12 enrollment, etc.)
* Data cleaning to transform data to fit the requirements for our model (Deleting unnecessary columns/rows, creating Graduation rate column, transforming function code and amounts)
* Creating visualizations to understand the distribution, trends, and density of the data

### Data Analysis
In addition to EDA, further analysis includes other statistical and machine learning modeling:
* **Correlation Analysis** to measure significance between overall funding and average graduation rates
* **ANOVA Testing** to determine if the difference between groups (clusters) is significant
* **K Means Clustering Analysis** to create a model that can accurately cluster data by based on school district funding patterns (used for Approach 1)
* **Keras Sequential Deep Learning Model** using sigmoid activation function to predict districts with high graduation rate based on funding (Final Approach) and linear activation for prediction exact graduation rates (Approach 1) 
  
### Tableau Storyboard - [School Funding](https://public.tableau.com/profile/bharat5308#!/vizhome/FinalProject_15922006036650/SchoolFunding?publish=yes)
Tableau Story on School Funding comparing to the UC Graduation rate in different CA districts from 2012-2016. Datapoints covered are:
* **Top 10 Districts** by Funding as well as UC Grads show that funding directly affects the UC Grad Rate. This slide has interactive filter on Yera and Function to drill down into specifics.
* **Yearly Distribution** shows how the Funding, Enrollment and UC Grad is distributed each year.
* **Special Education** shows that higher Funding does not imply higher UC Grad rate under Special Eductaion.
  
### Technologies Used
We have used quite a few technologies in this project so far. Below is a list of the same: 
* Slack and Zoom for Communication within the team
* Google Search Engine was used to explore data options
* Github to consolidate each member's work and merge to the master repository.
* Quickdatabasediagrams(https://www.quickdatabasediagrams.com/) to create the schema.
* Postgresql to load the data into the tables as per the schema defined.
* Python with Jupyter Notebook to draft the code and analyse the collected School data.
* Within python following modules were imported - Pandas, sklearn - Kmeans,sklearn - StandardScaler, sklearn - PCA, hvplot and plotlyexpress to conduct cluster analysis.
* For Prediction modelling, python modules were imported in jupyter notebook such as pandas, sklearn - StandardScaler,sklearn - OneHotEncoder, sklearn - train_test_split and tensorflow.
* We have also used ANOVA, where in we imported pandas, numpy, scipy stats and within stats we imported statsmodels.formula.api and statsmodels.api.
* Tableau is be used to create Dashboard/Story
* LucidChart to create outline flowchart

### Presentation
https://docs.google.com/presentation/d/1XtwCfWoQGYScCMIWrPWQF3S4J3dyyVllm0fGmElsXU4/edit?usp=sharing



