CREATE TABLE public.Categories(
	CategoryID int NOT NULL,
	CategoryName character varying(15) NOT NULL,
	Description text NULL,
	PRIMARY KEY (CategoryID)
	);

CREATE TABLE public.CustomerGroupThresholds(
	CustomerGroupName character varying(20) NULL,
	RangeBottom money NULL,
	RangeTop money NULL
);

CREATE TABLE public.Customers(
	CustomerID nchar(5) NOT NULL,
	CompanyName character varying(40) NOT NULL,
	ContactName character varying(30) NULL,
	ContactTitle character varying(30) NULL,
	Address character varying(60) NULL,
	City character varying(15) NULL,
	Region character varying(15) NULL,
	PostalCode character varying(10) NULL,
	Country character varying(15) NULL,
	Phone character varying(24) NULL,
	Fax character varying(24) NULL,
    PRIMARY KEY (CustomerID)
);

CREATE TABLE public.Employees(
	EmployeeID int NOT NULL,
	LastName character varying(20) NOT NULL,
	FirstName character varying(10) NOT NULL,
	Title character varying(30) NULL,
	TitleOfCourtesy character varying(25) NULL,
	BirthDate date NULL,
	HireDate date NULL,
	Address character varying(60) NULL,
	City character varying(15) NULL,
	Region character varying(15) NULL,
	PostalCode character varying(10) NULL,
	Country character varying(15) NULL,
	HomePhone character varying(24) NULL,
	Extension character varying(4) NULL,
	Notes text NULL,
	ReportsTo int NULL,
	PhotoPath character varying(255) NULL,
    PRIMARY KEY (EmployeeID)
 );

CREATE TABLE public.OrderDetails(
	OrderID int NOT NULL,
	ProductID int NOT NULL,
	UnitPrice money NOT NULL,
	Quantity smallint NOT NULL,
	Discount real NOT NULL,
    PRIMARY KEY (OrderID)
);

CREATE TABLE public.Orders(
	OrderID int NOT NULL,
	CustomerID nchar(5) NOT NULL,
	EmployeeID int NULL,
	OrderDate date NULL,
	RequiredDate date NULL,
	ShippedDate date NULL,
	ShipVia int NULL,
	Freight money NULL,
	ShipName character varying(40) NULL,
	ShipAddress character varying(60) NULL,
	ShipCity character varying(15) NULL,
	ShipRegion character varying(15) NULL,
	ShipPostalCode character varying(10) NULL,
	ShipCountry character varying(15) NULL,
    PRIMARY KEY (OrderID)
);

CREATE TABLE public.Products(
	ProductID int NOT NULL,
	ProductName character varying(40) NOT NULL,
	SupplierID int NULL,
	CategoryID int NULL,
	QuantityPerUnit character varying(20) NULL,
	UnitPrice money NULL,
	UnitsInStock smallint NULL,
	UnitsOnOrder smallint NULL,
	ReorderLevel smallint NULL,
	Discontinued bit NOT NULL,
    PRIMARY KEY (ProductID)
    );


CREATE TABLE public.Shippers(
	ShipperID int NOT NULL,
	CompanyName character varying(40) NOT NULL,
	Phone character varying(24) NULL,
    PRIMARY KEY (ShipperID)
);

CREATE TABLE public.Suppliers(
	SupplierID int NOT NULL,
	CompanyName character varying(40) NOT NULL,
	ContactName character varying(30) NULL,
	ContactTitle character varying(30) NULL,
	Address character varying(60) NULL,
	City character varying(15) NULL,
	Region character varying(15) NULL,
	PostalCode character varying(10) NULL,
	Country character varying(15) NULL,
	Phone character varying(24) NULL,
	Fax character varying(24) NULL,
	HomePage text NULL,
    PRIMARY KEY (SupplierID)
);