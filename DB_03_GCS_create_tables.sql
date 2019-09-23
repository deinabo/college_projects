DROP SCHEMA IF EXISTS DB_03_GCS;
CREATE SCHEMA DB_03_GCS;
USE DB_03_GCS;

/* -- */

CREATE TABLE REGION (
REGION_ID int PRIMARY KEY,
REGION_NAME varchar(50)
);
INSERT INTO REGION VALUES('1','NW');
INSERT INTO REGION VALUES('2','SW');
INSERT INTO REGION VALUES('3','MN');
INSERT INTO REGION VALUES('4','MS');
INSERT INTO REGION VALUES('5','NE');
INSERT INTO REGION VALUES('6','SE');

/* -- */

CREATE TABLE CUSTOMER (
CUS_ID int PRIMARY KEY,
CUS_NAME varchar(50),
CUS_PHONE varchar(50),
REGION_ID int,
FOREIGN KEY (REGION_ID) REFERENCES REGION(REGION_ID)
);
INSERT INTO CUSTOMER VALUES('1','See Rocks','678-257-2857','1');
INSERT INTO CUSTOMER VALUES('2','Bellsouth','931-685-1563','2');
INSERT INTO CUSTOMER VALUES('3','AT&T','615-725-7896','3');
INSERT INTO CUSTOMER VALUES('4','ClearChannel','423-596-6241','4');
INSERT INTO CUSTOMER VALUES('5','Comcast','901-895-5547','5');
INSERT INTO CUSTOMER VALUES('6','Enron','865-489-3699','6');

/* -- */

CREATE TABLE EMPLOYEE (
EMP_ID int PRIMARY KEY,
EMP_LNAME varchar(50),
EMP_INITIAL varchar(50),
EMP_FNAME varchar(50),
EMP_HIREDATE date,
REGION_ID int,
FOREIGN KEY (REGION_ID) REFERENCES REGION(REGION_ID)
);
INSERT INTO EMPLOYEE VALUES('1','Seaton','M','Amy','2001-2-7','1');
INSERT INTO EMPLOYEE VALUES('2','Craig','M','Brett','2000-8-16','3');
INSERT INTO EMPLOYEE VALUES('3','Sewell','Z','Beth','2000-9-15','4');
INSERT INTO EMPLOYEE VALUES('4','Williams','R','Josh','2000-4-7','2');
INSERT INTO EMPLOYEE VALUES('5','Chandler','E','Joseph','2001-6-12','5');
INSERT INTO EMPLOYEE VALUES('6','Robbins','E','Erin','2001-8-25','6');
INSERT INTO EMPLOYEE VALUES('7','Burklow','C','Shan','2000-11-26','1');
INSERT INTO EMPLOYEE VALUES('8','Yarbrough','B','Peter','2001-1-9','6');
INSERT INTO EMPLOYEE VALUES('9','Kattan','N','Chris','2000-5-31','2');
INSERT INTO EMPLOYEE VALUES('10','Pascoe','L','Jonathan','2001-7-14','3');
INSERT INTO EMPLOYEE VALUES('11','Batts','D','Melissa','2001-9-16','4');
INSERT INTO EMPLOYEE VALUES('12','Cope','R','Leslie','1999-10-31','5');
INSERT INTO EMPLOYEE VALUES('13','Bible','M','Hanah','2000-6-8','2');
INSERT INTO EMPLOYEE VALUES('14','Pitt','S','Brad','1999-5-9','6');
INSERT INTO EMPLOYEE VALUES('15','Newton','S','Christopher','2001-2-28','3');
INSERT INTO EMPLOYEE VALUES('16','Smith','A','Mary','1999-3-8','1');
INSERT INTO EMPLOYEE VALUES('17','Underwood','L','Trish','1998-10-21','4');
INSERT INTO EMPLOYEE VALUES('18','Bender','A','Larry','2000-8-9','6');
INSERT INTO EMPLOYEE VALUES('19','Mudd','T','Roger','1999-12-1','5');
INSERT INTO EMPLOYEE VALUES('20','Kenyon','D','Tiffany','2001-4-28','2');
INSERT INTO EMPLOYEE VALUES('21','Ephanor',NULL,'Victor','2000-3-2','1');
INSERT INTO EMPLOYEE VALUES('22','Summers',NULL,'Anna','1999-1-1','1');
INSERT INTO EMPLOYEE VALUES('23','Smith','F','Jose','1998-2-6','1');
INSERT INTO EMPLOYEE VALUES('24','Rogers','S','Adam','2000-4-6','1');
INSERT INTO EMPLOYEE VALUES('25','Zebras',NULL,'Steve','2000-4-5','1');
INSERT INTO EMPLOYEE VALUES('26','Ellis','R','Maria','2000-8-7','1');
INSERT INTO EMPLOYEE VALUES('27','Duarte',NULL,'Miriam','2000-12-3','1');
INSERT INTO EMPLOYEE VALUES('28','Bush',NULL,'Emily','1999-6-5','1');
INSERT INTO EMPLOYEE VALUES('29','Kilby','T','Surgena','2000-4-1','1');
INSERT INTO EMPLOYEE VALUES('30','Connor',NULL,'Sean','1998-4-15','1');

/* -- */

CREATE TABLE SKILL (
SKILL_ID int PRIMARY KEY,
SKILL_DESCRIPTION varchar(50),
SKILL_RATE decimal(8,2)
);
INSERT INTO SKILL VALUES('1','Data Entry I','12');
INSERT INTO SKILL VALUES('2','Data Entry II','15');
INSERT INTO SKILL VALUES('3','System Analyst I','18');
INSERT INTO SKILL VALUES('4','System Analyst II','21');
INSERT INTO SKILL VALUES('5','Database Designer I','50');
INSERT INTO SKILL VALUES('6','Database Designer II','75');
INSERT INTO SKILL VALUES('7','Java I','25');
INSERT INTO SKILL VALUES('8','Java II','30');
INSERT INTO SKILL VALUES('9','C++ I','35');
INSERT INTO SKILL VALUES('10','C++ II','45');
INSERT INTO SKILL VALUES('11','Python I','25');
INSERT INTO SKILL VALUES('12','Python II','35');
INSERT INTO SKILL VALUES('13','Cold Fusion I','60');
INSERT INTO SKILL VALUES('14','Cold Fusion II','75');
INSERT INTO SKILL VALUES('15','ASP I','60');
INSERT INTO SKILL VALUES('16','ASP II','70');
INSERT INTO SKILL VALUES('17','Web Administrator','50');
INSERT INTO SKILL VALUES('18','Oracle DBA','100');
INSERT INTO SKILL VALUES('19','SQL Server DBA','100');
INSERT INTO SKILL VALUES('20','Network Eng. I','80');
INSERT INTO SKILL VALUES('21','Network Eng. II','100');
INSERT INTO SKILL VALUES('22','Technical Writer','100');
INSERT INTO SKILL VALUES('23','Project Manager','70');

/* -- */

CREATE TABLE EMPSKILL (
SKILL_ID int,
EMP_ID int,
PRIMARY KEY (SKILL_ID, EMP_ID),
FOREIGN KEY (SKILL_ID) REFERENCES SKILL(SKILL_ID),
FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
); 
INSERT INTO EMPSKILL VALUES('1','1');
INSERT INTO EMPSKILL VALUES('1','4');
INSERT INTO EMPSKILL VALUES('1','17');
INSERT INTO EMPSKILL VALUES('2','4');
INSERT INTO EMPSKILL VALUES('2','1');
INSERT INTO EMPSKILL VALUES('3','2');
INSERT INTO EMPSKILL VALUES('3','3');
INSERT INTO EMPSKILL VALUES('3','6');
INSERT INTO EMPSKILL VALUES('3','28');
INSERT INTO EMPSKILL VALUES('3','25');
INSERT INTO EMPSKILL VALUES('4','5');
INSERT INTO EMPSKILL VALUES('4','7');
INSERT INTO EMPSKILL VALUES('4','6');
INSERT INTO EMPSKILL VALUES('5','8');
INSERT INTO EMPSKILL VALUES('5','16');
INSERT INTO EMPSKILL VALUES('6','8');
INSERT INTO EMPSKILL VALUES('6','10');
INSERT INTO EMPSKILL VALUES('7','9');
INSERT INTO EMPSKILL VALUES('7','21');
INSERT INTO EMPSKILL VALUES('7','22');
INSERT INTO EMPSKILL VALUES('7','26');
INSERT INTO EMPSKILL VALUES('8','9');
INSERT INTO EMPSKILL VALUES('8','21');
INSERT INTO EMPSKILL VALUES('8','11');
INSERT INTO EMPSKILL VALUES('9','23');
INSERT INTO EMPSKILL VALUES('9','24');
INSERT INTO EMPSKILL VALUES('9','12');
INSERT INTO EMPSKILL VALUES('10','24');
INSERT INTO EMPSKILL VALUES('10','13');
INSERT INTO EMPSKILL VALUES('11','25');
INSERT INTO EMPSKILL VALUES('11','26');
INSERT INTO EMPSKILL VALUES('12','25');
INSERT INTO EMPSKILL VALUES('12','15');
INSERT INTO EMPSKILL VALUES('13','27');
INSERT INTO EMPSKILL VALUES('13','28');
INSERT INTO EMPSKILL VALUES('14','28');
INSERT INTO EMPSKILL VALUES('14','15');
INSERT INTO EMPSKILL VALUES('15','27');
INSERT INTO EMPSKILL VALUES('15','28');
INSERT INTO EMPSKILL VALUES('16','27');
INSERT INTO EMPSKILL VALUES('16','15');
INSERT INTO EMPSKILL VALUES('17','23');
INSERT INTO EMPSKILL VALUES('17','10');
INSERT INTO EMPSKILL VALUES('18','8');
INSERT INTO EMPSKILL VALUES('18','23');
INSERT INTO EMPSKILL VALUES('19','28');
INSERT INTO EMPSKILL VALUES('19','16');
INSERT INTO EMPSKILL VALUES('20','28');
INSERT INTO EMPSKILL VALUES('20','16');
INSERT INTO EMPSKILL VALUES('21','28');
INSERT INTO EMPSKILL VALUES('21','16');
INSERT INTO EMPSKILL VALUES('21','15');
INSERT INTO EMPSKILL VALUES('22','29');
INSERT INTO EMPSKILL VALUES('22','18');
INSERT INTO EMPSKILL VALUES('23','14');
INSERT INTO EMPSKILL VALUES('23','19');
INSERT INTO EMPSKILL VALUES('23','20');
INSERT INTO EMPSKILL VALUES('23','30');

/* -- */

CREATE TABLE PROJECT (
PROJ_ID int PRIMARY KEY,
PROJ_DATE date,
PROJ_DESC varchar(50),
PROJ_ESTSTARTDATE date,
PROJ_ESTENDDATE date,
PROJ_BUDGET decimal (10,2),
CUS_ID int,
EMP_ID int,
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),
FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);
INSERT INTO PROJECT VALUES('1','2018-02-12','SALES MANAGEMENT SYSTEM','2018-03-01', '2018-07-01','15500','1', '30');

/* -- */


CREATE TABLE TASK (
TASK_ID int PRIMARY KEY,
TASK_DESC varchar(50),
TASK_STARTDATE date,
TASK_ENDDATE date,
PROJ_ID int,
FOREIGN KEY (PROJ_ID) REFERENCES PROJECT(PROJ_ID)
);
INSERT INTO TASK VALUES('1', 'Initial interview','2018-03-01', '2018-03-06','1');
INSERT INTO TASK VALUES('2', 'Database design','2018-03-11', '2018-03-15','1');
INSERT INTO TASK VALUES('3', 'System design','2018-03-11', '2018-04-12','1');
INSERT INTO TASK VALUES('4', 'Database implementation','2018-03-18', '2018-03-22','1');
INSERT INTO TASK VALUES('5', 'System coding and testing','2018-03-25', '2018-05-20','1');
INSERT INTO TASK VALUES('6', 'System documentation','2018-03-25', '2018-06-07','1');
INSERT INTO TASK VALUES('7', 'Final evaluation','2018-06-10', '2018-06-14','1');
INSERT INTO TASK VALUES('8', 'On-site system online and data loading','2018-06-17', '2018-06-21','1');
INSERT INTO TASK VALUES('9', 'Sign-off','2018-07-01', '2018-07-01','1');

/* -- */

CREATE TABLE TASKSCHEDULE (
TASKSCH_ID int PRIMARY KEY,
TASK_ID int,
SKILL_ID int,
TASKSCH_QTY int,
FOREIGN KEY (TASK_ID) REFERENCES TASK(TASK_ID),
FOREIGN KEY (SKILL_ID) REFERENCES SKILL(SKILL_ID)
);
INSERT INTO TASKSCHEDULE VALUES('1','1','23','1');
INSERT INTO TASKSCHEDULE VALUES('2','1','4','1');
INSERT INTO TASKSCHEDULE VALUES('3','1','5','1');
INSERT INTO TASKSCHEDULE VALUES('4','2','5','1');
INSERT INTO TASKSCHEDULE VALUES('5','3','4','1');
INSERT INTO TASKSCHEDULE VALUES('6','3','3','2');
INSERT INTO TASKSCHEDULE VALUES('7','4','18','1');
INSERT INTO TASKSCHEDULE VALUES('8','5','7','2');
INSERT INTO TASKSCHEDULE VALUES('9','5','8','1');
INSERT INTO TASKSCHEDULE VALUES('10','5','18','1');
INSERT INTO TASKSCHEDULE VALUES('11','6','22','1');
INSERT INTO TASKSCHEDULE VALUES('12','7','23','1');
INSERT INTO TASKSCHEDULE VALUES('13','7','4','1');
INSERT INTO TASKSCHEDULE VALUES('14','7','5','1');
INSERT INTO TASKSCHEDULE VALUES('15','7','8','1');
INSERT INTO TASKSCHEDULE VALUES('16','8','23','1');
INSERT INTO TASKSCHEDULE VALUES('17','8','4','1');
INSERT INTO TASKSCHEDULE VALUES('18','8','5','1');
INSERT INTO TASKSCHEDULE VALUES('19','8','8','1');
INSERT INTO TASKSCHEDULE VALUES('20','9','23','1');

/* -- */


CREATE TABLE ASSIGNMENT (
ASSIGN_ID int PRIMARY KEY,
TASKSCH_ID int,
EMP_ID int,
ASSIGN_STARTDATE date,
ASSIGN_ENDDATE date,
FOREIGN KEY (TASKSCH_ID) REFERENCES TASKSCHEDULE(TASKSCH_ID),
FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);
INSERT INTO ASSIGNMENT VALUES('101','1','30','2018-03-01','2018-03-06');
INSERT INTO ASSIGNMENT VALUES('102','2','7','2018-03-01','2018-03-06');
INSERT INTO ASSIGNMENT VALUES('103','3','16','2018-03-01','2018-03-06');
INSERT INTO ASSIGNMENT VALUES('104','4','16','2018-03-11','2018-03-14');
INSERT INTO ASSIGNMENT VALUES('105','5','7','2018-03-11',NULL);
INSERT INTO ASSIGNMENT VALUES('106','6','28','2018-03-11',NULL);
INSERT INTO ASSIGNMENT VALUES('107','6','25','2018-03-11',NULL);
INSERT INTO ASSIGNMENT VALUES('108','7','23','2018-03-15','2018-03-19');
INSERT INTO ASSIGNMENT VALUES('109','8','22','2018-03-21',NULL);
INSERT INTO ASSIGNMENT VALUES('110','8','26','2018-03-21',NULL);
INSERT INTO ASSIGNMENT VALUES('111','9','21','2018-03-21',NULL);
INSERT INTO ASSIGNMENT VALUES('112','10','23','2018-03-21',NULL);
INSERT INTO ASSIGNMENT VALUES('113','11','29','2018-03-25',NULL);

/* -- */
CREATE TABLE BILL (
BILL_ID int PRIMARY KEY,
PROJ_ID int,
BILL_DATE date,
FOREIGN KEY (PROJ_ID) REFERENCES PROJECT(PROJ_ID)
);
INSERT INTO BILL VALUES('100','1','2018-03-15');
/* -- */



/* -- */


CREATE TABLE WORKLOG (
WORKLOG_ID int PRIMARY KEY,
WORKLOG_DATE date,
ASSIGN_ID int,
WORKLOG_HOURS int,
BILL_ID int,
FOREIGN KEY (ASSIGN_ID) REFERENCES ASSIGNMENT(ASSIGN_ID),
FOREIGN KEY (BILL_ID) REFERENCES BILL(BILL_ID)
);
INSERT INTO WORKLOG VALUES('1','2018-03-01','102','4','100');
INSERT INTO WORKLOG VALUES('2','2018-03-01','101','4','100');
INSERT INTO WORKLOG VALUES('3','2018-03-01','103','4','100');
INSERT INTO WORKLOG VALUES('4','2018-03-08','102','24','100');
INSERT INTO WORKLOG VALUES('5','2018-03-08','101','24','100');
INSERT INTO WORKLOG VALUES('6','2018-03-08','103','24','100');
INSERT INTO WORKLOG VALUES('7','2018-03-15','105','40','100');
INSERT INTO WORKLOG VALUES('8','2018-03-15','106','40','100');
INSERT INTO WORKLOG VALUES('9','2018-03-15','108','6','100');
INSERT INTO WORKLOG VALUES('10','2018-03-15','104','32','100');
INSERT INTO WORKLOG VALUES('11','2018-03-15','107','35','100');
INSERT INTO WORKLOG VALUES('12','2018-03-22','105','40',NULL);
INSERT INTO WORKLOG VALUES('13','2018-03-22','106','40',NULL);
INSERT INTO WORKLOG VALUES('14','2018-03-22','110','12',NULL);
INSERT INTO WORKLOG VALUES('15','2018-03-22','111','12',NULL);
INSERT INTO WORKLOG VALUES('16','2018-03-22','108','12',NULL); 
INSERT INTO WORKLOG VALUES('17','2018-03-22','112','12',NULL); 
INSERT INTO WORKLOG VALUES('18','2018-03-22','109','12',NULL);   
INSERT INTO WORKLOG VALUES('19','2018-03-22','107','35',NULL); 
INSERT INTO WORKLOG VALUES('20','2018-03-29','105','40',NULL);  
INSERT INTO WORKLOG VALUES('21','2018-03-29','106','40',NULL); 
INSERT INTO WORKLOG VALUES('22','2018-03-29','110','35',NULL);   
INSERT INTO WORKLOG VALUES('23','2018-03-29','111','35',NULL); 
INSERT INTO WORKLOG VALUES('24','2018-03-29','113','40',NULL);  
INSERT INTO WORKLOG VALUES('25','2018-03-29','112','35',NULL); 	  
INSERT INTO WORKLOG VALUES('26','2018-03-29','109','35',NULL); 
INSERT INTO WORKLOG VALUES('27','2018-03-29','107','35',NULL); 	  

/* -- */


  
 