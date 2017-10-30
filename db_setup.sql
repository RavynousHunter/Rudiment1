CREATE EXTENSION pgcrypto;

DROP TABLE IF EXISTS Workshop;
CREATE TABLE IF NOT EXISTS Workshop
(
	ID SERIAL PRIMARY KEY,
	Name VARCHAR(256) NOT NULL
);

DROP TABLE IF EXISTS Attendees;
CREATE TABLE IF NOT EXISTS Attendees
(
	ID UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	Name VARCHAR(64) NOT NULL,
	Workshop INTEGER NOT NULL
);

INSERT INTO public.Workshops
 ( Name )
VALUES
 ( 'DevOps 101' ),
 ( 'Cyber Security Seminar' ),
 ( 'Secure SQL' ),
 ( 'Why .Net Is Better' ),
 ( 'Effective C#' ),
 ( 'DotVVM And The End of Javascript' ),
 ( 'Frontend Development With C#' ),
 ( 'Web Programming With Assembly' ),
 ( 'Caffeine And You' ),
 ( 'Ballmer''s Curve And Productivity' ),
 ( 'Substances That Aren''t Coffee' ),
 ( 'ReactJS: An Object Lesson In Failure' ),
 ( 'Fatigue In The Modern University' ),
 ( 'How University Screws You Over' ),
 ( 'Why Your Tuition Is So High' ),
 ( 'Lorem Ipsum Generators In Brainfuck' ),
 ( 'Web APIs in Fortran' ),
 ( 'COBOL For Databases' ),
 ( 'Forth And You' ),
 ( 'Compilers In SQL' ),
 ( 'Good Luck, Sucker' );

INSERT INTO public.Attendees
 ( Name, Workshop  )
VALUES
 ( 'Billy McCord', 17 ),
 ( 'Kayla Payne', 19 ),
 ( 'Holly Wilsey', 21 ),
 ( 'Crazybum Fistlebars', 12 ),
 ( 'Lorem Ipsum Dolor Sit Amet', 1 ),
 ( 'Joe Generic', 7 ),
 ( 'Akira Kurusu', 8 ),
 ( 'Yu Narukami', 8 ),
 ( 'CAPTAIN JACK SPARROW', 21 ),
 ( 'Insanoflex Jones', 2 ),
 ( 'John Johnson', 2 ),
 ( 'Cave Johnson', 4 ),
 ( 'Duke Nukem', 1 ),
 ( 'Fartwhistle Dingleprop', 6 ),
 ( 'Richard Head', 7 ),
 ( 'Immature Joke', 10 ),
 ( 'Jesus Ezekiel Jesus', 15 ),
 ( 'Light Yagami', 19 ),
 ( 'L', 18 ),
 ( 'Kirstyn Howard', 8 ),
 ( 'Chris Blankenship', 16 ),
 ( 'Sterling Archer', 21 ),
 ( 'Tohru Adachi', 20 ),
 ( 'Ryotaro Dojima', 1 ),
 ( 'Chie Satonaka', 2 ),
 ( 'Yukiko Amagi', 3 ),
 ( 'Rise Kujikawa', 4 ),
 ( 'Teddie', 5 ),
 ( 'Yosuke Hanamura', 6 ),
 ( 'Kanji Tatsumi', 7 ),
 ( 'Ichiko Ohya', 8 ),
 ( 'Ryuji Sakamoto', 9 ),
 ( 'Futaba Sakura', 10 ),
 ( 'Sojiro Sakura', 11 ),
 ( 'Morgana', 12 ),
 ( 'Ann Takamaki', 13 ),
 ( 'Makoto Niijima', 14 ),
 ( 'Sae Niijima', 15 ),
 ( 'Yusuke Kitagawa', 16 ),
 ( 'Goro Akechi', 17 ),
 ( 'Nanako Dojima', 18 ),
 ( 'Haru Okumura', 19 ),
 ( 'Masayoshi Shido', 20 );

DROP ROLE IF EXISTS "Owner";
CREATE ROLE "Owner" WITH LOGIN;
GRANT SELECT, UPDATE, INSERT, DELETE ON Attendees, Workshops TO "Owner";
ALTER ROLE "Owner" WITH PASSWORD 'ZnVjazM1MA';
