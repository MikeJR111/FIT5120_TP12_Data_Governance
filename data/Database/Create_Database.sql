CREATE DATABASE tp12_gender_inequality;

USE tp12_gender_inequality;

Create Table gender (
	gender varchar(5) primary key,
    gender_desc varchar(100)
);

CREATE Table state(
	state_abr varchar(10) primary key,
	state_name varchar(10) UNIQUE ,
    state_desc varchar(100)
);

CREATE Table individual(
	gender varchar(5),
    state_abr varchar(10),
    age_range varchar(30),
    med_salary int

);

ALTER TABLE individual
ADD PRIMARY KEY (gender,state_abr, age_range);
ALTER TABLE individual
ADD FOREIGN KEY (gender) REFERENCES gender(gender);
ALTER TABLE individual
ADD FOREIGN KEY (state_abr) REFERENCES state(state_abr);


CREATE Table industry (
	industry_name varchar(100),
    gender varchar(5),
    industry_desc varchar(1000),
    salary int

);

ALTER TABLE industry
ADD PRIMARY KEY (industry_name,gender);
ALTER TABLE individual
ADD FOREIGN KEY (gender) REFERENCES gender(gender);