CREATE TABLE inventory (
    id VARCHAR(10),
    on_hand_quantity INTEGER,
    on_hand_quantity_delta INTEGER,
    event_type VARCHAR(10),
    event_datetime DATETIME
);

INSERT INTO inventory (id, on_hand_quantity, on_hand_quantity_delta, event_type, event_datetime) VALUES
('TR0013', 278, 99, 'OutBound', '2020-05-25 00:25:00'),
('TR0012', 377, 31, 'InBound', '2020-05-24 22:00:00'),
('TR0011', 346, 1, 'OutBound', '2020-05-24 15:01:00'),
('TR0010', 346, 1, 'OutBound', '2020-05-23 05:00:00'),
('TR009', 348, 102, 'InBound', '2020-04-25 18:00:00'),
('TR008', 246, 43, 'InBound', '2020-04-25 02:00:00'),
('TR007', 203, 2, 'OutBound', '2020-02-25 09:00:00'),
('TR006', 205, 129, 'OutBound', '2020-02-18 07:00:00'),
('TR005', 334, 1, 'OutBound', '2020-02-18 08:00:00'),
('TR004', 335, 27, 'OutBound', '2020-01-29 05:00:00'),
('TR003', 362, 120, 'InBound', '2019-12-31 02:00:00'),
('TR002', 242, 8, 'OutBound', '2019-05-22 00:50:00'),
('TR001', 250, 250, 'InBound', '2019-05-20 00:45:00');   

SELECT * FROM inventory;