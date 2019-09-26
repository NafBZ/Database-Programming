create table branch
(
branch_no varchar(5) not null,
city char(20) not null,
street varchar(25) not null,
zipcode numeric(5), 
    CONSTRAINT [PK_branch] PRIMARY KEY ([branch_no]) 
);
