/*
-- Query: creation de la bdd sql

-- Date: 2020-06-22 17:52
*/

CREATE DATABASE yooviz;
CREATE TABLE tag 
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `label` varchar(100) NOT NULL, 
    `category`varchar(100) NOT NULL,  
    PRIMARY KEY (`id`)
    ),

poi
(
    `id` int NOT NULL AUTO_INCREMENT,
    `poi_name` varchar(100) NOT NULL,
    `adress` VARCHAR(100) NULL,
    `latitude` FLOAT NOT NULL,
    `longitude` FLOAT NOT NULL,
    `id_poi_tag` INT NULL,
    PRIMARY KEY (`id`)
    ), 

user
(
    `id` int NOT NULL AUTO_INCREMENT,
    `user_name`varchar(45) NOT NULL, 
    `password`varchar(100) NOT NULL, 
    `type_user`varchar(30) DEFAULT 'tourist' NOT NULL,
    `type_account`varchar(100) NULL,
    `lastname`varchar(100) NULL, 
    `firstname`varchar(100) NULL, 
    `email`varchar(255) NOT NULL, 
    `sex`tinyint NOT NULL, 
    `birthday`date NOT NULL,
    PRIMARY KEY(`id`)
    ), 

capsule
(
    `id`int NOT NULL AUTO_INCREMENT,
    `capsule_name` varchar(100) NOT NULL,
    `description`text NOT NULL,
    `duration_video` int NOT NULL,
    `id_poi` int NOT NULL,
    `id_user` int NOT NULL,
    `link` text NULL,
    `url_video` varchar(300) NOT NULL, 
    PRIMARY KEY (`id`)
    ),

rating
(
    `id`int NOT NULL AUTO_INCREMENT,
    `comment` text NULL,
    `score` int NOT NULL,
    `id_capsule_rating` int NOT NULL,
    `id_user_rating` int NOT NULL,
    PRIMARY KEY (`id`)
    ),

course
(
    `id`int NOT NULL AUTO_INCREMENT,
    `course_name` varchar(100) NOT NULL,
    `course_description`text NOT NULL,
    `course_teaser` varchar(300) NOT NULL,
    `price` FLOAT NULL,
    `id_user_course` int NOT NULL,
    PRIMARY KEY (`id`)
    ),

course_step
(
    `id`int NOT NULL AUTO_INCREMENT,
    `id_course_course_step` int NOT NULL,
    `id_poi_course_step` int NOT NULL,
    `id_capsule_course_step` int NOT NULL,
    PRIMARY KEY (`id`)
    ),

capsule_tag
(
    `id`int NOT NULL AUTO_INCREMENT,
    `id_capsule_cap_tag` int NOT NULL,
    `id_tag_cap_tag` int NOT NULL,
    PRIMARY KEY (`id`)
    ),

course_tag
(
    `id`int NOT NULL AUTO_INCREMENT,
    `id_course_course_tag` int NOT NULL,
    `id_tag_course_tag` int NOT NULL,
    PRIMARY KEY (`id`)
    )
);

ALTER TABLE capsule ADD 
CONSTRAINT fk_id_poi 
FOREIGN KEY (id_poi) 
REFERENCES poi(id);

ALTER TABLE capsule ADD 
CONSTRAINT fk_id_user 
FOREIGN KEY (id_user) 
REFERENCES user(id);

ALTER TABLE poi ADD 
CONSTRAINT fk_id_poi_tag 
FOREIGN KEY (id_poi_tag) 
REFERENCES tag(id);

ALTER TABLE rating ADD 
CONSTRAINT fk_id_capsule_rating
FOREIGN KEY (id_capsule_rating) 
REFERENCES capsule(id);

ALTER TABLE rating ADD 
CONSTRAINT fk_id_user_rating
FOREIGN KEY (id_user_rating) 
REFERENCES user(id);

ALTER TABLE course ADD 
CONSTRAINT fk_id_user_course
FOREIGN KEY (id_user_course) 
REFERENCES user(id);

ALTER TABLE course_step ADD 
CONSTRAINT fk_id_course_course_step
FOREIGN KEY (id_course_course_step) 
REFERENCES course(id);

ALTER TABLE course_step ADD 
CONSTRAINT fk_id_poi_course_step
FOREIGN KEY (id_poi_course_step) 
REFERENCES poi(id);

ALTER TABLE course_step ADD 
CONSTRAINT fk_id_capsule_course_step
FOREIGN KEY (id_capsule_course_step) 
REFERENCES capsule(id);

ALTER TABLE capsule_tag ADD 
CONSTRAINT fk_id_capsule_cap_tag
FOREIGN KEY (id_capsule_cap_tag) 
REFERENCES capsule(id);

ALTER TABLE capsule_tag ADD 
CONSTRAINT fk_id_tag_cap_tag
FOREIGN KEY (id_tag_cap_tag) 
REFERENCES tag(id);

ALTER TABLE course_tag ADD 
CONSTRAINT fk_id_course_course_tag
FOREIGN KEY (id_course_course_tag) 
REFERENCES course(id);

ALTER TABLE course_tag ADD 
CONSTRAINT fk_id_tag_course_tag
FOREIGN KEY (id_tag_course_tag) 
REFERENCES tag(id);