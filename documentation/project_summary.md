# Project Summary – Dental Services Data Analysis (2021–2023)

## 🎯 Objective

This project aims to analyze the evolution of dental services provided in California over three years (2021–2023), with a focus on detecting trends, identifying top-performing providers, and comparing year-over-year (YoY) changes. The analysis supports data-driven decision-making and performance monitoring across providers and service types.

## 🧩 Data Sources

- **CSV files**: Contain provider-level dental service data for 2022 and 2023, imported from the California Open Data Portal.
- **API response**: 2021 data retrieved directly from the web API and loaded into Power BI using its built-in connector.

## 🛠️ Data Transformation

- All datasets were imported into **SQL Server** using SSMS.
- Data was cleaned and harmonized (e.g., column unification, standard formats).
- SQL scripts were used to create unified tables and views to facilitate year-to-year comparisons.

## 📊 Analysis & Visualization

The processed data was imported into **Power BI**, where an interactive dashboard was developed, featuring:
- Top 10 providers by total services with YoY% change.
- Time series analysis (2021–2023).
- Scatter plot for 2022 vs 2023 comparison.
- Distribution by provider type.
- Filterable detail view by provider.
- Index page for user navigation.

## 📁 Project Structure

- `data_sources/`: Raw CSV files and API sample.
- `sql_transformation/`: SQL scripts used for integration and preprocessing in SSMS.
- `powerbi_dashboard/`: Power BI `.pbix` report file and screenshots.
- `documentation/`: This summary and general project documentation.

## 🧠 Skills Demonstrated

- SQL Server & T-SQL
- Power BI (DAX, data modeling, visualization)
- ETL processes and schema design
- API data handling
- GitHub project structuring and documentation

---

This project showcases the full cycle of a real-world data analysis process, from ingestion and transformation to visualization and insight generation.
