/*Za pomoc� polecenia CREATE SEQUENCE tworz� sekwencj� i podaj� jej parametry */

CREATE SEQUENCE sekwencja_1
  MINVALUE 1
  MAXVALUE 999  
  INCREMENT BY 1 
  START WITH 1
  NOCACHE  
  NOORDER  
  CYCLE; 
  
-- Nast�pnie uruchamiam sekwencj� na tabeli DUAL. U�ycie klauzuli NEXTVAL pobiera z sekwencji kolejn� liczb�
SELECT sekwencja_1.NEXTVAL FROM DUAL;

-- Nast�pnie uruchamiam sekwencj� na tabeli CUSTOMERS
SELECT sekwencja_1.NEXTVAL FROM customers;

--Uzupeniam tabel� CUSTOMERS o 1 rekord wykorzystuj�c zdefioniowan� wcze�niej sekwencj� 
INSERT INTO customers VALUES (sekwencja_1.
NEXTVAL,'Janusz','Kr�l','154789658','Granitowa 7','Lublin','Lubelskie','Polska', '20-254',null); 

--Sprawdzam, czy nast�pio uaktualnienie tabeli CUSTOMERS o 1 nowy rekord 
SELECT * FROM customers;

-- Za pomoc� polecenia CREATE OR REPLACE VIEW tworz� widok o nazwie products_view_1.Zawiera on wybrane dane z 3 r�nych tabel:products P, transactions T, payments Pay
CREATE OR REPLACE VIEW
 products_view_1 
AS SELECT
  P.name "Nazwa",  
  P.price "Cena",  
  T.transaction_value "warto�� transakcji",
  T.transaction_date "data transakcji",
  Pay.pay_date "data zap�aty" 
FROM products P, transactions T, payments Pay  
WHERE P.product_id = T.products_product_id AND 
      Pay.pay_id_transactions = T.transactions_id ;
      
-- podgl�d widoku view_1       
SELECT * FROM products_view_1;

