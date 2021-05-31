<div align="center">
  # ![](https://github.com/hookjamesa/austin_animal_shelter_analysis/tree/main/Resources/Images/AAC_readme_header.jpg)

# Austin Animal Shelter Analysis

Analysis of 

## Project Overview and Objective

The Austin Animal Center is the largest no-kill animal shelter in the United States that provides care and shelter to over 18,000 animals each year. The goal of this study is to perform exploratory analysis to determine whether there is a predictable pattern or visible trend to shelter pet adoption outcomes. A supervised machine learning model is also built to try and predict whether an animal at the shelter will be adopted (=1) or not adopted (=0) based on a range of criteria (e.g. animal type, breed, age, time in shelter, etc.). 

### Purpose of the study

Analysis of the animal shelter data has the potential to uncover useful insights that could help improve the welfare of animals in the Austin region and perhaps be applied to other areas. Employees at the animal shelter will be able to identify which animals will require more support and can respond effectively to try and prevent a negative outcome for higher risk animals. It would also be useful for the shelter to know which types of animals are more likely to require long-term housing or transfer services from the shelter, versus those that are likely to be adopted out - to assist with high-level resource, capacity, and budget planning. 

The team chose this particular topic as we are all animal lovers with pets of our own. With a large spike in the rates of pet adoptions as a result of the Covid-19 pandemic, animal shelters have been struggling to continue operations in the wake of social distancing measures. As coronavirus restrictions are lifted, animal shelters will need more help than ever and it is hoped that people viewing the results of this analysis might become inspired to get involved in the local animal welfare community in Austin.

### Data Source and Description

The data for this project was sourced from a [Kaggle dataset](https://www.kaggle.com/aaronschlegel/austin-animal-center-shelter-intakes-and-outcomes). The Austin Animal Center makes its data publically available as part of the [City of Austin Open Data Initiative](https://data.austintexas.gov/).

The base dataset contains separate tables for intake and outcome data for animals entering the Austin Animal Center from October 2013 through 2018, with over 80,000 entries. 

### Tools and Resources Used

**Exploratory Analysis**
  * Pandas library - extracting, cleaning, and transforming the data to make it suitable for analysis
  * Matplotlib and Seaborn libraries - visualizing the data for exploratory analysis
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


## Database

As mentioned, the dataset contains both intake and outcome data in seperate .csv files. The intake and outcome data was joined 

### Processed Dataset Information:
* animal_type - Dog, Cat, Others
* age_upon_intake_(years) - .08,1,2,3
* intake_condition - Sick, Aged, etc.
* *intake_weekday* 
* *intake_month*
* *intake_month_day*
* *outcome_month_day*
* outcome_type - Adopted Vs Others
* age_upon_intake
* breed 
* color
* target - Adoption
  * 0 = Higer adoption rate
  * 1 = Lower adoption rate

### ETL Steps - Segment 1
* Dropped the non-useful colums
* Created a ctegorical variable list and validated the number of unique values in ech column
  *  age_upon_outcome_age_group, outcome_monthyear, age_upon_intake, animal_type, breed, color, intake_condition
* Used **OneHotEncorder** for categorical transformation and finally merged with the original dataframe and dropped the original list
* Next Defined a **target vector**, built a **train and test** dataset and used **standardScalar** model to **fit & transform** the data.
* Finally used a **Decision Tree Classifier** to plot the model and using confusion matrix we predicted the **Adoption Vs Non-Adoption** rate

### Presentation
#### Exploratory Analysis
* Average age of analimal at intake by animal type 
* Age distribution by animal type - Box Plot
* Average age by intake condition
* Age distribution by intake condition
* Intake count by weekdaays
* Intke count by months
#### ML Models
* Outcome  (Stary Vs Other types)
* Outcome ( adoption vs other)
* Outcome others (Died, Transfered, Euthanasia, Return)

#### Dashboard
A story board that would show a data visualization of all exploratory charts would be build either using Tableau or HTML page.
