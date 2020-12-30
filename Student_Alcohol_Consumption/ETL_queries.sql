-- Calculate average drinking throughout the week for female students
SELECT ROUND(AVG(workday_drinking), 2) AS "Average Workday Drinking", ROUND(AVG(weekend_drinking), 2) AS "Average Weekend Drinking"
FROM female_study_habits;

-- Calculate average drinking throughout the week for male students
SELECT ROUND(AVG(workday_drinking), 2) AS "Average Workday Drinking", ROUND(AVG(weekend_drinking), 2) AS "Average Weekend Drinking"
FROM male_study_habits;

-- Calculate average absences for females by age
SELECT age, COUNT(school) AS "Total Students", ROUND(AVG(absences) , 2) AS "Average Absences"
FROM female_study_habits
GROUP BY age
ORDER BY age DESC;

-- Calculate average absences for males by age
SELECT age, COUNT(school) AS "Total Students", ROUND(AVG(absences) , 2) AS "Average Absences"
FROM male_study_habits
GROUP BY age
ORDER BY age DESC;

-- Calculate  the total failure count and weekly study time by those who received extra school support from GP
SELECT COUNT(school) AS "Total Students", school_support, SUM(failure_count) AS "Total Failure Count", ROUND(AVG(weekly_study_time), 2) AS "Weekly Study Time"
FROM gp_study_habits
GROUP BY school_support;

-- Calculate  the total failure count and weekly study time by those who received extra school support from MS
SELECT COUNT(school) AS "Total Students", school_support, SUM(failure_count) AS "Total Failure Count", ROUND(AVG(weekly_study_time), 2) AS "Weekly Study Time"
FROM ms_study_habits
GROUP BY school_support;

-- Calculate the average amount of free time spent and outings attended by GP per age group
SELECT age, COUNT(school), ROUND(AVG(free_time), 2) as "Average Free Time", ROUND(AVG(outings), 2) AS "Average Outings Attended"
FROM gp_study_habits
GROUP BY age
ORDER BY age DESC;

-- Calculate the average amount of free time spent and outings attended by MS per age group
SELECT age, COUNT(school), ROUND(AVG(free_time), 2) as "Average Free Time", ROUND(AVG(outings), 2) AS "Average Outings Attended"
FROM ms_study_habits
GROUP BY age
ORDER BY age DESC;