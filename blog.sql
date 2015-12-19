CREATE TABLE articles 
(
  id int(11) NOT NULL,
  title varchar(255) NOT NULL,
  body varchar(5000) NOT NULL,
  created datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  user_id int(11) NOT NULL
);

INSERT INTO articles (id, title, body, created, modified, user_id) VALUES
(1, Article1, 2015-12-17 09:15:10,2015-12-17 09:15:10, 1),
(2, Article2, 2015-12-17 09:15:24, 2015-12-17 09:15:24, 1);

CREATE TABLE article_tag_relation (
  id int(11) NOT NULL,
  article_id int(11) NOT NULL,
  tag_id int(11) NOT NULL
);

INSERT INTO article_tag_relation (id, article_id, tag_id) VALUES
(1, 1, 2),
(2, 2, 1);

CREATE TABLE comments (
  id int(11) NOT NULL,
  comment varchar(100) NOT NULL,
  article_id int(11) NOT NULL,
  isApproved tinyint(1) NOT NULL DEFAULT 0,
  created datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tags (
  id int(11) NOT NULL,
  name varchar(20) NOT NULL
);

INSERT INTO tags (id, name) VALUES
(1, 'Tag1'),
(3, 'Tag2'),
(4, 'Tag3');

CREATE TABLE users (
  id int(10) UNSIGNED NOT NULL,
  username varchar(50) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  role varchar(10) DEFAULT NULL,
  created datetime DEFAULT NULL,
  modified datetime DEFAULT NULL
);

INSERT INTO users (id, username, password, role, created, modified) VALUES
(1, 'admin', '$2y$10$DbC6C9sNdk6xrLmDFwLHweBWR9.9VsZfZUPnHhwck9Ii0ZmQ.aDxC', 'admin', '2015-12-17 03:33:29', '2015-12-17 03:33:29');

ALTER TABLE articles
  ADD PRIMARY KEY (id);

ALTER TABLE article_tag_relation
  ADD PRIMARY KEY (id);

ALTER TABLE comments
  ADD PRIMARY KEY (id);

ALTER TABLE tags
  ADD PRIMARY KEY (id);

ALTER TABLE users
  ADD PRIMARY KEY (id);

ALTER TABLE articles
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE article_tag_relation
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE comments
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE tags
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE users
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;