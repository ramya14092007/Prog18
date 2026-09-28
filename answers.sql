CREATE OR REPLACE FUNCTION COUNT_STUDENTS (
    p_DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN v_count;
END;
/
