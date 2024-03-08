WITH alphabet_patteren AS
(SELECT 'interview' as A,LEN('interview')AS B
UNION ALL
SELECT SUBSTRING(A,1,B-1),B-1 FROM
alphabet_patteren WHERE B-1 > 0
)
SELECT A FROM alphabet_patteren;