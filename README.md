# Austin_Animal_Ahelter_Adoption_Analysis
### Overview

The Austin Animal Center is the largest no-kill animal shelter in the United States that provides care and shelter to over 18,000 animals each year. The focus of this analysis is to determine what are the key features that show how likely would a pet find a permanent loving home. 

### Analysis Tools
* Python - For ETL 
* Juptier Notebool - IDE 
* PostgresSQL - Databasae to store data
* Dashboard - Tableau
* GitHUB - Source code storage and comman portal to merge group work

### Communication Protocols
* Slack - a group channel for posting files and refernce links
* Mobile phones - Group text messaging for faster communication and response
* Zoom - For group meetings and paired programming

### Outcomes

#### Dataset Information:
* animal_type - Dog, Cat, Others
* age_upon_intake_(years) - .08,1,2,3
* intake_condition - Sick, Aged, etc.
* **intake_weekday** 
* **intake_month**
* **intake_month_day**
* **outcome_month_day**
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
* Next Defined a **target vector**, built a **train and test** dataset and used **standardSclar** model to **fit * transform** the data.
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
