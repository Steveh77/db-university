-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT * 
FROM `students`
JOIN degrees
WHERE degrees.name = "Corso di Laurea in Economia";


-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT * 
FROM `courses`
JOIN departments
WHERE departments.name = "Dipartimento di Neuroscienze";


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT * 
FROM `courses`
JOIN teachers
WHERE teachers.name="Fulvio" AND teachers.surname="Amato";



-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT * 
FROM `students`
JOIN degrees, departments
ORDER BY students.surname ASC;


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT * 
FROM `degrees`
JOIN courses, teachers;



-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT * 
FROM `teachers`
JOIN departments
WHERE departments.name = "Dipartimento di Matematica";

-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per




-- superare ciascuno dei suoi esami



