# HireSight
HireSight is a recruitment system. It aims in making the present recruitment system faster, better and easier.
It is an innovative solution to the problems faced by the HR department at the time of recruitment.

# Stakeholders
1. Applicants
2. Companies

# Applicant
Avail oppurtunities of better jobs.

# Companies
 - Post jobs
 - View Applicants and their rating
 - Accept/Reject applications

# How to use it
The web app is written using Django framework.

Softwares / Libraries Required : 
1. Django
2. django social_auth
3. xampp/wamp server

After cloning the repository, in settings.py add your username, host and password for the database.
In mysql, create a database named recruitment_system. Import the .sql into this database.
Then, run the command : python manage.py migrate
This will migrate all the tables in the database

After this, in the HireSight directory, run the command : 
        python manage.py runserver
This will open the landing page of HireSight.
