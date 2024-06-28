#!/bin/bash

# Get user input for principal amount
echo "Enter the principal amount (e.g., 1000): "
read principal

# Get user input for rate of interest
echo "Enter the rate of interest (e.g., 5 for 5%): "
read rate

# Get user input for time period
echo "Enter the time period (in years): "
read time

# Calculate simple interest (using bc for better precision)
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the simple interest
echo "Simple Interest is: $simple_interest"

# (Optional) Calculate amount (principal + interest)
amount=$(echo "scale=2; $principal + $simple_interest" | bc)
echo "Total Amount is: $amount"
