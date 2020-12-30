-- Calculate average drinking throughout the week for female students
SELECT ROUND(AVG(workday_drinking), 2) AS "Average Workday Drinking", ROUND(AVG(weekend_drinking), 2) AS "Average Weekend Drinking"
FROM female_study_habits;

-- Calculate average drinking throughout the week for male students
SELECT ROUND(AVG(workday_drinking), 2) AS "Average Workday Drinking", ROUND(AVG(weekend_drinking), 2) AS "Average Weekend Drinking"
FROM male_study_habits;