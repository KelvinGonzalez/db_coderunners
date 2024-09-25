-- Using SQLite format:
-- Find all parts supplied by Industrial Supplies ABC

select parts.*
from parts
natural join supplies
natural join supplier
where sname = "Industrial Supplies ABC"