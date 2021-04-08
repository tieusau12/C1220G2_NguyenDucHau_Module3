use
furama_resort;

-- Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu của tất cả các loại dịch vụ đã từng được Khách hàng đặt phòng trong năm 2018 
-- nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.
select ser.id_service,
       ser.name_service,
       ser.area,
       ser.max_of_customer,
       ser.rental_fee,
       tos.name_of_service,
       con.date_started_contract
from services ser
         inner join type_of_service tos on tos.id_service_type = ser.id_service
         inner join contracts con on con.id_service = ser.id_service
where ser.id_service in (
    select distinct con.id_service
    from contracts
    where year (
    con.date_started_contract) =2018
    )
  and ser.id_service not in (
select distinct con.id_service
from contracts
where year (con.date_started_contract)= 2019
    )
;