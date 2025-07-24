-- Department Table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- Employee Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DeptID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Deductions Table
CREATE TABLE Deductions (
    EmpID INT,
    PF DECIMAL(10, 2),
    Tax DECIMAL(10, 2),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);
