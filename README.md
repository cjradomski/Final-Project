# Summary

In this project we investigated relationships between district financing and graduation rates among 12 graders. Based on these relationships we built a deep learning model to predict district school performance.

## Correlation
As the first step, we conducted correlation between district financing and graduation rates. Although analysis showed very weak direct correlation (0.21) it was assumed that relationships still exist.

## Approach 1

### Cluster Analysis
The first approach involved making a district cluster analysis based on financing and graduation rates.
Firstly, categorical data in 'Function' column was encoded, then data in 'Amount' column was binned and encoded using the dummy variables approach. After encoding, the number of features were reduced to two using the PCA method. Unfortunately, explained variance ratios weren’t high: 0.19 for the first principal component and 0.7 for the second.
To determine the number of clusters, Elbow Curve and KMeans approaches were used and it was decided to move with three clusters.
As explained variance ratios were not high, we increased number of principal components used to three. Explained variance ratios in that case were equal 0.19, 0.7, 0.7 accordingly. After rerunning the Elbow Curve and KMeans approach, it was decided to move with three clusters.
### ANOVA testing
After receiving district clusters, ANOVA testing was used to determine if the hypothesis of whether the received clusters are significantly different from each other based on graduation rates.
The hypotheses that were tested:
H0: There is no significant difference in graduation rates between clusters.
HA: There is a significant difference in graduation rates between clusters.
Before conducting ANOVA, data was tested for meeting necessary Assumptions:
1.	The dependent variable (Graduation rates) should be continuous: as we have Graduation rate in percents, this assumption was met.
2.	The independent variables (Clusters) should be two or more categorical groups: in the previous section three clusters were obtained, so this assumption was met.
3.	There must be different participants in each group with no participant being in more than one group. In our case, students couldn't belong to more than one district, districts couldn’t belong to more than one cluster, so this assumption was met
4.	The dependent variable should be approximately normally distributed for each category. Assumption was drawn on a histogram. Although histogram didn’t show perfect normal distribution, it was decided to accept this assumption, just to keep this distribution as one of the limitations of the model.
5.	Variances of each group are approximately equal. Levene’s Test for equality of variances was used to test this assumption with the following hypotheses:
H0: variances across clusters are equal
HA: variances across clusters are not equal
P-value was 0.78, which is more than 0.05, so we keep H0, meaning that variances across clusters are equal and the assumption was met.
After conducting ANOVA, p-value was 4.642805e-68, that much less than 0.05, so H0 was rejected and HA was kept. It means that there is a significant difference between clusters.
### Prediction model
To predict graduation rates based on district funds based on finance allocation a deep learning model was used. As we hope to find positive correlation between features and the target variable, we assume that the linear activation function will show the highest accuracy.
Firstly, all features from the cleaned data-set were included in the model. Furthermore, the model was trained with different numbers of epochs, layers, and weight parameters as well as different activation functions. However, the accuracy of the model didn’t exceed 5%.
As the next step, features that might be considered as noisy were removed. The accuracy was still too low at only 12%.
It was decided the approach should be changed to predict high performing districts instead of predicting precise percent of graduation rate.

## Final Approach

### Data Pre-Processing for Deep learning model
As in the previous approach, categorical data in the 'Function' column was encoded. To predict high performing districts it was decided to apply binning to graduation rates and thus receive four groups: <25%, 25%-50%, 50%-75%, >75%.
### ANOVA
ANOVA testing was used to test the hypothesis of whether the groups based on graduation rates are significantly different from each other.
H0: There is no significant difference in financing between graduation groups
HA: There is a significant difference in financing between graduation groups
Before ANOVA the data for tested for meeting the assumptions:
1.	The dependent variable (Amount) should be continuous: as financing is in US dollars this assumption was met
2.	The independent variables (groups by graduation) should be two or more categorical groups: data was split into four groups, so the assumption was met
3.	There must be different participants in each group with no participant being in more than one group. As grouping was applied based on graduation rate in each district, there is no possibility to have one district in several groups, therefore the assumption is met.
4.	The dependent variable should be approximately normally distributed for each category. A histogram was drawn to test this assumption. Although it doesn’t show perfect distribution, we assume the normality.
5.	Variances of each group are approximately equal. Levene’s test was conducted to test this assumption with the following hypotheses:
H0: variances across clusters are equal
HA: variances across clusters are not equal
The test obtained a P-value equal to 4.96 which is higher than 0.5 , so we keep H0. Variances across clusters are equal and assumption is met.
ANOVA showed P-value = 2.150737e-07, which is much less than 0.05, so H0 is rejected. It is concluded that there is a significant difference in financing between graduation groups.
### Prediction model
Feature standardization and encoding have already been made during pre-processing. However, the 'Amount' column was also binned into five groups: <500k, 500k-1500k, 1500k-3000k, 3000k-10000k, >10000k, and then encoded. Features that might be considered as noisy were removed. The target variable that shows graduation rates was also encoded, where the districts with graduation rate >75% received 1 and the districts with graduation rate <75% received 0. After experimenting with the number of hidden layers and activation functions, the model received an accuracy score of 97%.

## Limitations and recommendations for further analysis
1.	As observed during the primary analysis strong correlation between financing and graduation rates was not found and it might be concluded that other factors have a significant impact on graduation. For further analysis it’s recommended to include other aspects that might have an impact on graduation or look at this question on a school level instead of district level.
2.	As during the ANOVA data didn’t show perfect normal distribution it’s recommended to check data for extreme values or apply some data transformation such as with logarithmic function.
3.	Data was used for the 2012-2016 school years. To build a more precise model it’s recommended to use more recent data and/or additional years.
