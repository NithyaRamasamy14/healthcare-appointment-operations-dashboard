/*
===============================================================================
Project : Healthcare Appointment & Operations Dashboard
File    : healthcare_queries.sql
Purpose : Analyze healthcare appointment volume, realized revenue, appointment
          outcomes, department performance, wait times, locations, and doctors.
Database: SQL Server
Table   : dbo.CleanedAppointments

Notes:
- These queries use the column names from the project's tested dataset.
- WaitTime units depend on the source data definition; confirm the unit before
  documenting it in the dashboard or README.
- Ophthalmology and Gynecology returned zero realized revenue and zero average
  wait time during validation. Investigate those records before interpreting
  the zeros as actual business outcomes.
===============================================================================
*/


/*-----------------------------------------------------------------------------
  1. Total Appointments
  Purpose: Count all appointment records in the cleaned dataset.
-----------------------------------------------------------------------------*/
SELECT
    COUNT(*) AS TotalAppointments
FROM dbo.CleanedAppointments;


/*-----------------------------------------------------------------------------
  2. Total Realized Revenue
  Purpose: Calculate total realized revenue across all appointment records.
-----------------------------------------------------------------------------*/
SELECT
    SUM(RealizedRevenue) AS TotalRevenue
FROM dbo.CleanedAppointments;


/*-----------------------------------------------------------------------------
  3. Appointments by Department
  Purpose: Count appointments by department, from highest to lowest volume.
-----------------------------------------------------------------------------*/
SELECT
    DepartmentName,
    COUNT(*) AS TotalAppointments
FROM dbo.CleanedAppointments
GROUP BY
    DepartmentName
ORDER BY
    TotalAppointments DESC;


/*-----------------------------------------------------------------------------
  4. Revenue by Department
  Purpose: Compare total realized revenue across departments.
-----------------------------------------------------------------------------*/
SELECT
    DepartmentName,
    SUM(RealizedRevenue) AS TotalRevenue
FROM dbo.CleanedAppointments
GROUP BY
    DepartmentName
ORDER BY
    TotalRevenue DESC;


/*-----------------------------------------------------------------------------
  5. Monthly Appointments
  Purpose: Count appointments by year and month in chronological order.
-----------------------------------------------------------------------------*/
SELECT
    [Year],
    [Month],
    MonthName,
    COUNT(*) AS TotalAppointments
FROM dbo.CleanedAppointments
GROUP BY
    [Year],
    [Month],
    MonthName
ORDER BY
    [Year],
    [Month];


/*-----------------------------------------------------------------------------
  6. Monthly Revenue
  Purpose: Calculate realized revenue by year and month.
-----------------------------------------------------------------------------*/
SELECT
    [Year],
    [Month],
    MonthName,
    SUM(RealizedRevenue) AS TotalRevenue
FROM dbo.CleanedAppointments
GROUP BY
