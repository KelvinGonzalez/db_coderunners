-- Using SQLite format:
-- Find the parts supplied by suppliers located in Arecibo with prices less than $10

select parts.*
from parts
natural join supplies
natural join supplier
where scity = "Arecibo"
and pprice < 10