-- CREATE SCHEMA "MTAMS" ;
SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ACCOUNT"
--

-- DROP TABLE  "ACCOUNT";
CREATE TABLE "ACCOUNT" (
  "IDACCOUNT" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ACCOUNT" VARCHAR(45) NOT NULL,
  "PASSWORD" VARCHAR(512) NOT NULL,
  "SALT" VARCHAR(45) DEFAULT NULL,
  "DATECREATED" TIMESTAMP  DEFAULT NULL,
  "DATELOGIN" TIMESTAMP  DEFAULT NULL,
  PRIMARY KEY ("IDACCOUNT")
);

--
-- DUMPING DATA FOR TABLE "ACCOUNT"
--
-- ORDER BY:  "IDACCOUNT"

-- LOCK TABLE "ACCOUNT" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "CONFERENCE"
--

-- DROP TABLE  "CONFERENCE";
CREATE TABLE "CONFERENCE" (
  "IDCONFERENCE" INT NOT NULL,
  "CONFERENCENAME" VARCHAR(45) DEFAULT NULL,
  "WEBPAGE" VARCHAR(45) DEFAULT NULL,
  "COUNTRY" VARCHAR(45) DEFAULT NULL,
  "CITY" VARCHAR(45) DEFAULT NULL,
  "PRESENTING" SMALLINT DEFAULT NULL , --COMMENT ARE YOU PRESENTING\N,
  "PRESENTATIONTITLE" VARCHAR(45) DEFAULT NULL,
  "AUTHORS" VARCHAR(45) DEFAULT NULL,
  "OTHERREASONATTENDANCE" VARCHAR(45) DEFAULT NULL,
  "DATEMSAPRESENTATION" TIMESTAMP  DEFAULT NULL,
  "CONFERENCEDURATION" INT DEFAULT NULL,
  "DATEFROM" TIMESTAMP  DEFAULT NULL,
  "DATETO" TIMESTAMP  DEFAULT NULL,
  "REPLACEMENT" VARCHAR(45) DEFAULT NULL , --COMMENT 'DO YOU NEED COVERAGE FOR TEACHING COMITMENTS\N',
  "REPLACEMENTARRANGMENTS" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDCONFERENCE")
);

--
-- DUMPING DATA FOR TABLE "CONFERENCE"
--
-- ORDER BY:  "IDCONFERENCE"

-- LOCK TABLE "CONFERENCE" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "COUNTRYLOOKUP"
--

-- DROP TABLE  "COUNTRYLOOKUP";
CREATE TABLE "COUNTRYLOOKUP" (
  "IDCOUNTRYLOOKUP" INT NOT NULL,
  "COUNTRY" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDCOUNTRYLOOKUP")
);

--
-- DUMPING DATA FOR TABLE "COUNTRYLOOKUP"
--
-- ORDER BY:  "IDCOUNTRYLOOKUP"

-- LOCK TABLE "COUNTRYLOOKUP" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "DEPARTMENTLOOKUP"
--

-- DROP TABLE  "DEPARTMENTLOOKUP";
CREATE TABLE "DEPARTMENTLOOKUP" (
  "DEPARTMENT" VARCHAR(45) NOT NULL DEFAULT 'ADMINISTRATION',
  PRIMARY KEY ("DEPARTMENT")
);

--
-- DUMPING DATA FOR TABLE "DEPARTMENTLOOKUP"
--
-- ORDER BY:  "DEPARTMENT"

-- LOCK TABLE "DEPARTMENTLOOKUP" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "FOREXORDER"
--

-- DROP TABLE  "FOREXORDER";
CREATE TABLE "FOREXORDER" (
  "IDFOREXORDER" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "DATEOFREQUIRED" TIMESTAMP  DEFAULT NULL,
  "DATEWILLBECONFIRMED" TIMESTAMP DEFAULT NULL,
  "TICKETNUM" VARCHAR(45) DEFAULT NULL,
  "VOYAGERNUM" VARCHAR(45) DEFAULT NULL,
  "DATEOFDEPART" TIMESTAMP DEFAULT NULL,
  "DATEOFRETURN" TIMESTAMP DEFAULT NULL,
  "TRAVELERSCHEQUES" VARCHAR(45) DEFAULT NULL,
  "CASH" VARCHAR(45) DEFAULT NULL,
  "CASHPASSPORT" VARCHAR(45) DEFAULT NULL,
  "CCTYPE" VARCHAR(45) DEFAULT NULL,
  "CCNUMBER" VARCHAR(45) DEFAULT NULL,
  "CCLAST3" VARCHAR(3) DEFAULT NULL,
  "CCEXPIRYDATE" TIMESTAMP  DEFAULT NULL,
  "CCPAYMENTAMOUNT" VARCHAR(45) DEFAULT NULL,
  "REASONFORTRAVEL" VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY ("IDFOREXORDER")
);

--
-- DUMPING DATA FOR TABLE "FOREXORDER"
--
-- ORDER BY:  "IDFOREXORDER"

-- LOCK TABLE "FOREXORDER" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "LEAVELOOKUP"
--

-- DROP TABLE  "LEAVELOOKUP";
CREATE TABLE "LEAVELOOKUP" (
  "LEAVETYPE" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("LEAVETYPE")
);

--
-- DUMPING DATA FOR TABLE "LEAVELOOKUP"
--
-- ORDER BY:  "LEAVETYPE"

-- LOCK TABLE "LEAVELOOKUP" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "MOTIVATION"
--

-- DROP TABLE  "MOTIVATION";
CREATE TABLE "MOTIVATION" (
"IDMOTIVATION" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "SUPPLIER" VARCHAR(45) DEFAULT NULL,
  "AMOUNT" VARCHAR(45) DEFAULT NULL,
  "COSTCENTER" VARCHAR(45) DEFAULT NULL,
  "MOTIVATION" VARCHAR(255) DEFAULT NULL,
  "BUDGET" INT DEFAULT NULL,
  "RECOMMENDED" VARCHAR(45) DEFAULT NULL,
  "REQUESTEDBY" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDMOTIVATION")
);

--
-- DUMPING DATA FOR TABLE "MOTIVATION"
--
-- ORDER BY:  "IDMOTIVATION"

-- LOCK TABLE "MOTIVATION" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "QUOTES"
--

-- DROP TABLE  "QUOTES";
CREATE TABLE "QUOTES" (
  "IDQUOTES" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "NEW" VARCHAR(45) DEFAULT NULL , --COMMENT 'NEW OR AMENDED\N',
  "COSTCENTER" VARCHAR(45) DEFAULT NULL,
  "DISCRITPTION" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDQUOTES")
);

--
-- DUMPING DATA FOR TABLE "QUOTES"
--
-- ORDER BY:  "IDQUOTES"

-- LOCK TABLE "QUOTES" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ROLE"
--

-- DROP TABLE  "ROLE";
CREATE TABLE "ROLE" (
  "IDROLES" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ROLE" VARCHAR(45) NOT NULL,
  "DISCRITPTION" VARCHAR(512) DEFAULT NULL,
  PRIMARY KEY ("IDROLES")
);

--
-- DUMPING DATA FOR TABLE "ROLE"
--
-- ORDER BY:  "IDROLES"

-- LOCK TABLE "ROLE" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "TASK"
--

-- DROP TABLE  "TASK";
CREATE TABLE "TASK" (
  "IDTASKS" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "TASK" VARCHAR(45) DEFAULT NULL,
  "DESCRIPTION" VARCHAR(512) DEFAULT NULL,
  PRIMARY KEY ("IDTASKS")
);

--
-- DUMPING DATA FOR TABLE "TASK"
--
-- ORDER BY:  "IDTASKS"

-- LOCK TABLE "TASK" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "TITLE"
--

-- DROP TABLE  "TITLE";
CREATE TABLE "TITLE" (
  "TITLE" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("TITLE")
);

--
-- DUMPING DATA FOR TABLE "TITLE"
--
-- ORDER BY:  "TITLE"

-- LOCK TABLE "TITLE" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ACCOMODATIONQUOTES"
--

-- DROP TABLE  "ACCOMODATIONQUOTES";
CREATE TABLE "ACCOMODATIONQUOTES" (
  "IDACCOMODATIONQUOTES" INT NOT NULL,
  "DATECHECKIN" TIMESTAMP  DEFAULT NULL,
  "DATECHECKOUT" TIMESTAMP  DEFAULT NULL,
  "COUNTRY" VARCHAR(45) DEFAULT NULL,
  "CITY" VARCHAR(45) DEFAULT NULL,
  "DISCRITPTION" VARCHAR(45) DEFAULT NULL,
  "ACCOMODATIONPROVIDER" VARCHAR(45) DEFAULT NULL,
  "QUOTESOURCE" VARCHAR(45) DEFAULT NULL,
  "QUOTECOST" VARCHAR(45) DEFAULT NULL,
  "QUOTES_IDQUOTES" INT NOT NULL,
  PRIMARY KEY ("IDACCOMODATIONQUOTES"),
  CONSTRAINT "FK_ACCOMODATIONQUOTES_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "ACCOMODATIONQUOTES"
--
-- ORDER BY:  "IDACCOMODATIONQUOTES"

-- LOCK TABLE "ACCOMODATIONQUOTES" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "CARQUOTES"
--

-- DROP TABLE  "CARQUOTES";
CREATE TABLE "CARQUOTES" (
  "IDCARQUOTES" INT NOT NULL,
  "DATECOLLECT" TIMESTAMP  DEFAULT NULL,
  "DATERETURN" TIMESTAMP  DEFAULT NULL,
  "PROVIDER" VARCHAR(45) DEFAULT NULL,
  "DISCRITPTION" VARCHAR(45) DEFAULT NULL,
  "QUOTECOST" VARCHAR(45) DEFAULT NULL,
  "QUOTES_IDQUOTES" INT NOT NULL,
  PRIMARY KEY ("IDCARQUOTES"),
  CONSTRAINT "FK_CARQUOTES_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "CARQUOTES"
--
-- ORDER BY:  "IDCARQUOTES"

-- LOCK TABLE "CARQUOTES" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "CITYLOOKUP"
--

-- DROP TABLE  "CITYLOOKUP";
CREATE TABLE "CITYLOOKUP" (
  "IDCITYLOOKUP" INT NOT NULL,
  "CITY" VARCHAR(45) DEFAULT NULL,
  "COUNTRYLOOKUP_IDCOUNTRYLOOKUP" INT NOT NULL,
  PRIMARY KEY ("IDCITYLOOKUP","COUNTRYLOOKUP_IDCOUNTRYLOOKUP"),
  CONSTRAINT "FK_CITYLOOKUP_COUNTRYLOOKUP1" FOREIGN KEY ("COUNTRYLOOKUP_IDCOUNTRYLOOKUP") REFERENCES "COUNTRYLOOKUP" ("IDCOUNTRYLOOKUP") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "CITYLOOKUP"
--
-- ORDER BY:  "IDCITYLOOKUP","COUNTRYLOOKUP_IDCOUNTRYLOOKUP"

-- LOCK TABLE "CITYLOOKUP" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "FINALCOSTING"
--

-- DROP TABLE  "FINALCOSTING";
CREATE TABLE "FINALCOSTING" (
  "IDFINALCOSTING" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "AIRFAREBUDGET" FLOAT DEFAULT NULL,
  "AIRFARECOST" FLOAT DEFAULT NULL,
  "CARRENTALBUDGET" FLOAT DEFAULT NULL,
  "CARRENTALCOST" FLOAT DEFAULT NULL,
  "ACCOMMODATIONBUDGET" FLOAT DEFAULT NULL,
  "ACCOMMODATIONCOST" FLOAT DEFAULT NULL,
  "QUOTES_IDQUOTES" INT NOT NULL,
  PRIMARY KEY ("IDFINALCOSTING"),
  CONSTRAINT "FK_FINALCOSTING_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "FINALCOSTING"
--
-- ORDER BY:  "IDFINALCOSTING"

-- LOCK TABLE "FINALCOSTING" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "FLIGHTQUOTES"
--

-- DROP TABLE  "FLIGHTQUOTES";
CREATE TABLE "FLIGHTQUOTES" (
  "IDFLIGHTQUOTES" INT NOT NULL,
  "FLIGHTNUMBER" VARCHAR(45) DEFAULT NULL,
  "FLIGHTFROM" VARCHAR(45) DEFAULT NULL,
  "FLIGHTTO" VARCHAR(45) DEFAULT NULL,
  "DATEDEPARTURE" TIMESTAMP  DEFAULT NULL,
  "DATEARRIVAL" TIMESTAMP  DEFAULT NULL,
  "QUOTESOURCEDISCRIPTION" VARCHAR(45) DEFAULT NULL,
  "QUOTESOURCE" VARCHAR(45) DEFAULT NULL,
  "QUOTECOST" VARCHAR(45) DEFAULT NULL,
  "QUOTES_IDQUOTES" INT NOT NULL,
  PRIMARY KEY ("IDFLIGHTQUOTES"),
  CONSTRAINT "FK_FLIGHTQUOTES_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "FLIGHTQUOTES"
--
-- ORDER BY:  "IDFLIGHTQUOTES"

-- LOCK TABLE "FLIGHTQUOTES" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "SESSION"
--

-- DROP TABLE  "SESSION";
CREATE TABLE "SESSION" (
  "IDSESSIONS" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ACCOUNTID" INT NOT NULL,
  "DATE" TIMESTAMP  DEFAULT NULL,
  "EXPIRES" TIMESTAMP  DEFAULT NULL,
  PRIMARY KEY ("IDSESSIONS","ACCOUNTID"),
  CONSTRAINT "FK_SESSIONS_USERS1" FOREIGN KEY ("ACCOUNTID") REFERENCES "ACCOUNT" ("IDACCOUNT") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "SESSION"
--
-- ORDER BY:  "IDSESSIONS","ACCOUNTID"

-- LOCK TABLE "SESSION" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "TRAVELERPROFILE"
--

-- DROP TABLE  "TRAVELERPROFILE";
CREATE TABLE "TRAVELERPROFILE" (
  "IDTRAVELERPROFILE" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ACCOUNTID" INT NOT NULL,
  "STAFFID" VARCHAR(45) DEFAULT NULL,
  "DEPARTMENT" VARCHAR(45) DEFAULT NULL,
  "POSITION" VARCHAR(45) DEFAULT NULL,
  "TRAVELBOOKER" VARCHAR(45) DEFAULT NULL,
  "FIRSTNAME" VARCHAR(45) DEFAULT NULL,  
  "FAMILYNAME" VARCHAR(45) DEFAULT NULL,
  "MIDDLENAME" VARCHAR(45) DEFAULT NULL,
  "TITLE" VARCHAR(45) DEFAULT NULL,  
  "IDNUMBER" VARCHAR(20) DEFAULT NULL,   
  "BUSINESSADDRESS" VARCHAR(255) DEFAULT NULL,
  "BUSINESSPHONE" VARCHAR(15) DEFAULT NULL,
  "BUSINESSFAX" VARCHAR(15) DEFAULT NULL,
  "HOMEADDRESS" VARCHAR(255) DEFAULT NULL,
  "MOBILEPHONE" VARCHAR(15) DEFAULT NULL,
  "HOMEPHONE" VARCHAR(15) DEFAULT NULL,
  "HOMEEMAIL" VARCHAR(45) DEFAULT NULL,
  "SPOUSENAME" VARCHAR(45) DEFAULT NULL,
  "SPOUSECONTACTNUMBER" VARCHAR(45) DEFAULT NULL,
  "SPOUSEEMAIL" VARCHAR(45) DEFAULT NULL,
  "DOCTORSNAME" VARCHAR(45) DEFAULT NULL,
  "DOCTORSCONCTACTNUMBER" VARCHAR(45) DEFAULT NULL,
  "DOCTORSEMAIL" VARCHAR(45) DEFAULT NULL,
  "KNOWNMEDICALCONDITIONS" VARCHAR(512) DEFAULT NULL,  
  "CARPREFERENCE1" VARCHAR(200) DEFAULT NULL,
  "CARPREFERENCE2" VARCHAR(200) DEFAULT NULL,
  "CARGROUP" VARCHAR(45) DEFAULT NULL,
  "MANUALAUTOMATIC" VARCHAR(45) DEFAULT NULL,
  "AIRCON" VARCHAR(45) DEFAULT NULL,
  "CARADDITIONALREQUIREMENTS" VARCHAR(500) DEFAULT NULL,
  "HOTELPREFRENCE" VARCHAR(200) DEFAULT NULL,
  "FREQUENTGUESTNUM" VARCHAR(45) DEFAULT NULL,
  "SMOKING" VARCHAR(45) DEFAULT NULL,
  "HOTELADDITIONALREQUIREMENTS" VARCHAR(500) DEFAULT NULL,
  "SEATINGPOSITION" VARCHAR(45) DEFAULT NULL,
  "SEATINGLOCATION" VARCHAR(45) DEFAULT NULL,
  "CLASSDOMESTIC" VARCHAR(45) DEFAULT NULL,
  "CLASSINTERNATIONAL" VARCHAR(45) DEFAULT NULL,
  "MEALREQUIREMENTS" VARCHAR(500) DEFAULT NULL,
  "AIRADDITIONALREQUIREMENTS" VARCHAR(500) DEFAULT NULL,
  "ATTACHMENTID" VARCHAR(45) DEFAULT NULL,
  "DATECREATED" TIMESTAMP  DEFAULT NULL,
  "DATEMODIFIED" TIMESTAMP  DEFAULT NULL,
  PRIMARY KEY ("IDTRAVELERPROFILE"),
  CONSTRAINT "FK_TRAVELERPROFILE_1" FOREIGN KEY ("ACCOUNTID") REFERENCES "ACCOUNT" ("IDACCOUNT") ON DELETE NO ACTION ON UPDATE NO ACTION
 );

--
-- DUMPING DATA FOR TABLE "TRAVELERPROFILE"
--
-- ORDER BY:  "IDTRAVELERPROFILE"

-- LOCK TABLE "TRAVELERPROFILE" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "REWARDSPROGRAM"
--

-- DROP TABLE  "REWARDSPROGRAM";
CREATE TABLE "REWARDSPROGRAM" (
  "IDREWARDSPROGRAM" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "DESCRIPTION" VARCHAR(100) DEFAULT NULL,
  "MEMBERSHIPTYPE" VARCHAR(45) DEFAULT NULL,
  "PROVIDER" VARCHAR(45) DEFAULT NULL , --COMMENT 'THE COMPANY THE PROVIDES THE REWARDS PROGRAM',
  "MEMBERSHIPNUMBER" VARCHAR(45) DEFAULT NULL,
  "TRAVELERPROFILE_IDTRAVELERPROFILE" INT NOT NULL,
  PRIMARY KEY ("IDREWARDSPROGRAM"),
  CONSTRAINT "FK_REWARDSPROGRAM_TRAVELERPROFILE1" FOREIGN KEY ("TRAVELERPROFILE_IDTRAVELERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "REWARDSPROGRAM"
--
-- ORDER BY:  "IDREWARDSPROGRAM"

-- LOCK TABLE "REWARDSPROGRAM" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "TRAVELDOCUMENT"
--

-- DROP TABLE  "TRAVELDOCUMENT";
CREATE TABLE "TRAVELDOCUMENT" (
  "IDTRAVELDOCUMENTS" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "PASSPORTNUMBER" VARCHAR(12) DEFAULT NULL,
  "COUNTRY" VARCHAR(45) DEFAULT NULL,
  "DATEOFISSUE" TIMESTAMP  DEFAULT NULL,
  "EXPIRYDATE" TIMESTAMP  DEFAULT NULL,
  "VALIDVISA" VARCHAR(45) DEFAULT NULL,
  "TRAVLERPROFILE_IDTRAVLERPROFILE" INT NOT NULL,
  PRIMARY KEY ("IDTRAVELDOCUMENTS"),
  CONSTRAINT "FK_TRAVELDOCUMENTS_TRAVELERPROFILE1" FOREIGN KEY ("TRAVLERPROFILE_IDTRAVLERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "TRAVELDOCUMENT"
--
-- ORDER BY:  "IDTRAVELDOCUMENTS"

-- LOCK TABLE "TRAVELDOCUMENT" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "TRAVEL"
--

-- DROP TABLE  "TRAVEL";
CREATE TABLE "TRAVEL" (
  "IDTRAVEL" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "DATEDEPARTURE" TIMESTAMP  DEFAULT NULL,
  "DATERETURN" TIMESTAMP  DEFAULT NULL,
  "DESCRIPTION" VARCHAR(100) DEFAULT NULL,
  "CONFERENCE_IDCONFERENCE" INT NOT NULL,
  PRIMARY KEY ("IDTRAVEL"),
  CONSTRAINT "FK_TRAVEL_CONFERENCE1" FOREIGN KEY ("CONFERENCE_IDCONFERENCE") REFERENCES "CONFERENCE" ("IDCONFERENCE") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "TRAVEL"
--
-- ORDER BY:  "IDTRAVEL"

-- LOCK TABLE "TRAVEL" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ITINERARY"
--

-- DROP TABLE  "ITINERARY";
CREATE TABLE "ITINERARY" (
  "IDITINERARY" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "DATE" TIMESTAMP  DEFAULT NULL,
  "DATEFROM" TIMESTAMP  DEFAULT NULL,
  "DATETO" TIMESTAMP  DEFAULT NULL,
  "LEAVETYPE" VARCHAR(45) DEFAULT NULL , --COMMENT 'BUSINESS OR OTHER LEAVE\N',
  "LEAVEDISCRITPTION" VARCHAR(45) DEFAULT NULL,
  "TRAVELDAY" VARCHAR(45) DEFAULT NULL , --COMMENT 'OR NON WORKING DAY\NOTHER',
  "TRAVEL_IDTRAVEL" INT NOT NULL,
  "DESTINATION" VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY ("IDITINERARY"),
  CONSTRAINT "FK_ITINERARY_TRAVEL1" FOREIGN KEY ("TRAVEL_IDTRAVEL") REFERENCES "TRAVEL" ("IDTRAVEL") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "ITINERARY"
--
-- ORDER BY:  "IDITINERARY"

-- LOCK TABLE "ITINERARY" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ACCOUNTROLE"
--

-- DROP TABLE  "ACCOUNTROLE";
CREATE TABLE "ACCOUNTROLE" (
  "IDUSERROLES" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "ACCOUNTID" INT DEFAULT NULL,
  "ROLEID" INT DEFAULT NULL,
  PRIMARY KEY ("IDUSERROLES"),
  CONSTRAINT "FK_USERROLES_1" FOREIGN KEY ("ROLEID") REFERENCES "ROLE" ("IDROLES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_USERROLES_2" FOREIGN KEY ("ACCOUNTID") REFERENCES "ACCOUNT" ("IDACCOUNT") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "ACCOUNTROLE"
--
-- ORDER BY:  "IDUSERROLES"

-- LOCK TABLE "ACCOUNTROLE" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "PERMISSION"
--

-- DROP TABLE  "PERMISSION";
CREATE TABLE "PERMISSION" (
  "IDPERMISSIONS" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "PERMISSION" VARCHAR(45) DEFAULT NULL,
  "DISCRITPTION" VARCHAR(45) DEFAULT NULL,
  "CREATEPERM" SMALLINT DEFAULT 1,
  "DELETEPERM" SMALLINT DEFAULT 1,
  "UPDATEPERM" SMALLINT DEFAULT 1,
  "READPERM" SMALLINT DEFAULT 0,
  "GRANTPERM" SMALLINT DEFAULT 1,
  "TASKS_IDTASKS" INT NOT NULL,
  "ROLES_IDROLES" INT NOT NULL,
  PRIMARY KEY ("IDPERMISSIONS"),
  CONSTRAINT "FK_PERMISSIONS_TASKS1" FOREIGN KEY ("TASKS_IDTASKS") REFERENCES "TASK" ("IDTASKS") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_PERMISSIONS_ROLES1" FOREIGN KEY ("ROLES_IDROLES") REFERENCES "ROLE" ("IDROLES") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "PERMISSION"
--
-- ORDER BY:  "IDPERMISSIONS"

-- LOCK TABLE "PERMISSION" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "APPLICATION"
--

-- DROP TABLE  "APPLICATION";
CREATE TABLE "APPLICATION" (
  "IDAPPLICATION" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "DESCRIPTION" VARCHAR(100) DEFAULT NULL,
  "TRAVELERPROFILE_IDTRAVELERPROFILE" INT NOT NULL,
  "QUOTES_IDQUOTES" INT NOT NULL,
  "FINALCOSTING_IDFINALCOSTING" INT NOT NULL,
  "TRAVEL_IDTRAVEL" INT NOT NULL,
  "ACCOUNT_IDACCOUNT" INT NOT NULL,
  "FOREXORDER_IDFOREXORDER" INT NOT NULL,
  "MOTIVATION_IDMOTIVATION" INT NOT NULL,
  "DATEMODIFIED" TIMESTAMP  DEFAULT NULL,
  PRIMARY KEY ("IDAPPLICATION"),
  CONSTRAINT "FK_APPLICATION_TRAVELERPROFILE1" FOREIGN KEY ("TRAVELERPROFILE_IDTRAVELERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPLICATION_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPLICATION_ACCOUNT1" FOREIGN KEY ("ACCOUNT_IDACCOUNT") REFERENCES "ACCOUNT" ("IDACCOUNT") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPLICATION_FOREXORDER1" FOREIGN KEY ("FOREXORDER_IDFOREXORDER") REFERENCES "FOREXORDER" ("IDFOREXORDER") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPLICATION_MOTIVATION1" FOREIGN KEY ("MOTIVATION_IDMOTIVATION") REFERENCES "MOTIVATION" ("IDMOTIVATION") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPLICATION_FINALCOSTING1" FOREIGN KEY ("FINALCOSTING_IDFINALCOSTING") REFERENCES "FINALCOSTING" ("IDFINALCOSTING") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPLICATION_TRAVEL1" FOREIGN KEY ("TRAVEL_IDTRAVEL") REFERENCES "TRAVEL" ("IDTRAVEL") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "APPLICATION"
--
-- ORDER BY:  "IDAPPLICATION"

-- LOCK TABLE "APPLICATION" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "APPROVAL"
--

-- DROP TABLE  "APPROVAL";
CREATE TABLE "APPROVAL" (
  "IDAPPROVAL" INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
  "SECTIONAPPROVED" INT DEFAULT NULL,
  "NOTES" VARCHAR(200) DEFAULT NULL,
  "DATE" TIMESTAMP  DEFAULT NULL,
  "APPLICATION_IDAPPLICATION" INT NOT NULL,
  "ACCOUNT_IDACCOUNT" INT NOT NULL,
  PRIMARY KEY ("IDAPPROVAL"),
  CONSTRAINT "FK_APPROVAL_APPLICATION1" FOREIGN KEY ("APPLICATION_IDAPPLICATION") REFERENCES "APPLICATION" ("IDAPPLICATION") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_APPROVAL_ACCOUNT1" FOREIGN KEY ("ACCOUNT_IDACCOUNT") REFERENCES "ACCOUNT" ("IDACCOUNT") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "APPROVAL"
--
-- ORDER BY:  "IDAPPROVAL"

-- LOCK TABLE "APPROVAL" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:03
-- CREATE SCHEMA "MTAMS" ;
-- SET SCHEMA  "MTAMS";
-- MYSQL DUMP 10.13  DISTRIB 5.5.29, FOR DEBIAN-LINUX-GNU (X86_64)
--
-- HOST: LOCALHOST    DATABASE: MTAMS
-- ------------------------------------------------------
-- SERVER VERSION	5.5.29-0UBUNTU0.12.04.2


--
-- TABLE STRUCTURE FOR TABLE "ATTACHEMENT"
--

-- DROP TABLE  "ATTACHEMENT";
CREATE TABLE "ATTACHEMENT" (
  "IDATTACHEMENT" INT NOT NULL,
  "DISCRIPTION" VARCHAR(45) DEFAULT NULL,
  "DOCUMENTLOCATION" VARCHAR(45) DEFAULT NULL,
  "CONFERENCE_IDCONFERENCE" INT DEFAULT NULL,
  "ITINERARY_IDITINERARY" INT DEFAULT NULL,
  "APPROVAL_IDAPPROVAL" INT DEFAULT NULL,
  "APPLICATION_IDAPPLICATION" INT DEFAULT NULL,
  "TRAVEL_IDTRAVEL" INT DEFAULT NULL,
  "FINALCOSTING_IDFINALCOSTING" INT DEFAULT NULL,
  "CARQUOTES_IDCARQUOTES" INT DEFAULT NULL,
  "QUOTES_IDQUOTES" INT DEFAULT NULL,
  "ACCOMODATIONQUOTES_IDACCOMODATIONQUOTES" INT DEFAULT NULL,
  "FLIGHTQUOTES_IDFLIGHTQUOTES" INT DEFAULT NULL,
  "TRAVELDOCUMENT_IDTRAVELDOCUMENTS" INT DEFAULT NULL,
  "TRAVELERPROFILE_IDTRAVELERPROFILE" INT DEFAULT NULL,
  "REWARDSPROGRAM_IDREWARDSPROGRAM" INT DEFAULT NULL,
  "FOREXORDER_IDFOREXORDER" INT DEFAULT NULL,
  "MOTIVATION_IDMOTIVATION" INT DEFAULT NULL,
  PRIMARY KEY ("IDATTACHEMENT"),
  CONSTRAINT "FK_ATTACHEMENT_CONFERENCE1" FOREIGN KEY ("CONFERENCE_IDCONFERENCE") REFERENCES "CONFERENCE" ("IDCONFERENCE") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_ITINERARY1" FOREIGN KEY ("ITINERARY_IDITINERARY") REFERENCES "ITINERARY" ("IDITINERARY") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_APPROVAL1" FOREIGN KEY ("APPROVAL_IDAPPROVAL") REFERENCES "APPROVAL" ("IDAPPROVAL") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_APPLICATION1" FOREIGN KEY ("APPLICATION_IDAPPLICATION") REFERENCES "APPLICATION" ("IDAPPLICATION") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_TRAVEL1" FOREIGN KEY ("TRAVEL_IDTRAVEL") REFERENCES "TRAVEL" ("IDTRAVEL") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_FINALCOSTING1" FOREIGN KEY ("FINALCOSTING_IDFINALCOSTING") REFERENCES "FINALCOSTING" ("IDFINALCOSTING") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_CARQUOTES1" FOREIGN KEY ("CARQUOTES_IDCARQUOTES") REFERENCES "CARQUOTES" ("IDCARQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_QUOTES1" FOREIGN KEY ("QUOTES_IDQUOTES") REFERENCES "QUOTES" ("IDQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_ACCOMODATIONQUOTES1" FOREIGN KEY ("ACCOMODATIONQUOTES_IDACCOMODATIONQUOTES") REFERENCES "ACCOMODATIONQUOTES" ("IDACCOMODATIONQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_FLIGHTQUOTES1" FOREIGN KEY ("FLIGHTQUOTES_IDFLIGHTQUOTES") REFERENCES "FLIGHTQUOTES" ("IDFLIGHTQUOTES") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_TRAVELDOCUMENT1" FOREIGN KEY ("TRAVELDOCUMENT_IDTRAVELDOCUMENTS") REFERENCES "TRAVELDOCUMENT" ("IDTRAVELDOCUMENTS") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_TRAVELERPROFILE1" FOREIGN KEY ("TRAVELERPROFILE_IDTRAVELERPROFILE") REFERENCES "TRAVELERPROFILE" ("IDTRAVELERPROFILE") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_REWARDSPROGRAM1" FOREIGN KEY ("REWARDSPROGRAM_IDREWARDSPROGRAM") REFERENCES "REWARDSPROGRAM" ("IDREWARDSPROGRAM") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_FOREXORDER1" FOREIGN KEY ("FOREXORDER_IDFOREXORDER") REFERENCES "FOREXORDER" ("IDFOREXORDER") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "FK_ATTACHEMENT_MOTIVATION1" FOREIGN KEY ("MOTIVATION_IDMOTIVATION") REFERENCES "MOTIVATION" ("IDMOTIVATION") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- DUMPING DATA FOR TABLE "ATTACHEMENT"
--
-- ORDER BY:  "IDATTACHEMENT"

-- LOCK TABLE "ATTACHEMENT" IN EXCLUSIVE MODE;


-- DUMP COMPLETED ON 2013-04-26 19:33:02
