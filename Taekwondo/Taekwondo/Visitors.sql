create view Visitors
AS SELECT tournamentID, MAX(Entry_Fee) as Entry_Fee
From tournament
Group by tournamentID;