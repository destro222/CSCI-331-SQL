
# CSCI 331 – Individual Assignment  
## Chapter 3: SQL Joins  
Database: Northwinds2024Student  

---

## Overview

This assignment demonstrates my understanding of SQL JOIN types using the Northwinds2024Student database.

The goal is to:
- Understand how different JOIN types work
- Apply them to real business-style questions
- Execute and explain the results clearly

---

## Articles Referenced

### Article 1
Focused on the importance of choosing the correct JOIN type in real-world systems.  
It explained how JOIN decisions affect data accuracy and reporting.

### Article 2
Provided a simple explanation of INNER, LEFT, RIGHT, and FULL JOIN using a basic example.  
It emphasized understanding JOIN differences clearly.

---

## Propositions and Queries

### Proposition 1 – LEFT JOIN
**Goal:** Show all customers and their orders, including customers who have never placed an order.  

Purpose: Preserve all customers while showing order information if available.

---

### Proposition 2 – RIGHT JOIN
**Goal:** Show all products and related orders, including products that were never ordered.  

Purpose: Preserve all products and identify items that have not been sold.

---

### Proposition 3 – FULL OUTER JOIN
**Goal:** Show all customers and all orders, including unmatched records on both sides.  

Purpose: Detect missing matches and understand data completeness.

---

## How to Run

1. Open Azure Data Studio or SQL Server Management Studio.
2. Connect to the database server.
3. Select the database: **Northwinds2024Student**
4. Run the provided `.SQL` file.

---

## Skills Demonstrated

- Understanding of JOIN types
- Writing correct JOIN conditions
- Use of table aliases
- Explaining technical concepts clearly
- Connecting SQL logic to business reasoning

---

## Tools Used

- SQL Server
- Azure Data Studio
- Northwinds2024Student database

---


