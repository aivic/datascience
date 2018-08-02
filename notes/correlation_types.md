## Types of correlation

* Pearson
* Spearman
* Kendall

1. Pearson- To be performed upon:
  * Numerical variables
  * Normally distributed
  * Monotonic, not mandatory
  * Data type: interval | ratio
  * Affected by outliers.
  
2. Spearman- To be performed upon:
  * Based on rank based coefficient* 
  * Numerical variables
  * Normally distributed not mandatory
  * Monotonic
  * Data type: interval | ordinal | ratio
  * Minimal affect of outlier.
  
3. Kendall- To be performed upon:
  * Based on rank based coefficient and concordant/discordant pairs**
  * Numerical variables
  * Normally distributed not mandatory
  * Monotonic
  * Data type: interval | ordinal | ratio 
  * Minimal affect of outlier.

\*To find rank, values are sorted in desc. order and ranking is given starting from the end. If any number repeats then average of their index if given as rank.  
\** Any pair of observations (xi, yi) and (xj, yj), where i ≠ j, is said to be concordant if the ranks for both elements agree: that is, if both xi > xj and yi > yj or if both xi < xj and yi < yj.  They are discordant if either xi < xj and yi > yj or vice-versa. If xi = xj and yi = yj then they are neither concordant nor discordant.  
  
NOTE: To compare which method to be used, use cor.test() (avail. in R). A method having least p-value will be the most suitable method.
