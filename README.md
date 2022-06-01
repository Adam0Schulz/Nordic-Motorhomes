# Nordic Motorhomes


# User (E)Manual

### How to get the project up and running

1. Clone the project to your local machine

   1. Open your terminal
   2. Navigate to the selected folder
   3. Run these commands:
      1. $ git init
      2. $ git clone https://github.com/Adam0Schulz/Nordic-Motorhomes.git

2. Add enviroment variables

   1. Open the project in IntelliJ
   2. On the top bar there should be option to select Run/Debug Configuration, open it
   3. Go to Enviroment > Enviroment variables > Edit enviroment variables
   4. Create a variable called 'driver'
      1. Set the value of the variable to 'com.mysql.cj.jdbc.Driver';
   5. Create a variable called 'url'
      1. Set the value of the variable to database url + '/nordic_motorhomes'
         1. You can find it in IntelliJ > Database (on the right side-bar) > Data Source Properties > URL
   6. Create a variable called 'username'
      1. Set the value of the variable to 'root'
   7. Create a variable called 'password'
      1. Do this step only if you have a password to your database otherwise skip this step
      2. Set the value of the variable to your password
   8. Go to the src/main/resources/application.properties
      1. If you have a password then make sure you have this line in the file - 'spring.datasource.password=${password}'
      2. If you don't have a password then make sure you don't have the line in the file

3. Run the DDL-init.sql file

   1. You can find it in SQL folder

4. Run the Application (to create the tables with JPA)

5. Run DML-init.sql file 

   1. You can find it in SQL folder

6. Now you are all setup and can run and enjoy the Nordic Motorhomes Application
