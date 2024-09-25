-- Using SQLite format:
-- Find the parts supplied by Steel and More with stock greater than 50

select parts.*
from parts
natural join supplies
natural join supplier
where sname = "Steel and More"
and stock > 50