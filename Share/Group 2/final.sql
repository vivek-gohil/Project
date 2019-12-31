
CREATE SEQUENCE request_sequence
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

CREATE SEQUENCE candidate_id
  MINVALUE 500
  MAXVALUE 999999999999999999999999999
  START WITH 500
  INCREMENT BY 1
  CACHE 20;
CREATE SEQUENCE assessment_id
  MINVALUE 1000
  MAXVALUE 999999999999999999999999999
  START WITH 1000
  INCREMENT BY 1
  CACHE 20;

CREATE SEQUENCE employee_master_id
  MINVALUE 100
  MAXVALUE 999999999999999999999999999
  START WITH 100
  INCREMENT BY 1
  CACHE 20;


create table employee_master(employee_id int primary key,
name varchar(30) NOT NULL,contact number(15) NOT NULL,designation varchar(30) NOT NULL,
qualification varchar(40) NOT NULL,address varchar(40) NOT NULL,email varchar(40) NOT NULL,
skills varchar(50) NOT NULL,status varchar(30) NOT NULL,created_on TIMESTAMP NOT NULL, updated_on TIMESTAMP NOT NULL);

ALTER TABLE employee_master ADD manager_id int;


insert into employee_master(employee_id,name,contact,designation,
qualification,address,email,skills,status,created_on,updated_on)
values(employee_master_id.nextVal,'aman','8898713787','Developer','mca','mumbai','abc@gmail.com','java','selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));

insert into employee_master(employee_id,name,contact,designation,
qualification,address,email,skills,status,created_on,updated_on)
values(employee_master_id.nextVal,'rupesh','8898713733','java trainee','bca','thane','rupesh@gmail.com','java','selected',TO_DATE('2017-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2018-01-12 06:12:34','YYYY-MM-DD HH:MI:SS'));


insert into employee_master(employee_id,name,contact,designation,
qualification,address,email,skills,status,created_on,updated_on)
values(employee_master_id.nextVal,'akash','9998713725','sales','bcom','gurgaon','akash@gmail.com','communication','selected',TO_DATE('2017-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2019-01-12 05:22:34','YYYY-MM-DD HH:MI:SS'));


insert into employee_master(employee_id,name,contact,designation,
qualification,address,email,skills,status,created_on,updated_on)
values(employee_master_id.nextVal,'arun','9898713725','dotnet','mca','raipur','arun@gmail.com','c++','notselected',TO_DATE('2018-02-13 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2018-03-12 05:17:34','YYYY-MM-DD HH:MI:SS'));


insert into employee_master(employee_id,name,contact,designation,
qualification,address,email,skills,status,created_on,updated_on)
values(employee_master_id.nextVal,'saurabh','9798713725','testing','bsc','rajstan','saurabh@gmail.com','analytical','notselected',TO_DATE('2018-03-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2018-03-12 06:12:34','YYYY-MM-DD HH:MI:SS'));


create table candidate_master(candidate_id number(10) primary key,name varchar(30) NOT NULL,location varchar(30) NOT NULL,
contact number(15) NOT NULL,email varchar(40) NOT NULL,qualification varchar(40) NOT NULL,
skills varchar(50) NOT NULL,certification varchar(40) NOT NULL,status varchar(30) NOT NULL, created_on TIMESTAMP NOT NULL, updated_on TIMESTAMP NOT NULL);


insert into candidate_master(candidate_id,name,location,contact,email,qualification,
skills,certification,status,created_on,updated_on)values(candidate_id.nextVal, 'sweta', 'mumbai', '1234567890', 'abc@gmail.com', 'BE', 'JAVA', 'java certified', 'selected', TO_DATE('2019-11-15 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2019-11-15 05:12:34','YYYY-MM-DD HH:MI:SS'));


insert into candidate_master(candidate_id,name,location,contact,email,qualification,
skills,certification,status,created_on,updated_on)values(candidate_id.nextVal, 'chandan', 'thane', '1298463740', 'xyz@gmail.com', 'mca', '.net', 'java certified', 'selected', TO_DATE('2019-11-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2019-11-12 05:12:34','YYYY-MM-DD HH:MI:SS'));


insert into candidate_master(candidate_id,name,location,contact,email,qualification,
skills,certification,status,created_on,updated_on)values(candidate_id.nextVal, 'siddhesh', 'goa', '4653837253', 'pqr@gmail.com', 'be', '.java', 'java certified', 'selected', TO_DATE('2019-11-24 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2019-11-24 05:12:34','YYYY-MM-DD HH:MI:SS'));


insert into candidate_master(candidate_id,name,location,contact,email,qualification,
skills,certification,status,created_on,updated_on)values(candidate_id.nextVal, 'vaishnavi', 'alibaug', '1736458974', 'vai@gmail.com', 'be', 'java', 'java certified', 'selected', TO_DATE('2019-11-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2019-11-12 05:12:34','YYYY-MM-DD HH:MI:SS'));

insert into candidate_master(candidate_id,name,location,contact,email,qualification,
skills,certification,status,created_on,updated_on)values(candidate_id.nextVal, 'rupesh', 'mumbai', '8898776767', 'xyz@gmail.com', 'BE', '.Net', 'java certified', 'selected', TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));


create table assessment_master(assessment_id number(10) primary key,candidate_id int NOT NULL, hr_round_rating number(10) NOT NULL,technical_rating number(10) NOT NULL,
communication_rating number(10) NOT NULL, gd_round_rating number(10) NOT NULL,aptitute_round_rating number(10) NOT NULL,
overall_round_rating number(10) NOT NULL,status varchar(30) NOT NULL,created_on TIMESTAMP NOT NULL, updated_on TIMESTAMP NOT NULL, FOREIGN KEY(candidate_id) REFERENCES candidate_master(candidate_id));


insert into assessment_master(assessment_id, candidate_id, hr_round_rating, technical_rating, communication_rating,
gd_round_rating, aptitute_round_rating, overall_round_rating, status,created_on,updated_on)values(assessment_id.nextVal,500,6,5,4,2,2,5,'selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));

insert into assessment_master(assessment_id, candidate_id, hr_round_rating, technical_rating, communication_rating,
gd_round_rating, aptitute_round_rating, overall_round_rating, status,created_on,updated_on)values(assessment_id.nextVal,501,5,5,4,4,4,4,'selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));


insert into assessment_master(assessment_id, candidate_id, hr_round_rating, technical_rating, communication_rating,
gd_round_rating, aptitute_round_rating, overall_round_rating, status,created_on,updated_on)values(assessment_id.nextVal,502,1,2,2,1,3,5,'not selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));


insert into assessment_master(assessment_id, candidate_id, hr_round_rating, technical_rating, communication_rating,
gd_round_rating, aptitute_round_rating, overall_round_rating, status,created_on,updated_on)values(assessment_id.nextVal,503,5,1,2,2,2,4,'not selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));


insert into assessment_master(assessment_id, candidate_id, hr_round_rating, technical_rating, communication_rating,
gd_round_rating, aptitute_round_rating, overall_round_rating, status,created_on,updated_on)values(assessment_id.nextVal,504,3,5,5,1,1,4,' not selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'),TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'));


create table request_master(request_id int primary key,job_description
varchar(40) NOT NULL,required_qualification varchar(40) NOT NULL,required_skillset
varchar(40) NOT NULL,experience varchar(30) NOT NULL,resource_required number(20) NOT NULL,
recruited number(20) NOT NULL,status varchar(30) NOT NULL,created_on TIMESTAMP NOT NULL,
  updated_on TIMESTAMP NOT NULL, resource_comment varchar2(100));

insert into request_master(request_id, job_description,required_qualification,
required_skillset,experience,resource_required,recruited,status,
created_on,updated_on, resource_comment)values(request_sequence.nextVal,'HR','MBA','communication','2year',6,3,'selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'),'1 condidate selected');

insert into request_master(request_id,job_description,required_qualification,
required_skillset,experience,resource_required,recruited,status,
created_on,updated_on,resource_comment)values(request_sequence.nextVal,'HR','MBA','communication','2year',6,3,'selected',TO_DATE('2016-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'),'2 condidate selected');

insert into request_master(request_id,job_description,required_qualification,
required_skillset,experience,resource_required,recruited,status,
created_on,updated_on,resource_comment)values(request_sequence.nextVal,'TL','masters','communication technical','4year',3,1,'selected',TO_DATE('2018-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2019-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'),'1 condidate selected');

insert into request_master(request_id,job_description,required_qualification,
required_skillset,experience,resource_required,recruited,status,
created_on,updated_on,resource_comment)values(request_sequence.nextVal,'tester','gradution','technical, communication','3year',4,2,'selected',TO_DATE('2013-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2018-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'),'1 condidate selected');

insert into request_master(request_id,job_description,required_qualification,
required_skillset,experience,resource_required,recruited,status,
created_on,updated_on,resource_comment)values(request_sequence.nextVal,'Java Developer','gradution','technical,communication','3year',4,2,'selected',TO_DATE('2012-02-12 11:12:34','YYYY-MM-DD HH:MI:SS'), TO_DATE('2016-01-12 05:12:34','YYYY-MM-DD HH:MI:SS'),'1 condidate selected');





