﻿CREATE TABLE `USER` (
	`STUDENT_ID`	int	NOT NULL,
	`SEAT_ID`	int	NOT NULL,
	`BOOK_ID`	varchar(10)	NOT NULL,
	`NAME`	varchar(10)	NOT NULL	COMMENT '이름',
	`GRADE`	varchar(5)	NOT NULL,
	`RETURN_DATE`	varchar(10)	NULL,
	`RESERVE_DATE`	varchar(10)	NULL
);

CREATE TABLE `SEAT` (
	`SEAT_ID`	int	NOT NULL	COMMENT '좌석 예약을 신청한 고유번호',
	`NAME`	varchar(10)	NULL,
	`IN_TIME`	varchar(10)	NULL,
	`OUT_TIME`	varchar(10)	NULL
);

CREATE TABLE `BOOK` (
	`BOOK_ID`	varchar(10)	NOT NULL	COMMENT '책의 고유번호',
	`Book_Name`	varchar(50)	NOT NULL,
	`Call_Number`	varchar(15)	NOT NULL,
	`NAME`	VARCHAR(10)	NULL
);

ALTER TABLE `USER` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`STUDENT_ID`,
	`SEAT_ID`,
	`BOOK_ID`
);

ALTER TABLE `SEAT` ADD CONSTRAINT `PK_SEAT` PRIMARY KEY (
	`SEAT_ID`
);

ALTER TABLE `BOOK` ADD CONSTRAINT `PK_BOOK` PRIMARY KEY (
	`BOOK_ID`
);

ALTER TABLE `USER` ADD CONSTRAINT `FK_SEAT_TO_USER_1` FOREIGN KEY (
	`SEAT_ID`
)
REFERENCES `SEAT` (
	`SEAT_ID`
);

ALTER TABLE `USER` ADD CONSTRAINT `FK_BOOK_TO_USER_1` FOREIGN KEY (
	`BOOK_ID`
)
REFERENCES `BOOK` (
	`BOOK_ID`
);

