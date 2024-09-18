SELECT * 
FROM tbl_board 
WHERE bno > 0
ORDER BY bno DESC;

DESC TBL_BOARD;


INSERT INTO tbl_board(bno, title, content, writer) VALUES (seq_board.NEXTVAL, 'New title', 'New content', 'newbie');

COMMIT;


EXPLAIN PLAN FOR
    SELECT * FROM tbl_board ORDER BY bno DESC;


SELECT *
FROM table(DBMS_XPLAN.DISPLAY(FORMAT=>'ALL +OUTLINE'));


SELECT bno, title, content, writer, insert_ts, update_ts
FROM (
    SELECT /*+ INDEX_DESC(tbl_board SYS_C0032853)  */
        rownum AS rn, bno, title, content, writer, insert_ts, update_ts
    FROM tbl_board
    WHERE rownum <= ( 2 * 10 )
)
WHERE rn > ( (2 - 1) * 10 );


SELECT * FROM tbl_board ORDER BY bno DESC;


DESC USER_INDEXES;

SELECT TABLE_NAME, INDEX_NAME
FROM USER_INDEXES
WHERE TABLE_NAME = 'TBL_BOARD';

SELECT min(bno), max(bno)
FROM tbl_board
WHERE bno > 0;



SELECT bno, title, content, writer, insert_ts, update_ts
FROM ( 
        SELECT /*+ INDEX_DESC(tbl_board SYS_C0032853) */ rownum AS rn, bno, title, content, writer, insert_ts, update_ts
        FROM tbl_board
        WHERE 
            ( title LIKE '%'||'New'||'%' OR content LIKE '%'||'New'||'%' ) 
            AND rownum <= ( 1 * 10 ) 
) 
WHERE rn > ( (1 - 1) * 10 );



CREATE TABLE TTT (
    ISMALE BOOLEAN
);


SELECT bno, title, content, writer, insert_ts, update_ts 
FROM (
    SELECT /*+ INDEX_DESC(tbl_board SYS_C0032853) */ rownum AS rn, bno, title, content, writer, insert_ts, update_ts 
    FROM tbl_board
    WHERE 
        ( 
            title LIKE '%'||'New'||'%' 
            OR content LIKE '%'||'New'||'%' 
            OR writer LIKE '%'||'New'||'%' 
        ) AND rownum <= ( 2 * 10 ) 
)
WHERE
    rn > ( (2 - 1) * 10 );


SELECT bno, title, content, writer, insert_ts, update_ts
FROM (
    SELECT /*+ INDEX_DESC(tbl_board SYS_C0032853) */ rownum AS rn, bno, title, content, writer, insert_ts, update_ts
    FROM tbl_board 
    WHERE 
        ( 
            title LIKE '%'||'New'||'%' 
            OR content LIKE '%'||'New'||'%' 
            OR writer LIKE '%'||'New'||'%' 
        ) AND rownum <= ( 2 * 10 ) 
) 
WHERE
    rn > ( (2 - 1) * 10 );