# 📊 Sales Pipeline Conversion Analysis

## 🔍 Overview
This project analyses sales pipeline performance to uncover stage-wise conversion patterns, drop-offs, and key drivers of pipeline efficiency. The objective was to move beyond surface-level funnel metrics and identify underlying factors influencing conversion outcomes.

## 🎯 Business Problem
While basic funnel tracking highlights where leads drop off, it often lacks clarity on *why* conversions vary across segments, making it difficult to prioritise efforts and improve pipeline performance.

## ⚙️ Approach
- Structured CRM-style dataset using SQL for analysis  
- Analysed stage-wise conversion rates and pipeline flow  
- Performed segmentation across source, stage, and engagement timeline  
- Applied cohort-style analysis to evaluate lead behaviour over time  
- Built analytical views to support decision-making  

## 📊 Key Insights
- Certain lead sources significantly outperform others in conversion  
- Conversion likelihood declines sharply beyond specific engagement time thresholds  
- Mid-funnel inefficiencies have a disproportionate impact on final deal closure  

## 🚀 Impact
- Identified actionable levers to improve pipeline conversion efficiency  
- Enabled targeted interventions across high-impact segments  
- Improved visibility into stage-level performance and conversion behaviour  

## 🧰 Tools Used
SQL · Excel  

## 📁 Project Structure
data/ → dataset  
schema/ → table structure  
queries/ → SQL analysis  
analysis-output/ → insights and results  

## 📊 Sample Output
*### Stage-Wise Conversion Funnel
| Pipeline Stage            | Leads In | Converted | Drop-off | Conv. Rate |
|---------------------------|----------|-----------|----------|------------|
| Lead → Qualified          | 1,200    | 780       | 420      | 65.0%      |
| Qualified → Proposal      | 780      | 432       | 348      | 55.4%      |
| Proposal → Negotiation    | 432      | 216       | 216      | 50.0%      |
| Negotiation → Closed Won  | 216      | 148       | 68       | 68.5%      |
| **End-to-End Pipeline**   | **1,200**| **148**   | —        | **12.3%**  |

> 💡 Proposal stage accounts for the largest absolute drop-off (348 leads) — the primary lever for pipeline improvement.

---

### Conversion Rate by Lead Source
| Lead Source     | Leads | Closed | Conv. Rate |
|-----------------|-------|--------|------------|
| Referral        | 210   | 54     | 25.7%      |
| Inbound/Organic | 380   | 61     | 16.1%      |
| Outbound/Cold   | 460   | 28     | 6.1%       |
| Paid Ads        | 150   | 5      | 3.3%       |

> 💡 Referral leads convert at **4× the rate** of paid channels despite lower volume.

---

### Engagement Speed vs. Conversion Rate
| Days to First Follow-up | Conv. Rate |
|-------------------------|------------|
| ≤ 2 days                | 22.4%      |
| 3–7 days                | 14.1%      |
| 8–14 days               | 7.8%       |
| > 14 days               | 3.2%       |

> 💡 Conversion drops ~86% when follow-up exceeds 14 days — validates early-stage SLA enforcement.


## 🧠 Skills Demonstrated
SQL · Funnel Analysis · Cohort Analysis · KPI Design · Conversion Analysis · Data Interpretation  

## 🔗 Connect
LinkedIn: https://linkedin.com/in/yash-sharma-73300a249  
GitHub: https://github.com/yashsh0913  
