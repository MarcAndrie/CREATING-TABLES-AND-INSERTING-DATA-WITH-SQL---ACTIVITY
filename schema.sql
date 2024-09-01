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
INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password) VALUES 
(7365,'Jethro Skegg','Jethro','Skegg','1999-01-12','GhnR4'),
(5740,'Lars Stidworthy','Lars','Stidworthy','2003-12-24','Jkh6G'),
(6375,'Riccardo Corns','Riccardo','Corns','2021-09-15','5HkpA'),
(2057,'Suzette Stobbes','Suzette','Stobbes','2007-03-27','NyeTQ'),
(3337,'Harper Ebi','Harper','Ebi','2001-07-18','B8IkH');

-- Insert Records into Friends Table
INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted)
VALUES 
(1,1,1,False),
(2,2,2,TRUE),
(3,3,3,TRUE),
(4,4,4,TRUE),
(5,5,5,FALSE);

-- Insert Records into Groups Table
INSERT INTO Groups (GroupID, GroupName, CreatedBy)
VALUES 
(1,'Emard, Strosin and Heaney',1),
(2,'Goodwin, Vandervort and Dietrich',2),
(3,'McGlynn-Bogan',3),
(4,'Goldner, Williamson and Schaefer',4),
(5,'Botsford Inc',5);

-- Insert Records into Posts Table
INSERT INTO Posts (PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID)
VALUES 
(1,'Fully-configurable multi-tasking architecture',1,TRUE,TRUE,1),
(2,'Vision-oriented composite model',2,TRUE,FALSE,2),
(3,'Automated 5th generation product',3,TRUE,FALSE,3),
(4,'Mandatory stable toolset',4,TRUE,TRUE,5),
(5,'Fully-configurable multi-state toolset',5,FALSE,TRUE,4);

-- Insert Records into Group Membership Requests Table
INSERT INTO GroupMembershipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted)
VALUES 
(1,1,1,TRUE),
(2,2,2,TRUE),
(3,3,3,FALSE),
(4,4,4,TRUE),
(5,5,5,FALSE);
