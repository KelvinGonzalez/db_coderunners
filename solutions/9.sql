-- Using SQLite format:
-- Find the name and city of suppliers who provide parts made of Wood or Iron

select sname, scity
from supplier
natural join supplies
natural join parts
where pmaterial = "Wood"
or pmaterial = "Iron"