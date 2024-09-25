-- Using SQLite format:
-- Find the name of suppliers who provide parts made of Steel

select sname
from supplier
natural join supplies
natural join parts
where pmaterial = "Steel"