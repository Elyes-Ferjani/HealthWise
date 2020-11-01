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
    PRIMARY KEY (id)
);

CREATE TABLE commonsymptoms(
    sympt_id int NOT NULL,
    bdpart_id int NOT NULL,
    CONSTRAINT FK_symptID FOREIGN KEY (sympt_id) REFERENCES symptoms (id),
    CONSTRAINT FK_bdpartID FOREIGN KEY (bdpart_id) REFERENCES bodypart (id)
);

CREATE TABLE coolision(
    symptom_id int NOT NULL,
    cause_id int NOT NULL,
    part_id int NOT NULL,
    CONSTRAINT FK_symptomID FOREIGN KEY (symptom_id) REFERENCES symptoms(id),
    CONSTRAINT FK_causeID FOREIGN KEY (cause_id) REFERENCES causes(id),
    CONSTRAINT FK_bodypartID FOREIGN KEY (part_id) REFERENCES bodypart(id)

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
INSERT INTO bodypart(id,organ,body_id) VALUES(35,"heal",3);
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
INSERT INTO symptoms(id,symptom) VALUES(19,"pelgum");
INSERT INTO symptoms(id,symptom) VALUES(20,"chest tightness");
INSERT INTO symptoms(id,symptom) VALUES(21,"pulses");
INSERT INTO symptoms(id,symptom) VALUES(22,"fast heart beat");
INSERT INTO symptoms(id,symptom) VALUES(23,"cold");
INSERT INTO symptoms(id,symptom) VALUES(24,"dizziness");
INSERT INTO symptoms(id,symptom) VALUES(25,"ligh head");
INSERT INTO symptoms(id,symptom) VALUES(26,"numbness");
INSERT INTO symptoms(id,symptom) VALUES(27,"gas");
INSERT INTO symptoms(id,symptom) VALUES(28,"bloat");
INSERT INTO symptoms(id,symptom) VALUES(29,"skin redness");
INSERT INTO symptoms(id,symptom) VALUES(30,"skin darkness");
INSERT INTO symptoms(id,symptom) VALUES(31,"skin tightness");
INSERT INTO symptoms(id,symptom) VALUES(32,"redness");
INSERT INTO symptoms(id,symptom) VALUES(33,"whiteness");

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

INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(2,8);
INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(3,8);
INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(9,8);
INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(10,8);
INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(14,8);
INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(17,8);
INSERT INTO commonsymptions(sympt_id,bdpart_id) VALUES(19,8);

/* common eye diseases */

INSERT INTO causes(id,illness) VALUES(1,"Macular Degeneration");
INSERT INTO causes(id,illness) VALUES(2,"Cataracts");
INSERT INTO causes(id,illness) VALUES(3,"Glaucoma");
INSERT INTO causes(id,illness) VALUES(4,"Diabetic Retinopathy");
INSERT INTO causes(id,illness) VALUES(5,"Dry Eyes Syndrome");
INSERT INTO causes(id,illness) VALUES(6,"Conjunctivitis (Pinkeye)");
INSERT INTO causes(id,illness) VALUES(7,"Retinal Detachment");
INSERT INTO causes(id,illness) VALUES(8,"Uveitis");
INSERT INTO causes(id,illness) VALUES(9,"Eyestrain");
INSERT INTO causes(id,illness) VALUES(10,"Night Blindness (Nyctalopia)");
INSERT INTO causes(id,illness) VALUES(11,"Color Blindness");
INSERT INTO causes(id,illness) VALUES(12,"Eye Floaters");
INSERT INTO causes(id,illness) VALUES(13,"Nearsightedness (Myopia)");
INSERT INTO causes(id,illness) VALUES(14,"Farsightedness (Hypermetropia)");
INSERT INTO causes(id,illness) VALUES(15,"Astigmatism");
INSERT INTO causes(id,illness) VALUES(16,"Presbyopia");
INSERT INTO causes(id,illness) VALUES(17,"Proptosis");
INSERT INTO causes(id,illness) VALUES(18,"Strabismus (Crossed Eyes)");
INSERT INTO causes(id,illness) VALUES(19,"Macular Edema");