# freeCodeCamp - Build a Celestial Bodies Database

This is a solution to the [Build a Celestial Bodies Database on freeCodeCamp](https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/build-a-celestial-bodies-database).

## What I learned
- Log in PostgreSQL by psql --username=freecodecamp --dbname=postgres
- To list all databases: |l
- To create database: CREATE DATABASE database_name;
- If you forgot the semi-colon. You can just add it on the next line and press enter to finish the command. 
- To connect to a database: \c database_name;
- To display tables in a database: \d
- To create table in a database: CREATE TABLE table_name(); CREATE TABLE table_name(column_name DATATYPE CONSTRAINS);
- To know more details about a table: \d table_name;
- To add columns in table: ALTER TABLE table_name ADD COLUMN column_name DATATYPE (CONSTRAINT);
- To add multiple columns in table: ALTER TABLE table_name ADD column_name1 data_type1, ADD column_name2 data_type2, ADD column_nameN data_typeN;
- To remove columns from a table: ALTER TABLE table_name DROP COLUMN column_name;
- Datatype: INT (integer), VARCHAR(n) (a short string of characters with a maximum length of n), SERIAL (INT + NOT NULL, it will automatically add up when adding rows), DATE, NUMERIC(N1, N2) (has up to N1 digits and N2 of them have to be to the right of the decimal), TEXT, BOOLEAN, 
- To rename column: ALTER TABLE table_name RENAME COLUMN column_name TO new_name;
- Rows are the actual data in the table. To add rows: INSERT INTO table_name(column_1, column_2) VALUES(value1, value2); for example, INSERT INTO second_table(id, username) VALUES(1, 'Samus');
- To add multiple rows at one time: INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red'), ('Luigi', 'Mushroom Kingdom', 'Green'), ('Peach', 'Mushroom Kingdom', 'Pink');
- To view the data in a table: SELECT columns FROM table_name; if want to see all the data, use asterisk (*) to replace “columns”, if select more than one column, SELECT column_name1, column_name2 FROM table_name;
- To view rows with a WHERE condition: SELECT columns FROM table_name WHERE condition;
- To delete rows from table: DELETE FROM table_name WHERE condition; for example, DELETE FROM second_table WHERE username=‘Luigi’;
- To delete table from database: DROP TABLE table_name;
- To rename databases: ALTER DATABASE database_name RENAME TO new_database_name;
- To delete database: DROP DATABASE database_name;
- To update data in a table: UPDATE table_name SET column_name=new_value WHERE condition;
- To update multiple rows in different conditions: UPDATE table_name SET column_name=new_value WHERE condition_column_name IN (data1, data2, ..) ;
- To make rows in order: SELECT columns FROM table_name ORDER BY column_name;
- Primary key constraint is a column that uniquely identifies each row in the table. To add primary key constraint: ALTER TABLE table_name ADD PRIMARY KEY(column_name); you can use existing columns for this, for example, name is set to be primary key here: Indexes: "characters_pkey" PRIMARY KEY, btree (name). "characters_pkey" is the constraint name.
- To drop primary key constraint: ALTER TABLE table_name DROP CONSTRAINT constraint_name;
- Foreign key can relate rows from this table to rows from another table, to create a column as a foreign key: ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name); it will look like this if added, for example, Foreign-key constraints: "more_info_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)
- Set an existing column as a foreign key: ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);
- To add unique constraint: ALTER TABLE table_name ADD UNIQUE(column_name);
- To set not null: ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;
- Junction table: forming multiple “one-to-many” relationships;
- Composite primary key: ALTER TABLE table_name ADD PRIMARY KEY(column1, column2);
- To show two related tables in one single table: SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column; for example, SELECT * FROM characters FULL JOIN more_info ON characters.character_id = more_info.character_id;
- To join three tables: SELECT columns FROM junction_table FULL JOIN table_1 ON junction_table.foreign_key_column = table_1.primary_key_column FULL JOIN table_2 ON junction_table.foreign_key_column = table_2.primary_key_column;
- To change datatype: ALTER TABLE table_name ALTER COLUMN column_name TYPE new_data_type;
- To fill in a column at once with the same value: UPDATE table_name SET column_name = VALUE;