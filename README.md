# BEDSURE-AND-BRESSCAPE-ANALYSIS-
This project is a **collaborative effort by our group**, where we used an Amazon Review Scraper to gather product reviews from Amazon and prepared the dataset for analysis.
# Amazon Products Review Analysis (Stage 5 Task)

## Project Description
This project is a **collaborative effort by our group**, where we used an Amazon Review Scraper to gather product reviews from Amazon and prepared the dataset for analysis.

---

## Table of Contents
- (#executive-summary)
- (#introduction)
  - (#background)
  - (#objectives)
  - (#problem)
- (#tools-used)
- (#analysis)
  - (#data-cleaning)
  - (#database-design--schema)
  - (#data-analysis-methodology)
  - (#exploratory-data-analysis-eda)
  - (#sentiment-analysis)
- (#what-this-means-for-the-business)
- (#actionable-insights)
- (#visualizations)
- (#conclusion)
  - (#summary-of-findings)
  - (#recommendations)
  - (#challenges)
  - (#overall-conclusion)

---

## Executive Summary

### Overview
This report provides an analysis of customer reviews for two bedding products: **Bedsure Bedsheets** and **Breescape Bedsheets**, based on data cleaning, exploratory data analysis (EDA), and sentiment analysis from years 2020–2025.

### Key Findings
**Bedsure Product**
-  Strong Positive Sentiment  
- Minimal Negative Feedback  
- Stable Rating Trend  

**Breescape Product**
-  Highly Valued Cooling Feature  
- Fit Issues Drive Negative Reviews  
-  Helpful Reviews are Positive  

### Solutions
**Bedsure Product**
-  Highlight Strengths  
-  Address Weaknesses  
- Customer Retention  

**Breescape Product**
-  Leverage USP  
-  Improve Product Design  
-  Encourage Detailed Reviews  

---

## Introduction

### Background
The project’s objective was to analyze **Amazon reviews** for two competing bedding products (Bedsure and Breescape). The workflow included:

1. **Data Cleaning** – preprocess raw review data  
2. **Database Design** – structured schema for querying  
3. **Exploratory & Sentiment Analysis** – with Python (TextBlob)  
4. **Visualization & Reporting** – with Power BI  

### Objectives
- Clean & prepare raw data  
- Explore data structure, distribution, and descriptive statistics  
- Perform sentiment classification (positive, neutral, negative)  
- Identify insights linking low ratings to issues  
- Provide recommendations for product improvement and strategy  
- Compare both products and conclude  

### Problem
> Understand customer sentiment and pain points for **Bedsure** and **Breescape** based on reviews, in order to identify what drives positive and negative feedback.

---

## Tools Used
- **Amazon Product Review Scraper** – data collection  
-  **Microsoft Excel** – data cleaning  
-  **SQL Server** – database management  
-  **Python (Jupyter Notebook, TextBlob)** – analysis  
-  **Power BI** – visualization and dashboards  

---

## Analysis

### Data Cleaning
Steps applied:
- Dropped irrelevant columns (`message`, `Page_URL`, `Review_URL`)  
- Handled missing values (removed empty rows, filled counts with 0)  
- Standardized types:  
  - `Product_stars`, `Review_rating` → FLOAT  
  - `Rating_count`, `Helpful_count` → INT  
  - Dates → DATETIME  
- Cleaned text fields (e.g., `Reviewer_name`, `Country`)  
- Removed duplicates (`Reviewer_name`, `Review_content`, `Date`)  

### Database Design & Schema
Three main tables:
- **Product** (`product_id` PK)  
- **Reviewer** (`reviewer_id` PK)  
- **Review** (`review_id` PK, linked to Product & Reviewer)  

This **normalized schema** ensured integrity and efficient querying.  

### Data Analysis Methodology
- Conducted in **Jupyter Notebook**  
- Used pandas, matplotlib for exploration  
- Sentiment analysis with **TextBlob**  

### Exploratory Data Analysis (EDA)
**Bedsure**
- 370 rows, 12 columns  
- Avg rating = 4.1 (Std = 1.11, Range = 1–5)  
- Skewed towards **4–5 stars**  

**Breescape**
- 150 rows, 13 columns  
- Avg rating = 4.75 (Std = 0.46, Range = 4–5)  
- Bimodal distribution (two customer groups: very positive vs. dissatisfied)  

### Sentiment Analysis
Method: **TextBlob polarity**  
- Positive > 0  
- Neutral = 0  
- Negative < 0  

**Bedsure**
- Positive: 84.6%  
- Negative: 8.6%  
- Neutral: 6.8%  

**Breescape**
- Balanced but leaning positive  
- Negative = mostly **fit issues**  

---

## What This Means for the Business
**Bedsure**
- High quality and customer satisfaction  
- Low negative reviews = easy to address  

**Breescape**
- Cooling USP strong  
- Fit/design issues need resolution  

---

## Actionable Insights
**Bedsure**
- Fix durability/thickness issues  
- Highlight comfort in marketing  
- Engage dissatisfied customers  

**Breescape**
- Improve product fit and fabric consistency  
- Promote cooling/breathability  
- Encourage detailed customer reviews  

---

## Visualizations
- Sentiment distribution (Positive/Neutral/Negative)  
- Rating trends over time  
- Word Cloud of frequent keywords  

---

## Conclusion

### Summary of Findings
**Bedsure**  
- 84.6% positive reviews  
- Praised for softness & comfort  
- Weakness: thin fabric & durability  

**Breescape**  
- Cooling feature highly valued  
- Weakness: fit issues  
- Helpful reviews mostly positive  

### Recommendations
**Bedsure**
- Highlight softness/comfort in ads  
- Address durability concerns  
- Retain customers with proactive engagement  

**Breescape**
- Resolve fit/size problems  
- Promote cooling USP  
- Push for detailed, positive reviews  

### Challenges
-  Couldn’t scrape directly with Python due to Amazon restrictions  
-  Built sentiment columns with DAX instead  
-  Required Power BI Word Cloud add-in  

### Overall Conclusion
Both Bedsure and Breescape products have strong customer approval.  

- **Bedsure** → must improve durability  
- **Breescape** → must fix fit issues  

By addressing weaknesses and leveraging their respective strengths, both brands can strengthen customer satisfaction and competitiveness.
