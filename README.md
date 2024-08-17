# Restaurant-Review-Database

Data source: Tripadvisor
References: https://www.tripadvisor.com/Restaurants-g41078-College_Park_Maryland.html
Tools: Microsoft SQL Server Management Studio, LucidChart

## Mission Statement:
To analyze the reviews of various restaurants at College Park written by the customers who have visited the restaurants in order to help future customers decide on which restaurant to visit.
## Mission Objectives:
- To find the restaurants that serve ‘American’ cuisine and what is their cuisine highlight
- To find the restaurant that serves ‘Sushi’ and has the highest review rating
- To find the restaurants that offer late night service and till what time will they be operating
- To find the the best affordable restaurants that offer takeout option for dinner in College Park
- To find the establishments in College Park that offer Bar service
- To find the latest reviews for every restaurant
- To find the mid-range restaurants that offer lunch service

## Steps for Database Design:

### DDL:

![image](https://github.com/user-attachments/assets/a74e4619-9fb1-4cf5-94b2-370b3a0024b9)

DROP Tables command for each table dropping all the existing data for relations in the database
![image](https://github.com/user-attachments/assets/c9ee09fb-eaac-4780-b1a9-9dcafaffb0f1)

Creating [FoodAdvisor.Restaurant] table using the CREATE TABLE command and defined the column/attributes names and their data types inside the command. This was done for all the other tables/relations as well.
![image](https://github.com/user-attachments/assets/a103b587-e2e8-45aa-b2d6-0e4a1b202dbf)

Following are the Relation, their attributes, data type and key constraints as defined in the database:
![image](https://github.com/user-attachments/assets/43e0a7bb-314a-4dde-96ce-015b86f96322)

Inserting the data into the tables created, which was collected manually from tripadvisor’s website. This was done using the INSERT INTO command on sql for every relation.
![image](https://github.com/user-attachments/assets/9e3fa053-4c1a-49a2-bff7-aa50e642708c)

### DML:

What are the restaurants that serve ‘American’ cuisine and what is their cuisine highlight?
![image](https://github.com/user-attachments/assets/08e9eee3-c6ea-470f-b4f3-4c55b545d0ce)




