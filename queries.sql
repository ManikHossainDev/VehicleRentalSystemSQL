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
select * from users;

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
insert into vehicles (
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
select * from vehicles;