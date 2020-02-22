delete from brand;
delete from product;
delete from rack;
delete from product_on_rack;
delete from product_on_storehouse;

INSERT INTO brand (brand_id, brand_name) VALUES (1, 'LIQUI MOLI');
INSERT INTO brand (brand_id, brand_name) VALUES (2, 'MAGNETTI MARELLI');
INSERT INTO brand (brand_id, brand_name) VALUES (3, 'BOLL');
INSERT INTO brand (brand_id, brand_name) VALUES (4, 'K2');
INSERT INTO brand (brand_id, brand_name) VALUES (5, 'TRW');
INSERT INTO brand (brand_id, brand_name) VALUES (6, 'LUK');
INSERT INTO brand (brand_id, brand_name) VALUES (7, 'FILTRON');
INSERT INTO brand (brand_id, brand_name) VALUES (8, 'Castrol');

INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (1, '767456565', 'Roton', 4, 'G167');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (2, '213323223', 'Brake Cleaner 600ml', 4, 'W105');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (3, '877664411', 'ŚRODEK OCHRONY KAROSERII', 3, 'BOLL2');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (4, '213454555', 'Brake Cleaner', 5, 'V45');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (5, '988775443', 'DODATEK DO BENZYNY', 1, 'LM2642');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (6, '122234445', 'LONGTIME HIGH TECH 5W-30', 8, 'LM1137');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (7, '566676777', 'Zestaw sprzęgła', 6, '450 0015');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (8, '989888865', 'Masner elektryczna polerka do lakieru z regulacją obrotów 1200W', 4, 'L5315');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (9, '323236554', 'Filtr oleju Peugeot 407/607 2.7HDI V6 04', 7, 'OE667/2');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (10, '022345322', 'Filtr oleju Audi A4/6/8 2', 7, 'OE650/3');
INSERT INTO product (product_id, product_barcode, product_name, brand_id, product_code) VALUES (11, '100985643', 'Edge Titanium FST 5W/30 LL op 4L', 8, '544156');

INSERT INTO rack (rack_id, rack_barcode, rack_name) VALUES (1, '6554344566', 'H1-01-1G-01-02/1B');
INSERT INTO rack (rack_id, rack_barcode, rack_name) VALUES (2, '5445443233', 'H1-01-1G-01-02/2B');

INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (1, 1, 10);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (1, 2, 90);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (1, 3, 60);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (1, 4, 50);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (1, 5, 190);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (1, 6, 150);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (2, 7, 150);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (2, 8, 100);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (2, 9, 70);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (2, 10, 50);
INSERT INTO product_on_rack (rack_id, product_id, quantity) VALUES (2, 11, 30);

INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (1, 1, 1500);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (2, 2, 1400);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (3, 3, 650);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (4, 4, 600);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (5, 5, 550);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (6, 6, 500);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (7, 7, 1100);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (8, 8, 1150);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (9, 9, 950);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (10, 10, 300);
INSERT INTO product_on_storehouse (id, product_id, quantity) VALUES (11, 11, 200);

