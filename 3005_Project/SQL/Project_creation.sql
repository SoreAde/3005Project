create table Trainer
    (
        trainer_id SERIAL,
        first_name varchar(255) not null,
        last_name varchar(255) not null,
        DOB DATE not null,
        gender text,
        email varchar(255) unique not null,
        employment_date DATE not null,
        primary key (trainer_id)
       
    );

create table Administrator -- manage rooms but how to incorporate managing billing and membership fees
    (
        admin_id SERIAL,
        location_id Integer,
        first_name varchar(255) not null,
        last_name varchar(255) not null,
        DOB DATE not null,
        gender text,
        email varchar(255) unique not null,
        employment_date DATE not null,
        primary key (admin_id)
    );

create table Member
    (
        member_id SERIAL,
        admin_id Integer,
        first_name varchar(255)  not null,
        last_name varchar(255) not null,
        DOB DATE not null,
        gender text,
        email varchar(255) unique not null,
        registration_date DATE not null,
        expiry DATE not null,
        subscription text not null,
        primary key (member_id),
        foreign key (admin_id) references Administrator
            on delete set null
    );

create table Locations
    (
        location_id SERIAL,
        admin_id Integer,
        location_name varchar(255) unique not null,
        location_address varchar(255) unique not null,
        launch_date DATE not null,
        primary key (location_id),
        foreign key (admin_id) references Administrator
            on delete set null

    );

ALTER TABLE Administrator
ADD FOREIGN KEY (location_id) REFERENCES Locations(location_id)
	on delete set null;

create table room
    (
        room_id SERIAL,
        location_id Integer,
        capacity Integer,
        primary key (room_id, location_id),
        foreign key (location_id) references Locations
            on delete cascade
    );

create table Equipment
    (
        equipment_id SERIAL,
        equipment_name text not null,
        last_serviced DATE,
        logs text,
        installation DATE not null,
        primary key (equipment_id)
        
    );

create table health -- rship or dependent?
    (   
        member_id Integer,
        age Integer not null,
        weighs Integer,
        height Integer,
        BMI Integer,
        foreign key (member_id) references Member
            on delete cascade

    );


create table Workshop -- can it be a rship
    (
        workshop_id SERIAL,
        focus text not null,
		admin_id Integer,
		trainer_id Integer,
        primary key (workshop_id),
        foreign key (admin_id) references Administrator,
        foreign key (trainer_id) references Trainer
        
    );

create table works
    (
        trainer_id Integer,
        location_id Integer,
        primary key (trainer_id, location_id),
        foreign key (trainer_id) references Trainer
            on delete cascade,
        foreign key (location_id) references Locations
            on delete cascade
    );

create table trains
    (   
        trainer_id Integer,
        member_id Integer,
        primary key (trainer_id, member_id),
        foreign key (trainer_id) references Trainer
            on delete cascade,
        foreign key (member_id) references Member
            on delete cascade
    );

create table achievement -- multivalue and weak/derived?
    (
        member_id Integer,
        achievement_name varchar(255) not null,
        summary varchar(255) not null,
        date_earned DATE not null,
        primary key (member_id),
        foreign key (member_id) references Member
            on delete cascade

    );

create table hosts -- dependent
    (
        room_id Integer,
		location_id Integer,
        workshop_id Integer,
        primary key (room_id, workshop_id),
        foreign key (room_id, location_ID) references room
            on delete cascade,
        foreign key (workshop_id) references Workshop
            on delete cascade

    );

ALTER TABLE trains
ADD COLUMN time_slot tsrange;

ALTER TABLE hosts
ADD COLUMN session tsrange;

ALTER TABLE works
ADD COLUMN shift tsrange;

