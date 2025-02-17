# Greenspot DBM Project
### Overview
Greenspot Grocer, a fictional online grocery store, needed a scalable relational database to replace their unwieldy spreadsheet system. This project involved designing, implementing, and testing a MySQL database to organize their product data and support future expansion. 

### Objectives
1. Examine the current data and reorganize it into relational tables using the modeling tool in MySQL Workbench. 
2. Create and load the database with the sample data provided. 
3. Test and verify the database design by generating SQL JOIN queries. 

### Methodology
1. Data Exploration:
   Examined the sample data to identify fields that should be grouped into tables and determined logical relationships between them.

2. Database Design:
   Used MySQL Workbench's Modeling tool to create an ER diagram, defining tables, fields, primary keys, and foreign keys to establish relationships between tables.

3. Implementation:
   Generated SQL scripts to create the tables and populated them with the provided sample data.

4. Testing:
   Wrote SQL JOIN queries to validate the database design, demonstrating the ability to retrieve data from multiple tables in a single query.

### Files Included
1. [ER Diagram](https://github.com/oluwadunni1/greenspotdbm/blob/main/ERdiagram.png): A visual representation of the database design
2. SQL Scripts:
   * [create_database.sql](https://github.com/oluwadunni1/greenspotdbm/blob/main/createScript.sql): Script to create the database and tables.
   * [insert_data.sql](https://github.com/oluwadunni1/greenspotdbm/blob/main/insertScript.sql): Script to load the sample data into the tables
   * [test_queries.sql](https://github.com/oluwadunni1/greenspotdbm/blob/main/testJoins.sql): Script to test the database
4. [Sample data](https://github.com/oluwadunni1/greenspotdbm/blob/main/GreenspotDataset.csv): original dataset provided for the project


## Conclusion and Insights
The initial dataset contained several inconsistencies and anomalies, including incomplete data, inconsistent entries, missing values, and redundant information. Additionally, it lacked a direct way to track inventory levels, making it difficult to compute stock due to data inconsistencies.

The database design addresses these issues by normalizing data into structured tables, enforcing data validation, and creating relationships that enhance scalability. This helps to improve reporting accuracy, support customer-centric growth, and enable optimized business decisions.

To further enhance efficiency, triggers could be implemented to automate inventory updates, ensuring that stock levels adjust dynamically after purchases and sales. Additionally, views can be used to aggregate key metrics, such as monthly revenue, total revenue, and sales trends, improving business insights and decision-making. 
This structured approach enhances data integrity, simplifies operations, and provides a scalable foundation for business growth as product lines expand.
