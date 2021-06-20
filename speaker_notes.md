# Presentation Notes ([Link](https://docs.google.com/presentation/d/1iW0jeJ_2Y8J-VYC2PSrM4IDRTO_WTtGhs1lI-W8mLro/edit?usp=sharing))

### Slide 1

* We will be presenting our analysis which focuses on the Austin Animal Shelter. AAC is one of the largest no kill shelters in the US caring for over 18000 animals per year, so its obviously a key institution for the local animal welfare community
* For this study we analyzed over 80000 data entries for animal intake and adoption outcomes. 
* Our goal is to try and predict whether an animal will be adopted or not and to explore which variables influence adoption the most


### Slide 2

* In terms of specific questions that the team hopes to answer, our key questions is whether our machine learning model can be trained to effectively predict adoption or not. We chose a decision tree model as it is very effective at classification problems and the model works from the main questions, posing a series of options that are available and calculating the likelihood of occurrence, ultimately arriving at one of our two outcomes. 
* If this model is not effective, we also wanted to think about what other types of model might provide better results
* In addition to the ml model, we want to explore the main controlling factors, so we will be looking at intake and adoption trends for different days of the week and time of year, as well as the influence of factors such as animal age and time in shelter 
* Finally, we want to consider what other analyses we could perform in the future and what could be changed or done differently to improve the study


### Slide 3

* In terms of specific questions that the team hopes to answer, our key questions is whether our machine learning model can be trained to effectively predict adoption or not. We chose a decision tree model as it is very effective at classification problems and the model works from the main questions, posing a series of options that are available and calculating the likelihood of occurrence, ultimately arriving at one of our two outcomes. 
* If this model is not effective, we also wanted to think about what other types of model might provide better results
* In addition to the ml model, we want to explore the main controlling factors, so we will be looking at intake and adoption trends for different days of the week and time of year, as well as the influence of factors such as animal age and time in shelter 
* Finally, we want to consider what other analyses we could perform in the future and what could be changed or done differently to improve the study


### Slide 4

* The dataset was taken from kaggle, and the animals adoption data is made publicly available as part of the city of austin open data initiative
* The dataset consisted of three tables, one for intake data, one for outcome data and a merged table for all the animal data which is what was used by the team for the study
* The dataset ranges over 5 years from oct 2013 to 2018, consists of over 80000 entries with 12 columns of data, time and date data to hourly frequency
* Its important to note that some animals enter and exit the shelter multiple times so have more than one entry which needs to be addressed in the ETL stage
* Links to the dataset and to AODI can be found at the bottom of the slide


### **5. Tools and Resources**

Starting off with the tools that we used are python was our primary language for ETL and machine learning modeling, Postgres from SQL database, Tableau for Interactive dashboard creation, GitHub as source repository. For communication Zoom and Slack were the main communication portals along with text messaging as needed.

### **6. Database Overview**

Next let’s take a look at the database structure and ERD. “Shelter_db” is the database that we first created. Once the database was created using panda libraries, we extracted the raw dataset into our SQL database. Using SQL scripts and python features performed all needed transformation to create a normalized data structure. Animal_Type is our master table and Animal_in_out is our transaction table. Transformation performed ( Dropping the master data columns from the transactional table, Converting date and time attributes to be able to use for duration analysis, dropping null values, using “get_dummies” panda feature converted the Outcome_type to binary value to use for our ML modeling, etc.) 

### **7. ETL Process Overview**

 Steps involved in our ETL (Extract, Transform and Load) process.
•	Extracting the raw data and loading into SQL database
•	Using SQL and Panda transformation functions, performed data normalization functions and created a normalized data structure. Ensured to build a Primary and forgeign key relationship between the 2 tables.
•	Performed panda “get_dummie” transformation to convert categorical value into binary values that was used for out ML modeling. This outcome was merged to the original data frame after ensuring the original categorical column was dropped. This is a also part of transformation process in creating our datasets for ML and exploratory analysis.
•	Finally, all the transformed datasets were loaded to a SQL database or on excel spreadsheet for using as input source for analysis.

### **8. Dataset Overview**

To wrap up, out dataset that was used for analysis consists of 79,672 shelter records. Over 50% of the dataset consists of “Dog” and 37% was “Cats”. Based on our analysis we saw over 50% adoption rate.
My teammate Eijah will provide a deeper insight to our dataset using our exploratory analysis charts.

### Slide 9

* Key Points
 * Age vs Time
  * Animals 4 and under are far more likely to be adopted at quicker than other animals. 
  * Older animals spend very little time in the shelter?
  * Are the older animals the ones who are returned to owners?
  * Very odd that ages 5-12 spend have the highest time spend in shelter overall
  * Potential cause of this may be that people prefer younger animals and the older animals are more likely to get returned to owner due to attachment?
* Age by Outcome
 * We see that animals adopted are younger, and those returned to owners tend to be older

### Slide 10

* Heatmap Trends
 * Dogs render the most activity during the beginning and end of the year
 * Cats render the most activity during the middle of the year, in particular the summer months
 * Why are animals that are not dogs and cats seeing the most activity during the month of March?
* Bar Chart Trends
 * Adoptions are most likely to occur on weekends, may be a planned element to this 
 * Adoptions occur most in the summer months and December
 * Animals returned to owners happen more uniformly, emotions cannot be measured
 * Animal returned to owens happens more likely during holidays and the beginning of the year

### Slide 11

* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

### Slide 12

* Target variable is set for 'Adoption' only
* Train and test data sets as identified prior in the presentation
* Minimal data scaling as the project used a decision tree model

### Slide 13

* Due to the nature of people when they go to a shelter, we thought it best to have 2-3 decision points mimicking checklists people have as they go to an adoption center.
* Decision tree set to 4 iterations.
* 78% Accuracy, with improvement needed in recall rates. F1 score was over project established minimum as well.

### Slide 14

* Model outcome suggests that we can predict animal outcomes with some level of certainty. Dataset and simple decision tree model could be expanded on with additional data pre-processing and use of a Random Forest model.
* Most animals rotate quickly through the shelter - they have 1-2 months maximum.
* Customer behaviors are predictable as the shelter comes out of 2020, using this data to re-establish schedules, stakeholder needs, and customer needs
