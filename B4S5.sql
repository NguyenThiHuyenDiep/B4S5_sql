create database ss5_bt4;
use ss5_bt4;

create table orders (
    order_id int auto_increment primary key,
    customer_name varchar(100),
    status varchar(50),
    reason varchar(50)
);

insert into orders (customer_name, status, reason)
values
('khach a', 'failed', 'khach_huy'),
('khach b', 'failed', 'quan_dong_cua'),
('khach c', 'failed', 'khong_co_tai_xe'),
('khach d', 'failed', 'bom_hang'),
('khach e', 'success', null),
('khach f', 'failed', 'ly_do_khac');

-- backend chan mang rong
/* if (reason_list is empty) then
    return empty result
end if*/

-- cau lenh SQL cho la tot nhat
select order_id, customer_name, status, reason
from orders
where reason in ('khach_huy', 'quan_dong_cua', 'khong_co_tai_xe', 'bom_hang');