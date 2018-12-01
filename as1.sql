CREATE TABLE COURSE
(
	--SECTION is my child!
	NAME				CHAR(24),
	COURSE_NO			CHAR(10),
	CREDIT				CHAR(6),
	COLLEGE 			CHAR(20),
	HRS					NUMBER(1),
	CONSTRAINT CoursePK PRIMARY KEY (COURSE_NO),
	--Semantic Integrity Constraint #2
	CONSTRAINT UHours CHECK (Credit = 'U' AND HRS <= 4),
	CONSTRAINT GHours CHECK (CREDIT = 'G' AND HRS = 3),
	--Semantic Integrity Constraint #1
	CONSTRAINT UorG CHECK (CREDIT = 'U' or CREDIT = 'G')
)
;


CREATE TABLE SECTION
(	
	--COURSE is my parent! I cascade if deleted >_<
	SECTION_NO			VARCHAR2(8),
	TIME				CHAR(5),
	MAXST				NUMBER(2),
	ROOM 				VARCHAR2(14),
	PARENT_COURSE_NO	CHAR(10),

	CONSTRAINT SectionPK PRIMARY KEY (SECTION_NO),
	--Semantic Integrity Constraint #3
	CONSTRAINT MaxStudents CHECK (MAXST <= 35),
	--Semantic Integrity Constraint #4
	CONSTRAINT UniqueTimeAndRoom UNIQUE(TIME, ROOM) 
	--Referencing Parent Course
	Constraint CourseParentKey FOREIGN KEY (PARENT_COURSE_NO) REFERENCES (Course.COURSE_NO)
		ON DELETE CASCADE 
)
;



CREATE TABLE STUDENT 
(
	SID					VARCHAR2(7),
	NAME				CHAR(14),
	ADDRESS				CHAR(22),
	BIRTHDATE			DATE,
	GRADELEVEL 			CHAR(2),
	CONSTRAINT StudentPK PRIMARY KEY (SID)
)
;

--FK: Section
--FK: SID
--I'm an intersection table and a weak entity! My existence depends on my parents.
CREATE TABLE TAKES
(	
	TAKES_SECTION		VARCHAR2(7),
	GRADE				CHAR(5),
	TAKES_SID 			VARCHAR2(7),

	--Don't delete my section if I have a parent!
	CONSTRAINT SectionParentKey FOREIGN KEY TAKES_SECTION REFERENCES (SECTION.SECTION_NO) 
		ON DELETE RESTRICT 

	--If I fucked up in school, please delete my trail of fuck ups!
	CONSTRAINT StudentParentKey FOREIGN KEY TAKES_SID REFERENCES (STUDENT.SID)
		ON DELETE CASCADE 
)
;
