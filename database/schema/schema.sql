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
    CONSTRAINT FK_bodyID FOREIGN KEY (bodyp_id) REFERENCES bodypart (id)
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
INSERT INTO symptoms(id,symptom) VALUES(34,"burn");
INSERT INTO symptoms(id,symptom) VALUES(35,"skin discoloration");
INSERT INTO symptoms(id,symptom) VALUES(36,"bleeding");

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
INSERT INTO causes(id,illness,bodyp_id) VALUES(25,"migrain",1);

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
INSERT INTO causes(id,illness,bodyp_id) VALUES(54,"Jaw Fracture",7);
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
INSERT INTO causes(id,illness,bodyp_id) VALUES(66,"Cancer",8);

/* common esophagus problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(67,"Achalasia",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(68,"Barrett's Esophagus",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(69,"Esophageal Cancer",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(70,"Gastroesophageal Reflux Disease (GERD)",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(71,"Gastroparesis",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(72,"Peptic Ulcer Disease",9);
INSERT INTO causes(id,illness,bodyp_id) VALUES(73,"Swallowing Disorders",9);

/* ccommon lung problems */

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

/* common colon problems */

INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Irritable Bowel Syndrome",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Constipation",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Hemorrhoids",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Abscess",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Colitis",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Polyps ",24);
INSERT INTO causes(id,illness,bodyp_id) VALUES(167,"Colon Cancer",24);

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