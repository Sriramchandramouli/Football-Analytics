--------------------------------------------------------
--  File created - Saturday-April-25-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CLUB_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "sri"."CLUB_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GOALS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "sri"."GOALS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PERSON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "sri"."PERSON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ATTACKING
--------------------------------------------------------

  CREATE TABLE "sri"."ATTACKING" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"SHOTS" NUMBER, 
	"CROSSES" NUMBER, 
	"OFFSIDES" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table CLUB
--------------------------------------------------------

  CREATE TABLE "sri"."CLUB" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"CLUB_DIRECTORY_ID" VARCHAR2(10 BYTE), 
	"POSITION" NUMBER, 
	"PLAYED" NUMBER, 
	"WON" NUMBER, 
	"DRAW" NUMBER, 
	"LOST" NUMBER, 
	"GOAL_DIFFERENCE" NUMBER, 
	"POINTS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table CLUB_DIRECTORY
--------------------------------------------------------

  CREATE TABLE "sri"."CLUB_DIRECTORY" 
   (	"CLUB_DIRECTORY_ID" VARCHAR2(10 BYTE), 
	"LEAGUE_ID" VARCHAR2(10 BYTE), 
	"CLUB_NAME" VARCHAR2(150 BYTE), 
	"ESTABLISHED_YEAR" NUMBER, 
	"NICKNAME" VARCHAR2(75 BYTE), 
	"HOME_STADIUM" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table CLUB_PERSON
--------------------------------------------------------

  CREATE TABLE "sri"."CLUB_PERSON" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"CHAIRMAN" VARCHAR2(75 BYTE), 
	"SECRETARY" VARCHAR2(75 BYTE), 
	"MANAGER" VARCHAR2(75 BYTE), 
	"ASST_MANAGER" VARCHAR2(75 BYTE), 
	"GK_COACH" VARCHAR2(75 BYTE), 
	"CLUB_DOCTOR" VARCHAR2(75 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table DEFENDING
--------------------------------------------------------

  CREATE TABLE "sri"."DEFENDING" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"GOALS_CONCEDED" NUMBER, 
	"SAVES_MADE" NUMBER, 
	"OWN_GOALS" NUMBER, 
	"BLOCKS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table DISCIPLINARY
--------------------------------------------------------

  CREATE TABLE "sri"."DISCIPLINARY" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"FOULS" NUMBER, 
	"YELLOW_CARDS" NUMBER, 
	"RED_CARDS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table FRANCHISE
--------------------------------------------------------

  CREATE TABLE "sri"."FRANCHISE" 
   (	"FRANCHISE_ID" VARCHAR2(10 BYTE), 
	"CLUB_ID" VARCHAR2(10 BYTE), 
	"NAME" VARCHAR2(75 BYTE), 
	"CONTRACT" NUMBER, 
	"BUDGET" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table GOALS
--------------------------------------------------------

  CREATE TABLE "sri"."GOALS" 
   (	"ROW_ID" NUMBER, 
	"CLUB_ID" VARCHAR2(10 BYTE), 
	"GOALS_SCORED" NUMBER, 
	"GOALS_CONCEDED" NUMBER, 
	"PENALITIES" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table LEAGUE
--------------------------------------------------------

  CREATE TABLE "sri"."LEAGUE" 
   (	"LEAGUE_ID" VARCHAR2(10 BYTE), 
	"LEAGUE_NAME" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "sri"."PERSON" 
   (	"PERSON_ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"DOB" VARCHAR2(25 BYTE), 
	"AGE" NUMBER, 
	"HEIGHT" NUMBER(*,0), 
	"WEIGHT" NUMBER(*,0), 
	"NATIONALITY" VARCHAR2(75 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table SQUAD
--------------------------------------------------------

  CREATE TABLE "sri"."SQUAD" 
   (	"SQUAD_ID" VARCHAR2(10 BYTE), 
	"CLUB_ID" VARCHAR2(10 BYTE), 
	"PLAYER_NAME" VARCHAR2(150 BYTE), 
	"POSITION" VARCHAR2(15 BYTE), 
	"PLAYED" NUMBER, 
	"GOALS" NUMBER, 
	"YELLLOW_CARD" NUMBER, 
	"RED_CARD" NUMBER, 
	"PRICE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table STATISTICS
--------------------------------------------------------

  CREATE TABLE "sri"."STATISTICS" 
   (	"STATS_ID" VARCHAR2(10 BYTE), 
	"CLUB_ID" VARCHAR2(10 BYTE), 
	"GOALS_PREMATCH" NUMBER, 
	"GOALS_AGAINST" NUMBER, 
	"WINNING_STREAK" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table TRANSFER
--------------------------------------------------------

  CREATE TABLE "sri"."TRANSFER" 
   (	"TRANSFER_CATEGORY_ID" VARCHAR2(10 BYTE), 
	"CURRENT_TEAM" VARCHAR2(100 BYTE), 
	"NEW_TEAM" VARCHAR2(100 BYTE), 
	"TRANSFER_FEE" NUMBER, 
	"LOAN_FEE" NUMBER, 
	"WAGE" NUMBER, 
	"CONTRACT" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table TRANSFER_CATEGORY
--------------------------------------------------------

  CREATE TABLE "sri"."TRANSFER_CATEGORY" 
   (	"TRANSFER_CATEGORY_ID" VARCHAR2(10 BYTE), 
	"TRANSFER_CATEGORY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table UPCOMING_MATCHES
--------------------------------------------------------

  CREATE TABLE "sri"."UPCOMING_MATCHES" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"LEAGUE_ID" VARCHAR2(10 BYTE), 
	"FIXTURE" DATE, 
	"OPPONENT" VARCHAR2(75 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Table VIEW_ALL_RESULTS
--------------------------------------------------------

  CREATE TABLE "sri"."VIEW_ALL_RESULTS" 
   (	"CLUB_ID" VARCHAR2(10 BYTE), 
	"LEAGUE_ID" VARCHAR2(10 BYTE), 
	"FIXTURE" DATE, 
	"HOME_TEAM" VARCHAR2(75 BYTE), 
	"AWAY_TEAM" VARCHAR2(75 BYTE), 
	"STADIUM" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "EXAMPLE" ;
REM INSERTING into sri.ATTACKING
SET DEFINE OFF;
REM INSERTING into sri.CLUB
SET DEFINE OFF;
REM INSERTING into sri.CLUB_DIRECTORY
SET DEFINE OFF;
REM INSERTING into sri.CLUB_PERSON
SET DEFINE OFF;
REM INSERTING into sri.DEFENDING
SET DEFINE OFF;
REM INSERTING into sri.DISCIPLINARY
SET DEFINE OFF;
REM INSERTING into sri.FRANCHISE
SET DEFINE OFF;
REM INSERTING into sri.GOALS
SET DEFINE OFF;
REM INSERTING into sri.LEAGUE
SET DEFINE OFF;
REM INSERTING into sri.PERSON
SET DEFINE OFF;
REM INSERTING into sri.SQUAD
SET DEFINE OFF;
REM INSERTING into sri.STATISTICS
SET DEFINE OFF;
REM INSERTING into sri.TRANSFER
SET DEFINE OFF;
REM INSERTING into sri.TRANSFER_CATEGORY
SET DEFINE OFF;
REM INSERTING into sri.UPCOMING_MATCHES
SET DEFINE OFF;
REM INSERTING into sri.VIEW_ALL_RESULTS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index GOALS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."GOALS_PK" ON "sri"."GOALS" ("ROW_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index CLUB_DIRECTORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."CLUB_DIRECTORY_PK" ON "sri"."CLUB_DIRECTORY" ("CLUB_DIRECTORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index PERSON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."PERSON_PK" ON "sri"."PERSON" ("PERSON_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index TRANSFER_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."TRANSFER_CATEGORY_PK" ON "sri"."TRANSFER_CATEGORY" ("TRANSFER_CATEGORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index STATISTICS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."STATISTICS_PK" ON "sri"."STATISTICS" ("STATS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index CLUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."CLUB_PK" ON "sri"."CLUB" ("CLUB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index FRANCHISE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."FRANCHISE_PK" ON "sri"."FRANCHISE" ("FRANCHISE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  DDL for Index LEAGUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "sri"."LEAGUE_PK" ON "sri"."LEAGUE" ("LEAGUE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE" ;
--------------------------------------------------------
--  Constraints for Table CLUB
--------------------------------------------------------

  ALTER TABLE "sri"."CLUB" ADD CONSTRAINT "CLUB_PK" PRIMARY KEY ("CLUB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."CLUB" MODIFY ("CLUB_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLUB_DIRECTORY
--------------------------------------------------------

  ALTER TABLE "sri"."CLUB_DIRECTORY" ADD CONSTRAINT "CLUB_DIRECTORY_PK" PRIMARY KEY ("CLUB_DIRECTORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."CLUB_DIRECTORY" MODIFY ("CLUB_DIRECTORY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FRANCHISE
--------------------------------------------------------

  ALTER TABLE "sri"."FRANCHISE" ADD CONSTRAINT "FRANCHISE_PK" PRIMARY KEY ("FRANCHISE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."FRANCHISE" MODIFY ("FRANCHISE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GOALS
--------------------------------------------------------

  ALTER TABLE "sri"."GOALS" ADD CONSTRAINT "GOALS_PK" PRIMARY KEY ("ROW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."GOALS" MODIFY ("ROW_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LEAGUE
--------------------------------------------------------

  ALTER TABLE "sri"."LEAGUE" ADD CONSTRAINT "LEAGUE_PK" PRIMARY KEY ("LEAGUE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."LEAGUE" MODIFY ("LEAGUE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRANSFER_CATEGORY
--------------------------------------------------------

  ALTER TABLE "sri"."TRANSFER_CATEGORY" MODIFY ("TRANSFER_CATEGORY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "sri"."TRANSFER_CATEGORY" ADD CONSTRAINT "TRANSFER_CATEGORY_PK" PRIMARY KEY ("TRANSFER_CATEGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STATISTICS
--------------------------------------------------------

  ALTER TABLE "sri"."STATISTICS" ADD CONSTRAINT "STATISTICS_PK" PRIMARY KEY ("STATS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."STATISTICS" MODIFY ("STATS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "sri"."PERSON" ADD CONSTRAINT "PERSON_PK" PRIMARY KEY ("PERSON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "EXAMPLE"  ENABLE;
 
  ALTER TABLE "sri"."PERSON" MODIFY ("PERSON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ATTACKING
--------------------------------------------------------

  ALTER TABLE "sri"."ATTACKING" ADD CONSTRAINT "ATTACKING_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLUB
--------------------------------------------------------

  ALTER TABLE "sri"."CLUB" ADD CONSTRAINT "CLUB_FK1" FOREIGN KEY ("CLUB_DIRECTORY_ID")
	  REFERENCES "sri"."CLUB_DIRECTORY" ("CLUB_DIRECTORY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLUB_DIRECTORY
--------------------------------------------------------

  ALTER TABLE "sri"."CLUB_DIRECTORY" ADD CONSTRAINT "CLUB_DIRECTORY_FK1" FOREIGN KEY ("LEAGUE_ID")
	  REFERENCES "sri"."LEAGUE" ("LEAGUE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLUB_PERSON
--------------------------------------------------------

  ALTER TABLE "sri"."CLUB_PERSON" ADD CONSTRAINT "CLUB_PERSON_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEFENDING
--------------------------------------------------------

  ALTER TABLE "sri"."DEFENDING" ADD CONSTRAINT "DEFENDING_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DISCIPLINARY
--------------------------------------------------------

  ALTER TABLE "sri"."DISCIPLINARY" ADD CONSTRAINT "DISCIPLINARY_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRANCHISE
--------------------------------------------------------

  ALTER TABLE "sri"."FRANCHISE" ADD CONSTRAINT "FRANCHISE_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GOALS
--------------------------------------------------------

  ALTER TABLE "sri"."GOALS" ADD CONSTRAINT "GOALS_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SQUAD
--------------------------------------------------------

  ALTER TABLE "sri"."SQUAD" ADD CONSTRAINT "SQUAD_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STATISTICS
--------------------------------------------------------

  ALTER TABLE "sri"."STATISTICS" ADD CONSTRAINT "STATISTICS_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSFER
--------------------------------------------------------

  ALTER TABLE "sri"."TRANSFER" ADD CONSTRAINT "TRANSFER_FK1" FOREIGN KEY ("TRANSFER_CATEGORY_ID")
	  REFERENCES "sri"."TRANSFER_CATEGORY" ("TRANSFER_CATEGORY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UPCOMING_MATCHES
--------------------------------------------------------

  ALTER TABLE "sri"."UPCOMING_MATCHES" ADD CONSTRAINT "UPCOMING_MATCHES_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
 
  ALTER TABLE "sri"."UPCOMING_MATCHES" ADD CONSTRAINT "UPCOMING_MATCHES_FK2" FOREIGN KEY ("LEAGUE_ID")
	  REFERENCES "sri"."LEAGUE" ("LEAGUE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIEW_ALL_RESULTS
--------------------------------------------------------

  ALTER TABLE "sri"."VIEW_ALL_RESULTS" ADD CONSTRAINT "VIEW_ALL_RESULTS_FK1" FOREIGN KEY ("CLUB_ID")
	  REFERENCES "sri"."CLUB" ("CLUB_ID") ENABLE;
 
  ALTER TABLE "sri"."VIEW_ALL_RESULTS" ADD CONSTRAINT "VIEW_ALL_RESULTS_FK2" FOREIGN KEY ("LEAGUE_ID")
	  REFERENCES "sri"."LEAGUE" ("LEAGUE_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger CLUB_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "sri"."CLUB_TRG" 
BEFORE INSERT ON CLUB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "sri"."CLUB_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GOALS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "sri"."GOALS_TRG" 
BEFORE INSERT ON GOALS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ROW_ID IS NULL THEN
      SELECT GOALS_SEQ.NEXTVAL INTO :NEW.ROW_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "sri"."GOALS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PERSON_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "sri"."PERSON_TRG" 
BEFORE INSERT ON PERSON 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PERSON_ID IS NULL THEN
      SELECT PERSON_SEQ.NEXTVAL INTO :NEW.PERSON_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "sri"."PERSON_TRG" ENABLE;
