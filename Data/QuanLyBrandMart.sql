--CREATE TABLE

CREATE TABLE USER_LOGIN(
    USER_LOGIN_ID NUMBER CONSTRAINT USER_LOGIN_PK PRIMARY KEY,
    USER_NAME VARCHAR2(200),
    PASSWORD VARCHAR2(200)
);

CREATE TABLE EMPLOYEE(
    EMP_ID NUMBER CONSTRAINT EMPLOYEE_PK PRIMARY KEY,
    FIRST_NAME VARCHAR2(200),
    LAST_NAME VARCHAR2(200),
    GENDER VARCHAR(10),
    BIRTHDAY DATE,
    PHONE VARCHAR2(200),
    ADDRESS VARCHAR2(200),
    START_DATE DATE,
    SALARY NUMBER,
    EMP_LOGIN_ID NUMBER,
    ROLE VARCHAR2(200)
);

CREATE TABLE STUDENT
(
    STUDENT_ID NUMBER CONSTRAINT PK_STUDENT PRIMARY KEY,
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    GENDER VARCHAR(10),
    ADDRESS VARCHAR(200),
    PHONE VARCHAR(20),
    BIRTHDAY DATE,
    REG_DATE DATE,
    SPENT_MONEY NUMBER,
    POINT INT,
    SCHOOL_NAME VARCHAR(200)
);

CREATE TABLE SUPPLIER(
    SUPPLIER_ID NUMBER CONSTRAINT SUPPLIER_PK PRIMARY KEY,
    SUPPLIER_NAME VARCHAR(200)
);

CREATE TABLE PRODUCT
(
    PRODUCT_ID NUMBER CONSTRAINT PK_PRODUCT PRIMARY KEY,
    SUPPLIER_ID NUMBER,
    PRODUCT_NAME VARCHAR(200),
    COUNTRY VARCHAR(50),
    ORIGINAL_PRICE NUMBER,
    SALE_PRICE NUMBER,
    MFG DATE,
    EXP DATE,
    PRODUCT_TYPE VARCHAR(200),
    VAT NUMBER,
    IMPORTED_DATE DATE,
    IMPORTED_QUANTITY NUMBER,
    REMAINING_QUANTITY NUMBER,
    CONSTRAINT FK_PRO_SUP FOREIGN KEY(SUPPLIER_ID) REFERENCES SUPPLIER(SUPPLIER_ID)
);

CREATE TABLE CASHIER_COUNTER(
    CASHIER_COUNTER_ID NUMBER CONSTRAINT CASHIER_COUNTER_PK PRIMARY KEY,
    CASHIER_COUNTER_NAME VARCHAR(200)
);

CREATE TABLE BILL
(
    BILL_ID NUMBER CONSTRAINT PK_BILL PRIMARY KEY,
    EMP_ID NUMBER,
    CASHIER_COUNTER_ID NUMBER,
    STUDENT_ID NUMBER,
    BILL_DATE DATE,
    TOTAL_MONEY NUMBER,
    CONSTRAINT FK_BILL_EMP FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID),
    CONSTRAINT FK_BILL_CASH_COUNTER FOREIGN KEY(CASHIER_COUNTER_ID) REFERENCES CASHIER_COUNTER(CASHIER_COUNTER_ID),
);

CREATE TABLE BILL_DETAILS
(
    BILL_ID NUMBER,
    PRODUCT_ID NUMBER,
    AMOUNT INT,
    CONSTRAINT PK_B_DETAILS PRIMARY KEY(BILL_ID, PRODUCT_ID),
    CONSTRAINT FK_B_DETAILS_BILL FOREIGN KEY(BILL_ID) REFERENCES BILL(BILL_ID),
    CONSTRAINT FK_B_DETAILS_PRO FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);

---CREATE SEQUENCE

CREATE SEQUENCE EMPLOYEE_ID_SEQUENCE
      INCREMENT BY 1
      START WITH 200050
      MAXVALUE 200999
      NOCYCLE;

CREATE SEQUENCE STUDENT_ID_SEQUENCE
    INCREMENT BY 1
    START WITH 300050
    MAXVALUE 300999
    NOCYCLE;

CREATE SEQUENCE SUPPLIER_ID_SEQUENCE
    INCREMENT BY 1
    START WITH 400050
    MAXVALUE 400999
    NOCYCLE;

CREATE SEQUENCE PRODUCT_ID_SEQUENCE
    INCREMENT BY 1
    START WITH 500050
    MAXVALUE 500999
    NOCYCLE;

CREATE SEQUENCE CASHIER_COUNTER_ID_SEQUENCE
    INCREMENT BY 1
    START WITH 600050
    MAXVALUE 600999
    NOCYCLE;
  
CREATE SEQUENCE BILL_ID_SEQUENCE
    INCREMENT BY 1
    START WITH 700050
    MAXVALUE 700999
    NOCYCLE;
    
--INSERT DATA

--USER LOGIN
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100001,'Manager1','manager01');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100002,'Manager2','manager02');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100003,'Manager3','manager03');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100004,'Manager4','manager04');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100005,'Manager5','manager05');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100006,'Manager6','manager06');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100007,'Manager7','manager07');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100008,'Manager8','manager08');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100009,'Manager9','manager09');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100010,'Manager10','manager10');

INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100011,'Cashier1','cashier01');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100012,'Cashier2','cashier02');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100013,'Cashier3','cashier03');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100014,'Cashier4','cashier04');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100015,'Cashier5','cashier05');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100016,'Cashier6','cashier06');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100017,'Cashier7','cashier07');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100018,'Cashier8','cashier08');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100019,'Cashier9','cashier09');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100020,'Cashier10','cashier10');

INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100021,'Storekeeper1','storekeeper01');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100022,'Storekeeper2','storekeeper02');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100023,'Storekeeper3','storekeeper03');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100024,'Storekeeper4','storekeeper04');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100025,'Storekeeper5','storekeeper05');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100026,'Storekeeper6','storekeeper06');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100027,'Storekeeper7','storekeeper07');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100028,'Storekeeper8','storekeeper08');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100029,'Storekeeper9','storekeeper09');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100030,'Storekeeper10','storekeeper10');

INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100031,'Salesperson1','salesperson01');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100032,'Salesperson2','salesperson02');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100033,'Salesperson3','salesperson03');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100034,'Salesperson4','salesperson04');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100035,'Salesperson5','salesperson05');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100036,'Salesperson6','salesperson06');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100037,'Salesperson7','salesperson07');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100038,'Salesperson8','salesperson08');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100039,'Salesperson9','salesperson09');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100040,'Salesperson10','salesperson10');

INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100041,'CusServiceAst1','cusserviceast01');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100042,'CusServiceAst2','cusserviceast02');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100043,'CusServiceAst3','cusserviceast03');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100044,'CusServiceAst4','cusserviceast04');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100045,'CusServiceAst5','cusserviceast05');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100046,'CusServiceAst6','cusserviceast06');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100047,'CusServiceAst7','cusserviceast07');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100048,'CusServiceAst8','cusserviceast08');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100049,'CusServiceAst9','cusserviceast09');
INSERT INTO USER_LOGIN (USER_LOGIN_ID,USER_NAME,PASSWORD) VALUES (100050,'CusServiceAst10','cusserviceast10');

--EMPLOYEE
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200001,'Nguyen Thi My', 'Tran','Female', TO_DATE('05/05/2002', 'dd/mm/yyyy'), '0921231741', 'KTX khu B', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 10000000,100001,'Manager');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200002,'Ton Nu Tu', 'Quyen','Female', TO_DATE('05/01/2002', 'dd/mm/yyyy'), '0977164279', 'KTX khu A', TO_DATE('21/02/2022', 'dd/mm/yyyy'),5000000, 100011, 'Cashier');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200003,'Ngo Thi', 'Anh','Female', TO_DATE('25/08/2002', 'dd/mm/yyyy'), '0356315873', '731 Tran Hung Dao, Q5, TpHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100012, 'Cashier');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200004,'Nguyen Anh', 'Viet','Male', TO_DATE('05/07/2002', 'dd/mm/yyyy'), '0585784600', '45 Nguyen Canh Chan, Q1, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100013, 'Cashier');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200005,'Nguyen Thi Minh', 'Triet','Female', TO_DATE('05/09/2002', 'dd/mm/yyyy'), '0932342312', '50/34 Le Dai Hanh, Q10, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100014, 'Cashier');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200006,'Tran Anh', 'Huy','Male', TO_DATE('26/09/2002', 'dd/mm/yyyy'), '0916430073', 'KTX khu B', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 7000000, 100021, 'Storekeeper');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200007,'Phan Hong', 'Anh','Female', TO_DATE('20/08/2001', 'dd/mm/yyyy'), '0944562311', '16 Le Van Viet, Q9, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 7000000, 100022, 'Storekeeper');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200008,'Thai Tang', 'Duc','Male', TO_DATE('16/10/2002', 'dd/mm/yyyy'), '0931231756', 'KTX khu A', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100031, 'Salesperson');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200009,'Le Nguyen Thuy', 'Vi','Female', TO_DATE('06/06/2001', 'dd/mm/yyyy'), '0948965678', 'KTX khu B', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100032, 'Salesperson');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200010,'Nguyen Thi Kim', 'Hieu','Female', TO_DATE('28/08/2002', 'dd/mm/yyyy'), '0931231756', 'KTX khu B', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100033, 'Salesperson');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200011,'Dinh Thi Ngoc', 'Mai','Female', TO_DATE('04/10/2002', 'dd/mm/yyyy'), '0951671959', '112, Truong Chinh, Q3, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100034, 'Salesperson');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200012,'Nguyen Le Dieu', 'Huyen','Female', TO_DATE('20/02/2002', 'dd/mm/yyyy'), '0936590741', 'KTX khu B', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100041, 'Customer Service Assistant');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200013,'Nguyen Quoc', 'Khuyen','Male', TO_DATE('04/10/2002', 'dd/mm/yyyy'), '0908567292', '16 Le Loi, Q2, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 5000000, 100042, 'Customer Service Assistant');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200014,'Nguyen Van', 'Tho','Male', TO_DATE('25/05/2002', 'dd/mm/yyyy'), '0352345673', '24 Le Hong Phong, Q7, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 6000000, NULL, 'Quality Checker');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200015,'Cao The', 'Thuan','Male', TO_DATE('18/11/2002', 'dd/mm/yyyy'), '0934789765', '11 Nguyen Dinh Chieu, Q5, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 6000000, NULL, 'Quality Checker');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200016,'Nguyen Minh', 'Nhut','Male', TO_DATE('04/09/1999', 'dd/mm/yyyy'), '0976456435', '34 Hung Vuong, Q7, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 4000000, NULL, 'Sanitation Worker');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200017,'Nguyen Hue', 'Phuong','Female', TO_DATE('27/09/2002', 'dd/mm/yyyy'), '0987675489', '298 Dong Hoa, Q8, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 4000000, NULL, 'Sanitation Worker');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200018,'Luong Thuy', 'My','Female', TO_DATE('17/07/2002', 'dd/mm/yyyy'), '0709567342', '230 Mac Dinh Chi, Tan Binh, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 4000000, NULL, 'Sanitation Worker');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200019,'Le Hai', 'Phong','Male', TO_DATE('24/04/2002', 'dd/mm/yyyy'), '0308765456', 'KTX khu B', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 4000000, NULL, 'Security Guard');
INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, GENDER, BIRTHDAY, PHONE, ADDRESS, START_DATE, SALARY, EMP_LOGIN_ID, ROLE)
VALUES (200020,'Phan Tan', 'Thuong','Male', TO_DATE('30/10/2002', 'dd/mm/yyyy'), '056889678', '62 Man Thien, Q9, TPHCM', TO_DATE('21/02/2022', 'dd/mm/yyyy'), 4000000, NULL, 'Security Guard');

--STUDENT
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300001, 'Tran Minh', 'Tien', 'Male', '117/2 Nguyen Trai, Q5, TpHCM', '0883644231', TO_DATE('15/04/2002', 'dd/mm/yyyy'), TO_DATE('01/09/2022', 'dd/mm/yyyy'), 279072, 0, 'CNTT');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300002, 'Nguyen Bang', 'Huu', 'Male', '731 Tran Hung Dao, Q5, TpHCM', '0975244479', TO_DATE('15/09/2000', 'dd/mm/yyyy'), TO_DATE('01/09/2022', 'dd/mm/yyyy'), 26163, 0, 'USSH');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300003, 'Nguyen Huu', 'Tho', 'Male', '23/5 Nguyen Trai, Q5, TpHCM', '0361234578', TO_DATE('18/06/2001', 'dd/mm/yyyy'), TO_DATE('01/09/2022', 'dd/mm/yyyy'), 98838, 0, 'KHTN');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300004, 'Nguyen Phuong', 'Thanh', 'Female', '27/2 Nguyen Trai, Q5, TpHCM', '0365238774', TO_DATE('24/06/1999', 'dd/mm/yyyy'), TO_DATE('02/09/2022', 'dd/mm/yyyy'), 96900, 0, 'IU');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300005, 'Le Thi Tuong', 'Vi', 'Female', '45 Nguyen Canh Chan, Q1, TPHCM', '0938776266', TO_DATE('22/02/2002', 'dd/mm/yyyy'), TO_DATE('02/09/2022', 'dd/mm/yyyy'), 222870, 1, 'IU');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300006, 'Nguyen Thanh', 'Duy', 'Male', '50/34 Le Dai Hanh, Q10, TPHCM', '0938826866', TO_DATE('18/01/2001', 'dd/mm/yyyy'), TO_DATE('02/09/2022', 'dd/mm/yyyy'), 38760, 0, 'UEL');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300007, 'Vo Minh', 'Trong', 'Male', '837 Le Hong Phong,Q5,TPHCM', '0937825255', TO_DATE('14/10/2001', 'dd/mm/yyyy'), TO_DATE('03/09/2022', 'dd/mm/yyyy'), 14535, 0, 'BK');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300008, 'Dinh Van', 'Quyet', 'Male', '50/34 Le Dai Hanh, Q10, TPHCM', '0837822285', TO_DATE('16/04/2002', 'dd/mm/yyyy'), TO_DATE('03/09/2022', 'dd/mm/yyyy'), 7752, 0, 'BK');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300009, 'Ho Nguyen Thu', 'An', 'Female', '34/34B Nguyen Trai, Q5, TPHCM', '0237825224', TO_DATE('9/11/2000', 'dd/mm/yyyy'), TO_DATE('03/09/2022', 'dd/mm/yyyy'), 96900, 0, 'UEL');
INSERT INTO STUDENT(STUDENT_ID, FIRST_NAME, LAST_NAME, GENDER, ADDRESS, PHONE, BIRTHDAY, REG_DATE, SPENT_MONEY, POINT, SCHOOL_NAME)
VALUES(300010, 'Nguyen Anh', 'Phi', 'Male', '227 Nguyen Van Cu, Q5, TPHCM', '0937885255', TO_DATE('06/12/2002', 'dd/mm/yyyy'), TO_DATE('04/09/2022', 'dd/mm/yyyy'), 145350, 1, 'KHTN');

--SUPPLIER
INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME) VALUES (400001,'Supplier1');
INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME) VALUES (400002,'Supplier2');
INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME) VALUES (400003,'Supplier3');
INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME) VALUES (400004,'Supplier4');
INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME) VALUES (400005,'Supplier5');

--PRODUCT
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500001, 400001, 'Book', 'China', 5000, 8000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), null, 'Requisite', 2, TO_DATE('01/02/2022','dd/mm/yyyy'), 30, 25);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500002, 400002, 'Pen', 'USA', 3000, 5000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), null, 'Requisite', 2, TO_DATE('01/02/2022','dd/mm/yyyy'), 30, 27);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500003, 400003, 'Soap', 'France', 10000, 15000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), null, 'Toiletries', 2, TO_DATE('01/02/2022','dd/mm/yyyy'), 30, 29);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500004, 400004, 'Cleanser', 'ThaiLand', 50000, 100000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), null, 'Toiletries', 2, TO_DATE('01/03/2022','dd/mm/yyyy'), 30, 28);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500005, 400005, 'Coca', 'USA', 5000, 9000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('01/01/2023', 'dd/mm/yyyy'), 'Drinks', 2, TO_DATE('01/03/2022','dd/mm/yyyy'), 30, 28);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500006, 400003, 'Pepsi', 'USA', 5000, 9000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('01/01/2023', 'dd/mm/yyyy'), 'Drinks', 2, TO_DATE('01/03/2022','dd/mm/yyyy'), 30, 29);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500007, 400002, 'Apple', 'USA', 5000, 10000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('01/01/2023', 'dd/mm/yyyy'), 'Organic food', 2, TO_DATE('01/04/2022','dd/mm/yyyy'), 30, 26);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500008, 400002, 'Banana', 'VietNam', 5000, 15000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('01/01/2023', 'dd/mm/yyyy'), 'Organic food', 2, TO_DATE('01/04/2022','dd/mm/yyyy'), 30, 22);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500009, 400004, 'Tissue', 'China', 2000, 5000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), null, 'Toiletries', 2, TO_DATE('01/04/2022','dd/mm/yyyy'), 30, 30);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500010, 400001, 'Milk', 'Netherlands', 5000, 8000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('01/01/2023', 'dd/mm/yyyy'), 'Drinks', 2, TO_DATE('01/05/2022','dd/mm/yyyy'), 30, 28);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500011, 400001, 'Vegetables', 'China', 1000, 4000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('10/01/2022', 'dd/mm/yyyy'), 'Organic food', 2, TO_DATE('01/05/2022','dd/mm/yyyy'), 30, 27);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500012, 400002, 'Biscuit', 'Germany', 50000, 80000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('10/01/2022', 'dd/mm/yyyy'), 'Packaged products', 2, TO_DATE('01/05/2022','dd/mm/yyyy'), 30, 29);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500013, 400002, 'Sandwich', 'USA', 15000, 25000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('10/01/2022', 'dd/mm/yyyy'), 'Packaged products', 2, TO_DATE('01/06/2022','dd/mm/yyyy'), 30, 27);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500014, 400002, 'Eggs', 'VietNam', 5000, 8000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), TO_DATE('20/01/2022', 'dd/mm/yyyy'), 'Packaged products', 2, TO_DATE('01/06/2022','dd/mm/yyyy'), 30, 15);
INSERT INTO PRODUCT(PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, COUNTRY, ORIGINAL_PRICE, SALE_PRICE, MFG, EXP, PRODUCT_TYPE, VAT, IMPORTED_DATE, IMPORTED_QUANTITY, REMAINING_QUANTITY)
VALUES (500015, 400001, 'Watch', 'China', 100000, 150000, TO_DATE('01/01/2022', 'dd/mm/yyyy'), null, 'Jewelleries', 2, TO_DATE('01/06/2022','dd/mm/yyyy'), 30, 28);

--CASHIER COUNTER
INSERT INTO CASHIER_COUNTER (CASHIER_COUNTER_ID, CASHIER_COUNTER_NAME) VALUES (600001,'CashierCounter1');
INSERT INTO CASHIER_COUNTER (CASHIER_COUNTER_ID, CASHIER_COUNTER_NAME) VALUES (600002,'CashierCounter2');

--BILL
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700001, 200002, 600001, 300001, TO_DATE('01/01/2022', 'dd/mm/yyyy'), 53295);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700002, 200003, 600001, 300001, TO_DATE('10/02/2022', 'dd/mm/yyyy'), 75582);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700003, 200004, 600001, 300001, TO_DATE('20/02/2022', 'dd/mm/yyyy'), 77520);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700004, 200005, 600001, 300002, TO_DATE('01/03/2022', 'dd/mm/yyyy'), 26163);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700005, 200002, 600002, 300001, TO_DATE('09/03/2022', 'dd/mm/yyyy'), 72675);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700006, 200003, 600002, 300004, TO_DATE('18/03/2022', 'dd/mm/yyyy'), 96900);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700007, 200004, 600002, 300003, TO_DATE('25/03/2022', 'dd/mm/yyyy'), 87210);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700008, 200005, 600001, 300003, TO_DATE('05/04/2022', 'dd/mm/yyyy'), 11628);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700009, 200002, 600001, 300005, TO_DATE('17/04/2022', 'dd/mm/yyyy'), 145350);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700010, 200003, 600001, 300005, TO_DATE('23/04/2022', 'dd/mm/yyyy'), 77520);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700011, 200004, 600001, 300006, TO_DATE('05/05/2022', 'dd/mm/yyyy'), 38760);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700012, 200005, 600002, 300008, TO_DATE('14/05/2022', 'dd/mm/yyyy'), 7752);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700013, 200002, 600002, 300009, TO_DATE('27/05/2022', 'dd/mm/yyyy'), 96900);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700014, 200003, 600001, 300010, TO_DATE('06/06/2022', 'dd/mm/yyyy'), 145350);
INSERT INTO BILL(BILL_ID, EMP_ID, CASHIER_COUNTER_ID, STUDENT_ID, BILL_DATE, TOTAL_MONEY)
VALUES(700015, 200004, 600001, 300007, TO_DATE('12/06/2022', 'dd/mm/yyyy'), 14535);

--BILL DETAIL
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700001, 500001, 5);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700001, 500002, 3);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700002, 500007, 4);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700002, 500008, 2);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700002, 500010, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700003, 500014, 10);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700004, 500005, 2);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700004, 500006, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700005, 500013, 3);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700006, 500004, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700007, 500008, 6);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700008, 500011, 3);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700009, 500015, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700010, 500012, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700011, 500014, 5);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700012, 500010, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700013, 500004, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700014, 500015, 1);
INSERT INTO BILL_DETAILS(BILL_ID, PRODUCT_ID, AMOUNT)
VALUES (700015, 500003, 1);

--TRIGGER
CREATE OR REPLACE TRIGGER TRIGGER_POINT_INS_UPD 
AFTER INSERT OR UPDATE OF TOTAL_MONEY ON BILL
FOR EACH ROW
BEGIN
        UPDATE STUDENT
        SET POINT = POINT + TRUNC(:NEW.TOTAL_MONEY/100000)
        WHERE STUDENT_ID=:NEW.STUDENT_ID;
        
        UPDATE STUDENT
        SET SPENT_MONEY = SPENT_MONEY + :NEW.TOTAL_MONEY
        WHERE STUDENT_ID=:NEW.STUDENT_ID;
END;

CREATE OR REPLACE TRIGGER TRIGGER_POINT_DEL 
BEFORE DELETE ON BILL
FOR EACH ROW
BEGIN
        UPDATE STUDENT
        SET POINT = POINT - TRUNC(:OLD.TOTAL_MONEY/100000)
        WHERE STUDENT_ID=:OLD.STUDENT_ID;
        
        UPDATE STUDENT
        SET SPENT_MONEY = SPENT_MONEY - :OLD.TOTAL_MONEY
        WHERE STUDENT_ID=:OLD.STUDENT_ID;
END;

CREATE OR REPLACE TRIGGER TRIGGER_REMAINING_QUANTITY_INS_UPD
AFTER INSERT OR UPDATE OF AMOUNT ON BILL_DETAILS
FOR EACH ROW
BEGIN
    UPDATE PRODUCT
    SET REMAINING_QUANTITY = REMAINING_QUANTITY - :NEW.AMOUNT
    WHERE PRODUCT_ID = :NEW.PRODUCT_ID;
END;

CREATE OR REPLACE TRIGGER TRIGGER_REMAINING_QUANTITY_DEL
BEFORE DELETE ON BILL_DETAILS
FOR EACH ROW
BEGIN
    UPDATE PRODUCT
    SET REMAINING_QUANTITY = REMAINING_QUANTITY + :OLD.AMOUNT
    WHERE PRODUCT_ID = :OLD.PRODUCT_ID;
END;

CREATE OR REPLACE TRIGGER TRIGGER_STUDENT_ID_INS_UPD
AFTER INSERT OR UPDATE OF STUDENT_ID ON BILL
FOR EACH ROW
DECLARE
    NUM_STU NUMBER;
BEGIN
    SELECT COUNT(STUDENT_ID) INTO NUM_STU
    FROM STUDENT
    WHERE STUDENT_ID = :NEW.STUDENT_ID;
    
    IF (NUM_STU = 0) THEN
        RAISE_APPLICATION_ERROR (-20987,  'STUDENT_ID ERROR');    
    END IF;
END;

COMMIT;
















