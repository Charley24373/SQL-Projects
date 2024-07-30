*Just import the file to a new database and you can see all the tables, and the database*

This is just a simple project, where I created a database to show all of my investments within Robinhood.
I created some tables to show the average price, percentage change, if the change was positive or negative, and ticker symbol for each company.
The Ticker Symbol column acts a primary key for the two tables, CompanyName and CryptoName. Those tables give the full name of the investment. 
The Ticker Symbol column also acts as a foreign key for the other two tables, Crypto and Stocks. Those two tables give the full price and percentage info for each investment.
