# Create the database that we'll use to populate data and watch the effect in the binlog
\! echo creating demo db...
CREATE DATABASE if not exists demo;
#GRANT ALL PRIVILEGES ON demo.* TO 'mysqluser'@'%';

use demo;

\! echo creating customers table...
drop table if exists CUSTOMERS;
create table CUSTOMERS (
        id INT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        email VARCHAR(50),
        gender VARCHAR(50),
				status360 VARCHAR(8),
        comments VARCHAR(90),
        create_ts timestamp DEFAULT CURRENT_TIMESTAMP ,
        update_ts timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
\! echo creating USERS table...
CREATE TABLE USERS (USERID VARCHAR(255), 
                    EMAIL  VARCHAR(255), 
                    SHARE_LOCATION_OPTIN BOOLEAN,
                    PRIVACY_LOCATION_LAT DOUBLE,
                    PRIVACY_LOCATION_LON DOUBLE,
                    PRIVACY_ZONE_KM DOUBLE,
                    CREATE_TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
                    UPDATE_TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
\! echo inserting into USERS
INSERT INTO USERS (USERID, EMAIL, SHARE_LOCATION_OPTIN, PRIVACY_LOCATION_LAT, PRIVACY_LOCATION_LON, PRIVACY_ZONE_KM) VALUES ('rmoff','robin@rmoff.net', TRUE, 53.924729, -1.804453, 0.5);
INSERT INTO USERS (USERID, EMAIL, SHARE_LOCATION_OPTIN) VALUES ('hugh','hugh@example.com', FALSE);
INSERT INTO USERS (USERID, EMAIL, SHARE_LOCATION_OPTIN) VALUES ('ivor','ivor@example.com', FALSE);
\! echo Inserting customers...
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (1, 'Rica', 'Blaisdell', 'rblaisdell0@rambler.ru', 'Female', 'bronze', 'Universal optimal hierarchy');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (2, 'Ruthie', 'Brockherst', 'rbrockherst1@ow.ly', 'Female', 'platinum', 'Reverse-engineered tangible interface');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (3, 'Mariejeanne', 'Cocci', 'mcocci2@techcrunch.com', 'Female', 'bronze', 'Multi-tiered bandwidth-monitored capability');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (4, 'Hashim', 'Rumke', 'hrumke3@sohu.com', 'Male', 'platinum', 'Self-enabling 24/7 firmware');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (5, 'Hansiain', 'Coda', 'hcoda4@senate.gov', 'Male', 'platinum', 'Centralized full-range approach');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (6, 'Robinet', 'Leheude', 'rleheude5@reddit.com', 'Female', 'platinum', 'Virtual upward-trending definition');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (7, 'Fay', 'Huc', 'fhuc6@quantcast.com', 'Female', 'bronze', 'Operative composite capacity');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (8, 'Patti', 'Rosten', 'prosten7@ihg.com', 'Female', 'silver', 'Integrated bandwidth-monitored instruction set');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (9, 'Even', 'Tinham', 'etinham8@facebook.com', 'Male', 'silver', 'Virtual full-range info-mediaries');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (10, 'Brena', 'Tollerton', 'btollerton9@furl.net', 'Female', 'silver', 'Diverse tangible methodology');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (11, 'Alexandro', 'Peeke-Vout', 'apeekevouta@freewebs.com', 'Male', 'gold', 'Ameliorated value-added orchestration');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (12, 'Sheryl', 'Hackwell', 'shackwellb@paginegialle.it', 'Female', 'gold', 'Self-enabling global parallelism');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (13, 'Laney', 'Toopin', 'ltoopinc@icio.us', 'Female', 'platinum', 'Phased coherent alliance');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (14, 'Isabelita', 'Talboy', 'italboyd@imageshack.us', 'Female', 'gold', 'Cloned transitional synergy');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (15, 'Rodrique', 'Silverton', 'rsilvertone@umn.edu', 'Male', 'gold', 'Re-engineered static application');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (16, 'Clair', 'Vardy', 'cvardyf@reverbnation.com', 'Male', 'bronze', 'Expanded bottom-line Graphical User Interface');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (17, 'Brianna', 'Paradise', 'bparadiseg@nifty.com', 'Female', 'bronze', 'Open-source global toolset');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (18, 'Waldon', 'Keddey', 'wkeddeyh@weather.com', 'Male', 'gold', 'Business-focused multi-state functionalities');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (19, 'Josiah', 'Brockett', 'jbrocketti@com.com', 'Male', 'gold', 'Realigned didactic info-mediaries');
insert into CUSTOMERS (id, first_name, last_name, email, gender, status360, comments) values (20, 'Anselma', 'Rook', 'arookj@europa.eu', 'Female', 'gold', 'Cross-group 24/7 application');