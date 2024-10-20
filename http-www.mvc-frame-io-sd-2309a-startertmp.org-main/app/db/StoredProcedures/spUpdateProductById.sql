/******************************************************
-- Doel: Updaten van een record in de tabel Product op
         basis van het Id
*******************************************************
-- Versie: 01
-- Datum: 17-10-2024
-- Auteur: Thomas Tadesse
******************************************************/

-- Selecteer de juiste database voor je stored procedure
use `magazijn-jamin`;

-- Verwijder de oude stored procedure
DROP PROCEDURE IF EXISTS spUpdateProductById;

-- Verander even tijdelijk de opdrachtprompt naar //
DELIMITER //

CREATE PROCEDURE spUpdateProductById(
    IN Id           INT UNSIGNED,
    IN Naam         VARCHAR(255),
    IN Omschrijving VARCHAR(255),
    IN IsActief     BIT(1),
    IN Opmerking    VARCHAR(255),
    IN DatumAangemaakt DATETIME(6),
    IN DatumGewijzigd DATETIME(6)
)
BEGIN
    UPDATE  Product AS  COUN
    SET     COUN.Naam = Naam,
            COUN.Omschrijving = Omschrijving,
            COUN.IsActief = IsActief,
            COUN.Opmerking = Opmerking,
            COUN.DatumAangemaakt = DatumAangemaakt,
            COUN.DatumGewijzigd = DatumGewijzigd
    WHERE   COUN.Id = Id;
END //
DELIMITER ;

/************* debug code stored procedure **************

CALL spUpdateProductById(1, 'Venco', 'Bert van Linge', 'L1029384719', b'1', NULL, '2024-10-17 12:44:25', '2024-10-17 12:44:25');

********************************************************/



