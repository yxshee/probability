
<img src="https://github.com/user-attachments/assets/303eab62-5806-4ee2-8cf9-febb9fef656f" width="505">



# Probability & Statistics 

> **This is a learning repository, not a production project. All code and content are for educational purposes only.**

---

## 📖 Overview

This repository contains R scripts and notes for learning and experimenting with core concepts in probability and statistics. Each folder covers a specific topic, with code examples, simulations, and visualizations to help you understand the theory and its practical application.

---

## 🗂️ Repository Structure

```
probability/
├── Code/
│   ├── BasicsOfRProgramming/
│   ├── DescriptiveStatistics/
│   ├── ProbabilityDistributions/
│   ├── MomentsFunctionsRandomVariables/
│   ├── ContinuousProbabilityDistributions/
│   ├── JointProbabilityFunctions/
│   ├── StudentTChiSquareFDistributions/
│   └── SamplingDistributionSimulation/
├── LICENSE
└── README.md
```

---

## 🧪 Topics & Experiments

### 1. Basics of R Programming
- Vector operations, custom functions (factorial, Fibonacci)
- Simple calculator
- Basic plots (line, bar, pie)

### 2. Descriptive Statistics
- Sample space simulation
- Birthday paradox
- Conditional probability
- Iris dataset analysis
- Mode calculation

### 3. Probability Distributions
- Binomial, Normal, Poisson, Hypergeometric distributions
- Probability calculations and visualizations

### 4. Moments & Random Variables
- Expected value and moments (discrete & continuous)
- Random variable transformations

### 5. Continuous Distributions
- Uniform, Exponential, Gamma distributions
- Density, CDF, quantiles, and simulation

### 6. Joint Probability Functions
- Continuous and discrete joint distributions
- Marginals, conditionals, and expectations

### 7. t, Chi-square & F Distributions
- Sampling and visualization of t, chi-square, and F distributions
- Quantiles and probability calculations

### 8. Sampling Distribution & Probability Integral Transform (PIT)
- Demonstrating PIT
- Simulating sampling distributions and the Central Limit Theorem

---

## 📊 Example Visualizations

Below are some example plots generated by the scripts in this repository:

| t-distribution (various df) | Exponential PDF | Binomial PMF |
|:---------------------------:|:---------------:|:------------:|
| <img src="https://github.com/user-attachments/assets/9573e856-2255-4604-91b8-1c2216028b9c" width="200" height="200">| <img src="https://github.com/user-attachments/assets/31d5f274-a786-4e93-a8e9-4a50d66441e2" height="200" width="200"> | <img src="https://github.com/user-attachments/assets/d997ca7e-04a5-4c0c-9ba6-270c72b2bcae" height="200" width="200">|







---

## 🚀 Getting Started

### Prerequisites
- [R](https://cran.r-project.org/) (version 3.5.0 or higher recommended)
- [RStudio](https://posit.co/download/rstudio-desktop/) (optional, for easier script execution)

### How to Run
1. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/probability.git
   ```
2. Open any `.R` script in RStudio or run in the R console:
   ```r
   source("Code/ProbabilityDistributions/ProbabilityDistributions.R")
   ```

---

## 💡 Sample Code

**Binomial Probability Calculation:**
```r
# P(7 <= X <= 9) where X ~ Bin(12, 1/6)
p_bino <- pbinom(9, 12, 1/6) - pbinom(6, 12, 1/6)
cat("P(7 <= X <= 9):", p_bino, "\n")
```

**Plotting a t-distribution:**
```r
set.seed(123)
hist(rt(100, 10), main="t-distribution, df=10")
```

---

## 📚 License

This repository is licensed under the MIT License. See [LICENSE](LICENSE) for details.

---

**Disclaimer:**  
> This repository is for learning and experimentation only. Scripts may not be optimized for production use.  
Feel free to explore, modify, and learn!
