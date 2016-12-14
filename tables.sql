Create table Employee
(
Emp_ID number(3),
FirstName VARCHAR (255),
LASTNAME VARCHAR (255),
Address VARCHAR (255),
City VARCHAR (255),
State VARCHAR (255),
zip number (5),
salary number (6),
Position VARCHAR (255),
Phone number (10),
Email VARCHAR (255),
Brand_ID number (3),
Constraint emp_ID_PK primary key (EMP_ID),
Constraint b_ID_fk foreign key (Brand_ID) references Brand (Brand_ID)
);

Create Table Brand
(
Brand_ID Number (3),
Name VARCHAR (255),
Account_ID Number (3),
Location_ID Number (3),
Admin_ID Number (3),
Product_ID Number (3),
Constraint B_ID_PK primary key (Brand_ID),
Constraint A_ID_fk foreign key (Account_ID) references Brand_Accounts (Account_ID),
Constraint L_ID_fk foreign key (Location_ID) references Location (Location_ID),
Constraint AD_ID_fk foreign key (Admin_ID) references Admin(Admin_ID),
Constraint P_ID_fk foreign key (Product_ID) references Product (Product_ID)
);

Create table Location
(
City VARCHAR (255),
State VARCHAR (255),
Zip Number (5),
Location_ID Number (3),
CONSTRAINT L_ID_PK Primary Key (Location_ID)
);

Create table Customer
(
FirstName VARCHAR (255),
LASTNAME VARCHAR (255),
Address VARCHAR (255),
City VARCHAR (255),
State VARCHAR (255),
zip number (5),
Phone number (10),
Email VARCHAR (255),
Password VARCHAR (25),
Customer_ID Nubmer (3),
Payment_Method_ID Number (3),
Order_ID Number (3),
Constraint C_ID_PK Primary Key (Customer_ID),
Constraint Or_ID_FK Foreign Key (Order_ID) references Order (Order_ID),
Constraint PM_ID_FK Foreign Key (Payment_Method_ID) references Payment_Method (Payment_Method_ID)
);

Create table Order
(
Order_ID NUmber (3),
Order_Date Date,
Customer_ID Nubmer (3),
Payment_Method_ID Number (3),
Product_ID Number (3),
Brand_ID Number (3),
Location_ID Number (3),
Time_Ordered Time,
Constraint Or_ID_PK primary key (Order_Id),
Constraint Ord_ID_FK Foreign Key (Order_ID) references Order (Order_ID),
Constraint PayM_ID_FK Foreign Key (Payment_Method_ID) references Payment_Method (Payment_Method_ID),
Constraint Pr_ID_fk foreign key (Product_ID) references Product (Product_ID),
Constraint Lo_ID_fk foreign key (Location_ID) references Location (Location_ID),
Constraint Bra_ID_Fk foreign Key (Brand_ID) references Brand (Brand_ID)
);

Create Table Payment_Methods
(
Payment_Method_ID number(3),
Customer_ID Number (3),
Card_Number number (10),
Card_Type VARCAHR (255),
Exp_Date Date,
Code Number (4),
Name_on_Card_ Varchar (255),
Constraint PM_ID_PK Primary Key (Payment_Method_ID),
Constraint Customer_ID_FK Foreign Key references Customer (Customer_ID)
);

Create table Brand_Account
(
Brand_Account_Id number (3),
Brand_ID number (3),
Admin_ID Number (3),
Subscription_ID number (3),
Password VARCHAR (255),
Constraint BA_ID_PK Primary Key (Brand_Account_ID),
Constraint Bran_ID_Fk foreign Key (Brand_ID) references Brand (Brand_ID),
Constraint ADm_ID_fk foreign key (Admin_ID) references Admin(Admin_ID),
Constraint Sub_ID_fk foreign key (Subscription_ID) references Subscription(Subscription_ID)
);

Create table Subscription
(
Subscription_Id number (3),
type VARCHAR (255),
price number (2),
day_payment_day date,
Constraint sub_ID_pk primary key (subscription_ID)
);

create table Admin
(
Admin_ID number (3),
Brand_account_ID number (3),
Constraint admin_ID_pk Primary Key (Admin_Id),
Constraint brandAc_ID_Fk foreign Key (Brand_account_ID) references Brand_Account (Brand_Account_ID)
);

Create Table Products 
(
Product_Id number (3),
Brand_ID number (3),
type VARCHAR (255),
Rating NUMBER (1),
Comments VARCHAR (255),
Date_posted Date,
price number (6),
Quantity number (8),
Constraint P_ID_Pk Primary Key (Product_ID),
Constraint Brand_ID_Fk foreign Key (Brand_ID) references Brand (Brand_ID)
);
