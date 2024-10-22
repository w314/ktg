DROP SCHEMA IF EXISTS ktg;
CREATE SCHEMA ktg;
USE ktg;

CREATE TABLE budget(
    budget_id INT PRIMARY KEY,
    budget_name VARCHAR(20) NOT NULL,
    details VARCHAR(100)
);

CREATE TABLE flag(
    flag_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(100),
    flag_type int
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.0/Uploads/flag.csv' 
INTO TABLE flag 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE cost (
    cost_id int  primary key,
    cost_name VARCHAR(20) NOT NULL,
    details VARCHAR(100)
);

CREATE TABLE account (
    account_id int primary key,
    code varchar(20),
    account_name varchar(100)
)

/*
expense (
    expense_id,
    amount,
    budget,
    cost,
    -- paid from
    account_id
)

-- money or budget transfer
transfer (
    id,
    amount,
    account-from
    account-to
    budget-from
    budget-to
)

income (
    id,
    amount
    income-type
    budget to
    account to
)
*/