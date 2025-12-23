# Vehicle Rental System (SQL)

This README explains the purpose and functionality of all the SQL code provided above. The project represents a simple Vehicle Rental System database design with sample data and queries.

1. Users Table
Purpose

Stores information about all system users, including admins and customers.

Key Columns

user_id – Primary Key

email – Must be unique

role – Restricted to Admin or Customer

Sample Data

Three users are inserted: Alice, Bob, and Charlie.

2. Vehicles Table
Purpose

Stores information about vehicles available for rent.

Key Columns

vehicle_id – Primary Key

type – car / bike / truck

registration_number – Unique identifier for each vehicle

status – available / rented / maintenance

Sample Data

Four vehicles are inserted, covering different types and statuses.

3. Bookings Table
Purpose

Stores booking records showing which user booked which vehicle and for what duration.

Relationships

One User → Many Bookings

One Vehicle → Many Bookings

Foreign Keys

user_id references users(user_id)

vehicle_id references vehicles(vehicle_id)

Sample Data

Multiple bookings are inserted with different booking statuses.

4. Basic SELECT Queries
SELECT * FROM users;
SELECT * FROM vehicles;
SELECT * FROM bookings;

These queries retrieve all data from each table.

5. Query 1:- JOIN Query
Purpose

Displays booking details along with the related user and vehicle information.

Output Includes

Booking ID

Customer Name

Vehicle Name

Start Date and End Date

Booking Status

6. Query 2:- EXISTS / NOT EXISTS
Purpose

Finds vehicles that have never been booked.

Logic

Uses NOT EXISTS to check whether a vehicle ID appears in the bookings table.

7. Query 3:- WHERE Clause
Purpose

Retrieves only vehicles that are:

Available

Of type car

Use Case

Used when a customer wants to see only available cars

8. Query 4:- GROUP BY and HAVING
Purpose

Finds vehicles that have been booked more than two times

Logic

Groups records by vehicle name

Uses HAVING COUNT(booking_id) > 2

Summary

This SQL project demonstrates:

Database schema design

Data insertion

Table relationships

Practical SQL queries (JOIN, EXISTS, WHERE, GROUP BY)

It is suitable for assignments practice, and mini projects related to database management systems
