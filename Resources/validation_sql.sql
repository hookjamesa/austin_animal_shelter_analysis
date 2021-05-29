select animal_id, breed, color, animal_type, count(*) from animal_type
group by animal_id, breed, color, animal_type
having count(*) > 1
;


select distinct animal_id, breed, color, animal_type from animal_type
where animal_id = 'A006100';


-- Create a animal_info table to create a lookup bse table.
Create table animal_type as 
select distinct animal_id_intake as animal_id, breed, color, animal_type from raw_input_outcome;

-- Check for distinct rows
select animal_id, breed, color, animal_type, count(*) from animal_type
group by animal_id, breed, color, animal_type
--having count(*) > 1
;

-- Total row count afterr removing duplicates
select count(*) from animal_type;

select count(*) from raw_input_outcome;

