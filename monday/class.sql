-- SQL (Structured Query Language) 
 -- CRUD (CREATE READ UPDATE DELETE) 

 -- JOINS

 /*
 CREATE TABLE posts (

 	postid SERIAL PRIMARY KEY,
  	title VARCHAR(50) NOT NULL, 
  	body TEXT NOT NULL, 
  	username VARCHAR(50) NOT NULL, 
  	date_published TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- get current datetime

 ) */

-- INSERT INTO posts(title, body, username) VALUES('Hello JS','Hello JS body','marydoe'); 


/* ALTER TABLE posts 
ADD COLUMN abstract TEXT  */

--SELECT "Abstract" from posts; 


--SELECT postid, title, body, username, date_published FROM posts; 


--ALTER TABLE posts 
--ADD COLUMN is_published BOOLEAN


--SELECT postid, title, body FROM posts WHERE username = 'marydoe';

--SELECT postid, title, body FROM posts WHERE username = 'johndoe' AND is_published = TRUE

-- DELETE 
/*
DELETE FROM posts 
WHERE postid = 2 


-- UPDATE 
UPDATE posts 
SET username = 'sarahdoe' 
WHERE postid = 3 
*/

-- UPDATE posts SET username = 'sarahdoe' WHERE postid = 3 


--SELECT * FROM comments; 

--INSERT INTO comments(username,subject,body,post_id) 
--VALUES('jerry','Comment 21','Comment 21 Body',1) 

--SELECT commentid, subject, body, username FROM comments WHERE post_id = 1

-- title, body, username, date_published, subject(comments), body(comments) username(comments) 

SELECT posts.title, posts.body,posts.username, comments.subject, comments.body FROM posts JOIN comments ON posts.postid = comments.post_id 