CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details VARCHAR NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at timestamp NOT NULL,
completed_at timestamp  NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('clean room', 'Clean your room', 3, date_trunc('second', timestamp '2001-02-16 20:38:40'), date_trunc('second', timestamp '2001-02-16 20:38:40'));
INSERT INTO todos (title, details, priority, created_at) VALUES ('laundry', 'Do your laundry', 2, date_trunc('second', timestamp '2001-02-16 20:38:40'));
INSERT INTO todos (title, details, priority, created_at) VALUES ('walk dog', 'Walk the dog', 1, date_trunc('second', timestamp '2001-02-16 20:38:40'));
INSERT INTO todos (title, details, priority, created_at) VALUES ('get groceries', 'Get some groceries', 2, date_trunc('second', timestamp '2001-02-16 20:38:40'));
INSERT INTO todos (title, details, priority, created_at) VALUES ('sweep', 'Sweep the porch', 1, date_trunc('second', timestamp '2001-02-16 20:38:40'));

SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = date_trunc('second', timestamp '2001-02-16 20:38:40') WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
