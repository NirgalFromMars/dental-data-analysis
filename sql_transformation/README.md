# SQL Transformation

This folder contains the SQL scripts used to transform and prepare the raw data for analysis in Power BI.

### Tools Used
- SQL Server 2022 (Express Edition)
- SQL Server Management Studio (SSMS)

### Main Steps Included in the Script
1. **Data Cleaning and Standardization**  
   - Removed nulls and invalid values from key columns.  
   - Standardized provider names and categories.

2. **Yearly Data Consolidation**  
   - Merged datasets from different years (2022 and 2023) using `UNION` operations.  
   - Ensured consistent schema across tables.

3. **Calculated Columns and Aggregations**  
   - Created new metrics to measure service usage (e.g., totals by provider and service type).  
   - Applied `GROUP BY`, `CASE`, and `JOIN` operations to derive new insights.

4. **Preparation for Power BI Import**  
   - Generated summarized views with cleaned and enriched data.  
   - Ensured compatibility for seamless import into Power BI.

### File Description
- **sql_transformation.sql**: Contains all queries and transformations performed during the SQL phase of the project.

This script played a key role in preparing structured, reliable data to support accurate and meaningful visual analysis in Power BI.
