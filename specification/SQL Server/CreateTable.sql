DROP TABLE [User];
DROP TABLE [AuthenticationInfo];
DROP TABLE [SecurityToken];
DROP TABLE [Mechanic];
DROP TABLE [ServiceStation};
DROP TABLE [Tenant];
DROP TABLE [Machine];
DROP TABLE [RegularlyCheckRecord];


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


CREATE TABLE [Mechanic] (
  [ID]			      BIGINT IDENTITY(1, 1) PRIMARY KEY,

  [GUID]              NVARCHAR(50) NOT NULL UNIQUE,
  [ServiceStationID]  BIGINT NOT NULL,
  [UserID]            BIGINT NOT NULL,

  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);


CREATE TABLE [ServiceStation] (
  [ID]			      BIGINT IDENTITY(1, 1) PRIMARY KEY,

  [GUID]              NVARCHAR(50) NOT NULL UNIQUE,
  [TenantID]          BIGINT NOT NULL,
  [Name]              NVARCHAR(20) NOT NULL,
  [PostCode]          NVARCHAR(20),
  [Address]           NVARCHAR(20),
  [PhoneNumber]       NVARCHAR(20),
  [FaxNumber]         NVARCHAR(20),
  [ChargeUserID]      BIGINT NOT NUL,

  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);


CREATE TABLE [Tenant] (
  [ID]			BIGINT IDENTITY(1, 1) PRIMARY KEY,
  
  [GUID]              NVARCHAR(50) NOT NULL,
  [CompanyName]       NVARCHAR(20),
  [PostCode]          NVARCHAR(20),
  [Address]           NVARCHAR(20),
  [PhoneNumber]       NVARCHAR(20),
  [FaxNumber]         NVARCHAR(20),
  [ChargeUserID]      BIGINT NOT NULL,

  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);


CREATE TABLE [Machine] (
  [ID]			BIGINT IDENTITY(1, 1) PRIMARY KEY,
  
  [GUID]                 NVARCHAR(50) NOT NULL,
  [OwnerID]              BIGINT,
  [FrameNo]              NVARCHAR(20) NOT NULL,
  [MotorNo]              NVARCHAR(20) NOT NULL,
  [Maker]                NVARCHAR(20),
  [Name]                 NVARCHAR(20),
  [Model]                NVARCHAR(20),
  [Color]                NVARCHAR(20),
  [FirstRegistdDateTime]  DATETIME2,
  [RegistNo]         NVARCHAR(20),
  
  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);


CREATE TABLE [RegularlyCheckRecord] (
  [ID]			BIGINT IDENTITY(1, 1) PRIMARY KEY,
  
  [GUID]  NVARCHAR(50) NOT NULL,
  [MachineID]  BIGINT NOT NULL,
  [Odometer]  INTEGER NOT NULL,
  [CheckDate]  DATETIME2,
  [CompleteDate]  DATETIME2,
  [CheckSSID]  BIGINT,
  [CheckUserID]  BIGINT NOT NULL,
  [EG_PWST_1]  TINYINT,
  [EG_PWST_2]  TINYINT,
  [EG_PWST_3]  TINYINT,
  [EG_PWST_4]  TINYINT,
  [EG_CL_1]  TINYINT,
  [EG_CL_2]  TINYINT,
  [EG_IG_1]  TINYINT,
  [EG_IG_2]  TINYINT,
  [EG_IG_3]  TINYINT,
  [EG_FU_1]  TINYINT,
  [EG_EL_1]  TINYINT,
  [EG_EL_2]  TINYINT,
  [EG_EG_1]  TINYINT,
  [EG_EG_2]  TINYINT,
  [EG_EG_3]  TINYINT,
  [EG_CLEA_1]  TINYINT,
  [EG_CLEA_2]  TINYINT,
  [EG_CLEA_3]  TINYINT,
  [EG_CLEA_4]  TINYINT,
  [EG_CLEA_5]  TINYINT,
  [EG_CLEA_6]  TINYINT,
  [EG_CLEA_7]  TINYINT,
  [EG_CLEA_8]  TINYINT,
  [EG_CLEA_9]  TINYINT,
  [EG_CLEA_10]  TINYINT,
  [IN_HN_1]  TINYINT,
  [IN_HN_2]  TINYINT,
  [IN_PB_1]  TINYINT,
  [IN_PB_2]  TINYINT,
  [IN_BRPD_1]  TINYINT,
  [IN_BRPD_2]  TINYINT,
  [IN_BRPD_3]  TINYINT,
  [IN_CLPD_1]  TINYINT,
  [IN_CLPD_2]  TINYINT,
  [FO_ST_1]  TINYINT,
  [FO_SH_1]  TINYINT,
  [FO_SU_1]  TINYINT,
  [FO_WH_1]  TINYINT,
  [FO_WH_2]  TINYINT,
  [FO_WH_3]  TINYINT,
  [FO_WH_4]  TINYINT,
  [FO_WH_5]  TINYINT,
  [FO_WH_6]  TINYINT,
  [FO_BRD_1]  TINYINT,
  [FO_BRD_2]  TINYINT,
  [FO_BRD_3]  TINYINT,
  [FO_BRD_4]  TINYINT,
  [FO_BRD_5]  TINYINT,
  [FO_BRD_6]  TINYINT,
  [FO_BRC_1]  TINYINT,
  [FO_BRC_2]  TINYINT,
  [FO_BRC_3]  TINYINT,
  [FO_BRC_4]  TINYINT,
  [FO_BRC_5]  TINYINT,
  [FO_BRC_6]  TINYINT,
  [UD_EGOIL_1]  TINYINT,
  [UD_BRK_1]  TINYINT,
  [UD_STGR_1]  TINYINT,
  [UD_STLO_1]  TINYINT,
  [UD_STLO_2]  TINYINT,
  [UD_TR_1]  TINYINT,
  [UD_EX_1]  TINYINT,
  [UD_EX_2]  TINYINT,
  [UD_EX_3]  TINYINT,
  [UD_DRS_1]  TINYINT,
  [UD_DRS_2]  TINYINT,
  [UD_DIFF_1]  TINYINT,
  [UD_DIFF_2]  TINYINT,
  [Exterior_FRBD_1]  TINYINT,
  [DY_BrakeFluid]  TINYINT,
  [DY_BatteryFluid]  TINYINT,
  [DY_Coolant]  TINYINT,
  [DY_EngineOil]  TINYINT,
  [DY_EngineStart]  TINYINT,
  [DY_Accelerator]  TINYINT,
  [DY_Lamp]  TINYINT,
  [DY_WasherFluid]  TINYINT,
  [DY_WasherJet]  TINYINT,
  [DY_Wiper]  TINYINT,
  [EX_CO]  FLOAT,
  [EX_HC]  INTEGER,
  [TY_Fr_L]  TINYINT,
  [TY_Fr_R]  TINYINT,
  [TY_Rr_L]  TINYINT,
  [TY_Rr_R]  TINYINT,
  [BR_Fr_L]  TINYINT,
  [BR_Fr_R]  TINYINT,
  [BR_Rr_L]  TINYINT,
  [BR_Rr_R]  TINYINT,
  [CH_EngineOil]  FLOAT,
  [CH_OilFilter]  TINYINT,
  [CH_LLC]  FLOAT,
  [CH_BrakeFluid]  FLOAT,
  [CH_Other_1]  NVARCHAR(20),
  [CH_Other_2]  NVARCHAR(20),
  [CH_Other_3]  NVARCHAR(20),
  [CH_Other_1_Num]  NVARCHAR(10),
  [CH_Other_2_Num]  NVARCHAR(10),
  [CH_Other_3_Num]  NVARCHAR(10),
  [CK_Other_1_Item]  NVARCHAR(20),
  [CK_Other_2_Item]  NVARCHAR(20),
  [CK_Other_3_Item]  NVARCHAR(20),
  [CK_Other_4_Item]  NVARCHAR(20),
  [CK_Other_5_Item]  NVARCHAR(20),
  [CK_Other_6_Item]  NVARCHAR(20),
  [CK_Other_7_Item]  NVARCHAR(20),
  [CK_Other_1]  TINYINT,
  [CK_Other_2]  TINYINT,
  [CK_Other_3]  TINYINT,
  [CK_Other_4]  TINYINT,
  [CK_Other_5]  TINYINT,
  [CK_Other_6]  TINYINT,
  [CK_Other_7]  TINYINT,
  [Advice_1]  NVARCHAR(255),
  [Advice_2]  NVARCHAR(255),
  [Advice_3]  NVARCHAR(255),
  
  [CreatedDateTime]   DATETIME2,
  [UpdatedDateTime]   DATETIME2,
  [DeletedDateTime]   DATETIME2,
  [CreatedUserID]     BIGINT,
  [UpdatedUserID]     BIGINT,
  [DeletedUserID]     BIGINT
);