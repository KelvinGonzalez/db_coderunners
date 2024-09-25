-- Using SQLite format:
-- Find the names and cities of suppliers who provide Nut

select sname, scity
from supplier
natural join supplies
natural join parts
where pname = "Nut"