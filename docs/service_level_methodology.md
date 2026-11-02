# Food Delivery Service-Level Methodology

## Order population
Confirm one row per order and distinguish placed, accepted, picked up, delivered, cancelled, and failed orders. Exclude non-delivered orders from delivery-duration averages.

## KPI rules
- Delivered orders: distinct orders with delivered status.
- On-time rate: delivered orders meeting the promised-time rule / delivered orders with usable timestamps.
- Delivery duration: delivered timestamp minus the documented start timestamp.
- AOV: eligible order value / distinct eligible orders.

## Validation
Check timestamp order, timezone consistency, duplicate order IDs, missing outcomes, impossible durations, and rating range. Show sample sizes in comparisons.

## Interpretation
Synthetic records do not describe actual restaurant or courier performance.
