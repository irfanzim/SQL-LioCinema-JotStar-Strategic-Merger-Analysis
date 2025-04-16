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
- **Power-Bi** – For visual storytelling. Click Here [Click Here](https://github.com/irfanzim/Power-BI-LioCinema-Jotstar-Merger-Analysis-)

---

## ❓ Business Questions Answered

### 🔍 Primary Questions

1. **What is the total number of users for LioCinema and Jotstar, and how do they compare in terms of growth trends (January–November 2024)?**
   ![image](https://github.com/user-attachments/assets/1dcac6c7-d9b6-465f-98fd-12ac3471ec2f)]
   
   LioCinema significantly outweighs Jotstar in terms of the total number of users. 
   
   ![Screenshot 2025-04-16 110433](https://github.com/user-attachments/assets/1796a5c5-f042-41a4-a92e-af7de615d17f)

   The data clearly indicates that LioCinema has a significantly larger user base and is experiencing a much more robust growth trajectory compared to Jotstar. This suggests that LioCinema is more effective at attracting and retaining users during this period. While Jotstar is also growing, its rate of user acquisition is considerably slower.


3. **What is the total number of contents available on LioCinema vs. Jotstar? How do they differ in terms of language and content type?**  
   ![Screenshot](screenshots/content_library.png)

### 📊 Deep-Dive Questions

3. **Distribution of users** by age group, city tier, and subscription plan.  
4. **Active vs. inactive user rates**, segmented by age group and subscription plan.  
5. **Average watch time comparison** across platforms, city tiers, and device types.  
6. **Correlation between inactivity and watch time** – Are low-engagement users more likely to go inactive?  
7. **Downgrade patterns** – Which platform sees more downgrades?  
8. **Common upgrade paths** (e.g., Free → VIP, Free → Premium) for each platform.  
9. **Paid user penetration** by city tier (Tier 1/2/3) and platform.  
10. **Revenue estimation** using monthly plan prices and subscriber activity over the period.

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
