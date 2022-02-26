CREATE TABLE nitwStudent (
    student_id INT,
    s_name VARCHAR(20) NOT NULL,
    major VARCHAR(10) DEFAULT 'undecided',
    PRIMARY KEY (student_id)
);

-- to briefly see the attributes and properties of the table
DESCRIBE nitwStudent;

-- to drop the table from the database
drop table nitwStudent;

-- to add a column in the table
alter table nitwStudent add cgpa decimal(4,2);

-- to add a column in the table
alter table nitwStudent drop column cgpa;

-- to show the table
select * from nitwStudent;

insert into nitwStudent values(1, 'Jack Daniels', 'Biology');
insert into nitwStudent values(2, 'Shasha Grey', 'Chemistry');
insert into nitwStudent(student_id, s_name) values(3, 'Mario');
insert into nitwStudent values(5, 'Jack', 'Physics');
-- insert into nitwStudent values(5, 'Jack', 'Biology'); // not possible to add duplicate entries with exact same value of primary key
insert into nitwStudent values(4, 'Rock', 'Computer');
-- insert into nitwStudent values(6, 'Claire', 'Computer');
-- insert into nitwStudent values(6, null, 'Maths');
insert into nitwStudent values(6, 'Claire', 'Maths');

update nitwStudent set major='Bio' where major='Biology';
update nitwStudent set major='CS' where major='Computer';
update nitwStudent set major='NonMed' where major='Physics' or major='Chemistry';

delete from nitwStudent where s_name='Jack' and major<>'Maths';
delete from nitwStudent;

select * from nitwStudent;
select s_name from nitwStudent;
select s_name, major from nitwStudent;
select nitwStudent.s_name, nitwStudent.major from nitwStudent;
select s_name, major from nitwStudent order by student_id;
select s_name, major from nitwStudent order by s_name desc;
select s_name, major from nitwStudent order by s_name, student_id;
select s_name, major from nitwStudent limit 2;
select s_name, major from nitwStudent order by s_name limit 2;
select s_name, major from nitwStudent where major='Biology' or major='Physics' order by student_id asc;
select * from nitwStudent where s_name in ('Claire', 'Kate', 'Mike');
select * from nitwStudent where major in ('Biology', 'Chemistry') and student_id >2;