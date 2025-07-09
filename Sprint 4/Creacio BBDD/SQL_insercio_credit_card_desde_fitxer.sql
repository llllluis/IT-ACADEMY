LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\credit_cards.csv'
INTO TABLE credit_card
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES
(@id, @user_id, @iban, @pan, @pin, @cvv, @track1, @track2, @expiring_date)
SET 
  id = @id,
  user_id = @user_id, 
  iban = @iban,
  pan = @pan,
  pin = @pin,
  cvv = @cvv,
  track1 = @track1,
  track2 = @track2,  
  expiring_date =STR_TO_DATE(@expiring_date, '%m/%d/%y');

select * from credit_card;