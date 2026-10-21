# Vehicle Servicing Database

## Overview
A relational database project developed using Microsoft SQL Server to support a vehicle servicing business. The system manages customer records, vehicles, service history, mechanic assignments and mechanic availability.

## Features
- Customer and vehicle record management
- Service scheduling and service history
- Mechanic records and service assignments
- Mechanic availability tracking
- SQL queries for service operations and reporting
- Verification queries to check database results

## Technologies
- Microsoft SQL Server
- Transact-SQL (T-SQL)
- SQL Server Management Studio (SSMS)

## Repository Structure
- `Database/` — Database and table creation scripts
- `SampleData/` — Scripts for inserting sample records
- `Queries/` — Scripts for database operations and reporting
- `Verification/` — Queries for checking results

## Setup
1. Connect to a SQL Server instance using SQL Server Management Studio.
2. Execute `CreateDatabase.sql`.
3. Run the table creation scripts in dependency order.
4. Execute the sample data scripts after creating the required tables.
5. Run the query scripts and use the verification queries to check the results.

## Database Concepts
This project demonstrates relational database design, primary and foreign keys, table relationships, data manipulation, joins, aggregate functions and date-based queries.

## Scope and Limitations
The database focuses on core vehicle servicing operations. It does not currently implement invoicing, payments, service costs or automatic prevention of all mechanic scheduling conflicts.
