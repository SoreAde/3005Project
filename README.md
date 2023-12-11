# 3005Project
Health and fitness club database

The following are included in the submission:
Project_creation.sql
PopulationFile.sql
Queries.sql
Design Explanation
E-R Model Fitness Club
Relational Database Schema Fitness Club
GIT - 
youtube - https://www.youtube.com/watch?v=-Lgi2XXSe7g&ab_channel=obasoreadedotun

Creation of Database:
Launch PGAdmin. 
Under the "Browser" panel on the left, expand the "Servers" section.
"PostgreSQL #" (where # is the version number). Click on it. It will prompt you for the password. Enter the password you set during the installation.
Right-click on "Databases" under the PostgreSQL server you just expanded.
Choose "Create" -> "Database".
Name your database, e.g., "Health and Fitness Club" and click "Save".
Select the newly created database by clicking on it.
Open the Query Tool by right-clicking on the database and selecting Query Tool.
Click on the Open File icon in the toolbar.
Navigate to the location where you saved Project_creation.sql and open it.
The content should now be displayed in the query editor.
Click on the Run button to execute the SQL commands.
You should see a success message.
In the Browser panel, expand the database node.
Expand the Schemas node, then public, and then Tables.
You should see a list of all the tables mentioned in the SQL.

Population of database:
Choose Query Tool to open an SQL editor window.
In the Query Tool, open the PopulationFile.
Once the file is open in the editor, Run to execute the SQL commands.
Once the queries run without error, run the following query to confirm:

SELECT * FROM Trainer; (You can do this for every table if you wish)

You should see the chosen table with its content.
