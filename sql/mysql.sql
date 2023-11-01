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


select * from chinook.customer join chinook.invoice on chinook.customer.CustomerId = chinook.invoice.CustomerId where chinook.invoice.CustomerId = '13' order by Total asc;
select chinook.album.AlbumId, chinook.album.Title, count(chinook.track.TrackId) as total from chinook.album join chinook.track on chinook.album.AlbumId = chinook.track.AlbumId group by chinook.album.AlbumId;
select sum(Total) from chinook.invoice where InvoiceDate between '2012-01-01 00:00:00' and '2012-03-31 23:59:59' and BillingCountry = 'USA';
select chinook.genre.GenreId, chinook.genre.Name, count(chinook.track.Name) as 'Кол-во треков',  avg(chinook.track.UnitPrice) as 'Средняя стоимость' from chinook.genre join chinook.track on chinook.genre.GenreId = chinook.track.GenreId group by chinook.genre.GenreId;
select chinook.customer.CustomerId, chinook.customer.FirstName, chinook.customer.LastName, sum(chinook.invoice.Total) as sum from chinook.customer join chinook.invoice on chinook.customer.CustomerId = chinook.invoice.CustomerId group by chinook.customer.CustomerId, chinook.customer.FirstName, chinook.customer.LastName Limit 1;
use testdb;
show Tables;
select * from department;
insert into department (id, department, description_dep)
values (5, 'отдел аккаунтинга', 'сопровождение клиента')
insert into department (id, department, description_dep)
values (6, 'техническая поддержка', 'помощь пользователям')

