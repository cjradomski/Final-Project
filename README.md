# Summary

In the present project were investigated relationships between district financing and graduation rate among 12 grades. Based on this relationships was built deep learning model to predict district school performance.

## Correlation

As the first step was conducted correlation between district financing and graduation rates. Although analysis showed very weak direct correlation (0.21) it was assumed that relationships still exist.

## Approach 1

### Cluster Analysis
In first approach was tried to make district cluster analysis based on financing.
Firstly categorical data in Function column was encoded, then data in Amount column was binned and also encoded using dummies approach. After encoding number of features were reduced to two using PCA method. Unfortunately explained variance ratios weren’t too high: 0.19 for the first principal component and 7 for the second.
To determine number of clusters were used Elbow Curve and KMeans approaches and decided to move with three clusters.
As explained variance ratios were not high, to validate chosen number of clusters we increased number of principal component used to three. Explained variance ratios in that case were equal 0.19, 0.7, 0.7 accordingly. After rerun of Elbow Curve and KMeans approach was decided to move with three clusters.

### ANOVA testing

After receiving district clusters with help of ANOVA was tested hypothesis, whether received clusters are significantly differ from each other based on graduation rates.
Were tested hypothesis:
H0: There is no significant difference in graduation rates between clusters.
HA: There is a significant difference in graduation rates between clusters.

Before conducting ANOVA, data was tested for meeting necessary Assumptions:
1.	The dependent variable (Graduation rates) should be continuous: as we have Graduation rate in percents, this assumption was met. 
2.	The independent variables (Clusters) should be two or more categorical groups: in previous section were obtained three clusters, so this assumption was met.
3.	There must be different participants in each group with no participant being in more than one group. In our case, students couldn't belong to more than one district, districts couldn’t belong to more than one cluster, so this assumption was met
4.	The dependent variable should be approximately normally distributed for each category. To test assumption was drawn a histogram. Although histogram didn’t show perfect normal distribution, it was decided to accept this assumption, just to keep this distribution as one of the limitations of the model.
5.	Variances of each group are approximately equal. To test this assumption was used Levene’s Test for equality of variances. I that case were testes the following Hypothesis:
H0: variances across clusters are equal
HA: variances across clusters are not equal
P-value was 0.78, it’s more than 0.05, so we keep H0, that mean that variances across clusters are equal and the assumption was met.

After conducting ANOVA, p-value was 4.642805e-68, that much less than 0.05, so H0 was rejected and HA was kept. It means that there is a significant difference between clusters.

### Prediction model
To predict graduation rates based on district funds finance allocation we will use deep learning model. As we hope to find positive correlation between features and target variable, we assume that linear activation function will show the highest accuracy.
Firstly in the model were included all features. Although model was trained with different number of epochs, different number of layers and weight parameters, different activation functions, accuracy of the model didn’t exceed 5%.
As the next step was decided to remove features that might be considered as noisy. Unfortunately  the accuracy was still too low – 12%
As the potential remedy it was decided change the approach and predict high performing districts instead of predicting precise percent of graduation rate.

## Approach 2

### Data preprocessing for Deep learning model
As in previous approach categorical data in Function column was encoded, but to predict high performing districts it was decided to apply binning to graduation rates and thus receive four groups: <25%, 25%-50%, 50%-75%, >75%.

### ANOVA

With the help of ANOVA was tested the Hypothesis, whether the groups based on graduation rates are significantly differ from each other.
H0: There is no significant difference in financing between graduation groups
HA: There is a significant difference in financing between graduation groups

Before ANOVA the data for tested for meeting the assumptions:
1.	The dependent variable (Amount) should be continuous: as financing in US dollars this assumption was met
2.	The independent variables (groups by graduation) should be two or more categorical groups: data was split into four groups, so assumption was met
3.	There must be different participants in each group with no participant being in more than one group. As grouping was applied based on graduation rate in each district, there is no possibility to have one district in several groups. Assumption is met.
4.	The dependent variable should be approximately normally distributed for each category. To test this assumption was drown a histogram. Although it doesn’t show perfect distribution we assume the normality.
5.	Variances of each group are approximately equal. To test this assumption was conducted Levene’s test. Were tested the following hypothesis:
H0: variances across clusters are equal
HA: variances across clusters are not equal
During the test was obtained P-value equaled to 4.96. It’s higher than 0.5 , so we keep H0. Variances across clusters are equal and assumption is met.

ANOVA showed P-value = 2.150737e-07, it much less than 0.05, so H0 is rejected, it might be concluded that there is a significant difference in financing between graduation groups.

### Prediction model
As in preprocessing step feature standardization and encoding have been already made, there is no need to repeat this step.
Howewer Amount column was also binned into five groups: <500k, 500k-1500k, 1500k-3000k, 3000k-10000k, >10000k,  and  then encoded. Also it was decided to remove features that might be considered as noisy. The target variable that shows graduation rates was also encoded, were the districts with graduation rate >75% received 1 and the districts with graduation rate <75% received 0. After some experiments with number of hidden layers and activation functions was received model with the accuracy 97%.

##Limitations and recommendations for further analysis
1.	As during primary analysis wasn’t observed strong correlation between financing and graduation rates, it might be concluded that other factors have a significant impact on graduation. For further analysis it’s recommended to include other aspects that might have an impact on graduation or look at this question on a school level instead of district level.
2.	As during the ANOVA data didn’t show perfect normal distribution it’s recommended to check data for extreme values or apply some data transformation like logarithmic function.
3.	During the project was used data from 2012-2016 years. For more precise model it’s recommended to use more recent data or longer period.


