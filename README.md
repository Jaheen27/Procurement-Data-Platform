# UC13 – Enterprise Procurement Data Platform

## Project Overview

The Enterprise Procurement Data Platform integrates procurement,
supplier, product, inventory, invoice, contract, and warehouse data
into a centralized analytical platform.

**Purpose: Pentaho ETL → PostgreSQL → Power BI**

## Project Objective

The objective is to integrate enterprise procurement data,
validate and transform it using Pentaho, store it in PostgreSQL,
and provide procurement and supply-chain analytics through Power BI.

## Technologies Used

- Pentaho Data Integration – ETL
- PostgreSQL – Database and Data Warehouse
- Python / Pandas – Data Profiling and Analysis
- SQL – Database and Analytics
- Git / GitHub – Version Control
- Power BI – Dashboard and Visualization

## Datasets

| Dataset | Records | Primary Key |
|----------|--------|-------------|
| Products | 300 | Product_ID |
| Suppliers | 250 | Supplier_ID |
| Warehouses | 10 | Warehouse_ID |
| Contracts | 600 | Contract_ID |
| Procurement | 5,000 | PO_ID |
| Inventory | 5,000 | Inventory_ID |
| Invoices | 5,000 | Invoice_ID |

### Procurement Transactions

Total procurement transactions: **5,000**

- Domestic: 2,500
- International: 2,500

## Data Relationships

### Primary Keys

- Products → Product_ID
- Suppliers → Supplier_ID
- Warehouses → Warehouse_ID
- Contracts → Contract_ID
- Procurement → PO_ID
- Inventory → Inventory_ID
- Invoices → Invoice_ID

### Foreign Keys

- Contracts.Supplier_ID → Suppliers.Supplier_ID
- Procurement.Supplier_ID → Suppliers.Supplier_ID
- Procurement.Product_ID → Products.Product_ID
- Procurement.Warehouse_ID → Warehouses.Warehouse_ID
- Procurement.Contract_ID → Contracts.Contract_ID
- Inventory.PO_ID → Procurement.PO_ID
- Inventory.Product_ID → Products.Product_ID
- Inventory.Warehouse_ID → Warehouses.Warehouse_ID
- Invoices.PO_ID → Procurement.PO_ID
- Invoices.Supplier_ID → Suppliers.Supplier_ID

## Architecture

Source Data
    ↓
Pentaho ETL
    ↓
Bronze / Staging
    ↓
Silver / Cleansed Data
    ↓
Gold / Data Warehouse
    ↓
Data Marts
    ↓
Power BI

### Architecture Layers

**Bronze:** Raw and ingested data

**Silver:** Cleansed and validated data

**Gold:** Business-ready warehouse and analytical data

## PostgreSQL Load Order

1. Products
2. Suppliers
3. Warehouses
4. Contracts
5. Procurement
6. Inventory
7. Invoices

## Sprint 0 – Project Initiation

- Business Requirement Document
- Solution Architecture
- Project Repository
- Dataset Identification
- Sprint Backlog

## Sprint 1 – Data Discovery & Ingestion

### Objective

Build the procurement raw data landing and staging environment.

### Activities

1. Analyze source datasets
2. Prepare Source Inventory
3. Prepare Data Dictionary
4. Prepare source data
5. Create PostgreSQL staging tables
6. Develop Pentaho ETL pipelines
7. Load data into PostgreSQL
8. Implement logging
9. Implement exception handling
10. Validate record counts
11. Commit code to GitHub

### Deliverables

- Source Inventory
- Data Dictionary
- Pentaho ETL Pipelines
- PostgreSQL Staging Database
- Logging
- Exception Handling
- Git Commit History

## Sprint 2 – Data Profiling, Cleansing & Validation

### Planned Activities

- Data profiling
- Missing value analysis
- Duplicate checks
- Data type validation
- Data standardization
- Data cleansing
- Referential integrity checks
- Reconciliation

## Sprint 3 – Data Warehouse & Analytics

### Planned Fact Tables

- Fact Purchase
- Fact Invoice
- Fact Inventory

### Planned Dimensions

- Dim Supplier
- Dim Product
- Dim Date
- Dim Department
- Dim Warehouse

## Power BI KPIs

### Procurement

- Total Procurement Value
- Domestic vs International Spend
- Monthly Spend
- Procurement by Country
- Procurement by Warehouse

### Supplier

- Top Suppliers
- Average Supplier Lead Time
- On-Time Delivery %
- Average Delay

### Inventory

- Inventory Value
- Stockout Count
- Reorder Count
- Overstock Count
- Warehouse Capacity Utilization

### Invoice

- Overdue Invoice %

### Contract

- Contract Value

### Product

- Top Products

## Data Quality

The platform will evaluate:

- Completeness
- Accuracy
- Consistency
- Uniqueness
- Validity
- Referential Integrity

## Logging and Exception Handling

Pentaho pipelines will capture:

- Execution status
- Records processed
- Successful records
- Rejected records
- Error information
- Execution date and time

## Final Objective

The final platform will provide a centralized and reliable procurement
data environment supporting procurement, supplier, inventory, invoice,
contract, product, and warehouse analytics.

**End-to-End Flow:**

Source Data → Pentaho ETL → PostgreSQL → Data Warehouse → Power BI
