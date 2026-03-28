--Master table for storign the airports record
CREATE TABLE airports (
    id BIGSERIAL PRIMARY KEY,
    iata_code VARCHAR(20),
    airport_name VARCHAR(500),
    city_name VARCHAR(400),
    country_name VARCHAR(400)
);