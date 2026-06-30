# Port Terminal Cargo Tracking System

This repository contains the database schema and business logic for a Port Terminal Cargo Tracking System, built using Microsoft SQL Server.

## Features
*   **Relational Schema:** Designed with strictly enforced data types and Foreign Key constraints to prevent data corruption.
*   **Automated Tracking:** Utilizes `IDENTITY` and `DEFAULT GETDATE()` for automated ID generation and timestamping.
*   **Stored Procedures:** Implements enterprise-grade stored procedures (e.g., `sp_LogContainerArrival`) to secure data insertion and optimize execution plans, moving business logic into the database layer.

## Setup
Run the `01_Initialize_Database.sql` script in MS SQL Server or Azure Data Studio to generate the database, tables, seed data, and stored procedures.
