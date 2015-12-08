DROP TABLE FUSER;
DROP TABLE CATEGORY;
DROP TABLE FORUM;
DROP TABLE TOPIC;
DROP TABLE POST;

CREATE TABLE FUSER(
	USERID INT PRIMARY KEY,
	NAME CHAR(30),
	PERMISSION INT);

CREATE TABLE CATEGORY(
	CID INT PRIMARY KEY,
	CTITLE CHAR(30),
	PERMISSION INT);

CREATE TABLE FORUM(
	FID INT PRIMARY KEY,
	FTITLE CHAR(30),
	PERMISSION INT,
	CID INT);

CREATE TABLE TOPIC(
	TID INT PRIMARY KEY,
	TITLE CHAR(30),
	CONTENT CHAR(100),
	TDATE DATE,
	PERMISSION INT,
	USERID INT,
	FID INT);

CREATE TABLE POST(
	PID INT PRIMARY KEY,
	CONTENT CHAR(100),
	PDATE DATE,
	USERID INT,
	TID INT);
