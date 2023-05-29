DELIMITER $$
Drop function if exists CalcularMediaProva $$
create function CalcularMediaProva(pProvaID int)
returns DOUBLE
deterministic

BEGIN
DECLARE MEDIA double;
SELECT MEDIA = AVG(Alun.nota) FROM Aluno as Alun Where Alun.Prova_id = pProvaID;
RETURN MEDIA;
END$$;
DELIMITER ; 