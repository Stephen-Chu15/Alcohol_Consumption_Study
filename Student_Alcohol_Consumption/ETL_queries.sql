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