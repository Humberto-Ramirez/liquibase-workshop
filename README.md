# Database Refactoring Workshop

Course materials for the Liquibase Workshop.

## Requirements

* JDK 1.8+
* Docker

## Environment Setup

1. Download workshop files:
    * Use Git:
        * `git clone https://github.com/Humberto-Ramirez/liquibase-workshop`
	* Download the ZIP:
	    * [	https://github.com/Humberto-Ramirez/liquibase-workshop/master](https://github.com/Humberto-Ramirez/liquibase-workshop/zipball/master)
	* Put workshop files in a directory of your choosing.

1. Check Gradle Wrapper
    * Run the `./gradlew tasks` command to show all gradle tasks 

1. Be sure to keep a browser window open to the excellent [Liquibase docs](http://www.liquibase.org/documentation/index.html)


## Database Setup

1. To initialize the docker Database schema, run the following:

    `./gradlew workshop-database:startContainer`
    <br>
    or
    <br>
    `./create-workshop-db.sh`

1. To begin using Liquibase on another MySQL database: 
    * Setup the ENV Variables & run the following command:
      ```
      export DB_HOST=127.0.0.1 \
      export DB_NAME=workshop \
      export DB_PORT=3308 \
      export DB_USERNAME=db-user \
      export DB_PASSWORD=dbUsrP4ss*
      ```
    * Be sure to set correct ENV variables, ***don´t use this configuration in a production database.***


## Run Liquibase  

1. To begin using Liquibase on the database, run the following two commands:

    `./gradlew status -PrunList=workshop`
    
    `./gradlew update -PrunList=workshop`

