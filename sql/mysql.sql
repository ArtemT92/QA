select * from chinook.artist;
select firstname, lastname from chinook.customer where city = 'London';
select * from chinook.invoice where invoicedate like '2012%' and total > 4;
select invoicedate as Дата_Продажи, billingaddress as Адрес_Продажи, billingcity as Город_Продажи, total from chinook.invoice where total = 8.91;
select  lastname, firstname from chinook.employee where hiredate like '2002%' or city = 'Edmonton';
select LastName, FirstName, HireDate from chinook.employee where HireDate like'%-05-%';
select LastName, FirstName, DATE_FORMAT(HireDate, '%Y-05-%d') from chinook.employee;
select LastName, FirstName, HireDate from chinook.employee;
select LastName, FirstName, Title from chinook.employee where Title IN ('Sales Manager', 'IT Manager');
select * from chinook.customer where FirstName = 'Jack';
select FirstName, LastName from chinook.customer where FirstName Like'M%k'
select Name, round((Bytes/1048576),2) as MB  FROM chinook.track ORDER BY MB  DESC;
select LastName, FirstName, BirthDate,  HireDate, BirthDate, (year(current_date) - year(BirthDate)) as age from chinook.employee
select Country, Fax from chinook.customer where Country = 'USA' AND Fax is NULL;
select Email from chinook.customer where Email like '%gmail.com';
select distinct(Title) from chinook.employee order by Title;
select Name  from chinook.track where Milliseconds = (select min(Milliseconds) from chinook.track);
select CustomerId, FirstName, LastName, Fax, Country from chinook.customer where Country = "USA" AND Fax is NULL;
select Email from chinook.customer where Email like "%gmail.com";
select distinct(Title) from chinook.employee ORDER BY Title desc;
select * from chinook.track
select Name, Milliseconds from chinook.track order by Milliseconds limit 1;
select Name, Milliseconds/1000 as sec from chinook.track order by Milliseconds limit 1;
select  round(AVG(year(current_date) - year(BirthDate))) as age from chinook.employee;
select FirstName, LastName, Company from chinook.customer where CustomerId = '5';


