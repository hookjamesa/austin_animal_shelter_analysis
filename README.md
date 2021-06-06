# austin_animal_shelter_analysis

## Segment 2: Machine Learning Model

In pre-processing, string data types were converted to new columns with integers through the get_dummies method. 'Good' outcomes - return to owner and adoption - were combined, helping to generate a result dataset for 'what leads to good outcomes from the shelter.' At this time, breed was also excluded as a factor due to lack of consistency in its own data type. [Preliminary feature engineering] 

The X data set uses age and intake information, while y uses 'good' outcomes for its data. These data sets were then put through sklearn's train_test_split method to develop testing and training sets for our model.

The developers selected a decision tree model to show this data. The decision tree was selected because it makes no assumptions about the shape of the data used for the model. The developers are aware of the possibility of overfitting of data through a decision tree, so a maximum depth of 4 is selected to present the most important features of the decision tree model.