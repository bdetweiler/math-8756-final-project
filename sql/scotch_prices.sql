PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "PRODUCER" (
    "PRODUCER_ID" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "NAME" TEXT NOT NULL
);
INSERT INTO "PRODUCER" VALUES(1,'Auchentoshan');
CREATE TABLE "DISTILLERY" (
    "DISTILLERY_ID" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "NAME" TEXT NOT NULL,
    "REGION" TEXT
);
INSERT INTO "DISTILLERY" VALUES(1,'Auchentoshan','Lowland');
CREATE TABLE "SCOTCH" (
    "SCOTCH_ID" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "PRODUCER" INTEGER,
    "DISTILLERY" INTEGER,
    "NAME" TEXT,
    "AGE" INTEGER
);
INSERT INTO "SCOTCH" VALUES(2,1,1,'Three Wood',NULL);
CREATE TABLE retailer (
    "RETAILER_ID" INTEGER NOT NULL,
    "NAME" TEXT NOT NULL,
    "TYPE" TEXT,
    "CITY" TEXT,
    "STATE" TEXT,
    "COUNTRY" TEXT,
    "SHIPPING_COST" REAL,
    "ADDITIONAL_COST" REAL
, "URL" TEXT);
INSERT INTO "retailer" VALUES(1,'Ace Spirits','Web','Hopkins','MN','USA',NULL,NULL,'http://www.acespirits.com');
INSERT INTO "retailer" VALUES(2,'Astor Wines and Spirits','Web','New York','NY','USA',NULL,NULL,'http://www.astorwines.com/');
INSERT INTO "retailer" VALUES(3,'Beltramos','Web','Menlo Park','CA','USA',NULL,NULL,'https://www.beltramos.com/spirits/Single-Malt-Scotch?page=1&varietal=Single+Malt+Scotch&sortby=winery&l=200');
INSERT INTO "retailer" VALUES(4,'Binnys','Web','Chicago','IL','USA',NULL,NULL,'http://www.binnys.com/spirits//1/5866/1000');
INSERT INTO "retailer" VALUES(5,'Caskers','Web','New York City','NY','USA',NULL,NULL,'https://www.caskers.com/spirits/whiskey/scotch/?origin=1554');
INSERT INTO "retailer" VALUES(6,'D&M','Web','San Fransisco','CA','USA',NULL,NULL,'http://dandm.com/scotch-whisky/our-single-malt-scotch-selection.html');
INSERT INTO "retailer" VALUES(7,'DrinkUpNy','Web','Brooklyn','NY','USA',NULL,NULL,'https://www.drinkupny.com/single-malt-scotch-whisky-s/77.htm?searching=Y&sort=9&cat=77&show=500');
INSERT INTO "retailer" VALUES(8,'Hi-Time Wine','Web','Costa Mesa','CA','USA',15.0,0.0,'http://www.hitimewine.net/SCOTCH/?objects_per_page=500');
INSERT INTO "retailer" VALUES(9,'K&L Wines','Web','Redwood City','CA','USA',12.32,0.0,'http://www.klwines.com/Products/r?s=1536BC7C73ED&d=37&r=58%2B4294967193&z=False&o=8&displayCount=500');
INSERT INTO "retailer" VALUES(10,'Liquorama','Web','Upland','CA','USA',NULL,NULL,'http://www.liquorama.net/single-malt-scotch-whisky/');
INSERT INTO "retailer" VALUES(11,'Love Scotch','Web','','','',NULL,NULL,'http://www.lovescotch.com/scotch/single-malts/');
INSERT INTO "retailer" VALUES(12,'Pacific Online Spirits','Web','San Diego','CA','USA',0.0,0.0,'http://pacificonlinespirits.com/scotch-whisky.aspx');
INSERT INTO "retailer" VALUES(13,'Quality Liquore Store','Web','San Diego','CA','USA',NULL,NULL,'http://www.qualityliquorstore.com');
INSERT INTO "retailer" VALUES(14,'San Fransisco Wine Trading Company','Web','San Fransisco','CA','USA',NULL,NULL,'https://www.sfwtc.com/spirits/?page=1&varietal=Single+Malt+Scotch+Whisky&sortby=winery&l=100');
INSERT INTO "retailer" VALUES(15,'Star Wine','Web','Monroe','NY','USA',NULL,NULL,'http://starwine.com/main.asp?request=TYPEPAGE&sel_category=17&type=L& Blendeds included');
INSERT INTO "retailer" VALUES(16,'The Whisky Exchange','Web','London','','UK',NULL,NULL,'http://www.thewhiskyexchange.com');
INSERT INTO "retailer" VALUES(17,'Ultimate Wine Shop','Web','','','USA',12.0,NULL,'https://www.ultimatewineshop.com/websearch_results.html?page=1&country=Scotland&sortby=sort_item_order&l=100');
INSERT INTO "retailer" VALUES(18,'Whiskey Shop USA','Web','San Fransisco','CA','USA',NULL,NULL,'http://www.whiskyshopusa.com');
INSERT INTO "retailer" VALUES(19,'Wine and Cheese Place','Web','Clayton','MO','USA',NULL,NULL,'http://www.wineandcheeseplace.com/cart.php?target=category&category_id=65');
CREATE TABLE price (
    "PRICE_ID" INTEGER NOT NULL,
    "RETAILER" INTEGER NOT NULL,
    "SCOTCH" INTEGER NOT NULL,
    "PRICE" REAL
);
INSERT INTO "price" VALUES(1,'RETAILER','SCOTCH',66.99);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('SCOTCH',2);
INSERT INTO "sqlite_sequence" VALUES('DISTILLERY',1);
INSERT INTO "sqlite_sequence" VALUES('PRODUCER',1);
COMMIT;
