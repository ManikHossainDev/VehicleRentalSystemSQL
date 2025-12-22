 -- users table create 
create table
  users (
    id serial primary key,
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
select * from users   


