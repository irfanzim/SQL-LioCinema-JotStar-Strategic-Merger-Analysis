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

### 📌 Q.3: What is the distribution of users by age group, city tier, and subscription plan for each platform?

**Answer:**

<br>

![image](https://github.com/user-attachments/assets/f1fb4f45-57ed-49c1-b91b-5f623e5ba10b)


<br>

LioCinema's user base is heavily skewed towards the younger 18-24 age group, which makes up almost half of its users. This suggests a strong appeal to Gen Z. Jotstar, in contrast, has a more balanced distribution, with the 25-34 age group being its largest segment. This indicates a focus on millennials. The differences in age demographics could reflect different content strategies or marketing approaches. LioCinema may be leveraging social media and trending content to attract younger viewers, while Jotstar's content might resonate more with an older audience. 

<br>

![image](https://github.com/user-attachments/assets/e2d7312d-9401-444b-9000-a68d88cd179d)



<br>

The user distribution across city tiers reveals distinct market penetration strategies for LioCinema and Jotstar. Jotstar's user base is heavily concentrated in Tier 1 cities, Conversely, LioCinema exhibits a stronger presence in Tier 2 and, particularly, Tier 3 cities.

<br>

![image](https://github.com/user-attachments/assets/3d33c9f6-3759-4fa4-990e-34ab9e903ddd)


<br>

LioCinema relies heavily on a freemium model, with a large majority of its users on the free plan. A significant portion also opts for the Basic plan, while a smaller percentage upgrades to Premium. The high number of free users indicates a potential focus on user acquisition and leveraging this base for future conversions to paid plans. Jotstar, on the other hand, has a smaller proportion of free users compared to LioCinema. Its user base is primarily concentrated in the higher-value Premium and VIP tiers, with the VIP plan accounting for the largest segment. This suggests a strategy focused on attracting and retaining paying subscribers with potentially exclusive content or features offered in these premium tiers.

### 📌 Q.4: What percentage of LioCinema and Jotstar users are active vs. inactive? How do these rates vary by age group and subscription plan? 

**Answer:**

<br>

![image](https://github.com/user-attachments/assets/e2d4e3ee-b61d-4cb8-8fee-58e39d1e16fb)


<br>

The user activity data reveals a stark contrast in user engagement between LioCinema and Jotstar. Jotstar demonstrates a much healthier and more engaged user base, with nearly 9 out of 10 users being active. This high level of activity suggests strong user retention, compelling content, and potentially effective engagement strategies. LioCinema, while having a majority of active users, also has a considerable segment of inactive users (almost 40%). This could indicate issues with user churn, a less engaging content library for a segment of its users, or a large number of users who signed up but do not regularly use the platform. The relatively high percentage of inactive users might be a concern, as it represents a potential lost opportunity for revenue generation and platform growth.

<br>

![image](https://github.com/user-attachments/assets/e3711a66-2d57-4864-aa82-0562befc568d)

<br>

For LioCinema, younger users (18-24) show a higher tendency towards inactivity compared to older age groups. As the age group increases, the proportion of active users rises, suggesting potentially stronger engagement and retention among older demographics.Jotstar, in contrast, demonstrates remarkably high engagement across all age groups, with active user rates consistently above 86%. This indicates a strong ability to retain users regardless of their age.

<br>

![image](https://github.com/user-attachments/assets/895502e8-302b-4efc-bbad-c341a77e8e7c)


<br>

For Liocinema, free users exhibit the lowest activity and highest inactivity, suggesting a significant portion may be casual browsers or users who signed up without strong intent. As users upgrade to the Basic and then Premium plans, their activity levels increase substantially, indicating higher value and engagement among paying subscribers. Jotstar demonstrates a robustly engaged user base across all its visible subscription plans. Even its free users show a significantly higher active rate compared to LioCinema's free users.




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
