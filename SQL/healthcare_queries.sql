-- Healthcare Appointment & Operations Dashboard
-- SQL Analysis Queries

-- 1. Total Appointments
SELECT COUNT(*) AS TotalAppointments
FROM CleanedAppointments;


-- 2. Total Revenue
SELECT SUM(RealizedRevenue) AS TotalRevenue
FROM CleanedAppointments;


-- 3. Appointments by Department
SELECT
    DepartmentName,
    COUNT(*) AS TotalAppointments
FROM CleanedAppointments
GROUP BY DepartmentName
ORDER BY TotalAppointments DESC;


-- 4. Revenue by Department
SELECT
    DepartmentName,
    SUM(RealizedRevenue) AS TotalRevenue
FROM CleanedAppointments
GROUP BY DepartmentName
ORDER BY TotalRevenue DESC;


-- 5. Monthly Appointments
SELECT
    Year,
    Month,
    MonthName,
    COUNT(*) AS TotalAppointments
FROM CleanedAppointments
GROUP BY Year, Month, MonthName
ORDER BY Year, Month;


-- 6. Monthly Revenue
SELECT
    Year,
    Month,
    MonthName,
    SUM(RealizedRevenue) AS TotalRevenue
FROM CleanedAppointments
GROUP BY Year, Month, MonthName
ORDER BY Year, Month;


-- 7. Cancellation Rate
SELECT
    COUNT(CASE WHEN IsCancelled = 1 THEN 1 END) * 100.0
        / COUNT(*) AS CancellationRate
FROM CleanedAppointments;


-- 8. No-Show Rate
SELECT
    COUNT(CASE WHEN IsNoShow = 1 THEN 1 END) * 100.0
        / COUNT(*) AS NoShowRate
FROM CleanedAppointments;


-- 9. Average Wait Time by Department
SELECT
    DepartmentName,
    AVG(CAST(WaitTime AS DECIMAL(10,2))) AS AvgWaitTime
FROM CleanedAppointments
GROUP BY DepartmentName
ORDER BY AvgWaitTime DESC;


-- 10. Appointments by Location
SELECT
    LocationName,
    COUNT(*) AS TotalAppointments
FROM CleanedAppointments
GROUP BY LocationName
ORDER BY TotalAppointments DESC;


-- 11. Top 10 Doctors by Realized Revenue
SELECT TOP 10
    DoctorName,
    SUM(RealizedRevenue) AS TotalRevenue
FROM CleanedAppointments
GROUP BY DoctorName
ORDER BY TotalRevenue DESC;


-- 12. Appointment Status
SELECT
    AppointmentStatus,
    COUNT(*) AS AppointmentCount
FROM CleanedAppointments
GROUP BY AppointmentStatus
ORDER BY AppointmentCount DESC;
