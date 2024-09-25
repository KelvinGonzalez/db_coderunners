-- Using SQLite format:
-- Find the parts supplied by suppliers located in San Juan

select parts.*
from parts
natural join supplies
natural join supplier
where scity = "San Juan"