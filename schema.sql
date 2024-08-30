-- Create Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Password VARCHAR(255),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Friends Table
CREATE TABLE Friends (
    FriendID INT PRIMARY KEY,
    FriendWhoAdded INT,
    FriendBeingAdded INT,
    IsAccepted BOOLEAN,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Groups Table
CREATE TABLE Groups (
    GroupID INT PRIMARY KEY,
    GroupName VARCHAR(100),
    CreatedBy INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Posts Table
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    PostDescription VARCHAR(255),
    PostedBy INT,
    IsPublic BOOLEAN,
    IsOnlyForFriends BOOLEAN,
    GroupID INT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Group Membership Requests Table
CREATE TABLE GroupMembershipRequests (
    GroupMemberShipRequestsID INT PRIMARY KEY,
    GroupID INT,
    GroupMemberUserID INT,
    IsGroupMemberShipAccepted BOOLEAN,
    DateAccepted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Records into Users Table
INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password)
VALUES 
('7365','Jethro Skegg','Jethro','Skegg','6/23/2021','gB7D{Q$9Aps2!ta'),
('5740','Lars Stidworthy','Lars','Stidworthy','12/21/2013','nT0uAo%B{!Quyw8U3=a'),
('6375','Riccardo Corns','Riccardo','Corns','9/28/2018','pW7$lK%tx39bWTY'),
('2057','Suzette Stobbes','Suzette','Stobbes','11/16/2020','fW0O=yj0OIX,_a'),
('3337','Harper Ebi','Harper','Ebi','3/20/2017','lG8y<jQV39vYs+P*T,F2g');

-- Insert Records into Friends Table
INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted)
VALUES 
(680,1,8,False),
(764,11,9,TRUE),
(185,1,11,TRUE),
(438,20,4,TRUE),
(531,3,17,FALSE);

-- Insert Records into Groups Table
INSERT INTO Groups (GroupID, GroupName, CreatedBy)
VALUES 
(5268470922,'Emard, Strosin and Heaney',50),
(2121705600,'Goodwin, Vandervort and Dietrich',22),
(1631069977,'McGlynn-Bogan',33),
(9949332826,'Goldner, Williamson and Schaefer',23),
(0230755054,'Botsford Inc',44);

-- Insert Records into Posts Table
INSERT INTO Posts (PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID)
VALUES 
(8400042964,'Fully-configurable multi-tasking architecture',44,TRUE,TRUE,6433569226),
(7527844159,'Vision-oriented composite model',3,TRUE,FALSE,2388132959),
(4431721711,'Automated 5th generation product',40,TRUE,FALSE,1624083943),
(5056903868,'Mandatory stable toolset',45,TRUE,TRUE,4977373782),
(5042317678,'Fully-configurable multi-state toolset',47,FALSE,TRUE,3788502835);

-- Insert Records into Group Membership Requests Table
INSERT INTO GroupMembershipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted)
VALUES 
(3825232557,8860379555,9673680922,TRUE),
(5392485847,5067070684,7068977154,TRUE),
(8593985572,0373405421,6292016374,FALSE),
(3722135621,0783598297,3173625242,TRUE),
(3415217000,6496502692,2905717491,FALSE);