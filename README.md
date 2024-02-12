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

