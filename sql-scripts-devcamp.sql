select courses.courses_name as course, professor.professor_name as professor, avg(grades.grades_amount) as average
from courses_has_students as cs
join courses on cs.courses_courses_id = courses.courses_id
join professor on professor.professor_id = courses.professor_professor_id
join students on  cs.students_id_students = students.id_students
join grades on cs.grades_grades_id = grades.grades_id
group by professor.professor_name;

select students.name, max(grades.grades_amount) as max
from courses_has_students as cs
join students on  cs.students_id_students = students.id_students
join grades on cs.grades_grades_id = grades.grades_id
group by students.name;

select students.name, courses.courses_name
from courses_has_students as cs
join students on  cs.students_id_students = students.id_students
join courses on cs.courses_courses_id = courses.courses_id;
#group by students.name, explain better the question;

select courses.courses_name as course, avg(grades.grades_amount) as average
from courses_has_students as cs
join courses on cs.courses_courses_id = courses.courses_id
join grades on cs.grades_grades_id = grades.grades_id
group by courses.courses_name
order by avg(grades.grades_amount) asc;

select max(j.courses) as course, j.professor, j.student 
from (
select count(courses.courses_name) as courses, professor_name as professor, students.name as student
from courses_has_students as cs
join students on  cs.students_id_students = students.id_students
join courses on cs.courses_courses_id = courses.courses_id
join professor on courses.professor_professor_id = professor.professor_id
group by professor.professor_name, students.name
) as j;

