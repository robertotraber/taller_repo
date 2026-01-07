Students: id PK, name, date_of_birth, email
Teachers: id PK, name, email, subject
Classes: id PK, name, teacher_id FK
Assignments id PK, class_id FK, title, due_date
Grades id PK, assignment_id FK, student_id FK, grade
Attendance id PK, class_id FK, students_id FK, date, status