create table IF NOT EXISTS brand (
    brand_id serial PRIMARY KEY,
    brand_name varchar not null
);

create table IF NOT EXISTS product(
    product_id serial PRIMARY KEY,
    product_barcode varchar  not null UNIQUE,
    product_name varchar not null,
    product_code varchar not null ,
    brand_id integer not null
        constraint product_brand_id_fkey
            references brand
);

create table IF NOT EXISTS rack(
    rack_id serial PRIMARY KEY,
    rack_barcode varchar not null,
    rack_name varchar not null
);

create table IF NOT EXISTS product_on_rack(
    id serial PRIMARY KEY ,
    rack_id integer REFERENCES rack,
    product_id integer REFERENCES product,
    quantity integer
);

CREATE TABLE  IF NOT EXISTS product_on_storehouse(
    id serial PRIMARY KEY ,
    product_id integer REFERENCES product,
    quantity integer
);
