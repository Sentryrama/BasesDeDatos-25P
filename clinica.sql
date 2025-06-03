DROP DATABASE IF EXISTS clinica_izt;

CREATE DATABASE clinica_izt;

USE clinica_izt;

CREATE TABLE
    IF NOT EXISTS paciente (
        id_paciente INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        apellido VARCHAR(100) NOT NULL,
        fecha_nacimiento DATE,
        genero ENUM ('M', 'F', 'Otro'),
        telefono VARCHAR(10),
        direccion VARCHAR(200),
        CHECK (telefono REGEXP '^55[0-9]{8}$')
    );

INSERT INTO
    paciente (
        nombre,
        apellido,
        fecha_nacimiento,
        genero,
        telefono,
        direccion
    )
VALUES
    (
        "Alfredo",
        "Armas",
        "1995-01-13",
        "M",
        "5512345604",
        "Viaducto Bonilla 450 Interior 141 San Juana los altos, OAX 12216-8060"
    ),
    (
        "Federico",
        "Valles",
        "1993-01-18",
        "M",
        "5512345605",
        "Callejón Corona 426 Interior 709 San Cristian los altos, ZAC 27032"
    ),
    (
        "Paulina",
        "Baeza",
        "1994-01-04",
        "F",
        "5512345606",
        "Eje vial Líbano 593 Edif. 321 , Depto. 101 Nueva Guatemala, COL 64075-3881"
    ),
    (
        "Elsa",
        "Morales",
        "1988-05-21",
        "F",
        "5512345607",
        "Continuación Vela 518 San Bianca, MEX 44514-2078"
    ),
    (
        "Armando",
        "Ceballos",
        "1980-02-20",
        "M",
        "5512345608",
        "Callejón Veracruz de Ignacio de la Llave 279 Edif. 527 , Depto. 464 Nueva Papua Nueva Guinea, SLP 38715"
    ),
    (
        "Gerónimo",
        "Casares",
        "1985-01-03",
        "M",
        "5512345609",
        "Andador España 084 809 Vieja Suecia, SIN 16888"
    ),
    (
        "Ramón",
        "Castañeda",
        "1993-06-27",
        "M",
        "5512345610",
        "Prolongación Norte Dueñas 770 Edif. 371 , Depto. 973 Nueva Trinidad y Tabago, CHIS 30941"
    ),
    (
        "Gabino",
        "Galarza",
        "1995-05-18",
        "M",
        "5512345611",
        "Viaducto Gaona 885 Interior 076 Vieja Turquía, VER 60717"
    ),
    (
        "Socorro",
        "Terrazas",
        "1980-02-18",
        "F",
        "5512345631",
        "Calzada Querétaro 765 Interior 304 Vieja Islandia, OAX 36662-8858"
    ),
    (
        "Socorro",
        "Ochoa",
        "2004-12-26",
        "F",
        "5512345669",
        "Circuito Acevedo 259 Interior 888 Vieja Irlanda, SLP 89520"
    ),
    (
        "Mercedes",
        "Negrete",
        "1995-09-12",
        "F",
        "5512345680",
        "Calzada Morelos 506 Interior 517 Vieja Honduras, DGO 53827"
    ),
    (
        "Ofelia",
        "Llamas",
        "2003-07-23",
        "M",
        "5512345637",
        "Corredor Baja California 878 Edif. 734 , Depto. 134 Vieja Jamaica, BCS 56653-3360"
    ),
    (
        "Marcos",
        "Villareal",
        "1989-10-11",
        "M",
        "5512345640",
        "Calle Distrito Federal 647 Edif. 241 , Depto. 085 San Guadalupe los bajos, SLP 67504-0682"
    ),
    (
        "Yeni",
        "Raya",
        "1996-10-09",
        "F",
        "5512345662",
        "Periférico Cornejo 495 Interior 995 San Augusto de la Montaña, YUC 28942"
    ),
    (
        "Javier",
        "Guerrero",
        "1982-07-26",
        "F",
        "5512345697",
        "Viaducto Norte Quesada 779 Edif. 039 , Depto. 658 Vieja Emiratos Árabes Unidos, JAL 99020"
    ),
    (
        "Teresa",
        "Véliz",
        "1993-03-01",
        "F",
        "5512345640",
        "Periférico Sur Alonso 620 457 San Carolina de la Montaña, DF 65228-3304"
    ),
    (
        "Concepción",
        "Arevalo",
        "1984-07-30",
        "F",
        "5512345627",
        "Ampliación Zacatecas 716 102 Vieja Letonia, COAH 16925"
    ),
    (
        "César",
        "Toledo",
        "1993-06-08",
        "M",
        "5512345680",
        "Circunvalación Mora 200 Interior 819 San Francisca de la Montaña, DGO 27097"
    ),
    (
        "Tomás",
        "Vélez",
        "1981-05-01",
        "M",
        "5512345632",
        "Corredor Bustamante 474 085 San Martha los altos, NAY 53806-3002"
    ),
    (
        "Julia",
        "Avilés",
        "1992-06-05",
        "F",
        "5512345697",
        "Calzada Sur Cervantes 066 Interior 759 Vieja Serbia, DF 90740-2195"
    ),
    (
        "Horacio",
        "Marroquín",
        "1997-08-22",
        "M",
        "5512345652",
        "Andador Baja California Sur 221 Edif. 700 , Depto. 217 Vieja Alemania, VER 36296"
    ),
    (
        "Alfonso",
        "Carvajal",
        "1984-12-08",
        "F",
        "5512345635",
        "Circunvalación Querétaro 226 Edif. 698 , Depto. 552 Nueva Austria, HGO 34247-3368"
    ),
    (
        "Alfonso",
        "Alcala",
        "1998-05-28",
        "M",
        "5512345622",
        "Eje vial Sur Padrón 678 Edif. 794 , Depto. 306 Nueva Djibouti, AGS 27976-3909"
    ),
    (
        "Mateo",
        "Arguello",
        "2003-03-11",
        "F",
        "5512345625",
        "Andador Sierra Leona 328 Interior 272 Nueva Belarús, PUE 31739-4029"
    ),
    (
        "Sonia",
        "Méndez",
        "2001-01-31",
        "F",
        "5512345697",
        "Boulevard Colima 525 Edif. 360 , Depto. 311 Nueva Comoras, COL 77531"
    ),
    (
        "Mauro",
        "Carranza",
        "1982-04-30",
        "F",
        "5512345659",
        "Peatonal Sur Pedroza 967 Interior 057 San Hugo los bajos, MOR 63673"
    ),
    (
        "Serafín",
        "Cabrera",
        "1999-12-17",
        "F",
        "5512345685",
        "Circuito Castro 690 Interior 761 San Antonia de la Montaña, TLAX 53804"
    ),
    (
        "Espartaco",
        "Ortega",
        "1982-02-02",
        "M",
        "5512345681",
        "Retorno Tlaxcala 712 Edif. 770 , Depto. 535 Nueva Bahamas, HGO 68805"
    ),
    (
        "Jacinto",
        "Prado",
        "1996-05-30",
        "M",
        "5512345674",
        "Boulevard Barrios 387 Interior 680 Vieja Mauricio, ZAC 11064"
    ),
    (
        "Ramiro",
        "Aparicio",
        "2001-08-16",
        "M",
        "5512345627",
        "Peatonal República Árabe Siria 879 758 San Abril los altos, BC 65629"
    ),
    (
        "Óscar",
        "Madrid",
        "1994-05-26",
        "M",
        "5512345695",
        "Eje vial Morelos 434 Edif. 794 , Depto. 010 San Rufino los altos, DGO 48367-7320"
    ),
    (
        "Emilia",
        "Llamas",
        "1989-10-10",
        "M",
        "5512345632",
        "Pasaje Norte Vargas 265 Edif. 196 , Depto. 444 San Inés los bajos, GRO 45493-4244"
    ),
    (
        "Amador",
        "Armenta",
        "1990-06-20",
        "F",
        "5512345654",
        "Circuito Haití 938 Interior 286 San Celia los bajos, PUE 97777-0881"
    ),
    (
        "Luz",
        "Reyes",
        "1982-08-03",
        "M",
        "5512345694",
        "Cerrada Sur Coronado 626 Edif. 396 , Depto. 766 San Bernardo los altos, COAH 31638"
    ),
    (
        "Adán",
        "Concepción",
        "1999-08-29",
        "M",
        "5512345670",
        "Eje vial Norte Urbina 398 Edif. 350 , Depto. 930 San Gabino los bajos, YUC 61280-7961"
    ),
    (
        "José María",
        "Valenzuela",
        "1988-09-10",
        "F",
        "5512345647",
        "Cerrada Norte Sarabia 131 Interior 409 San Darío de la Montaña, NL 34136-9088"
    ),
    (
        "Maximiliano",
        "de la Garza",
        "1997-02-04",
        "M",
        "5512345651",
        "Callejón Norte Medina 152 Interior 649 San Mariano de la Montaña, NAY 13061-7823"
    ),
    (
        "Fidel",
        "Serrato",
        "1991-05-28",
        "M",
        "5512345659",
        "Eje vial Gambia 168 Interior 998 Vieja Paraguay, CHIH 79375-6239"
    ),
    (
        "Óliver",
        "Páez",
        "1993-08-16",
        "M",
        "5512345664",
        "Callejón Veracruz de Ignacio de la Llave 485 081 San Daniel los altos, NAY 68173"
    ),
    (
        "Francisco",
        "Espinosa",
        "1980-04-15",
        "M",
        "5512345650",
        "Calzada Tuvalu 883 Edif. 310 , Depto. 334 San María José los bajos, Q. ROO 83866-2904"
    );

(
    "Francisco",
    "Espinosa",
    "1980-04-15",
    "M",
    "5512345650",
    "Calzada Tuvalu 883 Edif. 310 , Depto. 334 San María José los bajos, Q. ROO 83866-2904"
);

-- Todos los pacientes
SELECT
    *
FROM
    paciente;

-- Todos los pacientes en orden alfabetico
SELECT
    *
FROM
    paciente
ORDER BY
    nombre;

-- Pacientes con apellido empezando con M
SELECT
    *
FROM
    paciente
WHERE
    apellido LIKE "M%";

-- Pacientes con nombre que termina en A
SELECT
    *
FROM
    paciente
WHERE
    nombre LIKE "%A";

-- Pacientes que tengan "ez" en su apellido
SELECT
    *
FROM
    paciente
WHERE
    apellido LIKE "%ez%";

-- Pacientes con apellido materno empieza con A, o apellido paterno empieze con M
SELECT
    *
FROM
    paciente
WHERE
    apellido LIKE "A%"
    OR apellido LIKE "M%";

-- Borrar pacientes con apellido paterno que empieze con M
DELETE FROM paciente
WHERE
    apellido LIKE "M%";

-- Mostrar a los pacientes despues de borrar algunos
SELECT
    *
FROM
    paciente;

-- Eliminamos todos para el ultimo ejercicio
DELETE FROM paciente;

-- Volvemos a agregar a los pacientes
INSERT INTO
    paciente (
        nombre,
        apellido,
        fecha_nacimiento,
        genero,
        telefono,
        direccion
    )
VALUES
    (
        "Alfredo",
        "Armas",
        "1995-01-13",
        "M",
        "5512345604",
        "Viaducto Bonilla 450 Interior 141 San Juana los altos, OAX 12216-8060"
    ),
    (
        "Federico",
        "Valles",
        "1993-01-18",
        "M",
        "5512345605",
        "Callejón Corona 426 Interior 709 San Cristian los altos, ZAC 27032"
    ),
    (
        "Paulina",
        "Baeza",
        "1994-01-04",
        "F",
        "5512345606",
        "Eje vial Líbano 593 Edif. 321 , Depto. 101 Nueva Guatemala, COL 64075-3881"
    ),
    (
        "Elsa",
        "Morales",
        "1988-05-21",
        "F",
        "5512345607",
        "Continuación Vela 518 San Bianca, MEX 44514-2078"
    ),
    (
        "Armando",
        "Ceballos",
        "1980-02-20",
        "M",
        "5512345608",
        "Callejón Veracruz de Ignacio de la Llave 279 Edif. 527 , Depto. 464 Nueva Papua Nueva Guinea, SLP 38715"
    ),
    (
        "Gerónimo",
        "Casares",
        "1985-01-03",
        "M",
        "5512345609",
        "Andador España 084 809 Vieja Suecia, SIN 16888"
    ),
    (
        "Ramón",
        "Castañeda",
        "1993-06-27",
        "M",
        "5512345610",
        "Prolongación Norte Dueñas 770 Edif. 371 , Depto. 973 Nueva Trinidad y Tabago, CHIS 30941"
    ),
    (
        "Gabino",
        "Galarza",
        "1995-05-18",
        "M",
        "5512345611",
        "Viaducto Gaona 885 Interior 076 Vieja Turquía, VER 60717"
    ),
    (
        "Socorro",
        "Terrazas",
        "1980-02-18",
        "F",
        "5512345631",
        "Calzada Querétaro 765 Interior 304 Vieja Islandia, OAX 36662-8858"
    ),
    (
        "Socorro",
        "Ochoa",
        "2004-12-26",
        "F",
        "5512345669",
        "Circuito Acevedo 259 Interior 888 Vieja Irlanda, SLP 89520"
    ),
    (
        "Mercedes",
        "Negrete",
        "1995-09-12",
        "F",
        "5512345680",
        "Calzada Morelos 506 Interior 517 Vieja Honduras, DGO 53827"
    ),
    (
        "Ofelia",
        "Llamas",
        "2003-07-23",
        "M",
        "5512345637",
        "Corredor Baja California 878 Edif. 734 , Depto. 134 Vieja Jamaica, BCS 56653-3360"
    ),
    (
        "Marcos",
        "Villareal",
        "1989-10-11",
        "M",
        "5512345640",
        "Calle Distrito Federal 647 Edif. 241 , Depto. 085 San Guadalupe los bajos, SLP 67504-0682"
    ),
    (
        "Yeni",
        "Raya",
        "1996-10-09",
        "F",
        "5512345662",
        "Periférico Cornejo 495 Interior 995 San Augusto de la Montaña, YUC 28942"
    ),
    (
        "Javier",
        "Guerrero",
        "1982-07-26",
        "F",
        "5512345697",
        "Viaducto Norte Quesada 779 Edif. 039 , Depto. 658 Vieja Emiratos Árabes Unidos, JAL 99020"
    ),
    (
        "Teresa",
        "Véliz",
        "1993-03-01",
        "F",
        "5512345640",
        "Periférico Sur Alonso 620 457 San Carolina de la Montaña, DF 65228-3304"
    ),
    (
        "Concepción",
        "Arevalo",
        "1984-07-30",
        "F",
        "5512345627",
        "Ampliación Zacatecas 716 102 Vieja Letonia, COAH 16925"
    ),
    (
        "César",
        "Toledo",
        "1993-06-08",
        "M",
        "5512345680",
        "Circunvalación Mora 200 Interior 819 San Francisca de la Montaña, DGO 27097"
    ),
    (
        "Tomás",
        "Vélez",
        "1981-05-01",
        "M",
        "5512345632",
        "Corredor Bustamante 474 085 San Martha los altos, NAY 53806-3002"
    ),
    (
        "Julia",
        "Avilés",
        "1992-06-05",
        "F",
        "5512345697",
        "Calzada Sur Cervantes 066 Interior 759 Vieja Serbia, DF 90740-2195"
    ),
    (
        "Horacio",
        "Marroquín",
        "1997-08-22",
        "M",
        "5512345652",
        "Andador Baja California Sur 221 Edif. 700 , Depto. 217 Vieja Alemania, VER 36296"
    ),
    (
        "Alfonso",
        "Carvajal",
        "1984-12-08",
        "F",
        "5512345635",
        "Circunvalación Querétaro 226 Edif. 698 , Depto. 552 Nueva Austria, HGO 34247-3368"
    ),
    (
        "Alfonso",
        "Alcala",
        "1998-05-28",
        "M",
        "5512345622",
        "Eje vial Sur Padrón 678 Edif. 794 , Depto. 306 Nueva Djibouti, AGS 27976-3909"
    ),
    (
        "Mateo",
        "Arguello",
        "2003-03-11",
        "F",
        "5512345625",
        "Andador Sierra Leona 328 Interior 272 Nueva Belarús, PUE 31739-4029"
    ),
    (
        "Sonia",
        "Méndez",
        "2001-01-31",
        "F",
        "5512345697",
        "Boulevard Colima 525 Edif. 360 , Depto. 311 Nueva Comoras, COL 77531"
    ),
    (
        "Mauro",
        "Carranza",
        "1982-04-30",
        "F",
        "5512345659",
        "Peatonal Sur Pedroza 967 Interior 057 San Hugo los bajos, MOR 63673"
    ),
    (
        "Serafín",
        "Cabrera",
        "1999-12-17",
        "F",
        "5512345685",
        "Circuito Castro 690 Interior 761 San Antonia de la Montaña, TLAX 53804"
    ),
    (
        "Espartaco",
        "Ortega",
        "1982-02-02",
        "M",
        "5512345681",
        "Retorno Tlaxcala 712 Edif. 770 , Depto. 535 Nueva Bahamas, HGO 68805"
    ),
    (
        "Jacinto",
        "Prado",
        "1996-05-30",
        "M",
        "5512345674",
        "Boulevard Barrios 387 Interior 680 Vieja Mauricio, ZAC 11064"
    ),
    (
        "Ramiro",
        "Aparicio",
        "2001-08-16",
        "M",
        "5512345627",
        "Peatonal República Árabe Siria 879 758 San Abril los altos, BC 65629"
    ),
    (
        "Óscar",
        "Madrid",
        "1994-05-26",
        "M",
        "5512345695",
        "Eje vial Morelos 434 Edif. 794 , Depto. 010 San Rufino los altos, DGO 48367-7320"
    ),
    (
        "Emilia",
        "Llamas",
        "1989-10-10",
        "M",
        "5512345632",
        "Pasaje Norte Vargas 265 Edif. 196 , Depto. 444 San Inés los bajos, GRO 45493-4244"
    ),
    (
        "Amador",
        "Armenta",
        "1990-06-20",
        "F",
        "5512345654",
        "Circuito Haití 938 Interior 286 San Celia los bajos, PUE 97777-0881"
    ),
    (
        "Luz",
        "Reyes",
        "1982-08-03",
        "M",
        "5512345694",
        "Cerrada Sur Coronado 626 Edif. 396 , Depto. 766 San Bernardo los altos, COAH 31638"
    ),
    (
        "Adán",
        "Concepción",
        "1999-08-29",
        "M",
        "5512345670",
        "Eje vial Norte Urbina 398 Edif. 350 , Depto. 930 San Gabino los bajos, YUC 61280-7961"
    ),
    (
        "José María",
        "Valenzuela",
        "1988-09-10",
        "F",
        "5512345647",
        "Cerrada Norte Sarabia 131 Interior 409 San Darío de la Montaña, NL 34136-9088"
    ),
    (
        "Maximiliano",
        "de la Garza",
        "1997-02-04",
        "M",
        "5512345651",
        "Callejón Norte Medina 152 Interior 649 San Mariano de la Montaña, NAY 13061-7823"
    ),
    (
        "Fidel",
        "Serrato",
        "1991-05-28",
        "M",
        "5512345659",
        "Eje vial Gambia 168 Interior 998 Vieja Paraguay, CHIH 79375-6239"
    ),
    (
        "Óliver",
        "Páez",
        "1993-08-16",
        "M",
        "5512345664",
        "Callejón Veracruz de Ignacio de la Llave 485 081 San Daniel los altos, NAY 68173"
    ),
    (
        "Francisco",
        "Espinosa",
        "1980-04-15",
        "M",
        "5512345650",
        "Calzada Tuvalu 883 Edif. 310 , Depto. 334 San María José los bajos, Q. ROO 83866-2904"
    );

-- Eliminar pacientes que nacieton en el 2000 o antes
DELETE FROM paciente
WHERE
    YEAR (fecha_nacimiento) <= 2000;

SELECT * FROM paciente;
/*
# Script de python utilizado para generar datos

import random
from faker import Faker
from datetime import datetime
fake = Faker('es_MX')

for _ in range(40):
    print(f'''
    (          
    "{fake.first_name()}",
    "{fake.last_name()}",
    "{fake.date_between_dates(datetime(1980,1,1), datetime(2004,12,31))}",
    "{fake.passport_gender()}",
    "55123456{random.randrange(15,99)}",
    "{fake.address()}"
    ),'''
    )

# Se le modifican unas cosas para insertarlos en la tabla
 */