CREATE PROCEDURE spCheckUserNameAvailability
(
            @name VARCHAR(50)
)
AS
BEGIN
            SELECT COUNT(*) FROM tbl_user WHERE name = @name      
END