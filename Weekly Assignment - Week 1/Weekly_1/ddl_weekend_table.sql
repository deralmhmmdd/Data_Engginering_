 CREATE TABLE weekend(
    Source varchar (225) ,
    Target varchar (225),
    Weight float,
    typeTrans varchar (225),
    fraud int
); 

COPY tips_table FROM 'gs://datafellowship/data/weekend.csv' WITH (FORMAT csv, HEADER true);