<div align="center">
  # ![](https://github.com/hookjamesa/austin_animal_shelter_analysis/tree/main/Resources/Images/AAC_readme_header.jpg)

# Austin Animal Shelter Analysis

Analysis of over 80,000 animal adoption intake and outcome data entries for the Austin Animal Center to predict likelihood of adoption outcome

## Project Overview and Objective

The Austin Animal Center is the largest no-kill animal shelter in the United States that provides care and shelter to over 18,000 animals each year. The goal of this study is to perform exploratory analysis to determine whether there is a predictable pattern or visible trend to shelter pet adoption outcomes. A supervised machine learning model is also built to try and predict what the adoption outcome for an animal at the shelter will be based on a range of criteria (e.g. animal type, breed, age, time in shelter, etc.). 

### Purpose of the study

Analysis of the animal shelter data has the potential to uncover useful insights that could help improve the welfare of animals in the Austin region and perhaps be applied to other areas. Employees at the animal shelter will be able to identify which animals will require more support and can respond effectively to try and prevent a negative outcome for higher risk animals. It would also be useful for the shelter to know which types of animals are more likely to require long-term housing or transfer services from the shelter, versus those that are likely to be adopted out - to assist with high-level resource, capacity, and budget planning. 

The team chose this particular topic as we are all animal lovers with pets of our own. With a large spike in the rates of pet adoptions as a result of the Covid-19 pandemic, animal shelters have been struggling to continue operations in the wake of social distancing measures. As coronavirus restrictions are lifted, animal shelters will need more help than ever and it is hoped that people viewing the results of this analysis might become inspired to get involved in the local animal welfare community in Austin.

### Data Source

The data for this project was sourced from a [Kaggle dataset](https://www.kaggle.com/aaronschlegel/austin-animal-center-shelter-intakes-and-outcomes). The Austin Animal Center makes its data publically available as part of the [City of Austin Open Data Initiative](https://data.austintexas.gov/).

The base dataset contains separate tables for intake and outcome data for animals entering the Austin Animal Center from October 2013 through 2018, with over 80,000 entries. The data contains time/date data down the an hour frequency. 

### Tools and Resources Used

**Exploratory Analysis**
  * Pandas library - extracting, cleaning, and transforming the data to make it suitable for analysis
  * Matplotlib library - visualizing the data for exploratory analysis
  * Jupyter Notebook - IDE

**Database**
  * PostgreSQL - database storage, used join and transform data tables and directly linked in to the machine learning model

**Machine Learning Model Analysis**
  * SciKitLearn library - decision tree model used due to suitability for classification problems
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

Using a machine learning model we are attempting to predict whether we can accurately predict whether an animal at an Austin animal shelter will be adopted or not based on a number of factors such as age, breed, color, time in the shelter, for example.

### Which model did you choose and why?

We chose to use a Decision Tree Classification as our initial model. We are trying to predict whether an animal at a shelter gets adopted or not and this type of model is very suitable for classification problems such as this. 

### How are you training your model?

The data-set will be split into training and test data. The model will learn on training data that possess a pre-defined set of labels for input variables. The model will predict outcomes for the target variable using the test data.

### What is the model's accuracy?

The very highest levels of accuracy are not required as there are no serious health, or life or death implications. It would be useful for the shelter's planning and budgeting to have a good idea which types of animals are likely to be in the shelter long term, which types of animals they are likely to have trouble getting adopted and may need to put more effort into promoting, among other uses. So a reasonable level of accuracy above 75% minimum is still required for the model to be useful in that regard. 

### How does this model work?

The goal is to progressively split and separate samples with a more similar structure that will result in more pure subsets of data. The algorithm looks between all features for the highest impurity and splits the parent node into child nodes. The tree ends up with a series of branches (i.e. questions and answers) that eventually lead to a classification prediction representing a probability of a particular outcome, based on the series of represented criteria leading to it. 


## Data Exploration and Analysis Phases

### SQL Database
Database: Shelter_db
Tables: raw_input_outcome, animal_type, animal_in_out

**Database Creation and ETL Process Summary:**
1. Shelter_db database was created in PgAdmin
2. A database connection was created with Pandas library to load the raw data into the SQL database
3. An SQL `Create` script made the "animal_type" master object
4. Created a copy of the raw data and performed needed transformations
5. Resulted in creation of a prepared "animal_in_out" dataset to be used for analysis

The animal_type and animal_in_out tables were joined using a unique key "animal_id" which is a combination of the "id" and "intake_id" . Several animals have been taken into and left the shelter multiple times which creates issues when joining the data. The animal_type table contains static variables (e.g. animal_type, breed, color) which remain unchanged that are linked to the "animal_id". The animal_in_out table it is joined to is a copy of the raw_income_outcome data but with the static functions removed. This animal_in_out table serves as the main operation table and contains non-static information (e.g age_upon_outcome, outcome_type, intake_datetime, etc.).

### ETL Steps in Jupyter Notebook
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
* Count of intake by animal type

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

Link to presentation containing dashboard storyboard plan/outline: [click here](https://docs.google.com/presentation/d/1iW0jeJ_2Y8J-VYC2PSrM4IDRTO_WTtGhs1lI-W8mLro/edit?usp=sharing)

The final dashboard will be built using visualizations created using Tableau. Tableau is a visual analytics platform that is good for creating a range of visualizations that is user friendly and easily accessible for non-programmers. The Tableau file will have a searchable/scrollable table of the dataset, a dashboard with charts for key variable relationships, and individual tabs for each plot. 

One interactive element of the dashboard will be a drop-down selection menu that will allow the user to search and select which criteria to display for each variable, or combination of variables. Tableau should have the functionality to update the display for the data table and for all visualizations on display that are linked to the menu. 