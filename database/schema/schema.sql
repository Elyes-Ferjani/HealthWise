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
)

CREATE TABLE coolision(
    id int NOT NULL AUTO_INCREMENT,
    symptom_id int NOT NULL,
    cause_id int NOT NULL,
    body_id int NOT NULL,

)

INSERT INTO body(id,part) VALUES(1,"head");
INSERT INTO body(id,part) VALUES(1,"upperbody");
INSERT INTO body(id,part) VALUES(1,"lowerbody");

INSERT INTO bodypart(id,organ,body_id) VALUES(1,"brain",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(2,"eyes",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(3,"ears",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(4,"nose",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(5,"lips",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(6,"tongue",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(7,"jaw",1);
INSERT INTO bodypart(id,organ,body_id) VALUES(8,"neck",1);

INSERT INTO bodypart(id,organ,body_id) VALUES(1,"esophagus",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(2,"lung",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(3,"heart",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(4,"right_arm",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(5,"left_arm",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(6,"elbows",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(7,"hands",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(8,"fingers",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(9,"liver",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(10,"spleen",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(11,"stomach",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(12,"pancreas",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(13,"gallbladder",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(14,"kidneys",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(15,"small_intestin",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(16,"colon",2);
INSERT INTO bodypart(id,organ,body_id) VALUES(17,"bladder",2);

INSERT INTO bodypart(id,organ,body_id) VALUES(1,"testicles",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(2,"vagina",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(3,"male_genital",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(4,"female_genital",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(5,"anus",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(6,"left_leg",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(7,"right_leg",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(8,"knees",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(9,"foot",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(10,"heal",3);
INSERT INTO bodypart(id,organ,body_id) VALUES(11,"toes",3);

INSERT INTO symptoms(id,symptom) VALUES(11,"fever");
INSERT INTO symptoms(id,symptom) VALUES(11,"pain");
INSERT INTO symptoms(id,symptom) VALUES(11,"discomfort");
INSERT INTO symptoms(id,symptom) VALUES(11,"aches");
INSERT INTO symptoms(id,symptom) VALUES(11,"confusing");
INSERT INTO symptoms(id,symptom) VALUES(11,"badvision");
INSERT INTO symptoms(id,symptom) VALUES(11,"whistle");
INSERT INTO symptoms(id,symptom) VALUES(11,"seizure");
INSERT INTO symptoms(id,symptom) VALUES(11,"heat");
INSERT INTO symptoms(id,symptom) VALUES(11,"coughing");
INSERT INTO symptoms(id,symptom) VALUES(11,"sneezing");
INSERT INTO symptoms(id,symptom) VALUES(11,"burping");
INSERT INTO symptoms(id,symptom) VALUES(11,"vomiting");
INSERT INTO symptoms(id,symptom) VALUES(11,"swelling");
INSERT INTO symptoms(id,symptom) VALUES(11,"thorn");
INSERT INTO symptoms(id,symptom) VALUES(11,"hallucinations");
INSERT INTO symptoms(id,symptom) VALUES(11,"hard swallowing");

INSERT INTO symptoms(id,symptom) VALUES(11,"hard breathing");
INSERT INTO symptoms(id,symptom) VALUES(11,"pelgum");
INSERT INTO symptoms(id,symptom) VALUES(11,"chest tightness");
INSERT INTO symptoms(id,symptom) VALUES(11,"pulses");
INSERT INTO symptoms(id,symptom) VALUES(11,"fast heart beat");
INSERT INTO symptoms(id,symptom) VALUES(11,"cold");
INSERT INTO symptoms(id,symptom) VALUES(11,"dizziness");
INSERT INTO symptoms(id,symptom) VALUES(11,"ligh head");
INSERT INTO symptoms(id,symptom) VALUES(11,"numbness");
INSERT INTO symptoms(id,symptom) VALUES(11,"gas");
INSERT INTO symptoms(id,symptom) VALUES(11,"bloat");
INSERT INTO symptoms(id,symptom) VALUES(11,"skin redness");
INSERT INTO symptoms(id,symptom) VALUES(11,"skin darkness");
INSERT INTO symptoms(id,symptom) VALUES(11,"skin tightness");

