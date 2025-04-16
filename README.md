# 📊 Lio-Jotstar Merger Data Analysis

## 🧠 Project Overview

This SQL project presents a detailed data-driven analysis conducted to support the strategic merger between **Lio**, a leading telecom provider in India, and **Jotstar**, a prominent OTT streaming platform. The goal is to evaluate platform performance, content consumption, and user behavior trends to guide post-merger decisions. This analysis spans **January to November 2024**. 

The dataset is part of [Codebasics Resume Projects – Challenge 14](https://codebasics.io/challenge/codebasics-resume-project-challenge), which simulates a real-world business scenario.

---

## 📌 Problem Statement

The management team at Lio wants to gain insights into:

1. Content library strengths across both platforms.
2. Subscriber trends by demographics.
3. Inactivity behavior patterns.
4. Upgrade and downgrade behaviors.
5. Viewing habits, including device and city preferences.
6. Revenue performance based on subscription plans.

---

## 🧰 Tech Stack

- **MySQL** – Core data wrangling and analysis
- **Power-Bi** – For visual dashboard. [Click Here](https://github.com/irfanzim/Power-BI-LioCinema-Jotstar-Merger-Analysis-)

---

## ❓ Business Questions Answered

### 🔍 Primary Questions

---

### 📌 Q.1: What is the total number of users for LioCinema and Jotstar, and how do they compare in terms of growth trends (January–November 2024)?

**Answer:**

<br>

![image](https://github.com/user-attachments/assets/1dcac6c7-d9b6-465f-98fd-12ac3471ec2f)]

<br>

LioCinema significantly outweighs Jotstar in terms of the total number of users. 

<br>

![Screenshot 2025-04-16 110433](https://github.com/user-attachments/assets/1796a5c5-f042-41a4-a92e-af7de615d17f)

<br>

The data clearly indicates that LioCinema has a significantly larger user base and is experiencing a much more robust growth trajectory compared to Jotstar. This suggests that LioCinema is more effective at attracting and retaining users during this period. While Jotstar is also growing, its rate of user acquisition is considerably slower.

### 📌 Q.2: What is the total number of contents available on LioCinema vs. Jotstar? How do they differ in terms of language and content type? 

**Answer:**

<br>

![image](https://github.com/user-attachments/assets/378b4132-9c44-4185-b765-0b57ccfc89c6)


<br>

Jotstar has more content than liocinema.

<br>

![image](https://github.com/user-attachments/assets/8452734a-e062-4145-8d7c-954700e9d46b)


<br>

The content portfolios of LioCinema and Jotstar exhibit distinct strategic focuses based on language. Jotstar appears to have a broader content library, particularly excelling in English and Hindi content, which likely caters to a wider pan-Indian audience. Its inclusion of content in regional languages like Bengali, Gujarati, Marathi, and Punjabi further diversifies its offerings. LioCinema, while having a smaller overall content volume, demonstrates a relative strength in South Indian languages (Kannada, Malayalam, Tamil, Telugu) alongside a significant Hindi library. Its considerably lower English content suggests a potential strategic focus on non-English speaking demographics or a different approach to acquiring English language content.

<br>

![image](https://github.com/user-attachments/assets/7578369b-b0d8-416a-b8aa-f71ac7c157fe)

<br>

Jotstar exhibits a clear advantage in the breadth and depth of its content library across all three major content types: Movies, Series, and Sports. Its significantly higher content volume, particularly in Series and Sports, suggests a strategy focused on providing a more comprehensive and diverse entertainment offering to its users. LioCinema's content strategy appears to be more selective, with a smaller but still substantial movie library. Its considerably lower number of series and sports content might indicate a different strategic focus


   **Plan Pricing (Monthly):**
   - LioCinema Basic: ₹69  
   - LioCinema Premium: ₹129  
   - Jotstar VIP: ₹159  
   - Jotstar Premium: ₹359

---

## 📂 Dataset

- Available via [Codebasics Challenge 14](https://codebasics.io/challenge/codebasics-resume-project-challenge)
- Contains:
  - `subscribers` table
  - `contents` table
  - `content_consumption` table
- Each platform (LioCinema, Jotstar) has its own database structure.

---

## 🧮 Methodology

- All data analysis was performed using **SQL**.
- Join operations were used to consolidate user, plan, and consumption data.
- Window functions helped track upgrades/downgrades.
- Case statements and date logic were used for revenue computation.

---

## 📈 Key Deliverables

- SQL scripts for each business question.
- Insights and charts shared via screenshots (see `/screenshots` folder).
- Revenue breakdowns and user behavior heatmaps.

---

## 🔧 How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/lio-jotstar-merger-analysis.git
   cd lio-jotstar-merger-analysis
