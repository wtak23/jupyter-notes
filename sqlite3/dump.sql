BEGIN TRANSACTION;
CREATE TABLE stocks
             (date text, trans text, symbol text, qty real, price real);
INSERT INTO "stocks" VALUES('2006-01-05','BUY','RHAT',100.0,35.14);
COMMIT;
