Data Products Project
=============

The application, built as an assignemnt for the Coursera Data Products course, is called ***Play with the Central Limit Theorem***.
If you are not familiar with the theorem a quick definition is given in the application. A brief desciprion of the applicantion will follow, although we find it fairly intuitive.   

The application offers the opportunity to empirically verify that the sample means are approximatelly normally distributed, for different type of distributions: **Binomial, Exponential, Gamma, Lognormal, Normal, Poisson, Uniform**, and for diffenret sample sizes (from 25 to 1,000). The number of simulations is set to 1,000 but it can be changed (up to 10,000).  
Sample size and number of simulations were capped in order to avoid ecessive waiting time.  
The histogram of the sample means in the main panel is reactive to changes in the distribution type, sample size, and number of simulations. By activating/deactivating the check-box a normal probability density function can be added/removed to/from the histogram.  
In the side panel we check the *68-95-97.3 rule* for normality, that is to say the intervals of 1, 2, 3 standard deviations away from the mean should cover approximately 68%, 95%, 97.3% of the samples.

The application can be tried at https://fabmaccallini.shinyapps.io/PlayCLT/.  
The UI.R and server.R can be found in the GitHub repository: https://github.com/fabmaccallini/Data-Products.  

Thank you.
