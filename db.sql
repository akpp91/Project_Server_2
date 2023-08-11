CREATE DATABASE mobiles_db;
USE mobiles_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS mobiles;
DROP TABLE IF EXISTS orders;


CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(20),
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(20),
    mobile VARCHAR(15)
);

CREATE TABLE mobiles(
    id INT PRIMARY KEY AUTO_INCREMENT,
    mname VARCHAR(30),
    ram INT,
    storage INT,
    Company VARCHAR(20),
    price DECIMAL(10,2),
    image VARCHAR(100)
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    mid INT,
    FOREIGN KEY (uid) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (mid) REFERENCES mobiles(id) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO mobiles(mname,ram,storage,company,price,image) VALUES("GALAXY M33 5G",8,128,"samsung",19499,"m33_5g.jpg");
INSERT INTO mobiles(mname,ram,storage,company,price,image) VALUES("9A Sport",2,32,"Redmi",6999,"9ASport.jpg");
INSERT INTO mobiles(mname,ram,storage,company,price,image) VALUES("narzo 50i",4,64,"realme",8999,"narzo50i.jpg");
INSERT INTO mobiles(mname,ram,storage,company,price,image) VALUES("A31",6,128,"oppo",11990,"oppoA31.jpg");
INSERT INTO mobiles(mname,ram,storage,company,price,image) VALUES("iQOO Z6",6,128,"vivo",15999,"iQOOz6.jpg");