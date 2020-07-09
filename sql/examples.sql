INSERT into tag
    (`id`, `category`, `label`)
VALUES
    ('1', 'typePoi', 'Quartier'),
    ('2', 'typePoi', 'Place'),
    ('3', 'typePoi', 'Rue'),
    ('4', 'typePoi', 'Musée'),
    ('5', 'typePoi', 'Monument'),
    ('6', 'typePoi', 'Parc'),
    ('7', 'typePoi', 'Street Art'),
    ('8', 'typePoi', 'Curiosité'),
    ('9', 'typePoi', 'Fontaine'),
    ('10', 'typePoi', 'Statue'),
    ('11', 'typeCapsule', 'Standalone'),
    ('12', 'typeCapsule', 'Jeu de piste'),
    ('13', 'typeCapsule', 'Quizz'),
    ('14', 'thématique', 'Histoire'),
    ('15', 'thématique', 'Architecture'),
    ('16', 'thématique', 'Anecdotes'),
    ('17', 'thématique', 'Beaux-Arts'),
    ('18', 'thématique', 'Cinéma'),
    ('19', 'thématique', 'Musique'),
    ('20', 'thématique', 'Street Art'),
    ('21', 'thématique', 'Politique'),
    ('22', 'style', 'Enfant'),
    ('23', 'style', 'Humour'),
    ('24', 'langue', 'Français'),
    ('25', 'langue', 'Anglais');

INSERT INTO poi
    (`id`,`poi_name`,`adress`,`latitude`,`longitude`, `id_poi_tag`)
VALUES
    ('1', 'Les fusillés lillois', 'Les fusillés lillois, Square Daubenton, 59800 Lille', '50.6379', '3.05166', '5'),
    ('2', 'La place du Théâtre', 'Boulevard Carnot 59800 Lille', '50.637721', '3.064476', '2'),
    ('3', 'Maison Natale du Général de Gaulle', '9 Rue Princesse, 59000 Lille', '50.645995', '3.058665', '4'),
    ('4', 'Musée de l''Hospice Comtesse', '32 rue de la monnaie 59800 Lille', '50.641409', '3.063411', '4'),
    ('5', 'Abbaye de Loos Garden', 'rue des 3 Molettes 59800 Lille', '50.640083', '3.060307', '5'),
    ('6', 'Cathedrale Notre-Dame-de-la-Treille', 'Place Gilleson 59800 Lille', '50.640144', '3.062370', '5');

INSERT INTO user
    (`id`,`user_name`, `password`, `type_user`,`lastname`, `firstname`, `email`, `sex`, `birthday`)
VALUES
    ('1', 'V4g4b0ndage', '188218', 'tourist', 'Dupuis', 'Anne', 'anne.dupuis@wildmail.fr', '0', '1982-06-22'),
    ('2', 'Bob', 'x8985y', 'tourist', 'Marley', 'Bob', 'bob@gmail.com', '1', '1976-01-29'),
    ('3', 'MamaTrotteur', 'yoov17', 'tourist', 'Personna', 'Emma', 'mamatrotteur@gmail.com', '0', '1990-05-23');

INSERT INTO capsule
    (`capsule_name`,`description`,`duration_video`,`id_poi`,`id_user`,`link`,`url_video`)
VALUES
    ('Les Fusillés de Vauban', "Avec BinocleTV, partez à la découverte de Lille. Aujourd'hui, découvrez la statue des Fusillés, devant l'esplanade.", '84', '1', '3', '', 'https://www.youtube.com/watch?v=YNdpZG97MYw&list=PLpmketXDUgwEWeA4bfue83eYQmbdc7lJX'),
    ('La place du théâtre à Lille', 'Visualisé la place du théâtre', '35', '2', '3', '', 'https://www.youtube.com/watch?v=iz0RL4Bf65w'),
    ('Visite HD chez De Gaulle', "Découvrez l'intérieur de la maison natale du Général De Gaulle !", '376', '3', '1', 'http://caline59.free.fr/pps.htm', 'https://youtu.be/hRVPkVNRa0E'  ),
    ('Flaminia vous présente chez De Gaulle !', "Visite dynamique ! Go, les Surmotivés !", '129', '3', '1', '', 'https://youtu.be/kCMREGSIG2s'),
    ("La Maison d'enfance du général de Gaulle", "Pour les journées du patrimoine, la maison natale de Charles de Gaulle à Lille propose des visites guidées gratuites toute la journée. Une occasion à ne pas manquer car le lieu ouvert depuis les années 90 s'apprête à fermer pour un an de travaux et de rénovations.", '144', '3', '1','', 'https://youtu.be/eKWf9T1dGZM'),
    ('Visite du musée de L''hospice Comtesse', 'Coup de projecteur sur l''hospice Comtesse de Lille. ', '148', '4', '2', '', 'https://www.youtube.com/watch?v=rijBb_RodHQ'),
    ('Les Jardins de l''Abbaye de Loos', 'moment de calme et recueillement', '131', '5', '2', '', 'https://youtu.be/W64HsJHYmpA'),
    ('La Cathedrale Notre dame de la Treille', 'un monument chargé d''histoire ', '129', '6', '2', '', 'https://youtu.be/CkFqr4V-MTI');

INSERT INTO rating
    (`comment`,`score`, `id_capsule_rating`, `id_user_rating`)
VALUES
    ('Super vidéo pour un super endroit !', '5', '1', '2'),
    ('', '5', '1', '1'),
    ('Trop cool !', '5', '5', '2'),
    ('Un lieu historique !', '4', '5', '3'),
    ('Nous avons pu y aller lors de nos dernières vacances !', '4', '6', '2');

INSERT INTO course
    (`course_name`, `course_description`, `course_teaser`, `price`, `id_user_course`)
VALUES
    ('Petit tour de Lille', 'Découvrez Lille via certains des lieux historiques les plus importants de cette capitale du Nord !', 'https://youtu.be/kNqTcWyg15E', '5', '1'),
    ('Découvrez Lille', "Notre sélection de points d'intérêt est accompagnée de capsules inédites !", 'https://youtu.be/OHuk52K6wDQ', '3', '2'),
    ('Bienvenue à Lille', 'Découvrez Lille via certains des lieux historiques les plus importants de cette capitale du Nord !', 'https://youtu.be/kNqTcWyg15E', '5', '1'),
    ("C'est le Nord", 'Découvrez Lille via certains des lieux historiques les plus importants de cette capitale du Nord !', 'https://youtu.be/kNqTcWyg15E', '5', '1'),
    ('Lille Lille Lille !', 'Découvrez Lille via certains des lieux historiques les plus importants de cette capitale du Nord !', 'https://youtu.be/kNqTcWyg15E', '5', '1');

INSERT INTO course_step
    (`id_course_course_step`, `id_poi_course_step`, `id_capsule_course_step`)
VALUES
    ('1', '2', '2'),
    ('1', '3', '4'),
    ('1', '4', '6'),
    ('1', '5', '7'),
    ('1', '6', '8'),
    ('2', '1', '1'),
    ('2', '2', '2'),
    ('2', '5', '7'),
    ('2', '6', '8'),
    ('3', '1', '1'),
    ('3', '3', '3'),
    ('3', '6', '8'),
    ('4', '3', '4'),
    ('4', '4', '6'),
    ('4', '5', '7'),
    ('5', '1', '1'),
    ('5', '2', '2'),
    ('5', '6', '8');

INSERT INTO capsule_tag
    (`id_capsule_cap_tag`, `id_tag_cap_tag`)
VALUES
    ('1', '24'),
    ('1', '11'),
    ('1', '14'),
    ('2', '24'),
    ('2', '11'),
    ('2', '14'),
    ('3', '24'),
    ('3', '11'),
    ('3', '16'),
    ('4', '24'),
    ('4', '11'),
    ('4', '21'),
    ('5', '24'),
    ('5', '11'),
    ('5', '14'),
    ('6', '24'),
    ('6', '11'),
    ('6', '14'),
    ('7', '24'),
    ('7', '11'),
    ('7', '16'),
    ('8', '24'),
    ('8', '11'),
    ('8', '15');

INSERT INTO course_tag
    (`id_course_course_tag`, `id_tag_course_tag`)
VALUES
    ('1', '24'),
    ('1', '14'),
    ('1', '21'),
    ('1', '17'),
    ('2', '24'),
    ('2', '14'),
    ('2', '16'),
    ('3', '24'),
    ('3', '19'),
    ('4', '24'),
    ('4', '15'),
    ('5', '24'),
    ('5', '18'),
    ('5', '20');