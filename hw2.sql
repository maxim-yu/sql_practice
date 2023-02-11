CREATE TABLE IF NOT EXISTS director (
	director_id SERIAL PRIMARY KEY,
	director_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS employee (
	employee_id SERIAL PRIMARY KEY, 
	employee_name VARCHAR(40) NOT NULL,
	department VARCHAR(40) NOT NULL,
	director_id INT NOT NULL REFERENCES director(director_id)
);


