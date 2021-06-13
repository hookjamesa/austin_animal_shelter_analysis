<div align="center">

![](https://github.com/hookjamesa/austin_animal_shelter_analysis/blob/kenning_seg2/Resources/Images/AAC_readme_header.jpg)

<div align="left">

# Austin Animal Shelter Analysis

Analysis of over 80,000 animal adoption intake and outcome data entries for the Austin Animal Center to predict likelihood of adoption outcome

## Project Overview and Objective

The Austin Animal Center is the largest no-kill animal shelter in the United States that provides care and shelter to over 18,000 animals each year. The goal of this study is to perform exploratory analysis to determine whether there is a predictable pattern or visible trend to shelter pet adoption outcomes at the shelter. A supervised machine learning model is also built to try and predict what the adoption outcome for an animal at the shelter will be based on a range of criteria (e.g. animal type, breed, age, time in shelter, etc.).

### Purpose of the study

Analysis of the animal shelter data has the potential to uncover useful insights that could help improve the welfare of animals in the Austin region and perhaps be applied to other areas. Employees at the animal shelter will be able to identify which animals will require more support and can respond effectively to try and prevent a negative outcome for higher risk animals. It would also be useful for the shelter to know which types of animals are more likely to require long-term housing or transfer services from the shelter, versus those that are likely to be adopted out - to assist with high-level resource, capacity, and budget planning. 

The team chose this particular topic as we are all animal lovers with pets of our own. With a large spike in the rates of pet adoptions as a result of the Covid-19 pandemic, animal shelters have been struggling to continue operations in the wake of social distancing measures. As coronavirus restrictions are lifted, animal shelters will need more help than ever and it is hoped that people viewing the results of this analysis might become inspired to get involved in the local animal welfare community in Austin.

**Link to Google Slides project presentation: [click here](https://docs.google.com/presentation/d/1iW0jeJ_2Y8J-VYC2PSrM4IDRTO_WTtGhs1lI-W8mLro/edit?usp=sharing)**

### Data Source

The data for this project was sourced from a [Kaggle dataset](https://www.kaggle.com/aaronschlegel/austin-animal-center-shelter-intakes-and-outcomes). The Austin Animal Center makes its data publically available as part of the [City of Austin Open Data Initiative](https://data.austintexas.gov/).

The base dataset contains separate tables for intake and outcome data for animals entering the Austin Animal Center from October 2013 through 2018, with over 80,000 entries. The data contains time/date data down an hourly frequency. 

### Tools and Resources Used

**Exploratory Analysis**
  * Pandas library - extracting, cleaning, and transforming the data to make it suitable for analysis
  * Matplotlib library - visualizing the data for exploratory analysis
  * Jupyter Notebook - IDE

**Database**
  * PostgreSQL - database storage, used join and transform data tables and directly linked in to the machine learning model

**Machine Learning Model Analysis**
  * SciKitLearn library - to create machine learning models
  * Jupyter Notebook - IDE

**Dashboard** 
  * Tableau - used to create interactive visualization of results

**Additional**
  * GitHub - source code storage and comman portal to merge group work
  * Google Slides - presentation and storyboard to communicate results

### Communication Protocols

The project team has established the following meeting schedules and processes for communication:

* Weekly deadlines and check-in schedule:
    * Wednesday 7 PM: Any concerns regarding project roles, initial progress, plans for rest of the week are discussed and addressed.
    * Saturday by 1 PM: Initial attempts will be made for each project role, so team members can assist others as necessary. This will be attested to as a Slack "check-in."
    * Sunday by 1 PM: Final attempts will be submitted for each project role and reviewed by the team. If there are any additional issues, the team will approach the TA to resolve them expediently.

* Zoom Meetings
    * The team expects to meet twice per week to discuss team needs and peer-review work: Wednesdays at 7 PM and Sundays at 1 PM. 

* Discussions
    * Outside of meeting times, for team member discussions, the team will primarily use Slack to discuss project needs and any logistical issues the team runs across.
    * In case of emergency, the team has put together a phone number list for additional communication outside of Slack.


## Machine Learning Model

Using a machine learning model we are attempting to predict whether we can accurately predict whether an animal at an Austin animal shelter will be adopted or not based on a number of factors such as age, breed, color, time in the shelter - for example.

### Which model did you choose and why?

We chose to use a Decision Tree Classification as our initial model. As we are trying to predict whether an animal at a shelter gets adopted or not, this type of model is generally very suitable for solving classification problems such as this. However, often a single tree is not sufficient for producing effective results, and this seems like it could be the case based on our initial model results as of 6/6/2021.

A Random Forest model might provide better results and could be considered as a alternative for future work. A Random Forest model leverages the power of multiple Decision Trees and does not rely on feature importance derived from a single tree. Due to its randomness it does not depend on any highly specific set of features and is able to generalize over the data in a superior way. On the downside, Random Forest models take longer to train and are a little more difficult to interpret than Decision Trees due to their "black box" nature, however the trade off is might be worth it for this study if it is able to produce better results.

### How are you training your model?

The data-set will be split into training and test data. The model will learn on training data that possess a pre-defined set of labels for input variables. The model will predict outcomes for the target variable using the test data. 

### Which model did you choose and why?
We chose to use a Decision Tree Classification as our initial model. As we are trying to predict whether an animal at a shelter gets adopted or not, this type of model is generally very suitable for solving classification problems such as this. However, often a single tree is not always sufficient for producing effective results, and while further iterations may be able to improve model performance, if the model is unable to achieve or only just meets the minimum target threshold another type of model could be tried.
A Random Forest model might provide better results and could be considered as a alternative for future work. A Random Forest model leverages the power of multiple Decision Trees and does not rely on feature importance derived from a single tree. Due to its randomness it does not depend on any highly specific set of features and is able to generalize over the data in a superior way. On the downside, Random Forest models take longer to train and are a little more difficult to interpret than Decision Trees due to their "black box" nature, however the trade off is might be worth it for this study if it is able to produce better results.


### What is the model's accuracy?

The very highest levels of accuracy are not required as there are no serious health, or life or death implications. It would be useful for the shelter's planning and budgeting to have a good idea which types of animals are likely to be in the shelter long term, which types of animals they are likely to have trouble getting adopted and may need to put more effort into promoting, among other uses. So a reasonable level of accuracy above 75% minimum is still required for the model to be useful in that regard, and ideally the performance will be substantially above the minimum threshold.

### How does this model work?

For a Decision Tree Model, the goal is to progressively split and separate samples with a more similar structure that will result in more pure subsets of data. The algorithm looks between all features for the highest impurity and splits the parent node into child nodes. The tree ends up with a series of branches (i.e. questions and answers) that eventually lead to a classification prediction representing a probability of a particular outcome, based on the series of represented criteria leading to it. 

One reason a Random Forest might be a good alternative is that it can leverage the power of multiple Decision Trees, with each node working on a randomly generated subset of features to create individual outputs that are then combined to generate the final overall output. For a Random Forest model, the process described above of combining the output of multiple, individual Decision Tree models (weak learners) is called Ensemble Learning, i.e. combining the results of multiple models together (majority voting/averaging).

 ### What Prelimninary data pre-processing and feature engineering needs to be performed?
See the 'Data Exploration and Analysis Phases' section below for the full list of pre-processing steps for the database and machine learning model that were performed. 
Many of the items in the dataset are categorical and these variables were encoded using OneHotEncoder. The target variable was defined for the model and also encoded, where Adoption = 1, and not-adopted (all other outcomes) = 0. To prepare the model, the data is scaled and an instance created. Next the model is then fit to the training data and the tree model plotted. When the model is run it makes predictions using the test data and calculates a confusion matrix, accuracy report, and classification report that is then reviewed. Depending on the result from the report, the team can then apply any changes before re-running another iteration of the model in order to attempt to improve the results, if necessary.


## Data Exploration and Analysis Phases

### SQL Database
Database: shelter_db
Tables: raw_input_outcome, animal_type, animal_in_out

### Entity Relationship Diagram (ERD)
* [Database Design](/Resources/relativQuickDBD-export.pdf)
* [ERD](/Resources/QuickDBD-export.png)


**Database Creation and ETL Process Summary:**
1. shelter_db database was created in PgAdmin
2. A database connection was created with Pandas library to load the raw data into the SQL database
3. An SQL `Create` script made the "animal_type" master object
4. Created a copy of the raw data and performed needed transformations
5. Resulted in creation of a prepared "animal_in_out" dataset to be used for analysis

The animal_type and animal_in_out tables were joined using a unique key "animal_id" which is a combination of the "id" and "intake_id" . Several animals have been taken into and left the shelter multiple times which creates issues when joining the data. The animal_type table contains static variables (e.g. animal_type, breed, color) which remain unchanged that are linked to the "animal_id". The animal_in_out table it is joined to is a copy of the raw_income_outcome data but with the static functions removed. This animal_in_out table serves as the main operation table and contains non-static information (e.g age_upon_outcome, outcome_type, intake_datetime, etc.).

### Database Setup Instructions
1. Login to local PgAdmin and CREATE database named "shelter_db" (note: this step is required prior to executing the DB Pandas code below)
2. Open and run the "Segment2_DB_Code.ipynb" analysis file using Jupyter Notebook and follow steps
2. After loading the raw data file into an SQL table names "raw_input_outcome", open PgAdmin and execute the following query:
  `CREATE TABLE animal_type as SELECT DISTINCT animal_id_intake as animal_id, breed, color, animal_type FROM raw_input_outcome;`
3. Continue with Pandas code steps to create third db object "anmimal_in_out
4. Execute the following alter table scripts in PgAdmin to create primary and foreign key relationships
  `ALTER TABLE animal_type`
  `ADD CONSTRAINT animal_id_pk PRIMARY KEY (animal_id);`
  `ALTER TABLE animal_in_out`
  `ADD CONSTRAINT id_pk PRIMARY KEY (id);`
  `ALTER TABLE animal_in_out`
  `ADD CONSTRAINT animal_id_intake_fk FOREIGN KEY (animal_id_intake) REFERENCES animal_type (animal_id);`
5. ** End of database setup **

Note: the db password is protected in a "config.py" file. 

### ETL Steps in Performed in Jupyter Notebook
* Evaluated raw data file
* Check file count, identify primary key, verify counts
* Dropped duplicates
* Checked data types
* Imported data from SQL database
* Renamed columns to match standards
* Loaded base animal intake data into database
* Read in 'animal_type' lookup table
* Dropped off lookup columns from dataframe and created new table
* Read in 'animal_in_out' table from database
* Created dummy values for outcome types
* Added dummy values to dataframe
* Drop non-useful ID columns not needed for ML analysis
* Merged the two tables to create a new dataset for ML analysis

### Visualizations Created for Exploratory Analysis of Data
* Average age of animal at intake by animal type
* Average age by intake condition
* Intake count by day of the week
* Intake count by month
* Intake count by type of intake
* Count by outcome type
* Time in shelter by animal type
* Intake Analysis - Condition, Age, Type, etc.
* Age Analysis - Age distribution at intake, Age at Intake Vs time in shelter, etc.

### A snapshot of our exploratory charts
 <table>
 <tr>   
   <td align="center"> <b> Intake Vs Outcome Age </b> </td>
   <td align="center"> <b> Timeperiod Analysis</b></td>
  </tr> 
  <tr>   
    <td valign="top"> <img src="/Resources/Images/Outcome_By_Years.png" width="500" /> </td>
    <td valign="top"> <img src="/Resources/Images/MonthandWeekdays.png" width="500" /> </td>
  </tr>     
</Table>

 <table>
 <tr>   
   <td align="center"> <b> Adoption Vs Other Type </b> </td>
   <td align="center"> <b> Duration Analysis</b></td>
  </tr> 
  <tr>   
    <td valign="top"> <img src="/Resources/Images/OutcomeAnalysis.png" width="500" /> </td>
    <td valign="top"> <img src="/Resources/Images/Durationanalysis.png" width="500" /> </td>
  </tr>     
</Table>

### Machine Learning Steps For Decision Tree Model
* Encoded categorical variables
* Defined target variable
* Split the data into train and test datasets
* Scaled the data
* Created decision tree classifier instance
* Fit the model
* Plotted tree model
* Made predictions from test data
* Calculated confusion matrix, accuracy, classification report


## Dashboard

* Google Presentation Link: [click here](https://docs.google.com/presentation/d/1iW0jeJ_2Y8J-VYC2PSrM4IDRTO_WTtGhs1lI-W8mLro/edit?usp=sharing)

Link to our **Tableau Dashboard**: [Click here](https://public.tableau.com/app/profile/prathima.bandi/viz/Segment3_Data_Vizualization/Segment2StoryBoard)

What is the story this dashboard tell you and what features are used:
* Source: CSV file with the shwlter data
* Tool: Tableau public
* Feature: FIlters, Calculation fileds 
* Intent of the dashbord: Learn your data and use the information to improve and refine your business operations
* Story Line: 
  * **Dashboard 1 (Overview of Dashboard)** - Gives us the input data set overview with an interactive element to slice and dice the data by Animal Type and learn more about the condition of the animals coming into the shelter. Known your intake helps the business operations to be well equipped with saff and resources needed to help with shelter operations.
  * **Dashboard 2 (Intake Analysis)** - This dashboard is names as intake analysis but provides an overview of animal outtake. This dashboard brings in a toe up to ur ML model and is interactive.
  * **Dashboard 3 (Month and Weekday Analysis)** - This dashboard provides you to determine which month is the busiest time in a year and even further can check by week days.
  * **Dashboard 4 (Intake Vs Outcome Analysis)** - This dashboard is view of intake and outcome by month and weekdays. Looking at this the business operations can plan for staff, Pet resources so the shelter can provide a customer friendly environment.-  

* **Consutions:**  The current dataset can be leveraged to show addiotnal operations insight but would need addiotnal pre-processing of data and would need enhacement to the input data capture process.
