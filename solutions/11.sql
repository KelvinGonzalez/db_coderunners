-- Using SQLite format:
-- Find the name of all parts that are not supplied

select pname
from parts
except
select pname
from parts
natural join supplies