 -- users table create 
create table
  users (
    user_id serial primary key,
    name varchar(100) not null,
    email varchar(100) unique not null,
    password varchar(255) not null,
    phone varchar(20),
    role varchar(20) not null check (role IN ('Admin', 'Customer'))
  );

-- inset users table data
insert into
  users (name, email, password, phone, role)
values
  (
    'Alice',
    'alice@example.com',
    'pass123',
    '1234567890',
    'Customer'
  ),
  (
    'Bob',
    'bob@example.com',
    'pass456',
    '0987654321',
    'Admin'
  ),
  (
    'Charlie',
    'charlie@example.com',
    'pass789',
    '1122334455',
    'Customer'
  );

-- select users table data 
select
  *
from
  users;





-- create vehicles table 
create table
  vehicles (
    vehicle_id serial primary key,
    name varchar(100) not null,
    type
      varchar(20) not null check (
        type
          in ('car', 'bike', 'truck')
      ),
      model varchar(50) not null,
      registration_number varchar(50) unique not null,
      rental_price decimal(10, 2) not null,
      status varchar(20) not null check (status in ('available', 'rented', 'maintenance'))
  );



-- insert table data  
insert into
  vehicles (
    name,
    type
,
      model,
      registration_number,
      rental_price,
      status
  )
values
  (
    'Toyota Corolla',
    'car',
    '2022',
    'ABC-123',
    50.00,
    'available'
  ),
  (
    'Honda Civic',
    'car',
    '2021',
    'DEF-456',
    60.00,
    'rented'
  ),
  (
    'Yamaha R15',
    'bike',
    '2023',
    'GHI-789',
    30.00,
    'available'
  ),
  (
    'Ford F-150',
    'truck',
    '2020',
    'JKL-012',
    100.00,
    'maintenance'
  );

-- select usinge all vehicles data get 
select
  *
from
  vehicles;




-- create bookings table 
create table
  bookings (
    booking_id serial primary key,
    user_id int not null references users (user_id),
    vehicle_id int not null references vehicles (vehicle_id),
    start_date date not null,
    end_date date not null,
    booking_status varchar(20) not null check (
      booking_status in ('pending', 'confirmed', 'completed', 'cancelled')
    ),
    total_cost decimal(10, 2) not null
  );

-- insert bookings table data
insert into
  bookings (
    user_id,
    vehicle_id,
    start_date,
    end_date,
    booking_status,
    total_cost
  )
values
  (
    1,
    2,
    '2023-10-01',
    '2023-10-05',
    'completed',
    240.00
  ),
  (
    1,
    2,
    '2023-11-01',
    '2023-11-03',
    'completed',
    120.00
  ),
  (
    3,
    2,
    '2023-12-01',
    '2023-12-02',
    'confirmed',
    60.00
  ),
  (
    1,
    1,
    '2023-12-10',
    '2023-12-12',
    'pending',
    100.00
  );

-- select bookings data
select
  *
from
  bookings; 



-- Query 1: JOIN
select 
  b.booking_id as booking_id,
  u.name as customer_name,
  v.name as vehicle_name,
  b.start_date,
  b.end_date,
  b.booking_status as status
from bookings b
inner join users u on b.user_id = u.user_id
inner join vehicles v on b.vehicle_id = v.vehicle_id;
-- 