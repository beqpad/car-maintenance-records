DROP TABLE [User];
DROP TABLE [AuthenticationInfo];
DROP TABLE [SecurityToken];

CREATE TABLE [User] (
  [ID]			      BIGINT IDENTITY(1, 1) PRIMARY KEY,

  [GUID]              NVARCHAR(50) NOT NULL UNIQUE,
  [FamilyName]        NVARCHAR(20) NOT NULL,
  [GivenName]         NVARCHAR(20) NOT NULL,
  [FamilyNameRuby]    NVARCHAR(20) NOT NULL,
  [GivenNameRuby]     NVARCHAR(20) NOT NULL,
  [DisplayName]       NVARCHAR(40) NOT NULL,
  [Email]             NVARCHAR(50) NOT NULL,

  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);


CREATE TABLE [AuthenticationInfo] (
  [ID]			      BIGINT IDENTITY(1, 1) PRIMARY KEY,

  [UserID]            BIGINT NOT NULL,
  [SignInID]          NVARCHAR(50) NOT NULL,
  [PasswordSHA256]    NVARCHAR(64) NOT NULL,

  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);


CREATE TABLE [SecurityToken] (
  [ID]			      BIGINT IDENTITY(1, 1) PRIMARY KEY,

  [Token]             NVARCHAR(64) NOT NULL UNIQUE,

  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);
