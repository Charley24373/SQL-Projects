*Just import the Robinhood.sql file to a new database and you can see all the tables, and the database*

This is just a simple project, where I created a database to show all of my investments within Robinhood. I created some tables to show the average price, percentage change, if the change was positive or negative, and ticker symbol for each company. The Ticker Symbol column acts a primary key for the two tables, CompanyName and CryptoName. Those tables give the full name of the investment.  The Ticker Symbol column also acts as a foreign key for the other two tables, Crypto and Stocks. Those two tables give the full price and percentage info for each investment.

ISSUES I LEARNED FROM ALONG THE WAY: 

  When I was trying to update the Ticker_symbol column with new data, I didn't realize you must first get rid of the foreign key constraint before being able to modify the data.
  If your unsure if your keys are on the correct colunms/fields just use DESCRIBE (table) statement to show any keys and data types for each column.

HOW I CREATED THE PROJECT

  1. I downloaded MYSQL to use for the rdbms/server.
  2. I added the mysql commands to my PATH in terminal to make it easier for me.
  3. I logged into mysql on terminal as the root user and started creating the database and tables for my data.
  4. I than connected my database to mysql and I just starting inserting my data into the tables, making sure I used varchar for string columns, and decimal for number columns.
  5. Once my database and tables were finished, I imported the database to a new database called 'Robinhood' becuase my database at the time was just called 'practice'.
  6. To import the database, I used the mysqldump command on terminal to export to a backup file.
  7. I than imported the data to the new database using terminal.
  
