CREATE TABLE BENEFIT (
                         BENEFIT_ID  BIGINT NOT NULL AUTO_INCREMENT,
                         BENEFIT_NBR VARCHAR(12) NOT NULL,
                         PLAN_NBR    VARCHAR(8) NOT NULL,
                         PROC_NBR    VARCHAR(12) NOT NULL,
                         YMDTRANS    DATE,
                         OPNBR       VARCHAR(8),

                         PRIMARY KEY (BENEFIT_ID)
);
CREATE TABLE COUNTER (
                         COUNTER_ID BIGINT NOT NULL AUTO_INCREMENT,
                         CNTR_NAME  VARCHAR(12) NOT NULL,
                         TYPE       VARCHAR(4) NOT NULL,

                         PRIMARY KEY (COUNTER_ID)
);