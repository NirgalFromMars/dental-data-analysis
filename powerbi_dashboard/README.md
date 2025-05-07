# Power BI Dashboard

This folder contains the Power BI report file (`dental_services_dashboard.pbix`) created for the analysis of dental services provided in California between 2021 and 2023.

### Main Features

The report is structured into several pages to provide both an overview and detailed insights:

1. **Index & Navigation**  
   - An introductory page that serves as the report’s landing area, with buttons for navigating to the rest of the pages.

2. **Top Providers & YOY Change**  
   - Table showing the top 10 providers by total service volume.  
   - Includes YoY% (year-over-year) change, highlighted with conditional formatting.

3. **Provider Evolution (2021–2023)**  
   - Line chart visualizing the trend of service counts per provider over the years.  
   - Slicer available to filter by specific providers.

4. **2022 vs 2023 Comparison**  
   - Scatter plot comparing provider activity between both years to detect outliers or major shifts.

5. **Distribution by Provider Type**  
   - Donut and/or stacked bar charts to display the proportion of services by provider category.

6. **Provider Detail Page**  
   - Interactive page showing detailed metrics for a selected provider.

### Tools and Features Used
- DAX for custom measures and KPIs
- Power Query for data loading and shaping
- Relationships and star schema data modeling
- Dynamic filters and slicers
- Conditional formatting and bookmarks for navigation

### File
- `dental_services_dashboard.pbix`: The complete interactive dashboard built with Power BI.

This dashboard was designed to support decision-making and provide valuable insights into provider activity, trends, and performance over multiple years.
