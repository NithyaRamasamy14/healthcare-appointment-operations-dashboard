# Healthcare Appointment & Operations Dashboard

## Project Overview

The Healthcare Appointment & Operations Dashboard is a data analytics project designed to analyze healthcare appointment records, revenue performance, department operations, patient attendance, and appointment trends.

Using SQL Server for data analysis and Power BI for interactive reporting, this project transforms appointment data into meaningful insights that can help identify performance patterns and potential operational issues.

The dashboard provides an overview of appointment volumes, realized revenue, cancellation and no-show rates, department performance, wait times, location performance, and doctor revenue rankings.

## Business Objectives

- Analyze overall appointment volume and revenue performance.
- Identify monthly appointment and revenue trends.
- Evaluate appointment completion, cancellation, and no-show patterns.
- Compare appointment volumes and revenue across departments.
- Analyze average wait times by department.
- Compare appointment activity across healthcare locations.
- Identify the top 10 doctors by realized revenue.
- Highlight areas requiring further operational investigation.

## Tools and Technologies

- **SQL Server:** Data querying, aggregation, grouping, filtering, and analytical calculations.
- **SQL:** Business analysis queries and performance metrics.
- **Power BI Desktop:** Interactive dashboard development and visualization.
- **Power Query:** Data preparation and transformation.
- **DAX:** Measures and calculations for dashboard reporting.
- **Power BI Data Modeling:** Date table and relationship management.

## Dataset Overview

The project uses a cleaned healthcare appointment dataset containing **5,000 appointment records**.

The primary analysis table is `dbo.CleanedAppointments`.

Key fields used in the project include:

- AppointmentID
- AppointmentDate
- ScheduledDate
- PatientID
- Gender
- Age
- DoctorID
- DoctorName
- DepartmentName
- LocationName
- AppointmentType
- WaitTime
- AppointmentStatus
- CancellationReason
- PaymentAmount
- Year
- Month
- MonthName
- MonthYear
- DayOfWeek

Additional calculated or prepared fields used in the SQL analysis include `RealizedRevenue`, `IsCancelled`, and `IsNoShow`.

A separate DateTable is used in the Power BI data model for date-based reporting.

## Project Methodology

### 1. Data Preparation

- Used the cleaned appointment dataset as the primary source for analysis.
- Reviewed the available fields for appointment, revenue, department, doctor, location, and operational reporting.
- Prepared the date model in Power BI using a separate DateTable.
- Configured the relevant data model relationships to support time-based analysis.

### 2. SQL Analysis

Created 12 SQL queries to analyze the dataset:

1. Total appointments
2. Total realized revenue
3. Appointments by department
4. Revenue by department
5. Monthly appointment trends
6. Monthly revenue trends
7. Cancellation rate
8. No-show rate
9. Average wait time by department
10. Appointments by location
11. Top 10 doctors by realized revenue
12. Appointment status distribution

The queries use SQL aggregation, `GROUP BY`, `ORDER BY`, conditional calculations, and percentage calculations to summarize the appointment data.

The complete SQL script is available in [`SQL/healthcare_queries.sql`](SQL/healthcare_queries.sql).

### 3. Power BI Dashboard Development

Developed an interactive Power BI dashboard with KPI cards, charts, and slicers to present the analysis in a clear reporting format.

Dashboard features include:

- KPI cards for key appointment and operational metrics.
- Monthly appointment and revenue trend charts.
- Department-level appointment and revenue comparisons.
- Appointment distribution by location.
- Appointment status analysis.
- Doctor revenue ranking.
- Interactive slicers for filtering the report.
- A Clear Filters bookmark to reset report selections.

### 4. Analysis and Interpretation

Reviewed the SQL results and dashboard visualizations to identify patterns in appointment demand, realized revenue, attendance, department performance, and wait times.

The analysis also identified zero-revenue and zero-wait-time results in two departments that require further investigation before drawing final operational conclusions.

## Key Findings

The following findings are based on the SQL query results for the current dataset.

### Overall Performance

| Metric | Result |
|---|---:|
| Total appointments | 5,000 |
| Total realized revenue | $853,763 |
| Completed appointments | 4,000 |
| Cancelled appointments | 500 |
| No-show appointments | 500 |
| Cancellation rate | 10% |
| No-show rate | 10% |

### Department Performance

- Each of the 10 departments has 500 appointment records in the dataset.
- Pediatrics generated the highest realized revenue at **$219,716**.
- Cardiology generated the second-highest realized revenue at **$152,866**.
- Ophthalmology and Gynecology currently show zero realized revenue in the SQL results. These values require validation before making department-level business recommendations.

### Monthly Trends

- The highest monthly appointment count was **434**, observed in March, May, July, and August 2026.
- November had the lowest monthly appointment count at **390**.
- August generated the highest monthly realized revenue at **$75,348**.
- December generated the lowest monthly realized revenue at **$66,530**.

### Appointment Status

- 80% of records have a Completed status.
- 10% have a Cancelled status.
- 10% have a No Show status.

These percentages describe the appointment status distribution in the current dataset.

### Doctor Revenue Performance

The top-ranked doctor by realized revenue was Dr. Rob, with **$54,050**.

Other high-ranking doctors included Dr. Kumar and Dr. Prani, each with $37,500, followed by Dr. Michaels with $35,000.

### Operational Wait Times

Orthopedics and Neurology recorded the highest average wait times in the current SQL results, at approximately 32.95 and 32.94 respectively.

Ophthalmology and Gynecology returned zero average wait time. These values should be checked to determine whether they represent genuine observations or missing, default, or incorrectly prepared data.

## Dashboard Preview

![Healthcare Appointment & Operations Dashboard](Healthcare_Dashboard.png)

## Repository Structure

```text
healthcare-appointment-operations-dashboard/
│
├── README.md
├── Healthcare_Dashboard.png
│
└── SQL/
    └── healthcare_queries.sql
```

## Business Value

This project demonstrates how SQL analysis and Power BI reporting can be used to:

- Monitor healthcare appointment activity.
- Track realized revenue and monthly performance.
- Compare departments, locations, and doctors.
- Measure cancellation and no-show patterns.
- Identify operational metrics that need additional validation.
- Present analytical results through an interactive reporting dashboard.

## Skills Demonstrated

SQL querying | Data analysis | KPI reporting | Power BI dashboards | Power Query | DAX | Data modeling | Trend analysis | Revenue analysis | Operational reporting | Data interpretation

## Conclusion

The Healthcare Appointment & Operations Dashboard demonstrates an end-to-end descriptive analytics workflow, from SQL-based data analysis to interactive Power BI reporting.

The project provides a consolidated view of appointment operations and revenue performance while highlighting data-quality questions that should be investigated before making final business recommendations.

**Project Type:** Data Analytics & Business Intelligence

**Primary Tools:** SQL Server, SQL, Power BI, Power Query, and DAX
