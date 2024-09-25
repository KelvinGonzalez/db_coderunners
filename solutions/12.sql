-- Using SQLite format:
-- Find the name and city of all suppliers that do not supply Nail nor Shovel and are not from San Juan

select sname, scity
from supplier
where scity != "San Juan"
except
select sname, scity
from supplier
natural join supplies
natural join parts
where pname = "Nail" or pname = "Shovel"