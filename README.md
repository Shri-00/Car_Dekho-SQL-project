# Car Sales Data Analysis Using SQL

## 📌 Project Overview
This project provides insights into car sales data using SQL queries. It focuses on analyzing car availability, fuel types, yearly sales trends, and other essential metrics to assist business decision-making. The dataset `car_dekho` is used to answer various business-related questions about car sales over multiple years.

## 📊 Key Features & SQL Queries

### 1. **Total Car Count**
- Retrieves the total number of car records available in the dataset.
```sql
SELECT COUNT(*) FROM car_dekho; -- Total car count
```

### 2. **Car Availability by Year**
- Determines how many cars are available in specific years, such as 2020, 2021, and 2023.
```sql
SELECT COUNT(*) FROM car_dekho WHERE year = 2023; -- Cars available in 2023
SELECT COUNT(*) FROM car_dekho WHERE year = 2020; -- Cars available in 2020
SELECT COUNT(*) FROM car_dekho WHERE year = 2021; -- Cars available in 2021
```

### 3. **Grouping Data by Year**
- Groups cars by year to identify trends and order formats.
```sql
SELECT year, COUNT(*) FROM car_dekho GROUP BY year; -- Yearly car count
```

### 4. **Fuel Type Analysis**
- Analyzes how many cars use different fuel types (Diesel, Petrol, CNG) across various years.
```sql
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year; -- Diesel cars by year
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year; -- Petrol cars by year
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year; -- CNG cars by year
```

### 5. **Cars Availability Greater or Less Than 100 per Year**
- Identifies years where the number of cars exceeded or was below 100.
```sql
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) > 100; -- Years with more than 100 cars
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) < 100; -- Years with fewer than 100 cars
```

### 6. **Cars Between Specific Years**
- Retrieves all car details between 2015 and 2023.
```sql
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023; -- Cars from 2015 to 2023
```

## 🏆 Key Insights
- The dataset contains **7927 cars** in total.
- Only **6 cars** are available in **2023**, while **74 cars** were recorded in **2020**.
- The majority of cars belong to previous years, with some years having significantly high car counts.
- The most popular fuel type can be determined through fuel-based group queries.
- There are years where **more than 100 cars** were recorded, which is useful for sales trend analysis.

## 🔧 Technologies Used
- **Database:** MySQL
- **Query Language:** SQL
- **Dataset:** `car_dekho`

## 🚀 How to Use
1. Clone the repository.
2. Import the dataset into MySQL.
3. Run the SQL queries provided to analyze the data.
4. Modify the queries as needed for deeper insights.

## 📢 Conclusion
This project provides a structured approach to analyzing car sales data using SQL. The queries offer a detailed breakdown of availability, fuel types, and trends over multiple years, which can be beneficial for business intelligence and decision-making.



