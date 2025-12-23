# Vehicle Rental System (SQL)

# Vehicle Rental System (SQL)

This project demonstrates a simple **Vehicle Rental System** using SQL.  
It includes database table creation, data insertion, and multiple SQL queries
to handle real-world rental system scenarios.

---

## 1. Users Table

### Purpose
Stores information about all users of the system, including **Admins** and **Customers**.

### Table Structure
- `user_id` – Primary Key
- `name` – User full name
- `email` – Unique email address
- `password` – User password
- `phone` – Contact number
- `role` – Either `Admin` or `Customer`

### Sample Data
Three users are inserted:
- Alice (Customer)
- Bob (Admin)
- Charlie (Customer)

---

## 2. Vehicles Table

### Purpose
Stores information about vehicles available for rent.

### Table Structure
- `vehicle_id` – Primary Key
- `name` – Vehicle name
- `type` – car / bike / truck
- `model` – Model year
- `registration_number` – Unique registration number
- `rental_price` – Rental cost per day
- `status` – available / rented / maintenance

### Sample Data
Four vehicles are inserted with different types and availability statuses.

---

## 3. Bookings Table

### Purpose
Stores booking details showing which user booked which vehicle and for how long.

### Relationships
- One User → Many Bookings
- One Vehicle → Many Bookings

### Foreign Keys
- `user_id` references `users(user_id)`
- `vehicle_id` references `vehicles(vehicle_id)`

### Booking Details
- `start_date`
- `end_date`
- `booking_status` – pending / confirmed / completed / cancelled
- `total_cost`

---

## 4. View All Table Data

```sql
SELECT * FROM users;
SELECT * FROM vehicles;
SELECT * FROM bookings;
