USE less_04;

CREATE TABLE test_a (id INT,test varchar(10));

CREATE TABLE test_b (id INT);

INSERT INTO test_a(id, test)
VALUES (10, 'A'),(20, 'A'),(30, 'F'),(40, 'D'),(50, 'C');

INSERT INTO test_b(id)
VALUES (10),(30),(50);

SELECT test_a.*
FROM test_a
LEFT JOIN test_b ON test_b.id = test_a.id
WHERE test_b.id IS NULL;
