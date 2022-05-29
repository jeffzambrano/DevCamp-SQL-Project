select * from devcamp_university_schema;
insert into students
values 	(1," Carla"),
		(2, "Raul"),
        (3, "Carlos"),
        (4, "Eduardo"),
		(5, "pablo");
insert into professor
values	(1,"juan"),
		(2,"pedro"),
        (3,"jose"),
        (4,"maria"),
		(5, "juana");
insert into courses
values 	(1, "matematicas",1),
        (2, "biologia",2),
		(3, "ciencias",3),
		(4, "dibujo",4),
		(5, "deportes", 5);

insert into grades
values 	(1, 10),
		(2, 7),
		(3, 6),
		(4, 2),
		(5, 6),
        (6, 4),
        (7,3),
        (8, 8),
        (9, 6),
        (10, 10);
        
insert into courses_has_students
values 	(1, 2, 1),
		(2, 2, 2),
        (3, 2, 3),
        (4, 2, 4),
        (1, 2, 5),
        (5, 2, 6),
        (2, 2, 7),
        (5, 2, 8),
        (4, 2, 9),
        (3, 2, 10);

	