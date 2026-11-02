# Food Delivery Service-Level Methodology

## Define the order population
Confirm one row per order and distinguish placed, accepted, picked up, delivered, cancelled, and failed orders. Exclude non-delivered orders from delivery-duration averages.

## KPI rules
- Delivered orders: count distinct orders with delivered status.
- On-time rate: delivered orders meeting the documented promised-time rule / delivered orders with usable timestamps.
- Delivery duration: delivered timestamp minus the agreed start timestamp; document whether that is acceptance or pickup.
- Average order value: sum of eligible order value / distinct eligible orders.

## Validation
Check timestamp order, timezone consistency, duplicate order IDs, missing delivery outcomes, impossible durations, and rating range. Show sample sizes with city and restaurant comparisons.

## Interpretation
A late delivery association with ratings is not proof of causation. Synthetic records do not describe actual restaurant or courier performance.
