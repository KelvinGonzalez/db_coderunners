-- Using SQLite format:
-- Find the name and material of parts with prices less than $5

select pname, pmaterial
from parts
where pprice < 5