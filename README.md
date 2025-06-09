# DVD Rental Database Analysis

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13+-blue?logo=postgresql)
![License](https://img.shields.io/badge/License-MIT-green)

This repository contains SQL queries analyzing the DVD Rental database, providing business insights through optimized SQL queries. Perfect for learning SQL analytics and PostgreSQL.

## Features

- 🚀 12 optimized SQL queries
- 📊 Business-focused insights
- 🗄️ Clear database schema documentation
- 📂 Professional project organization
- 📝 Detailed usage instructions

## Dataset Overview

The DVD Rental database contains:
- 15 relational tables
- 1 million+ rental records
- Sample data for a DVD rental business

**Source**: [PostgreSQL Tutorial Sample Database](https://www.postgresqltutorial.com/postgresql-sample-database/)  
**Download**: [dvdrental.zip](https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip)

## Database Schema

![ER Diagram](https://www.postgresqltutorial.com/wp-content/uploads/2018/03/dvd-rental-sample-database-diagram.png)

Key tables include:
- `film` - Movie inventory
- `customer` - Client information
- `rental` - Rental transactions
- `payment` - Payment records
- `actor` - Film actors
- `category` - Movie genres

[View detailed schema documentation](docs/schema.md)

## Query Analysis

| Query | File | Description | Key Insights |
|-------|------|-------------|--------------|
| Q1 | [distinct_replacement_cost.sql](queries/Q1_distinct_replacement_cost.sql) | Distinct replacement costs | Inventory valuation analysis |
| Q2 | [cost_range_distribution.sql](queries/Q2_cost_range_distribution.sql) | Cost range distribution | Pricing strategy optimization |
| Q3 | [longest_drama_sports_films.sql](queries/Q3_longest_drama_sports_films.sql) | Longest films in Drama/Sports | Content selection insights |
| Q4 | [film_count_by_category.sql](queries/Q4_film_count_by_category.sql) | Films per category | Inventory composition analysis |
| Q5 | [actor_film_counts.sql](queries/Q5_actor_film_counts.sql) | Actor film appearances | Cast popularity metrics |
| Q6 | [unused_addresses.sql](queries/Q6_unused_addresses.sql) | Unused addresses | Data cleansing targets |
| Q7 | [revenue_by_city.sql](queries/Q7_revenue_by_city.sql) | Revenue by city | Geographical performance |
| Q8 | [revenue_by_country_city.sql](queries/Q8_revenue_by_country_city.sql) | Revenue by country/city | International market analysis |
| Q9 | [avg_customer_spend_by_staff.sql](queries/Q9_avg_customer_spend_by_staff.sql) | Avg customer spend by staff | Employee performance metrics |
| Q10 | [avg_sunday_revenue.sql](queries/Q10_avg_sunday_revenue.sql) | Average Sunday revenue | Weekend performance analysis |
| Q11 | [films_above_avg_length.sql](queries/Q11_films_above_avg_length.sql) | Films longer than category average | Content analysis |
| Q12 | [avg_spend_by_district.sql](queries/Q12_avg_spend_by_district.sql) | Avg customer spend by district | Regional marketing insights |

## Setup Instructions

### 1. Install PostgreSQL
Download and install PostgreSQL: [www.postgresql.org/download](https://www.postgresql.org/download/)

### 2. Restore the Database
```bash
# Create database
createdb -U postgres dvdrental

# Restore from backup
pg_restore -U postgres -d dvdrental /path/to/dvdrental.tar
