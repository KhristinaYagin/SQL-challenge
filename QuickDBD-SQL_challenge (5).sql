-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kG8trM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "employee_number" INT   NOT NULL,
    "employee_title" VARCHAR   NOT NULL,
    "employee_birth_data" DATE   NOT NULL,
    "employee_first_name" VARCHAR   NOT NULL,
    "employee_last_name" VARCHAR   NOT NULL,
    "employee_sex" VARCHAR   NOT NULL,
    "employee_hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Department" (
    "department_number" VARCHAR   NOT NULL,
    "department_name" VARCHAR   NOT NULL
);

CREATE TABLE "Department_employee" (
    "employee_number" INT   NOT NULL,
    "department_number" VARCHAR   NOT NULL
);

CREATE TABLE "Salaries" (
    "employee_number" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Title" (
    "title_id" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "Department_manager" (
    "department_number" VARCHAR   NOT NULL,
    "employee_number" INT   NOT NULL,
    CONSTRAINT "pk_Department_manager" PRIMARY KEY (
        "employee_number"
     )
);

ALTER TABLE "Department_employee" ADD CONSTRAINT "fk_Department_employee_employee_number" FOREIGN KEY("employee_number")
REFERENCES "Employees" ("employee_number");

ALTER TABLE "Department_employee" ADD CONSTRAINT "fk_Department_employee_department_number" FOREIGN KEY("department_number")
REFERENCES "Department" ("department_number");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_employee_number" FOREIGN KEY("employee_number")
REFERENCES "Employees" ("employee_number");

ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_title_id" FOREIGN KEY("title_id")
REFERENCES "Employees" ("employee_title");

ALTER TABLE "Department_manager" ADD CONSTRAINT "fk_Department_manager_employee_number" FOREIGN KEY("employee_number")
REFERENCES "Employees" ("employee_number");

