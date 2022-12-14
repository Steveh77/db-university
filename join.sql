-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.name, students.surname,degrees.name 
FROM `students`
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.name = "Corso di Laurea in Economia";


-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `courses`.name, courses.description,departments.name
FROM `courses`
JOIN departments
ON courses.degree_id = departments.id
WHERE departments.name = "Dipartimento di Neuroscienze";


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`,`teachers`.`surname`, courses.name, courses.description, courses.period
FROM `course_teacher`
JOIN teachers
ON teachers.id = course_teacher.teacher_id
JOIN courses
ON course_teacher.course_id = courses.id
WHERE teachers.name="Fulvio" AND teachers.surname="Amato";


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT *
FROM students
JOIN degrees
ON students.degree_id = degrees.id
JOIN departments
ON degrees.department_id = departments.id
ORDER BY students.surname ASC, students.name ASC;


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT * 
FROM `degrees`
JOIN courses
ON degrees.id = courses.degree_id
JOIN course_teacher
ON courses.degree_id = course_teacher.course_id
JOIN teachers
ON course_teacher.teacher_id = teachers.id;



-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT teachers.name, teachers.surname, teachers.email, departments.name
FROM `teachers`
JOIN course_teacher
ON teachers.id = course_teacher.teacher_id
JOIN courses
ON  course_teacher.course_id = courses.id
JOIN degrees
ON courses.degree_id = degrees.id
JOIN departments
ON degrees.department_id = departments.id
WHERE departments.name = "Dipartimento di Matematica"
GROUP BY teachers.email;

-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami



