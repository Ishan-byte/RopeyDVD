use DVDRental;
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Action', 0);
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Adventure', 0);
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Adult', 1);
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Comedy', 0);
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Crime', 1);
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Fiction', 0);
insert into DVDCategory(CategoryDescription, AgeRestricted) values('Romantic', 0);



insert into Actor(ActorSurname, ActorFirstName) values('Khan', 'Salman');
insert into Actor(ActorSurname, ActorFirstName) values('Cruise', 'Tom');
insert into Actor(ActorSurname, ActorFirstName) values('Hart', 'Kevin');
insert into Actor(ActorSurname, ActorFirstName) values('Rai', 'Wilson');
insert into Actor(ActorSurname, ActorFirstName) values('Chopra', 'Priyanka');
insert into Actor(ActorSurname, ActorFirstName) values('Bhatt', 'Alia');
insert into Actor(ActorSurname, ActorFirstName) values('Malla', 'Saugat');



insert into Studio(StudioName) values('T-Series');
insert into Studio(StudioName) values('Marvel');
insert into Studio(StudioName) values('Rockstar');
insert into Studio(StudioName) values('Warner Bros');
insert into Studio(StudioName) values('Universal');
insert into Studio(StudioName) values('Sony');


insert into Producer(ProducerName) values('Steven Spielberg');
insert into Producer(ProducerName) values('Spike Lee');
insert into Producer(ProducerName) values('Quentin Tarantino');
insert into Producer(ProducerName) values('Kathleen Kennedy');
insert into Producer(ProducerName) values('Prabhudeva');

insert into DVDTitle(title, DateReleased, StandardCharge, PenaltyCharge, CategoryNumber, StudioNumber, ProducerNumber) values('DeadPool', '2016-02-12', 250,  300, 6, 4, 5);  
insert into DVDTitle(title, DateReleased, StandardCharge, PenaltyCharge, CategoryNumber, StudioNumber, ProducerNumber) values('Central Intelligence','2018-01-02', 200, 250, 4, 5, 2);  
insert into DVDTitle(title, DateReleased, StandardCharge, PenaltyCharge, CategoryNumber, StudioNumber, ProducerNumber) values('365 Days','2015-05-06', 300, 350, 3, 2, 4);  
insert into DVDTitle(title, DateReleased, StandardCharge, PenaltyCharge, CategoryNumber, StudioNumber, ProducerNumber) values('Titanic', '2003-03-02', 100,  150, 7, 4, 1);  
insert into DVDTitle(title, DateReleased, StandardCharge, PenaltyCharge, CategoryNumber, StudioNumber, ProducerNumber) values('Joker','2020-09-18', 400, 450, 5, 1, 3);  

insert into DVDCopy(DatePurchased, DVDNumber) values('2022-04-01', 3);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-04-03', 2);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-04-05', 1);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-04-06', 4);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-04-19', 4);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-04-26', 5);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-05-01', 2);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-05-04', 3);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-05-07', 4);
insert into DVDCopy(DatePurchased, DVDNumber) values('2022-05-09', 1);

insert into LoanType(Loantype, LoanDuration) values('monthly', 30);
insert into LoanType(Loantype, LoanDuration) values('daily', 1);
insert into LoanType(Loantype, LoanDuration) values('weekly', 7);

insert into MembershipCategory(MembershipCategoryDescription, MembershipCategoryTotalLoans) values('Premium', 10);
insert into MembershipCategory(MembershipCategoryDescription, MembershipCategoryTotalLoans) values('Normal', 5);
insert into MembershipCategory(MembershipCategoryDescription, MembershipCategoryTotalLoans) values('Medium', 7);

insert into Member(MemberLastName, MemberFirstName, MemberAddress, MemberDateOfBirth, MemberCategoryNumber) values('Chemjong', 'Ishan', 'Kathmandu',   '2003-11-01', 1);
insert into Member(MemberLastName, MemberFirstName, MemberAddress, MemberDateOfBirth, MemberCategoryNumber) values('Shrestha', 'Stuti', 'Kathmandu',    '2001-12-02', 1);
insert into Member(MemberLastName, MemberFirstName, MemberAddress, MemberDateOfBirth, MemberCategoryNumber) values('Wagle', 'Udita', 'Kathmandu', '1998-06-17', 3);
insert into Member(MemberLastName, MemberFirstName, MemberAddress, MemberDateOfBirth, MemberCategoryNumber) values('Khadka', 'Somu', 'Kathmandu', '2010-07-01', 2);
insert into Member(MemberLastName, MemberFirstName, MemberAddress, MemberDateOfBirth, MemberCategoryNumber) values('Maskey', 'Anshu', 'Kathmandu',    '2001-02-03', 1);
insert into Member(MemberLastName, MemberFirstName, MemberAddress, MemberDateOfBirth, MemberCategoryNumber) values('Tamang', 'Sanjay', 'Kathmandu',     '2001-01-01', 3);

insert into CastMember(DVDNumber, ActorNumber) values(1, 5);
insert into CastMember(DVDNumber, ActorNumber) values(1, 4);
insert into CastMember(DVDNumber, ActorNumber) values(2, 3);
insert into CastMember(DVDNumber, ActorNumber) values(2, 2);
insert into CastMember(DVDNumber, ActorNumber) values(3, 1);
insert into CastMember(DVDNumber, ActorNumber) values(3, 2);
insert into CastMember(DVDNumber, ActorNumber) values(4, 3);
insert into CastMember(DVDNumber, ActorNumber) values(4, 4);
insert into CastMember(DVDNumber, ActorNumber) values(5, 5);
insert into CastMember(DVDNumber, ActorNumber) values(5, 6);

insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-01', '2022-05-01', '2022-04-15', 1, 1, 1);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-04', '2022-04-11', '2022-04-08', 3, 2, 3);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-06', '2022-04-07', '2022-04-07', 2, 3, 2);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-08', '2022-05-08', '2022-05-01', 1, 4, 3);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-12', '2022-05-12', null, 1, 5, 4);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-14', '2022-05-14', null, 1, 6, 5);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-19', '2022-04-26', '2022-04-26', 3, 7, 1);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-20', '2022-05-20', 'null', 1, 8, 2);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-04-27', '2022-04-28', '2022-04-28', 2, 9, 3);
insert into Loan(DateOut, DateDue, DateReturned, LoanTypeNumber, CopyNumber, MemberNumber) values('2022-05-01', '2022-06-01', 'null', 1, 8, 4);

