/*
-- Query: creation de la bdd sql

-- Date: 2020-06-22 17:52
*/

CREATE DATABASE yooviz;
CREATE TABLE tag('id' int NOT NULL AUTO_INCREMENT,'label' varchar
(100) NOT NULL, 'category' varchar
(100) NOT NULL,  PRIMARY KEY
(`id`)),

poi
(
    'id' int NOT NULL AUTO_INCREMENT,
    'poi_name' varchar
(100) NOT NULL,
    'adress' VARCHAR
(100) NULL,
    'latitude' FLOAT NOT NULL,
    'longitude' FLOAT NOT NULL,
    'id_poi_tag' INT NULL,
    PRIMARY KEY
(`id`)), 

user
(
    'id' int NOT NULL AUTO_INCREMENT,
    'user_name'varchar
(45) NOT NULL, 
    'password'varchar
(100) NOT NULL, 
    'type_user'varchar
(30) DEFAULT 'tourist' NOT NULL,
    'type_account'varchar
(100) NULL,
    'lastname'varchar
(100) NULL, 
    'firstname'varchar
(100) NULL, 
    'email'nvarchar
(255) CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL, 
    'sex'tinyint NOT NULL, 
    'birthday'date NOT NULL,
    PRIMARY KEY
(`id`)), 

capsule
('id'int NOT NULL AUTO_INCREMENT,'capsule_name' varchar
(100) NOT NULL,
'description'TEXT NOT NULL,
'duration_video' INT,'id_poi' INT NOT NULL,'id_user' INT NOT NULL,'link' TEXT NULL,'url_video' nvarchar
(300) CHARACTER
SET utf8
COLLATE utf8_general_ci  NOT NULL, PRIMARY KEY
(`id`));

ALTER TABLE capsule ADD CONSTRAINT fk_id_poi FOREIGN KEY (id_poi) REFERENCES poi(id);
ALTER TABLE capsule ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES user(id);
ALTER TABLE poi ADD CONSTRAINT fk_id_poi_tag FOREIGN KEY (id_poi_tag) REFERENCES tag(id);
