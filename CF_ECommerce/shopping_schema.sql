
DROP TABLE shoppingcart;
DROP TABLE geometryround;
DROP TABLE geometryrectangle;
DROP TABLE product;

CREATE TABLE product (
	id integer identity(1,1) NOT NULL,
	material varchar(50) NULL,
	priceperfoot decimal NOT NULL,
	stockinfeet integer NOT NULL,
	maxcutlength integer NOT NULL,
	weightperfootinlbs float NOT NULL,
	imagename varchar(50) NOT NULL,

	CONSTRAINT pk_product_id PRIMARY KEY (id)
);

CREATE TABLE geometryround (
	product_id integer NOT NULL,
	diameter float NOT NULL,

	CONSTRAINT pk_geometryround_product_id PRIMARY KEY (product_id),
	CONSTRAINT fk_geometryround_product FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE geometryrectangle (
	product_id integer NOT NULL,
	smalldimension float NOT NULL,
	largedimension float NOT NULL,
	cornerradius float NOT NULL,

	CONSTRAINT pk_geometryrectangle_product_id PRIMARY KEY (product_id),
	CONSTRAINT fk_geometryrectangle_product FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE shoppingcart (
	user_id nvarchar(128) NOT NULL,
	product_id integer NOT NULL,
	lengthinfeet integer NOT NULL,
	quantity integer NOT NULL,
	dateadded datetime NOT NULL,

	CONSTRAINT pk_shoppingcart_multiple PRIMARY KEY (user_id, product_id, lengthinfeet),
	CONSTRAINT fk_shoppingcart_user FOREIGN KEY (user_id) REFERENCES AspNetUsers(id),
	CONSTRAINT fk_shoppingcart_product FOREIGN KEY (product_id) REFERENCES product(id)
);

SET IDENTITY_INSERT product ON;
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (1,'standard modulus',1,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (2,'standard modulus',1,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (3,'standard modulus',1,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (4,'standard modulus',1,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (5,'intermediate modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (6,'intermediate modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (7,'intermediate modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (8,'intermediate modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (9,'high modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (10,'high modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (11,'high modulus',3,1000,8,0.1,'');
INSERT INTO product (id, material, priceperfoot, stockinfeet, maxcutlength, weightperfootinlbs, imagename)
	VALUES (12,'high modulus',3,1000,8,0.1,'');
SET IDENTITY_INSERT product OFF;

INSERT INTO geometryround (product_id, diameter) VALUES (1, 0.125);
INSERT INTO geometryround (product_id, diameter) VALUES (2, 0.25);
INSERT INTO geometryround (product_id, diameter) VALUES (3, 0.375);
INSERT INTO geometryround (product_id, diameter) VALUES (4, 0.5);
INSERT INTO geometryround (product_id, diameter) VALUES (5, 0.125);
INSERT INTO geometryround (product_id, diameter) VALUES (6, 0.25);
INSERT INTO geometryround (product_id, diameter) VALUES (7, 0.375);
INSERT INTO geometryround (product_id, diameter) VALUES (8, 0.5);
INSERT INTO geometryround (product_id, diameter) VALUES (9, 0.125);
INSERT INTO geometryround (product_id, diameter) VALUES (10, 0.25);
INSERT INTO geometryround (product_id, diameter) VALUES (11, 0.375);
INSERT INTO geometryround (product_id, diameter) VALUES (12, 0.5);