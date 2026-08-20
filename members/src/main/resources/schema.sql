CREATE TABLE member (
                             MEMBER_ID   BIGINT NOT NULL,
                             MEMBER_NBR  VARCHAR(10) NOT NULL,
                             PLAN_NBR    VARCHAR(20) NOT NULL,
                             YMDEFF      DATE,
                             YMDEND      DATE,
                             VOID        CHAR(1) DEFAULT 'N',
                             TRANSCODE   VARCHAR(2),
                             YMDTRANS    DATE,
                             OPNBR       VARCHAR(8),

                             PRIMARY KEY (MEMBER_ID)
);
CREATE TABLE `PLAN` (
                        PLAN_ID     BIGINT NOT NULL,
                        PLAN_NBR    VARCHAR(8) NOT NULL,
                        DED_MAX     DECIMAL(12,2),
                        OOP_MAX     DECIMAL(12,2),
                        LIFE_MAX    DECIMAL(12,2),
                        YMDEFF      DATE,
                        YMDEND      DATE,
                        VOID        CHAR(1) DEFAULT 'N',
                        TRANSCODE   VARCHAR(2),
                        YMDTRANS    DATE,
                        OPNBR       VARCHAR(8),

                        PRIMARY KEY (PLAN_ID)
);