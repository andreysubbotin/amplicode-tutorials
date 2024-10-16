DROP INDEX pets_name_idx;

DROP INDEX owners_last_name_idx;

DROP INDEX pets_owner_id_idx;

ALTER TABLE vet_specialties ADD CONSTRAINT pk_vet_specialties PRIMARY KEY (specialty_id, vet_id);

ALTER TABLE pets ALTER COLUMN  type_id DROP NOT NULL;

ALTER TABLE owners ALTER COLUMN telephone TYPE VARCHAR(255) USING (telephone::VARCHAR(255));

ALTER TABLE types ALTER COLUMN name TYPE VARCHAR(255) USING (name::VARCHAR(255));

ALTER TABLE specialties ALTER COLUMN name TYPE VARCHAR(255) USING (name::VARCHAR(255));

ALTER TABLE pets ALTER COLUMN name TYPE VARCHAR(255) USING (name::VARCHAR(255));

ALTER TABLE vets ALTER COLUMN last_name TYPE VARCHAR(255) USING (last_name::VARCHAR(255));

ALTER TABLE owners ALTER COLUMN last_name TYPE VARCHAR(255) USING (last_name::VARCHAR(255));

ALTER TABLE vets ALTER COLUMN first_name TYPE VARCHAR(255) USING (first_name::VARCHAR(255));

ALTER TABLE owners ALTER COLUMN first_name TYPE VARCHAR(255) USING (first_name::VARCHAR(255));

ALTER TABLE visits ALTER COLUMN description TYPE VARCHAR(255) USING (description::VARCHAR(255));

ALTER TABLE owners ALTER COLUMN city TYPE VARCHAR(255) USING (city::VARCHAR(255));

ALTER TABLE owners ALTER COLUMN address TYPE VARCHAR(255) USING (address::VARCHAR(255));

DROP INDEX visits_pet_id_idx;

DROP INDEX vets_last_name_idx;

DROP INDEX types_name_idx;

DROP INDEX specialties_name_idx;

ALTER TABLE vet_specialties DROP CONSTRAINT vet_specialties_vet_id_specialty_id_key;
