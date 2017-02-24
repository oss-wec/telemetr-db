CREATE TABLE gps (
  id serial PRIMARY KEY,
  serial_num varchar(50) REFERENCES devices(serial_num),
  acq_time_utc timestamp with time zone,
  acq_time_lcl timestamp with time zone,
  latitude numeric,
  longitude numeric,
  altitude numeric,
  easting numeric,
  northing numeric,
  activity numeric,
  temperature numeric,
  hdop numeric,
  pdop numeric,
  n_sats integer,
  fixtype varchar(10),
  gps_volts real,
  vhf_volts real,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

COMMENT ON TABLE gps IS 'Table of raw gps data.';
