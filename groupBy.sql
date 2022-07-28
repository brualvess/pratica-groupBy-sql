--Questão 1--
SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;
--Questão 2--
SELECT educations."userId" AS id, COUNT(educations) AS educations
FROM educations GROUP BY "userId";
--Questão 3--
SELECT users.name AS writer, COUNT(testimonials) AS "testimonialCount"
FROM testimonials
JOIN users ON users.id = testimonials."writerId"
WHERE testimonials."writerId" = 435
GROUP BY users.name;
--Questão 4-- 
SELECT  MAX(salary) AS "maximumSalary", roles.name AS roles
FROM jobs 
JOIN roles ON roles.id = jobs."roleId"
WHERE jobs.active = true
GROUP BY roles.name ORDER BY "maximumSalary" ASC;