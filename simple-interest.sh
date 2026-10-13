#!/bin/bash

# Simple Interest Calculator
echo "Simple Interest Calculator"

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (years): " time

# Simple Interest = (P x R x T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "Simple interest: $simple_interest"
echo "Total amount: $total"
