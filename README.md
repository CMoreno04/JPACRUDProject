## JPA C.R.U.D. Site Project

### Week 9 Homework Project for Skill Distillery

### Overview
The Site's name is "Player Index", this site will start by displaying an index page which includes an opening video and a Navigation Bar contains Home, List All Players, Create Player and an embedded search bar that allows the user to search a player by ID number. Moreover, the List All Players option will display all of the players currently saved in the database with a See Details button, upon pressing the button a page will emerge with more information on the player. Specifically, the full name, picture, id number, age, value, overall ability number, nationality with flag and current club name and logo will appear on the page. Also, upon clicking on the player's club logo  or country flag a new page will emerge showing information on the selection from Wikipedia.

In addition, upon selecting Create Player on the navbar, a form emerges allowing the user to input a new player's name, age, nationality, club, market value and overall ability number, by hitting the submit  button the user inserts that new player into the database. Upon creating, the new player information will be displayed and the user will have the option to either Delete or Update the new player. Finally, the user is only authorized to Create new players, Update these new players and Destroy or Delete the new players. The user is not allowed to CRUD any pre-existing players.


### Technologies

Java Version 1.8, JEE, JSP & JEL, Spring Boot, Spring STS, Gradle, Apache Tomcat 8.5, SQL, MySQL, MySQL Workbench, AWS EC2, HTML, CSS, XML, Bootstrap Git, Github, Eclipse IDE, Atom.

### Topics Applied

The primary topics applied from Week 9 at Skill Distillery were JPA, CRUD, Entity Manager, Persistence, JPQL Queries, Mapping Annotations, Create Database Table.  

### Lessons Learned

Preferred the precision of using Bootstrap vs traditional CSS, this helped me on having a better content display and modular customization. It took more time, but loved the results.

Make Navigation Bar a separate JSP file, this helped much with code readability, modulation and display.

Verify entity communication with database  did some JUNIT testing on my entity, subsequently I discovered that I had a typo within my entity's fields, specifically the nationality field was misspelled. It's imperative to test and double check that every portion of the code is talking to the desired counterpart, ex. DAOImpl to Database, Controller to DAOImp and Spring Boot accessing necessary entities externally.

Make sure to have a solid project set up, verify build.gradle, setting.gradle, application.properties and persistence.xml for dependencies, mapping and project connection these are very important for overall project communication and function.

### The Following Task Overview and User Stories Were Provided by Skill Distillery

### Application Overview
This weeks homework is going to perform simple CRUD on a single table database of your choosing.

### Learning Objectives
Below are a list of objectives that we see the JPACrud application reinforcing.

  * Creating a SQL database and subsequent tables.
  * Configuring a JPA project.
  * Mapping _Entities_ to SQL tables.
  * Creating JUnit tests to ensure our JPA mappings are correct.
  * Integrating a Spring MVC project with a JPA project.
  * Performing basic CRUD operations.
  * Deploying an application to AWS

### Project Requirement
You'll push your project to a Github repo named `JPACRUDProject`.  Be sure to include a `README.md` detailing the technologies used as well as the purpose of the application.

  * Your project utilizes a MySQL database to manipulate data. For this project you are only required to have a single table and entity.

  * The MySQL table is mapped to a valid JPA Entity and tested to ensure the mappings are working correctly.

  * A Spring project allows for a user to perform basic CRUD operations on your entity via a web interface.

  * Your project and database are deployed to your AWS instance.

### Stretch Goals
Try as many of these as you like, but ONLY after you've completed, tested, and COMMITTED your working application that meets the requirements.

  * Perform CRUD operations on more that one entity. We will learn about relationships and joining tables with JPA next week so for now you will not be able to handle foreign key relationships.

### Grading
This is a graded project. You are expected to have your project completed by the start of class on Monday morning.

You will be given either a pass or fail based on whether your code works and meets the above specified requirements.

If the project does meet these specifications, you will be given a 1 for this week's project.

If the project does not work, you will be given a 0 for this week's project.

If you get a zero on the project, you can upgrade to a score of .5 if you turn in a working project by the start of class on the following Monday morning AND notify an instructor that you wish to get partial credit.

To turn in a project, you must push it to GitHub. You must include a README.md that describes how to run your program. Include an overview of the class structure you chose to use.
