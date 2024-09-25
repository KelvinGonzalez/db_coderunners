-- Using SQLite format:
-- Find the name and price of all Silver parts.

select pname, pprice
from parts
where pcolor = "Silver"