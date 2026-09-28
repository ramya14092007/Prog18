SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION COUNT_STUDENTS (
    DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    student_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE Student.DepartmentID = DepartmentID;

    RETURN student_count;
END;
/
