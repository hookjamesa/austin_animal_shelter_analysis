
--animal_in_out and raw_input_potcome tables are created using pandas.

-- Create a animal_info table to create a lookup bse table.
Create table animal_type as 
select distinct animal_id_intake as animal_id, breed, color, animal_type from raw_input_outcome;


--  Adding primary and foreigh key to existing tables.
ALTER TABLE animal_type
ADD CONSTRAINT animal_id_pk PRIMARY KEY (animal_id);

ALTER TABLE animal_in_out
ADD CONSTRAINT id_pk PRIMARY KEY (id);

ALTER TABLE animal_in_out
ADD CONSTRAINT animal_id_intake_fk FOREIGN KEY (animal_id_intake) REFERENCES animal_type (animal_id);


-- Validation scripts

select animal_id, breed, color, animal_type, count(*) from animal_type
group by animal_id, breed, color, animal_type
having count(*) > 1
;

select distinct animal_id, breed, color, animal_type from animal_type
where animal_id = 'A006100';

-- Check for distinct rows
select animal_id, breed, color, animal_type, count(*) from animal_type
group by animal_id, breed, color, animal_type
--having count(*) > 1
;

-- Total row count afterr removing duplicates
select count(*) from animal_type;

select count(*) from raw_input_outcome;

select count(*) from animal_in_out;

select * from animal_in_out
where animal_id_intake = 'A006100' ;








