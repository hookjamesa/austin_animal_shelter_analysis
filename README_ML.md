## Machine Learning Model

Using a machine learning model we are attempting to predict whether we can accurately predict whether an animal at an Austin animal shelter will be adopted or not based on a number of factors such as age, breed, time in the shelter, for example.

### Which model did you choose and why?

We chose to use a Decision Tree Classification as our initial model. We are trying to predict whether an animal at a shelter gets adopted or not and this type of model is very suitable for classification problems such as this. 

### How are you training your model?

The datat-set will be split into training and test data. The model will learn on training data that possess a pre-defined set of labels for input variables. The model will predict outcomes for the target variable using the test data.

### What is the model's accuracy?

The very highest levels of accuracy are not required as there are no serious health, or life or death implications. It would be useful for the shelter's planning and budgeting to have a good idea which types of animals are likely to be in the shelter long term, which types of animals they are likely to have trouble getting adopted and may need to put more effort into promoting, among other uses. So a reasonable level of accuracy above 75% minimum is still required for the model to be useful in that regard. 

### How does this model work?

The goal is to progressively split and separate samples with a more similar structure that will result in more pure subsets of data. The algorithm looks between all features for the highest impurity and splits the parent node in child nodes. The tree ends up with a series of branches (i.e. questions and answers) that eventually lead to an classification prediction representing a probability of a particular outcome, based on the series of criteria represented leading to it. 