-- 1
CREATE VIEW samsBills AS SELECT staff.first_name, staff.surname, bill.bill_date, bill.cust_name, bill.bill_totalFROM restBill billJOIN restStaff staff ON bill.waiter_no = staff.staff_no WHERE staff.first_name = 'Sam' AND staff.surname = 'Pitt';

-- 2
SELECT * FROM samsBills WHERE bill_total > 400;

-- 3
CREATE VIEW roomTotals AS SELECT table.room_name, SUM(bill.bill_total) AS total_sum FROM restBill bill JOIN restRest_table table ON bill.table_no = table.table_no GROUP BY table.room_name;

-- 4
CREATE VIEW teamTotals ASSELECT CONCAT(head.first_name, ' ', head.surname) AS headwaiter_name, SUM(bill.bill_total) AS total_sum FROM restStaff head JOIN restStaff waiter ON head.staff_no = waiter.headwaiter JOIN restBill bill ON waiter.staff_no = bill.waiter_no GROUP BY head.staff_no;
