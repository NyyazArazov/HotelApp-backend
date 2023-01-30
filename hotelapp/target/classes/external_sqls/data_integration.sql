select * from staff;
select * from owner;
select * from hotel;
select * from room_type;
select * from other_staff;
select * from room;
select * from reservation;
select * from customer;
select * from accommodation;
select * from payment;
INSERT INTO room_type (type) VALUES ('cozy room');
INSERT INTO room_type (type) VALUES ('luxury room');
INSERT INTO room_type (type) VALUES ('normal room');
INSERT INTO hotel (type ,name,location) VALUES ('winter hotel','ankara hotel','ankara');
INSERT INTO hotel (type ,name,location) VALUES ('summer hotel','istanbul hotel','istanbul');
INSERT INTO hotel (type ,name,location) VALUES ('summer hotel','ankara hotel','ankara');
INSERT INTO room (hotel_id,room_no,cost,type,is_reserved) VALUES (1,101,1000,'cozy room',true);
INSERT INTO room (hotel_id,room_no,cost,type,is_reserved) VALUES (1,201,2000,'normal room',true);
INSERT INTO room (hotel_id,room_no,cost,type,is_reserved) VALUES (1,301,5000,'luxury room',true);
INSERT INTO staff (full_name, hotel_id) VALUES ('niyaz arazov',1);
INSERT INTO staff (full_name, hotel_id) VALUES ('bahacan karatas',1);
INSERT INTO staff (full_name, hotel_id) VALUES ('serhat diyar',2);
INSERT INTO staff (full_name, hotel_id) VALUES ('ahmet mehmet',4);
INSERT INTO customer (full_name, mobile, mail) VALUES ('bahaa', '11111', 'ahahgmail');
INSERT INTO owner (id,tax_number) VALUES (2,'123456');
INSERT INTO other_staff (id,type) VALUES (3,'temizlik görevlisi');

select owner.id , staff.full_name, hotel.name from owner, hotel, staff where owner.id = staff.id and hotel.id = staff.hotel_id ;
select staff.id , staff.full_name, hotel.name, other_staff.type from other_staff, hotel, staff where other_staff.id = staff.id and hotel.id = staff.hotel_id ;