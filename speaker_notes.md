# Presentation Notes ([Link](https://docs.google.com/presentation/d/1iW0jeJ_2Y8J-VYC2PSrM4IDRTO_WTtGhs1lI-W8mLro/edit?usp=sharing))

## Section 1

### Slide 1
* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

### Slide 2
* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

### Slide 3
* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

### Slide 4
* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

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
* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

### Slide 10
* (Major Point 1)
* (Major Point 2)
* (Major Point 3)

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
