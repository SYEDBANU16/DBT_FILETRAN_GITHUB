select 
    T."Transaction_ID" ,
	T."Name",
	T."Transaction_Date" ,
	T."Transaction_Type" ,
	T."Transaction_Amount",
	T."Transaction_Mode" ,
	B.ACCOUNTNUMBER ,
	B.BRANCH 
from 
MYDB.DBT.XML_SNF_CASESTD2_TRANSACTION_DETAILS  as T
INNER JOIN 
MYDB.DBT.JSON_SNF_CASESTD2_BANKING_DATA as B
ON T."Name" =B.CUSTOMER_ID

where B.ACCOUNT_TYPE='Checking'