# Statistical methods

## Index

+ [Intro to course](#intro-to-course)
+ [Review of some probability concepts](#review-of-some-probability-concepts)
+ [Statistical models](#statistical-models)
+ [Parameter estimation](#parameter-estimation)
+ [Hypotesis testing](#hypotesis-testing)
+ [Likelihood theory](#Likelihood-theory)
+ [Linear models](#Linear-models)
+ [Logistic regression](#Logistic-regression)
+ [Regression for count data](#Regression-for-count-data)
+ [Bootstrap methods](#Bootstrap-methods)
+ [Generalized linear models](#Generalized-linear-models)
+ [Non parametric smoothing](#Non-parametric-smoothing)
+ [Generalized additive models](#Generalized-additive-models)
+ [Classification and regression trees](#Classification-and-regression-trees)
+ [Ensemble methods](#Ensemble-methods)
+ [Bayesian inference](#Bayesian-inference)
+ [Master's index](https://github.com/DottorBooom/Master-in-Data-Science-and-Artificial-Intelligence) 

## Introduction

+ It will be entirely in English, slides made by the professor on which I will take notes lesson after lesson.
+ Some books have also been recommended if you want to follow from there or go deeper, I will try to upload those as well.
+ The final exam will be composed by homeworks (10%), 3 intermediate tests (45%) and final project (45%) by a group of 3/4 people.
+ Those students who do not complete all the homework or do not participate to the tests or do not present the final project will have to present a final project and to pass oral exam.
+ This exam will be the first of the two modules that make up the entire course. As soon as I will start it I will put a link in this read.me but you can also find it on my profile.

### What you will learn

+ The course focuses on fundamental elements of statistical infeence, along with some principles and statistical techniques useful for the analysis of complex data
+ A deeper understanding of many tools used in AI and ML and more awareness on properties of methods used.
+ The central theme of the course will be statistical modelling of data, yet the focus will be more on ideas and principles rather than on details of the statistical methodology.
+ Mathematical contents will be limited to a healthy minimum.
+ The learning by doing philosophy will be embodied by the constant usage of the R software throughout the course.

### Common rules & principles

+ Every question is **legitimate and useful**, ask what you do not understand
+ Main pourpose it to **learn**, not to grade
+ Learning is a **process**, not a result
+ Nobody is perfect or always right: **errors and mistake are natural**
+ **Learning is a process in our personal brain**, not in other's one. **Clash with your limits** before check the solution

## Intro to course

A simple introduction with what you have to expect from this course. Everything written above is a summary of the lesson.
An R file that serves as a test of the student's knowledge

Slides and R file are available [here](Lectures/Lecture_0/)

## Review of some probability concepts

### Lecture 1
+ **Random variables**: whate they are, tools used to describe (pmf, pdf, cdf and quantile functions)
+ **Discrete distributions**: probability function, mean, standard deviation, variance and notable discrete random variables
+ **R implementation**: some code that was used during the lecture

Slides and R files are available [here](Lectures/Lecture_1/)

### Lecture 2
+ **Continuos distributions**: densoty function, mean, variance and notable continuos random variables

Slides and R files are available [here](Lectures/Lecture_2/)
  
### Lecture 3
+ **Cumulative distribution function and quantile functions**: what they are, how to use them
+ **R exercise**: exercises to conclude the chapter and consolidate the use of the tools learned in class
 
Slides and R file are available [here](Lectures/Lecture_3/)

### Lecture 4
+ **Random vectors**: what they are, how to use them, conditional and maarginal distribution, bayes theorem, indipendence and conditional indipendence, mean, variance and covariance and trasformation of random variables and vectors
+ **The mutlivariate normal distribution**: what it is, the joint p.d.f, linear trasformation and conditional distributions
+ **Statistics**: wha they are
+ **Large-sample results**: moment generating function, the central limit theorem, the law of large numbers and the weak version, jensen's inequality

Slides are available [here](Lectures/Lecture_4/)

## Statistical models

### Lecture 5
+ **Random vectors**: what they are, how to use them, conditional and maarginal distribution, bayes theorem, indipendence and conditional indipendence, mean, variance and covariance and trasformation of random variables and vectors
+ **The mutlivariate normal distribution**: what it is, the joint p.d.f, linear trasformation and conditional distributions
+ **Statistics**: wha they are
+ **Large-sample results**: moment generating function, the central limit theorem, the law of large numbers and the weak version, jensen's inequality

Slides are available [here](Lectures/Lecture_5/)

## Parameter estimation

### Lecture 6-7
+ **Poit estimation**: what it is and how it works, proprerties that we want,  ME and SE
+ **Interval estimation**: what it is and hwo to compute it, pivots, interpretation of the results and different type of confidence intervals
+ **R file**: the use of R to better understand some concepts
  
Slides and R file available [here](Lectures/Lecture_6-7/)

### Lecture 8
+ **Exercise**: in this lecture we apply the theory concept that we have done in the lecture 6 and 7 by computing some estimated intervall, ME, pivotal and other things (by hand and then with R)
+ **R exercise**: exercises to consolidate the use of the tools learned in class

Slides and R file are available [here](Lectures/Lecture_8/)


## Hypotesis testing

### Lecture 9-10
+ **Foundamental of hypotesis testing**: the idea, the general formulation, how it works and how to make it, the p-value, rejection and acceptance regions, different type of errors and power of a test
+ **Some commonly used tests**: one and two sample t-test. paired t-test
+ **Relation between tests and confidence intervals**: analysis of results
+ **Nonparametric tests**: What it is, the main idea, some example of nonparametric tests

Slides are available [here](Lectures/Lecture_9-10/)

### Lecture 11
+ **Exercise**: For closing this chapter the professor give us some exercise and ask us to solve them. But before, we did the first exercise as an example for the others

Exercises with (some) solutions are available [here](Lectures/Lecture_11/)

## Likelihood theory

### Lecture 12-13
+ **The likelihood function**: what is it, how to interpret it, the log-likelihood and some example.
+ **Maximum likelihood estimation**: the score function, some properties, the Craméer-Rao lower bound and some other characteristic
+ **Confidence intervals**: Wald-type intervals and alternative methods
+ **Tests**: the ratio test, Neyman-Pearson and so on
+ **Model selection**: how to choose the best model, AIC 

Slides are available [here](Lectures/Lecture_12-13/)

## Linear models

### Lecture 14-15
+ **Introduction to linear models**: what are they, aim of regression modelling, a formal form, the simple model, how to choose the best, testing usefulness of models, prediction and model checking.
+ **Multiple linear model**: why multiple model, how it works, interpreting the model, inference result, model checking and generalize multiple regression model.
+ **Matrix notation**: why it's important, some assumptions, continuous covariates, factors, interactions and interpretation of the parameters
+ **Inference in Linear models**: Least square estimation, properties and ML estimation
+ **Model validation and model selection**: Testing hypotesis, test single coefficient, the sum of square, analysis of variance, R^2, residuals, heteroscedasticity, WLS, model choiche and variable selection, avoiding collinearity, regularization techniques and LASSO.

Slides are available [here](Lectures/Lecture_14-15/)

## Logistic regression

### Lecture 16
+ **Introduction**: basic ideas
+ **Regression for dichotomous response**: what is, binary dependent variable, bernoulli variables, choosing an appropriate curve and function and MLE and multiple logistic regression
+ **Parameters interpretation**: again on logistic regression, binomial response, odds and log-odds and interpretation of a dichotomous covariate
+ **Inference for logistic regression parameters**: testing parameters, inference on parameters for judging the performancce and predicting the response variable
+ **Alternative specification of the response function**: probit regression vs logistic regression
+ **Estimation issues**: case of perfect separation 

Slides are available [here](Lectures/Lecture_16/)

## Regression for count data

### Lecture 17
+ **Introduction**: Count variables and counts as response variable
+ **Poisson regression**: basic framework, interpretation of the parameters, estimation of the parameters and multiple poisson regression
+ **Inference**: testing significance of single /betas and judging the overall performance of the mode
+ **Overdispersion**: overdispersed count data, residual checks, dealing with overdispersion, quasi-likelihood model and using it in glm
+ **Beyond**: other models for count data, negative binomial regression and zero inflated poisson

Slides are available [here](Lectures/Lecture_17/)

## Bootstrap methods

### Lecture 18
+ **Resampling methods**: the idea, jackknife, what is it and other details
+ **The nonparametric bootstrap**: introduction, the idea, how does it work, standard error computation, more on the bootstrap idea and some coments on it
+ **The parametric bootstrap**: what is it and application to hypothesis testing
+ **Bootstrap-based confidence intervals**: what are they, some example, percentile method, the basic method and the studentized method

Slides are available [here](Lectures/Lecture_18/)

## Generalized linear models

### Lecture 19
+ **Introduction**: what is it, from LM to GLM, introducting GLMs, the exponential family and some example
+ **Basic ideas**: the structure of GLMs, the ingredients, mean and variance, some relevant member of the exp family, the link function and the canonical link
+ **inference**: estimation of the parameters,some question about MLE, likelihood equations, again the canonical link, fisher information ans some models
+ **Solution of the likelihood equations**: different algorithm to solve it
+ **Model evaluation**: comparing nested models, the deviance in LMs, LR test, the saturated model, deviance in GLMs, comparing nested models, resivdual deviance, model selection, residuals in GLM, deviance residuals and residual analysis
+ **Quasi-likelihood**: more on quasi-likelihood, model, equations and overdispersion
+ **Extensions and recent development**: some story end moder development

Slides are available [here](Lectures/Lecture_19/)

## Non parametric smoothing

### Lecture 20
+ **Nonlinear regression and scatterplot smoothing**: the limitations of linearity, classses of nonlinear models and semi-parametric regression models
+ **Polynomial regression**: what is it and an example
+ **Step functions**: what is it and some example
+ **kernel smoothing**: goals of smoothing, nearest neighbour averaging, nearest neigbour,choosing k, local regression, the effect of h, some kernel smoothers, variable bandwidth and the loess.
+ **Regression splines**: basis function, picewise regression, splines credit dataset, linear splines, the positive part, cubic splines, natural cubic splines, number and locations of the knots and choosing k with cv
+ **Smoothing splines**: what is it, choosing it and cross-validation

Slides are available [here](Lectures/Lecture_20/)

## Generalized additive models

### Lecture 21
+ **semiparametric regression: an introductory example**: some examples and nonlinear regression
+ **Some theory**: semiparametric regression and a basic representation, estimation, smoothness of regression curve and choice of km quantififyng the smoothness of the curve, penalized sum of squares, choice of tuning parameter, degree of smoothness and predicrive accuracy and some example
+ **GAMs**: the basic ideas, some example and winding up

Slides are available [here](Lectures/Lecture_21/)

## Classification and regression trees

### Lecture 22
+ **Regression trees**: step functions as approximators, as spline, the tree, tree approximation, a regression tree, building, growing and pruning it
+ **Classification trees**: what is it, growing it, the goodness of split criterion, impurity measures, avoiding overfitting, missing data, advantages and disadvantages
+ **MARS: multivariate adaptive regression splines**: what is it and how it works

Slides are available [here](Lectures/Lecture_22/)

## Ensemble methods

### Lecture 23
+ **Ensemble methods**: breaf history, combining predictions, bagging, out-of-bag, random forest, variable importance and boosting
+ **Learning with imbalanced data**: classification with imbalanced datasets, degree of imbalance, performance metrics in a two-class problems, other metrics, AUC, approches to imbalanced data lassification, resampling techniques, undersampling/oversampling, ROSE, SMOTE and some pratical issues

Slides are available [here](Lectures/Lecture_23/)

## Bayesian inference

### Lecture 24

This section was not included in the final exam we took, so I will not list every chapter that belongs in it.

Slides are available [here](Lectures/Lecture_24/)
