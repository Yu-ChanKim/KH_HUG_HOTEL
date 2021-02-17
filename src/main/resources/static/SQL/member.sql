DROP SEQUENCE MEMBER_SEQ;
DROP TRIGGER MEMBER_TRG;
DROP TABLE MEMBER;
DROP TABLE GRADE;

CREATE TABLE MEMBER (
	memberId	    NUMBER	                            CONSTRAINT PK_MEMBER_ID PRIMARY KEY,
	gradeName       VARCHAR2(100)   DEFAULT 'GENERAL'   NOT NULL,
	memberReg   	DATE		    DEFAULT SYSDATE     NOT NULL,
	memberUnreg	    DATE,
	memberPwChange 	DATE	        DEFAULT SYSDATE     NOT NULL,
	memberAgree	    NUMBER(1)		DEFAULT 0           NOT NULL,
	memberRight	    NUMBER(1)       DEFAULT 0           NOT NULL,
	memberEmail	    VARCHAR2(100)                       NOT NULL,
	memberName	    VARCHAR2(100),
	memberNick  	VARCHAR2(100),
	memberPhone     VARCHAR2(100),
	memberGender    NUMBER(1),
	memberPassword	VARCHAR2(100),
	memberBirth 	DATE
);

CREATE TABLE GRADE (
	gradeName       VARCHAR2(100)  	DEFAULT 'GENERAL'   CONSTRAINT PK_GRADE_NAME PRIMARY KEY,
	gradeDiscount   NUMBER          DEFAULT 0	        NOT NULL
);

ALTER TABLE MEMBER
ADD CONSTRAINT FK_MEMBER FOREIGN KEY (gradeName) 
REFERENCES GRADE(gradeName) ON DELETE CASCADE;

CREATE SEQUENCE MEMBER_SEQ;

CREATE OR REPLACE TRIGGER MEMBER_TRG
BEFORE INSERT ON MEMBER
FOR EACH ROW 
BEGIN
    BEGIN
        IF INSERTING AND :NEW.memberId IS NULL THEN
            SELECT MEMBER_SEQ.NEXTVAL INTO :NEW.memberId FROM SYS.DUAL;
        END IF;
    END COLUMN_SEQUENCES;
END;

/
COMMIT;