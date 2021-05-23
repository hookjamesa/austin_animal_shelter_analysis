### Overview

The Austin Animal Center is the largest no-kill animal shelter in the United States that provides care and shelter to over 18,000 animals each year. The focus of this analysis is to provide exploratory analysis using features and build a machine learning model to predict the animal adoption rate. 

### Analysis Tools
* Python - For ETL 
* Juptier Notebook - IDE 
* PostgreSQL - Databasae to store data
* Dashboard - Tableau/HTML Page
* GitHUB - Source code storage and comman portal to merge group work

### Communication Protocols
This project team has established the following meeting schedules and processes for communication:

* Deadlines
    * The team, as of 5/19, agrees to hold to the following schedule:
        * Wednesday: Project roles will be determined for project segments.
        * Saturday by 1 PM: Initial attempts will be made for each project role, so team members can assist others as necessary. This will be attested to as a Slack "check-in."
        * Sunday by 1 PM: Final attempts will be submitted for each project role. If there are any additional issues, the team will approach the TA to resolve them expediently.

* Meetings
    * The team expects to meet twice per week to discuss team needs: Wednesdays at 7 PM and Sundays at 1 PM. Meetings will be conducted via video chat software of the team's choosing.

* Discussions
    * Outside of meeting times, for team member discussions, the team will primarily use Slack to discuss project needs and any logistical issues the team runs across.
    * In case of emergency, the team has put together a phone number list for additional communication outside of Slack.

### Outcomes

#### Pre-processing Dataset Information:
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

#### ETL Steps - Segment 1
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
A story board that would show a data vizulation of all exploratory charts would be build either using Tableau or HTML page.