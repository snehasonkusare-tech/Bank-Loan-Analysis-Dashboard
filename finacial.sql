select * from bank_loan_data;

select 
	DATENAME(Month, issue_date),
	count(id) as total_loan_applicaton,
	sum(loan_amount) as total_Funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by datename(month,issue_date)
order by datename(month , issue_date) DESC


