# Enterprise Database Architecture Simulation

This repository contains a database schema and business logic simulation built using **Microsoft SQL Server** and **Azure Data Studio**.

## Key Concepts Demonstrated
*   **Relational Schema:** Designed with strictly enforced data types and Foreign Key constraints to maintain referential integrity and prevent data corruption.
*   **Automated Tracking:** Utilizes `IDENTITY` and `DEFAULT GETDATE()` for automated primary key generation and timestamping.
*   **Stored Procedures:** Implements enterprise-grade stored procedures to secure data insertion and optimize execution plans, successfully moving core business logic into the database layer.

## Setup Instructions
Run the `01_Initialize_Database.sql` script in MS SQL Server or Azure Data Studio to generate the database, tables, seed data, and stored procedures.
