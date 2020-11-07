DROP DATABASE IF EXISTS healthwise ;

CREATE DATABASE healthwise ;

USE healthwise ;

CREATE TABLE body (
    id int NOT NULL AUTO_INCREMENT,
    part varchar(20) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE bodypart(
    id int NOT NULL AUTO_INCREMENT,
    organ varchar(20) NOT NULL,
    body_id int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT FK_bodyID FOREIGN KEY (body_id) REFERENCES body(id)
);

CREATE TABLE symptoms(
    id int NOT NULL AUTO_INCREMENT,
    symptom varchar(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE causes(
    id int NOT NULL AUTO_INCREMENT,
    illness varchar(200) NOT NULL,
    bodyp_id int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT FK_bodypID FOREIGN KEY (bodyp_id) REFERENCES bodypart (id)
);

CREATE TABLE commonsymptoms(
    sympt_id int NOT NULL,
    bdpart_id int NOT NULL,
    CONSTRAINT FK_symptID FOREIGN KEY (sympt_id) REFERENCES symptoms (id),
    CONSTRAINT FK_bdpartID FOREIGN KEY (bdpart_id) REFERENCES bodypart (id)
);

CREATE TABLE suspect(
    cause_id int NOT NULL,
    symptom_id int NOT NULL,
    CONSTRAINT FK_causeID FOREIGN KEY (cause_id) REFERENCES causes(id),
    CONSTRAINT FK_symptomID FOREIGN KEY (symptom_id) REFERENCES symptoms(id)
);

INSERT INTO body(id,part) VALUES(1,"head");
INSERT INTO body(id,part) VALUES(2,"upperbody");
INSERT INTO body(id,part) VALUES(3,"lowerbody");

INSERT INTO bodypart(id,organ,body_id) VALUES(1,"brain",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(2,"eyes",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(3,"ears",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(4,"nose",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(5,"lips",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(6,"tongue",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(7,"jaw",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(8,"neck",1);

INSERT INTO bodypart(id,organ,body_id) VALUES(9,"esophagus",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(10,"lung",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(11,"heart",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(12,"right_arm",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(13,"left_arm",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(14,"elbows",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(15,"hands",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(16,"fingers",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(17,"liver",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(18,"spleen",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(19,"stomach",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(20,"pancreas",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(21,"gallbladder",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(22,"kidneys",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(23,"small_intestin",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(24,"colon",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(25,"bladder",2);

INSERT INTO bodypart(id,organ,body_id) VALUES(26,"testicles",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(27,"vagina",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(28,"male_genital",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(29,"female_genital",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(30,"anus",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(31,"left_leg",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(32,"right_leg",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(33,"knees",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(34,"foot",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(35,"heel",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(36,"toes",3);

INSERT INTO symptoms(id,symptom) VALUES(1,"fever");
INSERT INTO symptoms(id,symptom) VALUES(2,"pain");
INSERT INTO symptoms(id,symptom) VALUES(3,"discomfort");
INSERT INTO symptoms(id,symptom) VALUES(4,"aches");
INSERT INTO symptoms(id,symptom) VALUES(5,"confusing");
INSERT INTO symptoms(id,symptom) VALUES(6,"badvision");
INSERT INTO symptoms(id,symptom) VALUES(7,"whistle");
INSERT INTO symptoms(id,symptom) VALUES(8,"seizure");
INSERT INTO symptoms(id,symptom) VALUES(9,"heat");
INSERT INTO symptoms(id,symptom) VALUES(10,"coughing");
INSERT INTO symptoms(id,symptom) VALUES(11,"sneezing");
INSERT INTO symptoms(id,symptom) VALUES(12,"burping");
INSERT INTO symptoms(id,symptom) VALUES(13,"vomiting");
INSERT INTO symptoms(id,symptom) VALUES(14,"swelling");
INSERT INTO symptoms(id,symptom) VALUES(15,"thorn");
INSERT INTO symptoms(id,symptom) VALUES(16,"hallucinations");
INSERT INTO symptoms(id,symptom) VALUES(17,"hard swallowing");

INSERT INTO symptoms(id,symptom) VALUES(18,"hard breathing");
INSERT INTO symptoms(id,symptom) VALUES(19,"phlegm");
INSERT INTO symptoms(id,symptom) VALUES(20,"chest tightness");
INSERT INTO symptoms(id,symptom) VALUES(21,"palpitations");
INSERT INTO symptoms(id,symptom) VALUES(22,"fast heart beat");
INSERT INTO symptoms(id,symptom) VALUES(23,"cold body parts");
INSERT INTO symptoms(id,symptom) VALUES(24,"dizziness");
INSERT INTO symptoms(id,symptom) VALUES(25,"light head");
INSERT INTO symptoms(id,symptom) VALUES(26,"numbness");
INSERT INTO symptoms(id,symptom) VALUES(27,"gas");
INSERT INTO symptoms(id,symptom) VALUES(28,"bloat");
INSERT INTO symptoms(id,symptom) VALUES(29,"skin redness");
INSERT INTO symptoms(id,symptom) VALUES(30,"skin darkness");
INSERT INTO symptoms(id,symptom) VALUES(31,"skin tightness");
INSERT INTO symptoms(id,symptom) VALUES(32,"redness");
INSERT INTO symptoms(id,symptom) VALUES(33,"whiteness");
INSERT INTO symptoms(id,symptom) VALUES(34,"burn");
INSERT INTO symptoms(id,symptom) VALUES(35,"skin discoloration");
INSERT INTO symptoms(id,symptom) VALUES(36,"bleeding");
INSERT INTO symptoms(id,symptom) VALUES(37,"blurry vision");
INSERT INTO symptoms(id,symptom) VALUES(38,"yellowish");
INSERT INTO symptoms(id,symptom) VALUES(39,"headache");
INSERT INTO symptoms(id,symptom) VALUES(40,"sensitive to light");
INSERT INTO symptoms(id,symptom) VALUES(41,"mucus");
INSERT INTO symptoms(id,symptom) VALUES(42,"bad nighttime vision");
INSERT INTO symptoms(id,symptom) VALUES(43,"strange feeling");
INSERT INTO symptoms(id,symptom) VALUES(44,"reduce in vision");
INSERT INTO symptoms(id,symptom) VALUES(45,"shadow over vision");
INSERT INTO symptoms(id,symptom) VALUES(46,"watery eye");
INSERT INTO symptoms(id,symptom) VALUES(47,"tired eye");
INSERT INTO symptoms(id,symptom) VALUES(48,"nausea");
INSERT INTO symptoms(id,symptom) VALUES(49,"difficule color distinguishing");
INSERT INTO symptoms(id,symptom) VALUES(50,"spots move when moving eye");
INSERT INTO symptoms(id,symptom) VALUES(51,"squinting");
INSERT INTO symptoms(id,symptom) VALUES(52,"vision loss");
INSERT INTO symptoms(id,symptom) VALUES(53,"flashes");
INSERT INTO symptoms(id,symptom) VALUES(54,"double vision");
INSERT INTO symptoms(id,symptom) VALUES(55,"eyes not moving together");
INSERT INTO symptoms(id,symptom) VALUES(56,"memory loss");
INSERT INTO symptoms(id,symptom) VALUES(57,"difficulty concentrating");
INSERT INTO symptoms(id,symptom) VALUES(58,"confusion");
INSERT INTO symptoms(id,symptom) VALUES(59,"mood changes");
INSERT INTO symptoms(id,symptom) VALUES(60,"fatigue");
INSERT INTO symptoms(id,symptom) VALUES(61,"lump");
INSERT INTO symptoms(id,symptom) VALUES(62,"staring spell");
INSERT INTO symptoms(id,symptom) VALUES(63,"loss of awarness");
INSERT INTO symptoms(id,symptom) VALUES(64,"anexiety");
INSERT INTO symptoms(id,symptom) VALUES(65,"deja vu");
INSERT INTO symptoms(id,symptom) VALUES(66,"out of balance");
INSERT INTO symptoms(id,symptom) VALUES(67,"hearing loss");
INSERT INTO symptoms(id,symptom) VALUES(68,"itchy feeling");
INSERT INTO symptoms(id,symptom) VALUES(69,"bad breath");
INSERT INTO symptoms(id,symptom) VALUES(70,"running nose");
INSERT INTO symptoms(id,symptom) VALUES(71,"postnasal drip");
INSERT INTO symptoms(id,symptom) VALUES(72,"loss of taste");
INSERT INTO symptoms(id,symptom) VALUES(73,"loss of smell");
INSERT INTO symptoms(id,symptom) VALUES(74,"teeth pain");
INSERT INTO symptoms(id,symptom) VALUES(75,"lump");
INSERT INTO symptoms(id,symptom) VALUES(76,"white papules");
INSERT INTO symptoms(id,symptom) VALUES(77,"gum inflammation");
INSERT INTO symptoms(id,symptom) VALUES(78,"inflammation");
INSERT INTO symptoms(id,symptom) VALUES(79,"sensitivity over hot and cold");
INSERT INTO symptoms(id,symptom) VALUES(80,"ulcer");
INSERT INTO symptoms(id,symptom) VALUES(81,"teeth loss");
INSERT INTO symptoms(id,symptom) VALUES(82,"small hands and feet");
INSERT INTO symptoms(id,symptom) VALUES(83,"white spots");
INSERT INTO symptoms(id,symptom) VALUES(84,"tongue stick out of mouth");
INSERT INTO symptoms(id,symptom) VALUES(85,"large tongue");
INSERT INTO symptoms(id,symptom) VALUES(86,"hypoglycemia");
INSERT INTO symptoms(id,symptom) VALUES(87,"nervousness");
INSERT INTO symptoms(id,symptom) VALUES(88,"difficulty sleeping");
INSERT INTO symptoms(id,symptom) VALUES(89,"heat sensitivity");
INSERT INTO symptoms(id,symptom) VALUES(90,"weight loss");
INSERT INTO symptoms(id,symptom) VALUES(91,"chest pain");
INSERT INTO symptoms(id,symptom) VALUES(92,"pale skin");
INSERT INTO symptoms(id,symptom) VALUES(93,"problem talking or chewing");
INSERT INTO symptoms(id,symptom) VALUES(94,"drooling");
INSERT INTO symptoms(id,symptom) VALUES(95,"ear infection");
INSERT INTO symptoms(id,symptom) VALUES(96,"earache");
INSERT INTO symptoms(id,symptom) VALUES(97,"disrupted sleep");
INSERT INTO symptoms(id,symptom) VALUES(98,"difficulty opening the mouth");
INSERT INTO symptoms(id,symptom) VALUES(99,"weakness");
INSERT INTO symptoms(id,symptom) VALUES(100,"decrease feeling in arms or legs");
INSERT INTO symptoms(id,symptom) VALUES(101,"grinding or popping noise");
INSERT INTO symptoms(id,symptom) VALUES(102,"lymph nodes swollen");
INSERT INTO symptoms(id,symptom) VALUES(103,"swollen liver or spleen");
INSERT INTO symptoms(id,symptom) VALUES(104,"rash");
INSERT INTO symptoms(id,symptom) VALUES(105,"sore throat");
INSERT INTO symptoms(id,symptom) VALUES(106,"voice hoarseness");
INSERT INTO symptoms(id,symptom) VALUES(107,"heartburn");
INSERT INTO symptoms(id,symptom) VALUES(108,"choking on food");
INSERT INTO symptoms(id,symptom) VALUES(109,"sensation of lump in throat");
INSERT INTO symptoms(id,symptom) VALUES(110,"loss of appetite");
INSERT INTO symptoms(id,symptom) VALUES(111,"blood in stool");
INSERT INTO symptoms(id,symptom) VALUES(112,"feeling faint");
INSERT INTO symptoms(id,symptom) VALUES(113,"drooling");
INSERT INTO symptoms(id,symptom) VALUES(114,"tight chest");
INSERT INTO symptoms(id,symptom) VALUES(115,"shortness of breath");
INSERT INTO symptoms(id,symptom) VALUES(116,"fast breathing");
INSERT INTO symptoms(id,symptom) VALUES(117,"wheezing");
INSERT INTO symptoms(id,symptom) VALUES(118,"chest infection");
INSERT INTO symptoms(id,symptom) VALUES(119,"bloody cough");
INSERT INTO symptoms(id,symptom) VALUES(120,"sweating");
INSERT INTO symptoms(id,symptom) VALUES(121,"irregular heartbeat");
INSERT INTO symptoms(id,symptom) VALUES(122,"weight gain or loss");
INSERT INTO symptoms(id,symptom) VALUES(123,"swollen ankles or feet");
INSERT INTO symptoms(id,symptom) VALUES(124,"sever and sudden pain in tummy");
INSERT INTO symptoms(id,symptom) VALUES(125,"feeling a pop in joints");
INSERT INTO symptoms(id,symptom) VALUES(126,"bruises");
INSERT INTO symptoms(id,symptom) VALUES(127,"loss of ability to move");
INSERT INTO symptoms(id,symptom) VALUES(128,"joint tenderness");
INSERT INTO symptoms(id,symptom) VALUES(129,"stiffness");
INSERT INTO symptoms(id,symptom) VALUES(130,"tenderness");
INSERT INTO symptoms(id,symptom) VALUES(131,"blisters");
INSERT INTO symptoms(id,symptom) VALUES(132,"tingling");

/* symptoms and body part */

/* brain */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,1);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,1);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,1);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(5,1);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(8,1);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(16,1);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(25,1);

/* eye */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,2);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,2);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,2);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,2);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(6,2);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,2);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(32,2);

/* ears */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,3);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,3);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,3);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(7,3);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(9,3);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(21,3);

/* nose */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,4);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(11,4);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(19,4);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,4);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(29,4);

/* lips */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,5);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,5);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,5);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(15,5);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(26,5);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,5);

/* tongue */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,6);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,6);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(30,6);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(32,6);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(33,6);

/* jaw */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,7);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,7);

/* neck */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,8);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,8);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(9,8);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(10,8);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,8);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(17,8);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(19,8);

/* esophagus */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,9);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,9);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(17,9);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(34,9);

/* lung */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,10);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(7,10);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(10,10);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(18,10);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(19,10);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(20,10);

/* heart */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,11);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,11);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(20,11);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(21,11);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(22,11);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(25,11);

/* right_arm */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,12);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,12);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(9,12);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,12);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(29,12);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(30,12);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,12);

/* left_arm */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(9,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(26,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(29,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(30,13);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,13);

/* elbows */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,14);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,14);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,14);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,14);

/* hands */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,15);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,15);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,15);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,15);

/* fingers */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,16);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,16);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,16);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,16);

/* liver */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,17);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,17);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,17);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,17);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,17);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(35,17);

/* spleen */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,18);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,18);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,18);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,18);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,18);

/* stomach */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(12,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(12,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(27,19);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,19);

/* pancreas */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,20);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,20);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,20);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,20);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(17,20);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,20);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(35,20);

/* gallbladder */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,21);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,21);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,21);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,21);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,21);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(35,21);

/* kidneys */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,22);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,22);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,22);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,22);

/* small_intestin */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(12,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(12,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(27,23);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,23);

/* colon */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(1,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(12,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(12,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(13,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(27,24);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(28,24);

/* bladder */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,25);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,25);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,25);

/* testicules */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(36,26);

/* vagina */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(36,27);

/* male_genital */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,26);

/* female_genital */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,26);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,26);

/* anus */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,27);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(36,27);

/* left_leg */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(9,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(26,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(29,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(30,28);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,28);

/* right_leg */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(4,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(9,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(14,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(26,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(29,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(30,29);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,29);

/* knee */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,30);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,30);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,30);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,30);

/* foot */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,31);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,31);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,31);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,31);

/* heel */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,32);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,32);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,32);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,32);

/* toes */

INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(2,33);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(3,33);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(23,33);
INSERT INTO commonsymptoms(sympt_id,bdpart_id) VALUES(31,33);

/* common brain problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(20,"Dementias",1);
INSERT INTO causes(id,illness,bodyp_id) VALUES(21,"cancer",1);
INSERT INTO causes(id,illness,bodyp_id) VALUES(22,"epilepsy",1);
INSERT INTO causes(id,illness,bodyp_id) VALUES(23,"stroke",1);
INSERT INTO causes(id,illness,bodyp_id) VALUES(24,"Alzheimer",1);
INSERT INTO causes(id,illness,bodyp_id) VALUES(25,"migraine",1);

/* common eye problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(1,"Macular Degeneration",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(2,"Cataracts",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(3,"Glaucoma",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(4,"Diabetic Retinopathy",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(5,"Dry Eyes Syndrome",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(6,"Conjunctivitis (Pinkeye)",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(7,"Retinal Detachment",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(8,"Uveitis",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(9,"Eyestrain",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(10,"Night Blindness (Nyctalopia)",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(11,"Color Blindness",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(12,"Eye Floaters",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(13,"Nearsightedness (Myopia)",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(14,"Farsightedness (Hypermetropia)",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(15,"Astigmatism",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(16,"Presbyopia",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(17,"Proptosis",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(18,"Strabismus (Crossed Eyes)",2);
INSERT INTO causes(id,illness,bodyp_id) VALUES(19,"Macular Edema",2);

/* common ear problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(26,"Balance Disorders",3);
INSERT INTO causes(id,illness,bodyp_id) VALUES(27,"Cholesteatoma",3);
INSERT INTO causes(id,illness,bodyp_id) VALUES(28,"Ear Infections",3);
INSERT INTO causes(id,illness,bodyp_id) VALUES(29,"Ear Ringing (tinnitus)",3);
INSERT INTO causes(id,illness,bodyp_id) VALUES(30,"Hearing Loss",3);
INSERT INTO causes(id,illness,bodyp_id) VALUES(31,"Otitis",3);
INSERT INTO causes(id,illness,bodyp_id) VALUES(32,"Perforated eardrum",3);

/* common nose problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(33,"Sinusitis",4);
INSERT INTO causes(id,illness,bodyp_id) VALUES(34,"Nasal & Sinus Polyps",4);
INSERT INTO causes(id,illness,bodyp_id) VALUES(35,"flu",4);
INSERT INTO causes(id,illness,bodyp_id) VALUES(36,"Smell and Taste Disorders",4);
INSERT INTO causes(id,illness,bodyp_id) VALUES(37,"Allergy",4);
INSERT INTO causes(id,illness,bodyp_id) VALUES(38,"Viral Infection",4);

/* common lips problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(39,"Fordyce Glands",5);
INSERT INTO causes(id,illness,bodyp_id) VALUES(40,"Oral Candidiasis",5);
INSERT INTO causes(id,illness,bodyp_id) VALUES(41,"Oral Leukoplakia",5);
INSERT INTO causes(id,illness,bodyp_id) VALUES(42,"Cold Sores (Herpetic Gingivostomatitis)",5);
INSERT INTO causes(id,illness,bodyp_id) VALUES(43,"Apthous Ulcers",5);
INSERT INTO causes(id,illness,bodyp_id) VALUES(44,"Oral Lichen Planus",5);
INSERT INTO causes(id,illness,bodyp_id) VALUES(45,"Mouth Cancer",5);

/* common tongue problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(46,"Down Syndrome",6);
INSERT INTO causes(id,illness,bodyp_id) VALUES(47,"Tongue Cancer",6);
INSERT INTO causes(id,illness,bodyp_id) VALUES(48,"Beckwith-Wiedemann Syndrome",6);
INSERT INTO causes(id,illness,bodyp_id) VALUES(49,"An Overactive Thyroid",6);
INSERT INTO causes(id,illness,bodyp_id) VALUES(50,"Leukemia",6);
INSERT INTO causes(id,illness,bodyp_id) VALUES(51,"Anemia",6);

/* common jaw problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(52,"Jaw Fracture",7);
INSERT INTO causes(id,illness,bodyp_id) VALUES(53,"Dislocated Jaw",7);
INSERT INTO causes(id,illness,bodyp_id) VALUES(54,"Cleft Palate",7);
INSERT INTO causes(id,illness,bodyp_id) VALUES(55,"bruxism (teeth grinding)",7); 
INSERT INTO causes(id,illness,bodyp_id) VALUES(56,"Wisdom Tooth",7); 
INSERT INTO causes(id,illness,bodyp_id) VALUES(57,"Jawbone Cancer",7);

/* common neck problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(58,"Neck Fracture (Cervical Vertebrae)",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(59,"Neck Sprain",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(60,"Pinched Nerve",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(61,"Spondylosis, or Arthritis In The Neck",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(62,"Whiplash",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(63,"Infected Tooth",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(64,"Cold or Flu",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(65,"Mononucleosis (Mono)",8);
INSERT INTO causes(id,illness,bodyp_id) VALUES(66,"Neck Cancer",8);

/* common esophagus problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(67,"Achalasia",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(68,"Barrett's Esophagus",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(69,"Esophageal Cancer",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(70,"Gastroesophageal Reflux Disease (GERD)",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(71,"Gastroparesis",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(72,"Peptic Ulcer Disease",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(73,"Swallowing Disorders",9);

/* common lung problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(74,"Asthma",10);
INSERT INTO causes(id,illness,bodyp_id) VALUES(75,"Pneumothorax",10);
INSERT INTO causes(id,illness,bodyp_id) VALUES(76,"Bronchitis",10);
INSERT INTO causes(id,illness,bodyp_id) VALUES(77,"COPD (Chronic Obstructive Pulmonary Disease)",10);
INSERT INTO causes(id,illness,bodyp_id) VALUES(78,"Lung Cancer",10);
INSERT INTO causes(id,illness,bodyp_id) VALUES(79,"Pneumonia",10);
INSERT INTO causes(id,illness,bodyp_id) VALUES(80,"Pulmonary embolus",10);

/* common heart problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(81,"Coronary Artery Disease ( CAD )",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(82,"Heart Failure",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(83,"Arrhythmia",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(84,"Valvular Heart Disease",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(85,"Aortic Aneurysms",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(86,"Heart Infections",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(87,"Heart Problems At Birth",11);
INSERT INTO causes(id,illness,bodyp_id) VALUES(88,"Heart Attack",11);

/* common right_arm problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(89,"Tendinitis and Bursitis",12);
INSERT INTO causes(id,illness,bodyp_id) VALUES(90,"Sprains",12);
INSERT INTO causes(id,illness,bodyp_id) VALUES(91,"Dislocations",12);
INSERT INTO causes(id,illness,bodyp_id) VALUES(92,"Bone Fractures",12);
INSERT INTO causes(id,illness,bodyp_id) VALUES(93,"Nerve Problems",12);
INSERT INTO causes(id,illness,bodyp_id) VALUES(94,"Osteoarthritis",12);

/* common left_arm problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(95,"Tendinitis and Bursitis",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(96,"Sprains",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(97,"Dislocations",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(98,"Bone Fractures",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(99,"Nerve Problems",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(100,"Osteoarthritis",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(101,"High Blood Pressure",13);
INSERT INTO causes(id,illness,bodyp_id) VALUES(102,"Heart Problems",13);

/* common elbow problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(103,"Arthritis",14);
INSERT INTO causes(id,illness,bodyp_id) VALUES(104,"Cellulitis",14);
INSERT INTO causes(id,illness,bodyp_id) VALUES(105,"Tumors",14);
INSERT INTO causes(id,illness,bodyp_id) VALUES(106,"Ulnar Nerve Entrapment",14);
INSERT INTO causes(id,illness,bodyp_id) VALUES(107,"Osteochondritis Dissecans",14);
INSERT INTO causes(id,illness,bodyp_id) VALUES(108,"Tendon Inflammation",14);

/* common hand problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(109,"Carpal Tunnel Syndrome",15);
INSERT INTO causes(id,illness,bodyp_id) VALUES(110,"Arthritis",15);
INSERT INTO causes(id,illness,bodyp_id) VALUES(111,"Dupuytren's Disease",15);
INSERT INTO causes(id,illness,bodyp_id) VALUES(112,"Ganglion Cysts",15);

/* common fingers problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(113,"Carpal Tunnel Syndrome",16);
INSERT INTO causes(id,illness,bodyp_id) VALUES(114,"Arthritis",16);
INSERT INTO causes(id,illness,bodyp_id) VALUES(115,"Dupuytren's Disease",16);
INSERT INTO causes(id,illness,bodyp_id) VALUES(116,"Ganglion Cysts",16);

/* common liver problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(117,"hepatitis A, B, C",17);
INSERT INTO causes(id,illness,bodyp_id) VALUES(118,"Cirrhosis",17);
INSERT INTO causes(id,illness,bodyp_id) VALUES(119,"Liver Cancer",17);
INSERT INTO causes(id,illness,bodyp_id) VALUES(120,"Hemochromatosis",17);
INSERT INTO causes(id,illness,bodyp_id) VALUES(121,"Wilson Disease",17);
INSERT INTO causes(id,illness,bodyp_id) VALUES(122,"Fatty Liver Disease",17);

/* common spleen problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(123,"Malaria",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(124,"Hodgkin's Disease",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(125,"Leukemia",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(126,"Heart Failure",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(127,"Cirrhosis",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(128,"Tumors",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(129,"Viral, Bacterial, or Parasitic Infections",18);
INSERT INTO causes(id,illness,bodyp_id) VALUES(130,"Rheumatoid Arthritis",18);

/* common stomach problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(131,"Rheumatoid Gastroesophageal Reflux Disease (GERD)",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(132,"Peptic Ulcer Disease (PUD)",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(133,"Stomach Flu",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(134,"Gluten Sensitivity and Celiac Disease",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(135,"Inflammatory Bowel Disease (IBD)",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(136,"Irritable Bowel Syndrome (IBS)",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(137,"Constipation",19);
INSERT INTO causes(id,illness,bodyp_id) VALUES(138,"Stomach Cancer",19);

/* common pancreas problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(139,"Pancreas Malfunction",20);
INSERT INTO causes(id,illness,bodyp_id) VALUES(140,"Pancreatitis",20);
INSERT INTO causes(id,illness,bodyp_id) VALUES(141,"EAR",20);
INSERT INTO causes(id,illness,bodyp_id) VALUES(142,"Cystic Fibrosis",20);
INSERT INTO causes(id,illness,bodyp_id) VALUES(143,"Pancreatic Cancer",20);
INSERT INTO causes(id,illness,bodyp_id) VALUES(145,"Diabetes",20);

/* common gallbladder problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(146,"Gallstones",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(147,"Cholecystitis",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(148,"Choledocholithiasis",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(149,"Acalculous Gallbladder Disease",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(150,"Biliary Dyskinesia",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(151,"Sclerosing Cholangitis",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(152,"Gallbladder Cancer",21);
INSERT INTO causes(id,illness,bodyp_id) VALUES(153,"Gallbladder Polyps",21);

/* common kidneys problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(154,"Chronic kidney disease",22);
INSERT INTO causes(id,illness,bodyp_id) VALUES(155,"Kidney stones",22);
INSERT INTO causes(id,illness,bodyp_id) VALUES(156,"Glomerulonephritis",22);
INSERT INTO causes(id,illness,bodyp_id) VALUES(157,"Polycystic kidney disease",22);
INSERT INTO causes(id,illness,bodyp_id) VALUES(158,"Urinary tract infections",22);
INSERT INTO causes(id,illness,bodyp_id) VALUES(159,"Kidney Failure",22);
INSERT INTO causes(id,illness,bodyp_id) VALUES(160,"Kidney Cancer",22);

/* common small_intestin problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(161,"Celiac Disease",23);
INSERT INTO causes(id,illness,bodyp_id) VALUES(162,"Crohn's Disease",23);
INSERT INTO causes(id,illness,bodyp_id) VALUES(163,"Infections",23);
INSERT INTO causes(id,illness,bodyp_id) VALUES(164,"Intestinal Cancer",23);
INSERT INTO causes(id,illness,bodyp_id) VALUES(165,"Intestinal Obstruction",23);
INSERT INTO causes(id,illness,bodyp_id) VALUES(166,"Irritable Bowel Dyndrome",23);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Ulcers",23);

/* common bladder problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(168,"Cystitis",25);
INSERT INTO causes(id,illness,bodyp_id) VALUES(169,"Urinary Incontinence",25);
INSERT INTO causes(id,illness,bodyp_id) VALUES(170,"Interstitial Cstitis",25);
INSERT INTO causes(id,illness,bodyp_id) VALUES(171,"Overactive Bladder",25);

/* common testicules problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(172,"Epididymitis",26);
INSERT INTO causes(id,illness,bodyp_id) VALUES(173,"Hydrocele",26);
INSERT INTO causes(id,illness,bodyp_id) VALUES(174,"Testicular torsion",26);
INSERT INTO causes(id,illness,bodyp_id) VALUES(175,"Varicocele",26);
INSERT INTO causes(id,illness,bodyp_id) VALUES(176,"Orchitis",26);
INSERT INTO causes(id,illness,bodyp_id) VALUES(177,"Spermatocele",26);
INSERT INTO causes(id,illness,bodyp_id) VALUES(178,"Testicule Cancer",26);

/* common vagina problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(179,"Infections",27);
INSERT INTO causes(id,illness,bodyp_id) VALUES(180,"chlamydia",27);
INSERT INTO causes(id,illness,bodyp_id) VALUES(181,"gonorrhoea",27);
INSERT INTO causes(id,illness,bodyp_id) VALUES(182,"trichomoniasis",27);
INSERT INTO causes(id,illness,bodyp_id) VALUES(183,"Testicule",27);

/* common male_genital problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(184,"Scrotal Problems",28);
INSERT INTO causes(id,illness,bodyp_id) VALUES(185,"An Inguinal Hernia",28);
INSERT INTO causes(id,illness,bodyp_id) VALUES(186,"Hypospadias",28);
INSERT INTO causes(id,illness,bodyp_id) VALUES(187,"Undescended Testicles (Cryptorchidism)",28);

/* common female_genital problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(188,"Human Papillomavirus (HPV)",29);
INSERT INTO causes(id,illness,bodyp_id) VALUES(189,"Infection Of The Cervix (Cervicitis)",29);
INSERT INTO causes(id,illness,bodyp_id) VALUES(190,"Sexually Transmitted Infections (STIs)",29);
INSERT INTO causes(id,illness,bodyp_id) VALUES(191,"An Object In The Vagina",29);

/* common anus problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(192,"Cancer",30);
INSERT INTO causes(id,illness,bodyp_id) VALUES(193,"Hemorrhoids",30);
INSERT INTO causes(id,illness,bodyp_id) VALUES(194,"Fissures ",30);
INSERT INTO causes(id,illness,bodyp_id) VALUES(195,"Abscesses",30);

/* common left_leg problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(196,"Achilles Tendinitis",31);
INSERT INTO causes(id,illness,bodyp_id) VALUES(197,"Achilles Tendon Rupture",31);
INSERT INTO causes(id,illness,bodyp_id) VALUES(198,"Baker's Cyst",31);
INSERT INTO causes(id,illness,bodyp_id) VALUES(199,"Bone Cancer",31);
INSERT INTO causes(id,illness,bodyp_id) VALUES(200,"Bursitis",31);
INSERT INTO causes(id,illness,bodyp_id) VALUES(201,"Ankylosing Spondylitis",31);

/* common right_leg problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(202,"Achilles Tendinitis",32);
INSERT INTO causes(id,illness,bodyp_id) VALUES(203,"Achilles Tendon Rupture",32);
INSERT INTO causes(id,illness,bodyp_id) VALUES(204,"Baker's Cyst",32);
INSERT INTO causes(id,illness,bodyp_id) VALUES(205,"Bone Cancer",32);
INSERT INTO causes(id,illness,bodyp_id) VALUES(206,"Bursitis",32);
INSERT INTO causes(id,illness,bodyp_id) VALUES(207,"Ankylosing Spondylitis",32);

/* common knee problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(208,"Osteoarthritis",33);
INSERT INTO causes(id,illness,bodyp_id) VALUES(209,"Rheumatoid arthritis",33);
INSERT INTO causes(id,illness,bodyp_id) VALUES(210,"Gout",33);
INSERT INTO causes(id,illness,bodyp_id) VALUES(211,"Pseudogout",33);
INSERT INTO causes(id,illness,bodyp_id) VALUES(212,"Septic arthritis",33);

/* common foot problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(213,"Athlete's foot",34);
INSERT INTO causes(id,illness,bodyp_id) VALUES(214,"Bunions",34);
INSERT INTO causes(id,illness,bodyp_id) VALUES(215,"Diabetic neuropathy",34);
INSERT INTO causes(id,illness,bodyp_id) VALUES(216,"Plantar fasciitis",34);
INSERT INTO causes(id,illness,bodyp_id) VALUES(217,"Corns",34);

/* common heel problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(218,"Achilles Tendinitis",35);
INSERT INTO causes(id,illness,bodyp_id) VALUES(219,"Bone Tumor",35);
INSERT INTO causes(id,illness,bodyp_id) VALUES(220,"Bursitis",35);
INSERT INTO causes(id,illness,bodyp_id) VALUES(221,"Heel Spur",35);
INSERT INTO causes(id,illness,bodyp_id) VALUES(222,"Osteomyelitis",35);
INSERT INTO causes(id,illness,bodyp_id) VALUES(223,"Paget's Disease Of Bone",35);

/* common toes problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(224,"Blisters",36);
INSERT INTO causes(id,illness,bodyp_id) VALUES(225,"Claw toe",36);
INSERT INTO causes(id,illness,bodyp_id) VALUES(226,"Mallet or Hammer Toe",36);

/* common colon problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(227,"Irritable Bowel Syndrome",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(228,"Constipation",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(229,"Hemorrhoids",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(230,"Abscess",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(231,"Colitis",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(232,"Polyps ",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(233,"Colon Cancer",24);

/* symptoms and causes : suspected disease */

/* eye */

/* Macular Degeneration */

INSERT INTO suspect(cause_id,symptom_id) VALUES(1,6);
INSERT INTO suspect(cause_id,symptom_id) VALUES(1,37);

/* Cataracts */

INSERT INTO suspect(cause_id,symptom_id) VALUES(2,6);
INSERT INTO suspect(cause_id,symptom_id) VALUES(2,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(2,39);

/* Glaucoma */

INSERT INTO suspect(cause_id,symptom_id) VALUES(3,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(3,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(1,6);
INSERT INTO suspect(cause_id,symptom_id) VALUES(3,13);
INSERT INTO suspect(cause_id,symptom_id) VALUES(3,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(3,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(3,39);

/* Diabetic Retinopathy */

INSERT INTO suspect(cause_id,symptom_id) VALUES(4,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(4,6);
INSERT INTO suspect(cause_id,symptom_id) VALUES(4,37);

/* Dry Eyes Syndrome */

INSERT INTO suspect(cause_id,symptom_id) VALUES(5,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(5,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(5,40);
INSERT INTO suspect(cause_id,symptom_id) VALUES(5,41);
INSERT INTO suspect(cause_id,symptom_id) VALUES(5,42);
INSERT INTO suspect(cause_id,symptom_id) VALUES(5,43);

/* Conjunctivitis (Pinkeye) */

INSERT INTO suspect(cause_id,symptom_id) VALUES(6,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(6,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(6,43);

/* Retinal Detachment */

INSERT INTO suspect(cause_id,symptom_id) VALUES(7,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(7,44);
INSERT INTO suspect(cause_id,symptom_id) VALUES(7,45);

/* Uveitis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(8,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(8,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(8,40);
INSERT INTO suspect(cause_id,symptom_id) VALUES(8,45);

/* Eyestrain */

INSERT INTO suspect(cause_id,symptom_id) VALUES(9,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(9,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(9,40);
INSERT INTO suspect(cause_id,symptom_id) VALUES(9,46);
INSERT INTO suspect(cause_id,symptom_id) VALUES(9,47);

/* Night Blindness (Nyctalopia) */

INSERT INTO suspect(cause_id,symptom_id) VALUES(10,13);
INSERT INTO suspect(cause_id,symptom_id) VALUES(10,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(10,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(10,40);
INSERT INTO suspect(cause_id,symptom_id) VALUES(10,46);
INSERT INTO suspect(cause_id,symptom_id) VALUES(10,47);
INSERT INTO suspect(cause_id,symptom_id) VALUES(10,48);

/* Color Blindness */

INSERT INTO suspect(cause_id,symptom_id) VALUES(11,49);

/* Eye Floaters */

INSERT INTO suspect(cause_id,symptom_id) VALUES(12,50);

/* Nearsightedness (Myopia) */

INSERT INTO suspect(cause_id,symptom_id) VALUES(13,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(13,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(13,42);

/* Farsightedness (Hypermetropia) */

INSERT INTO suspect(cause_id,symptom_id) VALUES(14,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(14,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(14,47);

/* Astigmatism */

INSERT INTO suspect(cause_id,symptom_id) VALUES(15,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(15,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(15,42);
INSERT INTO suspect(cause_id,symptom_id) VALUES(15,51);

/* Presbyopia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(16,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(16,39);

/* Proptosis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(17,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(17,52);
INSERT INTO suspect(cause_id,symptom_id) VALUES(17,53);

/* Strabismus (Crossed Eyes) */

INSERT INTO suspect(cause_id,symptom_id) VALUES(18,54);
INSERT INTO suspect(cause_id,symptom_id) VALUES(18,55);

/* Macular Edema */

INSERT INTO suspect(cause_id,symptom_id) VALUES(19,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(19,52);

/* brain */

/* Dementias */

INSERT INTO suspect(cause_id,symptom_id) VALUES(20,56);
INSERT INTO suspect(cause_id,symptom_id) VALUES(20,57);
INSERT INTO suspect(cause_id,symptom_id) VALUES(20,58);
INSERT INTO suspect(cause_id,symptom_id) VALUES(20,59);

/* cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(21,8);
INSERT INTO suspect(cause_id,symptom_id) VALUES(21,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(21,35);
INSERT INTO suspect(cause_id,symptom_id) VALUES(21,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(21,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(21,61);

/* epilepsy */

INSERT INTO suspect(cause_id,symptom_id) VALUES(22,8);
INSERT INTO suspect(cause_id,symptom_id) VALUES(22,58);
INSERT INTO suspect(cause_id,symptom_id) VALUES(22,62);
INSERT INTO suspect(cause_id,symptom_id) VALUES(22,63);
INSERT INTO suspect(cause_id,symptom_id) VALUES(22,64);
INSERT INTO suspect(cause_id,symptom_id) VALUES(22,65);

/* stroke */

INSERT INTO suspect(cause_id,symptom_id) VALUES(23,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(23,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(23,43);
INSERT INTO suspect(cause_id,symptom_id) VALUES(23,58);
INSERT INTO suspect(cause_id,symptom_id) VALUES(23,62);

/* Alzheimer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(24,56);

/* migrain */

INSERT INTO suspect(cause_id,symptom_id) VALUES(25,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(25,37);
INSERT INTO suspect(cause_id,symptom_id) VALUES(25,39);

/* ear */

/* Balance Disorders */

INSERT INTO suspect(cause_id,symptom_id) VALUES(26,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(26,25);
INSERT INTO suspect(cause_id,symptom_id) VALUES(26,58);
INSERT INTO suspect(cause_id,symptom_id) VALUES(26,66);

/* Cholesteatoma */

INSERT INTO suspect(cause_id,symptom_id) VALUES(27,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(27,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(27,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(27,67);

/* Ear Infections */

INSERT INTO suspect(cause_id,symptom_id) VALUES(28,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(28,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(28,41);
INSERT INTO suspect(cause_id,symptom_id) VALUES(28,67);

/* Ear Ringing (tinnitus) */

INSERT INTO suspect(cause_id,symptom_id) VALUES(29,7);

/* Hearing Loss */

INSERT INTO suspect(cause_id,symptom_id) VALUES(30,7);
INSERT INTO suspect(cause_id,symptom_id) VALUES(30,67);

/* Otitis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(31,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(31,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(31,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(31,7);
INSERT INTO suspect(cause_id,symptom_id) VALUES(31,66);
INSERT INTO suspect(cause_id,symptom_id) VALUES(31,67);

/* Perforated eardrum */

INSERT INTO suspect(cause_id,symptom_id) VALUES(32,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(32,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(32,9);
INSERT INTO suspect(cause_id,symptom_id) VALUES(32,41);
INSERT INTO suspect(cause_id,symptom_id) VALUES(32,67);
INSERT INTO suspect(cause_id,symptom_id) VALUES(32,68);

/* nose */

/* Sinusitis */
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,19);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,41);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,69);
INSERT INTO suspect(cause_id,symptom_id) VALUES(33,74);

/* Nasal & Sinus Polyps */

INSERT INTO suspect(cause_id,symptom_id) VALUES(34,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(34,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(34,70);
INSERT INTO suspect(cause_id,symptom_id) VALUES(34,71);
INSERT INTO suspect(cause_id,symptom_id) VALUES(34,72);
INSERT INTO suspect(cause_id,symptom_id) VALUES(34,73);
INSERT INTO suspect(cause_id,symptom_id) VALUES(34,74);

/* flu */

INSERT INTO suspect(cause_id,symptom_id) VALUES(35,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,4);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,11);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(35,70);

/* Smell and Taste Disorders */

INSERT INTO suspect(cause_id,symptom_id) VALUES(36,72);
INSERT INTO suspect(cause_id,symptom_id) VALUES(36,73);

/* Allergy */

INSERT INTO suspect(cause_id,symptom_id) VALUES(37,11);
INSERT INTO suspect(cause_id,symptom_id) VALUES(37,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(37,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(37,43);
INSERT INTO suspect(cause_id,symptom_id) VALUES(37,48);
INSERT INTO suspect(cause_id,symptom_id) VALUES(37,48);

/* Viral Infection */

INSERT INTO suspect(cause_id,symptom_id) VALUES(38,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(38,13);
INSERT INTO suspect(cause_id,symptom_id) VALUES(38,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(38,40);
INSERT INTO suspect(cause_id,symptom_id) VALUES(38,48);
INSERT INTO suspect(cause_id,symptom_id) VALUES(38,58);

/* lip */

/* Fordyce Glands */

INSERT INTO suspect(cause_id,symptom_id) VALUES(39,75);
INSERT INTO suspect(cause_id,symptom_id) VALUES(39,76);

/* Oral Candidiasis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(40,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(40,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(40,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(40,72);
INSERT INTO suspect(cause_id,symptom_id) VALUES(40,76);

/* Oral Leukoplakia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(41,32);
INSERT INTO suspect(cause_id,symptom_id) VALUES(41,76);

/* Cold Sores */

INSERT INTO suspect(cause_id,symptom_id) VALUES(42,75);

/* Apthous Ulcers */

INSERT INTO suspect(cause_id,symptom_id) VALUES(43,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(43,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(43,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(43,75);

/* Oral Lichen Planus */

INSERT INTO suspect(cause_id,symptom_id) VALUES(44,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(44,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(44,77);
INSERT INTO suspect(cause_id,symptom_id) VALUES(44,79);

/* Mouth Cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(45,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(45,75);
INSERT INTO suspect(cause_id,symptom_id) VALUES(45,80);
INSERT INTO suspect(cause_id,symptom_id) VALUES(45,81);

/* tongue */

/* Down Syndrome */

INSERT INTO suspect(cause_id,symptom_id) VALUES(46,82);
INSERT INTO suspect(cause_id,symptom_id) VALUES(46,83);
INSERT INTO suspect(cause_id,symptom_id) VALUES(46,84);

/* Tongue Cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(47,33);
INSERT INTO suspect(cause_id,symptom_id) VALUES(47,36);
INSERT INTO suspect(cause_id,symptom_id) VALUES(47,76);
INSERT INTO suspect(cause_id,symptom_id) VALUES(47,80);

/* Beckwith-Wiedemann Syndrome */

INSERT INTO suspect(cause_id,symptom_id) VALUES(48,85);
INSERT INTO suspect(cause_id,symptom_id) VALUES(48,86);

/* An Overactive Thyroid */

INSERT INTO suspect(cause_id,symptom_id) VALUES(49,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(49,59);
INSERT INTO suspect(cause_id,symptom_id) VALUES(49,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(49,87);
INSERT INTO suspect(cause_id,symptom_id) VALUES(49,88);
INSERT INTO suspect(cause_id,symptom_id) VALUES(49,89);

/* Leukemia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(50,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(50,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(50,36);
INSERT INTO suspect(cause_id,symptom_id) VALUES(50,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(50,90);

/* Anemia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(51,18);
INSERT INTO suspect(cause_id,symptom_id) VALUES(51,23);
INSERT INTO suspect(cause_id,symptom_id) VALUES(51,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(51,25);
INSERT INTO suspect(cause_id,symptom_id) VALUES(51,91);
INSERT INTO suspect(cause_id,symptom_id) VALUES(51,92);

/* jaw */

/* Jaw Fracture */

INSERT INTO suspect(cause_id,symptom_id) VALUES(52,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(52,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(52,14);

/* Dislocated Jaw */

INSERT INTO suspect(cause_id,symptom_id) VALUES(53,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(53,93);
INSERT INTO suspect(cause_id,symptom_id) VALUES(53,94);

/* cleft palate */

INSERT INTO suspect(cause_id,symptom_id) VALUES(54,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(54,93);
INSERT INTO suspect(cause_id,symptom_id) VALUES(54,95);

/* bruxism */

INSERT INTO suspect(cause_id,symptom_id) VALUES(55,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(55,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(55,96);
INSERT INTO suspect(cause_id,symptom_id) VALUES(55,97);

/* Wisdom Tooth */

INSERT INTO suspect(cause_id,symptom_id) VALUES(56,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(56,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(56,77);
INSERT INTO suspect(cause_id,symptom_id) VALUES(56,98);

/* Jawbone Cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(57,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(57,81);
INSERT INTO suspect(cause_id,symptom_id) VALUES(57,98);

/* neck */

/* Neck Fracture */

INSERT INTO suspect(cause_id,symptom_id) VALUES(58,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(58,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(58,99);
INSERT INTO suspect(cause_id,symptom_id) VALUES(58,100);

/* Neck Sprain */

INSERT INTO suspect(cause_id,symptom_id) VALUES(59,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(59,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(59,99);

/* Pinched Nerve */

INSERT INTO suspect(cause_id,symptom_id) VALUES(60,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(60,4);
INSERT INTO suspect(cause_id,symptom_id) VALUES(60,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(60,99);

/* Spondylosis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(61,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(61,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(61,101);

/* Whiplash */

INSERT INTO suspect(cause_id,symptom_id) VALUES(62,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(62,39);

/* Infected Tooth */

INSERT INTO suspect(cause_id,symptom_id) VALUES(63,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(63,4);
INSERT INTO suspect(cause_id,symptom_id) VALUES(63,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(63,79);
INSERT INTO suspect(cause_id,symptom_id) VALUES(63,102);

/* Flu */

INSERT INTO suspect(cause_id,symptom_id) VALUES(64,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(64,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(64,11);
INSERT INTO suspect(cause_id,symptom_id) VALUES(64,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(64,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(64,41);
INSERT INTO suspect(cause_id,symptom_id) VALUES(64,102);

/* Mononucleosis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(65,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(65,4);
INSERT INTO suspect(cause_id,symptom_id) VALUES(65,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(65,102);
INSERT INTO suspect(cause_id,symptom_id) VALUES(65,103);
INSERT INTO suspect(cause_id,symptom_id) VALUES(65,104);

/* Neck Cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(66,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,33);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,69);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,71);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,75);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,84);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,105);
INSERT INTO suspect(cause_id,symptom_id) VALUES(66,106);

/* upper body */

/* esophagus */

/* Achalasia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(67,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(67,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(67,78);
INSERT INTO suspect(cause_id,symptom_id) VALUES(67,90);
INSERT INTO suspect(cause_id,symptom_id) VALUES(67,107);

/* Barrett's Esophagus */

INSERT INTO suspect(cause_id,symptom_id) VALUES(68,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(68,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(68,107);

/* Esophageal Cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(69,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(69,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(69,13);
INSERT INTO suspect(cause_id,symptom_id) VALUES(69,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(69,90);
INSERT INTO suspect(cause_id,symptom_id) VALUES(69,106);
INSERT INTO suspect(cause_id,symptom_id) VALUES(69,108);

/* Gastroesophageal Reflux Disease */

INSERT INTO suspect(cause_id,symptom_id) VALUES(70,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(70,107);
INSERT INTO suspect(cause_id,symptom_id) VALUES(70,109);

/* Gastroparesis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(71,13);
INSERT INTO suspect(cause_id,symptom_id) VALUES(71,28);
INSERT INTO suspect(cause_id,symptom_id) VALUES(71,48);
INSERT INTO suspect(cause_id,symptom_id) VALUES(71,107);
INSERT INTO suspect(cause_id,symptom_id) VALUES(71,110);

/* Peptic Ulcer Disease */

INSERT INTO suspect(cause_id,symptom_id) VALUES(72,13);
INSERT INTO suspect(cause_id,symptom_id) VALUES(72,18);
INSERT INTO suspect(cause_id,symptom_id) VALUES(72,48);
INSERT INTO suspect(cause_id,symptom_id) VALUES(72,110);
INSERT INTO suspect(cause_id,symptom_id) VALUES(72,111);
INSERT INTO suspect(cause_id,symptom_id) VALUES(72,112);

/* Swallowing Disorders */

INSERT INTO suspect(cause_id,symptom_id) VALUES(73,17);
INSERT INTO suspect(cause_id,symptom_id) VALUES(73,107);
INSERT INTO suspect(cause_id,symptom_id) VALUES(73,108);
INSERT INTO suspect(cause_id,symptom_id) VALUES(73,113);

/* lung */

/* Asthma */

INSERT INTO suspect(cause_id,symptom_id) VALUES(74,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(74,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(74,114);
INSERT INTO suspect(cause_id,symptom_id) VALUES(74,115);

/* Pneumothorax */

INSERT INTO suspect(cause_id,symptom_id) VALUES(75,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(75,22);
INSERT INTO suspect(cause_id,symptom_id) VALUES(75,35);
INSERT INTO suspect(cause_id,symptom_id) VALUES(75,115);
INSERT INTO suspect(cause_id,symptom_id) VALUES(75,116);

/* Bronchitis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(76,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(76,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(76,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(76,41);
INSERT INTO suspect(cause_id,symptom_id) VALUES(76,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(76,115);

/* COPD */

INSERT INTO suspect(cause_id,symptom_id) VALUES(77,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(77,19);
INSERT INTO suspect(cause_id,symptom_id) VALUES(77,116);
INSERT INTO suspect(cause_id,symptom_id) VALUES(77,117);
INSERT INTO suspect(cause_id,symptom_id) VALUES(77,118);

/* Lung Cancer */

INSERT INTO suspect(cause_id,symptom_id) VALUES(78,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(78,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(78,4);
INSERT INTO suspect(cause_id,symptom_id) VALUES(78,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(78,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(78,118);
INSERT INTO suspect(cause_id,symptom_id) VALUES(78,119);

/* Pneumonia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(79,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(79,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(79,22);
INSERT INTO suspect(cause_id,symptom_id) VALUES(79,35);
INSERT INTO suspect(cause_id,symptom_id) VALUES(79,115);
INSERT INTO suspect(cause_id,symptom_id) VALUES(79,116);
INSERT INTO suspect(cause_id,symptom_id) VALUES(79,120);

/* Pulmonary embolus */

INSERT INTO suspect(cause_id,symptom_id) VALUES(80,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(80,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(80,21);
INSERT INTO suspect(cause_id,symptom_id) VALUES(80,64);
INSERT INTO suspect(cause_id,symptom_id) VALUES(80,119);
INSERT INTO suspect(cause_id,symptom_id) VALUES(80,120);
INSERT INTO suspect(cause_id,symptom_id) VALUES(80,121);

/* heart */

/* Coronary Artery Disease */

INSERT INTO suspect(cause_id,symptom_id) VALUES(81,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(81,25);
INSERT INTO suspect(cause_id,symptom_id) VALUES(81,48);
INSERT INTO suspect(cause_id,symptom_id) VALUES(81,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(81,114);

/* Heart Failure */

INSERT INTO suspect(cause_id,symptom_id) VALUES(82,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(82,22);
INSERT INTO suspect(cause_id,symptom_id) VALUES(82,28);
INSERT INTO suspect(cause_id,symptom_id) VALUES(82,58);
INSERT INTO suspect(cause_id,symptom_id) VALUES(82,110);
INSERT INTO suspect(cause_id,symptom_id) VALUES(82,120);
INSERT INTO suspect(cause_id,symptom_id) VALUES(82,122);

/* Arrhythmia */

INSERT INTO suspect(cause_id,symptom_id) VALUES(83,18);
INSERT INTO suspect(cause_id,symptom_id) VALUES(83,21);
INSERT INTO suspect(cause_id,symptom_id) VALUES(83,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(83,115);

/* Valvular Heart Disease */

INSERT INTO suspect(cause_id,symptom_id) VALUES(84,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(84,21);
INSERT INTO suspect(cause_id,symptom_id) VALUES(84,25);
INSERT INTO suspect(cause_id,symptom_id) VALUES(84,123);

/* Aortic Aneurysms */

INSERT INTO suspect(cause_id,symptom_id) VALUES(85,22);
INSERT INTO suspect(cause_id,symptom_id) VALUES(85,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(85,25);
INSERT INTO suspect(cause_id,symptom_id) VALUES(85,120);
INSERT INTO suspect(cause_id,symptom_id) VALUES(85,124);

/* Heart Infections */

INSERT INTO suspect(cause_id,symptom_id) VALUES(86,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(86,10);
INSERT INTO suspect(cause_id,symptom_id) VALUES(86,99);
INSERT INTO suspect(cause_id,symptom_id) VALUES(86,104);
INSERT INTO suspect(cause_id,symptom_id) VALUES(86,115);
INSERT INTO suspect(cause_id,symptom_id) VALUES(86,123);

/* Heart Problems At Birth */

INSERT INTO suspect(cause_id,symptom_id) VALUES(87,22);
INSERT INTO suspect(cause_id,symptom_id) VALUES(87,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(87,116);
INSERT INTO suspect(cause_id,symptom_id) VALUES(87,123);

/* Heart Attack */

INSERT INTO suspect(cause_id,symptom_id) VALUES(88,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(88,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(88,64);
INSERT INTO suspect(cause_id,symptom_id) VALUES(88,91);
INSERT INTO suspect(cause_id,symptom_id) VALUES(88,99);
INSERT INTO suspect(cause_id,symptom_id) VALUES(88,115);

/* right_arm  */

/* Tendinitis and Bursitis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(89,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(89,29);
INSERT INTO suspect(cause_id,symptom_id) VALUES(89,60);

/* Sprains */

INSERT INTO suspect(cause_id,symptom_id) VALUES(90,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(90,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(90,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(90,125);

/* Dislocations */

INSERT INTO suspect(cause_id,symptom_id) VALUES(91,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(91,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(91,126);
INSERT INTO suspect(cause_id,symptom_id) VALUES(91,127);

/* Bone Fractures */

INSERT INTO suspect(cause_id,symptom_id) VALUES(92,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(92,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(92,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(92,36);
INSERT INTO suspect(cause_id,symptom_id) VALUES(92,126);
INSERT INTO suspect(cause_id,symptom_id) VALUES(92,127);

/* Nerve Problems */

INSERT INTO suspect(cause_id,symptom_id) VALUES(93,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(93,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(93,54);
INSERT INTO suspect(cause_id,symptom_id) VALUES(93,56);
INSERT INTO suspect(cause_id,symptom_id) VALUES(93,99);

/* Osteoarthritis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(94,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(94,128);

/* left_arm  */

/* Tendinitis and Bursitis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(95,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(95,29);
INSERT INTO suspect(cause_id,symptom_id) VALUES(95,60);

/* Sprains */

INSERT INTO suspect(cause_id,symptom_id) VALUES(96,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(96,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(96,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(96,125);

/* Dislocations */

INSERT INTO suspect(cause_id,symptom_id) VALUES(97,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(97,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(97,126);
INSERT INTO suspect(cause_id,symptom_id) VALUES(97,127);

/* Bone Fractures */

INSERT INTO suspect(cause_id,symptom_id) VALUES(98,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(98,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(98,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(98,36);
INSERT INTO suspect(cause_id,symptom_id) VALUES(98,126);
INSERT INTO suspect(cause_id,symptom_id) VALUES(98,127);

/* Nerve Problems */

INSERT INTO suspect(cause_id,symptom_id) VALUES(99,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(99,39);
INSERT INTO suspect(cause_id,symptom_id) VALUES(99,54);
INSERT INTO suspect(cause_id,symptom_id) VALUES(99,56);
INSERT INTO suspect(cause_id,symptom_id) VALUES(99,99);

/* Osteoarthritis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(100,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(100,128);

/* High Blood Pressure */

INSERT INTO suspect(cause_id,symptom_id) VALUES(101,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(101,18);
INSERT INTO suspect(cause_id,symptom_id) VALUES(101,24);
INSERT INTO suspect(cause_id,symptom_id) VALUES(101,26);

/* Heart Problems */

INSERT INTO suspect(cause_id,symptom_id) VALUES(102,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(102,22);
INSERT INTO suspect(cause_id,symptom_id) VALUES(102,26);
INSERT INTO suspect(cause_id,symptom_id) VALUES(102,60);
INSERT INTO suspect(cause_id,symptom_id) VALUES(102,116);
INSERT INTO suspect(cause_id,symptom_id) VALUES(102,123);

/* elbow */

/* Arthritis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(103,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(103,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(103,29);
INSERT INTO suspect(cause_id,symptom_id) VALUES(103,129);

/* Cellulitis */

INSERT INTO suspect(cause_id,symptom_id) VALUES(104,1);
INSERT INTO suspect(cause_id,symptom_id) VALUES(104,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(104,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(104,29);
INSERT INTO suspect(cause_id,symptom_id) VALUES(104,130);
INSERT INTO suspect(cause_id,symptom_id) VALUES(104,131);

/* Tumors */

INSERT INTO suspect(cause_id,symptom_id) VALUES(105,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(105,3);
INSERT INTO suspect(cause_id,symptom_id) VALUES(105,61);
INSERT INTO suspect(cause_id,symptom_id) VALUES(105,90);

/* Ulnar Nerve Entrapment */

INSERT INTO suspect(cause_id,symptom_id) VALUES(106,99);
INSERT INTO suspect(cause_id,symptom_id) VALUES(106,130);
INSERT INTO suspect(cause_id,symptom_id) VALUES(106,132);

/* Osteochondritis Dissecans */

INSERT INTO suspect(cause_id,symptom_id) VALUES(107,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(107,14);
INSERT INTO suspect(cause_id,symptom_id) VALUES(107,101);
INSERT INTO suspect(cause_id,symptom_id) VALUES(107,130);

/* Tendon Inflammation */

INSERT INTO suspect(cause_id,symptom_id) VALUES(108,2);
INSERT INTO suspect(cause_id,symptom_id) VALUES(108,4);
