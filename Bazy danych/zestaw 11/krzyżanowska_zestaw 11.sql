/*Za pomoc¹ polecenia CREATE SEQUENCE tworzê sekwencjê i podajê jej parametry */

CREATE SEQUENCE sekwencja_1
  MINVALUE 1
  MAXVALUE 999  
  INCREMENT BY 1 
  START WITH 1
  NOCACHE  
  NOORDER  
  CYCLE; 
  
-- Nastêpnie uruchamiam sekwencjê na tabeli DUAL. U¿ycie klauzuli NEXTVAL pobiera z sekwencji kolejn¹ liczbê
SELECT sekwencja_1.NEXTVAL FROM DUAL;

-- Nastêpnie uruchamiam sekwencjê na tabeli CUSTOMERS
SELECT sekwencja_1.NEXTVAL FROM customers;

--Uzupeniam tabelê CUSTOMERS o 1 rekord wykorzystuj¹c zdefioniowan¹ wczeœniej sekwencjê 
INSERT INTO customers VALUES (sekwencja_1.
NEXTVAL,'Janusz','Król','154789658','Granitowa 7','Lublin','Lubelskie','Polska', '20-254',null); 

--Sprawdzam, czy nast¹pio uaktualnienie tabeli CUSTOMERS o 1 nowy rekord 
SELECT * FROM customers;

-- Za pomoc¹ polecenia CREATE OR REPLACE VIEW tworzê widok o nazwie products_view_1.Zawiera on wybrane dane z 3 ró¿nych tabel:products P, transactions T, payments Pay
CREATE OR REPLACE VIEW
 products_view_1 
AS SELECT
  P.name "Nazwa",  
  P.price "Cena",  
  T.transaction_value "wartoœæ transakcji",
  T.transaction_date "data transakcji",
  Pay.pay_date "data zap³aty" 
FROM products P, transactions T, payments Pay  
WHERE P.product_id = T.products_product_id AND 
      Pay.pay_id_transactions = T.transactions_id ;
      
-- podgl¹d widoku view_1       
SELECT * FROM products_view_1;

