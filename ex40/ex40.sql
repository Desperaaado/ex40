CREATE TABLE fancycat (
    id INTEGER PRIMARY KEY,
    eye TEXT,
    color TEXT
);

CREATE TABLE me (
    id INTEGER PRIMARY KEY,
    age INTEGER,
    mood TEXT
);

CREATE TABLE me_fancycat (
    me_id INTEGER,
    cat_id INTEGER 
);

INSERT INTO fancycat (id, eye, color) VALUES (0, 'pretty', 'yellow');
INSERT INTO me (id, age, mood) VALUES (0, 18, 'naive');
INSERT INTO me_fancycat (me_id, cat_id) VALUES (0, 0);
INSERT INTO fancycat (id, eye, color) VALUES (1, 'crazy', 'grey');
INSERT INTO me (id, age, mood) VALUES (1, 23, 'dead');
INSERT INTO me_fancycat VALUES (1, 1);
INSERT INTO fancycat (id, eye, color) VALUES (2, 'tendertears', 'black');
INSERT INTO me_fancycat (me_id, cat_id) VALUES (1, 2);

SELECT * FROM me;
SELECT age, mood FROM me;
SELECT me.mood, me.age 
    FROM me, fancycat, me_fancycat
    WHERE
    me.id = me_fancycat.me_id AND
    fancycat.id = me_fancycat.cat_id AND
    fancycat.eye = 'tendertears';
SELECT id, color FROM fancycat WHERE eye='tendertears';