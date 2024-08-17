USE BUDT703_Project_0503_08;



CREATE TABLE [FoodAdvisor.Restaurant] (
rstId VARCHAR(10) NOT NULL,
rstName VARCHAR(30),
rstCategory VARCHAR(20),
rstPriceRange VARCHAR(20),
rstOpnHrs TIME,
rstClsHrs TIME,
rstRating DECIMAL(2,1),
rstLocation VARCHAR(100),
rstPhone CHAR(11),
rstWebsite VARCHAR(100),
CONSTRAINT pk_Restaurant_rstId PRIMARY KEY (rstId) )


CREATE TABLE [FoodAdvisor.Customer] (
	custId VARCHAR(20) NOT NULL,
	custName VARCHAR(20),
	custMenberSince CHAR(4),
	custCity VARCHAR(20),
	custState VARCHAR(20),
	CONSTRAINT pk_Customer_custId PRIMARY KEY (custId) 
	)

CREATE TABLE [FoodAdvisor.Cuisine](
	rstId VARCHAR(10) NOT NULL,
	csnName VARCHAR(20) NOT NULL,
	csnDish VARCHAR(20),
	csnHighlight VARCHAR(20)
	CONSTRAINT pk_Cuisine_rstId_csnName PRIMARY KEY (rstId,csnName),
	CONSTRAINT fk_ServedMeal_rstId FOREIGN KEY (rstId)
	REFERENCES [FoodAdvisor.Restaurant] (rstId)
	ON DELETE CASCADE ON UPDATE CASCADE)


CREATE TABLE [FoodAdvisor.Service] ( 
	srvId CHAR(3) NOT NULL,
	srvType VARCHAR(20),
	srvSftMeasure VARCHAR(20),
CONSTRAINT pk_Service_srvId PRIMARY KEY (srvId))


CREATE TABLE [FoodAdvisor.ServedMeal] (
srvId CHAR(3) NOT NULL,
srvMeal VARCHAR(20) NOT NULL,
CONSTRAINT pk_ServedMeal_srvId_srvMeal PRIMARY KEY (srvId, srvMeal),
CONSTRAINT fk_ServedMeal_srvId FOREIGN KEY (srvId)
	REFERENCES [FoodAdvisor.Service] (srvId)
	ON DELETE CASCADE ON UPDATE CASCADE )


CREATE TABLE [FoodAdvisor.Offer] (
	rstId VARCHAR(10) NOT NULL,
	srvId CHAR(3) NOT NULL,
	srvOffered VARCHAR(20),
	CONSTRAINT pk_Offer_rstId__srvId PRIMARY KEY (rstId,srvId),
	CONSTRAINT fk_Offer_rstId FOREIGN KEY (rstId)
		REFERENCES  [FoodAdvisor.Restaurant] (rstId)
		ON DELETE NO ACTION ON UPDATE CASCADE ,
	CONSTRAINT fk_Offer_srvId FOREIGN KEY (srvId)
		REFERENCES  [FoodAdvisor.Service] (srvId)
		ON DELETE NO ACTION ON UPDATE CASCADE ) 



CREATE TABLE [FoodAdvisor.Review] (
rvwId CHAR(10) NOT NULL,
rvwDesc VARCHAR(50),
rvwDate DATE,
rvwHelpfulVotes INTEGER,
rvwRating DECIMAL(2,1),
rstId VARCHAR(10),
custId VARCHAR(20),
CONSTRAINT pk_Review_rvwId PRIMARY KEY (rvwId),
CONSTRAINT fk_Review_rstId FOREIGN KEY (rstId)
REFERENCES [FoodAdvisor.Restaurant] (rstId)
ON DELETE NO ACTION ON UPDATE CASCADE,
CONSTRAINT fk_Review_custId FOREIGN KEY (custId)
REFERENCES [FoodAdvisor.Customer] (custId)
ON DELETE NO ACTION ON UPDATE CASCADE)



