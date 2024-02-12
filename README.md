# Seattle Pet License dimensional modeling and Loading via Talend

# Data profile of Seattle Pet License dataset
Dataset Name: Seattle Pet License Data
Data Description: A list of active/current Seattle pet licenses, including animal type (species), pet's name, breed and the owner's ZIP code.
1.	License Issue Date: -
Data type: Date (“MMMM dd yyyy”)
Min length: 11
Max length: 17
Null value %: 0%
Special characters: None

Data type should be date

2.	License Number -
Data type: String
Min length: 4
Max length: 7
Null value %: 0%
Special characters: None

3.	Animal’s name: -
Data type: String
Min length: 1
Max length: 50
Null value %: 0.07% (32 records)
Special characters: None

4.	Species: -
Data type: String
Min length: 3
Max length: 4
Null value %: 0%
Special characters: None

5.	Primary Breed: -
Data type: String
Min length: 3
Max length: 46
Null value %: 0%
Special characters: None

6.	Secondary Breed: -
Data type: String
Min length: 3
Max length: 46
Null value %: 36.35% (15,661 records)
Special characters: None

7.	ZIP Code: -
Data type: String
Min length: 3
Max length: 5
Null value %: 0.3% (129 records)
Special characters: None
Bad data: ZIP Codes are characteristically 5-digit numbers representing an area. However, in this dataset, there are few values in the zip code column which have 3- and 4-digit values.

# Dimensional Model
![PHYSICAL MODEL SS](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/fa54873e-56ce-41fd-b0a9-e242f1bbc680)

![DIM MODEL SS](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/406341e6-acda-4109-b9a1-033c0bc4bfe9)

# Talend jobs

Staging Job

![Staging_Job](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/44a6c15b-a741-4071-be33-9865ca9af3e0)

Loading of Location Dimension

![location_dim job](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/bd5dc97d-6441-4c68-8a7b-9f8c7bd02f83)

Loading of Date Dimension

![date_dim job](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/6b78e0af-7f6d-41cf-9841-7a202f19494c)

Loading of Breed Dimension

![Breed_Dim Job](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/3b1bb85b-b657-4241-8265-c971d3b1e13f)

Loading of fact table

![facttable job](https://github.com/sashank1079/Dimensional-Modelling/assets/122720872/7a0fd3f0-b6b3-4ac1-b601-6f7b6b651ce7)

