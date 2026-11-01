# Food Delivery – Operations & Performance Analysis

A portfolio analytics project examining order activity, delivery performance, customer ratings and order value with **synthetic food-delivery data**.

## Project Overview
The analysis focuses on operational service indicators across cities, cuisines and restaurants. It is designed to demonstrate how delivery data can be transformed into useful performance measures.

## Business Questions
- Which cities and cuisines have the highest order volumes?
- What are the average delivery time and late-delivery rate?
- How do customer ratings and order value vary by cuisine?
- Which restaurants show stronger service indicators in the sample?

## Key Metrics
| Metric | Definition |
|---|---|
| Total Orders | Count of delivery records |
| Delivered Orders | Count of successfully delivered orders |
| On-time Rate | On-time deliveries / delivered orders |
| Average Delivery Time | Mean delivery duration |
| Average Rating | Mean customer rating |
| Average Order Value (AOV) | Average value per order |

## Tools & Technologies
- **Python:** pandas, matplotlib
- **SQL:** PostgreSQL
- **Power BI:** DAX starter measures

## Repository Structure
```text
Food-Delivery-Operations-Analysis/
├── data/
│   └── deliveries.csv
├── python/
│   └── analysis.py
├── sql/
│   └── analysis.sql
├── powerbi/
│   └── measures.dax
└── README.md
```

## Run the Analysis
1. Install dependencies:
   ```bash
   pip install pandas matplotlib
   ```
2. Run the Python script:
   ```bash
   python python/analysis.py
   ```
3. Import `data/deliveries.csv` into PostgreSQL as `deliveries` and execute `sql/analysis.sql`.
4. Use `powerbi/measures.dax` as a starting point for a Power BI report.

## Dataset & Limitations
The dataset contains **500 generated delivery records**. It contains no real customer or restaurant information. The results are illustrative and are not a real service-level assessment.

## Author
**Omkar S. Kshirsagar** — Data Analytics Portfolio
