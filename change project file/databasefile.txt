CREATE TABLE [dbo].[tbl_admin] (
    [aid]         INT          IDENTITY (1, 1) NOT NULL,
    [aname]       VARCHAR (50) NOT NULL,
    [lname]       VARCHAR (50) NOT NULL,
    [email]       VARCHAR (50) NOT NULL,
    [address]     VARCHAR (50) NULL,
    [contactno]   VARCHAR (50) NULL,
    [pass]        VARCHAR (50) NOT NULL,
    [profile_pic] VARCHAR (50) NULL,
    CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED ([aid] ASC)
);

CREATE TABLE [dbo].[tbl_car_factors] (
    [id]           INT          IDENTITY (1, 1) NOT NULL,
    [modelid]      INT          NOT NULL,
    [versionid]    INT          NOT NULL,
    [price]        INT          NOT NULL,
    [body_type]    VARCHAR (50) NULL,
    [year]         VARCHAR (50) NOT NULL,
    [fuel]         VARCHAR (50) NOT NULL,
    [transmission] VARCHAR (50) NOT NULL,
    [no_of_gears]  INT          NOT NULL,
    CONSTRAINT [PK_tbl_car_factors] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_tbl_car_factors_tbl_model] FOREIGN KEY ([modelid]) REFERENCES [dbo].[tbl_model] ([modelid])
);

CREATE TABLE [dbo].[tbl_car_specification] (
    [specification_id] INT        IDENTITY (1, 1) NOT NULL,
    [modelid]          INT        NULL,
    [versionid]        INT        NULL,
    [height]           INT        NULL,
    [length]           INT        NULL,
    [width]            INT        NULL,
    [wheelbase]        INT        NULL,
    [door]             INT        NULL,
    [seating_capacity] INT        NULL,
    [fuel_capacity]    NCHAR (10) NULL,
    CONSTRAINT [PK_tbl_car_specification] PRIMARY KEY CLUSTERED ([specification_id] ASC)
);

CREATE TABLE [dbo].[tbl_code] (
    [id]     INT IDENTITY (1, 1) NOT NULL,
    [code]   INT NOT NULL,
    [userid] INT NOT NULL,
    CONSTRAINT [PK_tbl_code] PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[tbl_color] (
    [colorid]   INT          IDENTITY (1, 1) NOT NULL,
    [modelid]   INT          NULL,
    [colorname] VARCHAR (50) NOT NULL,
    [color]     VARCHAR (50) NOT NULL,
    [status]    INT          NULL,
    CONSTRAINT [PK_tbl_color] PRIMARY KEY CLUSTERED ([colorid] ASC)
);

CREATE TABLE [dbo].[tbl_comp] (
    [compid]   INT          IDENTITY (1, 1) NOT NULL,
    [compname] VARCHAR (50) NOT NULL,
    [complogo] VARCHAR (50) NULL,
    [status]   INT          NOT NULL,
    CONSTRAINT [PK_tbl_comp] PRIMARY KEY CLUSTERED ([compid] ASC)
);

CREATE TABLE [dbo].[tbl_dealer] (
    [dealerid]   INT          IDENTITY (1, 1) NOT NULL,
    [fname]      VARCHAR (50) NULL,
    [lname]      VARCHAR (50) NULL,
    [dealername] VARCHAR (50) NOT NULL,
    [email]      VARCHAR (50) NULL,
    [phoeno]     VARCHAR (10) NOT NULL,
    [address]    VARCHAR (50) NOT NULL,
    [password]   VARCHAR (50) NOT NULL,
    [confpass]   VARCHAR (50) NOT NULL,
    [image]      VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbl_dealer] PRIMARY KEY CLUSTERED ([dealerid] ASC)
);

CREATE TABLE [dbo].[tbl_dealer_comment] (
    [comid]    INT          IDENTITY (1, 1) NOT NULL,
    [dealerid] INT          NOT NULL,
    [comment]  VARCHAR (50) NOT NULL,
    [date]     DATETIME     NULL,
    CONSTRAINT [PK_tbl_dealer_comment] PRIMARY KEY CLUSTERED ([comid] ASC)
);

CREATE TABLE [dbo].[tbl_dealer_model] (
    [d_mid]    INT IDENTITY (1, 1) NOT NULL,
    [dealerid] INT NOT NULL,
    [compid]   INT NOT NULL,
    [modelid]  INT NOT NULL,
    CONSTRAINT [PK_tbl_dealer_model] PRIMARY KEY CLUSTERED ([d_mid] ASC)
);

CREATE TABLE [dbo].[tbl_event] (
    [eid]     INT          IDENTITY (1, 1) NOT NULL,
    [date]    VARCHAR (50) NOT NULL,
    [ename]   VARCHAR (50) NOT NULL,
    [eadd]    VARCHAR (50) NOT NULL,
    [website] VARCHAR (50) NULL,
    CONSTRAINT [PK_tbl_event] PRIMARY KEY CLUSTERED ([eid] ASC)
);

CREATE TABLE [dbo].[tbl_feature] (
    [featureid]                           INT          IDENTITY (1, 1) NOT NULL,
    [modelid]                             INT          NOT NULL,
    [versionid]                           INT          NOT NULL,
    [ac]                                  NVARCHAR (5) NOT NULL,
    [climate_control]                     NVARCHAR (5) NOT NULL,
    [cd_player]                           NVARCHAR (5) NOT NULL,
    [power_steering]                      NVARCHAR (5) NOT NULL,
    [power_window]                        NVARCHAR (5) NOT NULL,
    [central_locking]                     NVARCHAR (5) NOT NULL,
    [steering_adjustment]                 NVARCHAR (5) NOT NULL,
    [electrically_adjustable_driver_seat] NVARCHAR (5) NOT NULL,
    [steering_mounted_controls]           NVARCHAR (5) NOT NULL,
    [rear_ac_vent]                        NVARCHAR (5) NOT NULL,
    [remote_controlled_boot]              NVARCHAR (5) NOT NULL,
    [rear_wiper]                          NVARCHAR (5) NOT NULL,
    [leather_seats]                       NVARCHAR (5) NOT NULL,
    [electrically_adjustable_mirrors]     NVARCHAR (5) NOT NULL,
    [anti_lock_braking_system]            NVARCHAR (5) NOT NULL,
    [airbag]                              NVARCHAR (5) NOT NULL,
    [parking_sensors]                     NVARCHAR (5) NOT NULL,
    [traction_control]                    NVARCHAR (5) NOT NULL,
    CONSTRAINT [PK_tbl_feature] PRIMARY KEY CLUSTERED ([featureid] ASC)
);

CREATE TABLE [dbo].[tbl_gallery] (
    [galleryid] INT          IDENTITY (1, 1) NOT NULL,
    [modelid]   INT          NOT NULL,
    [image]     VARCHAR (50) NOT NULL,
    [status]    INT          NULL,
    CONSTRAINT [PK_tbl_gallery] PRIMARY KEY CLUSTERED ([galleryid] ASC)
);

CREATE TABLE [dbo].[tbl_just_launched] (
    [id]            INT          IDENTITY (1, 1) NOT NULL,
    [comp]          VARCHAR (50) NOT NULL,
    [model]         VARCHAR (50) NOT NULL,
    [price]         INT          NOT NULL,
    [launched_date] VARCHAR (50) NOT NULL,
    [photo]         VARCHAR (50) NOT NULL,
    [status]        INT          NOT NULL,
    CONSTRAINT [PK_tbl_just_launched] PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[tbl_model] (
    [modelid]   INT          IDENTITY (1, 1) NOT NULL,
    [compid]    INT          NULL,
    [modelname] VARCHAR (50) NULL,
    [image]     VARCHAR (50) NULL,
    [status]    INT          NULL,
    CONSTRAINT [PK_tbl_model] PRIMARY KEY CLUSTERED ([modelid] ASC),
    CONSTRAINT [FK_tbl_model_tbl_comp] FOREIGN KEY ([compid]) REFERENCES [dbo].[tbl_comp] ([compid])
);


CREATE TABLE [dbo].[tbl_msg] (
    [msgid]    INT          IDENTITY (1, 1) NOT NULL,
    [fullname] VARCHAR (50) NOT NULL,
    [pno]      VARCHAR (10) NOT NULL,
    [email]    VARCHAR (50) NOT NULL,
    [msg]      VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbl_msg] PRIMARY KEY CLUSTERED ([msgid] ASC)
);

CREATE TABLE [dbo].[tbl_news] (
    [nid]    INT          IDENTITY (1, 1) NOT NULL,
    [news]   VARCHAR (50) NOT NULL,
    [detail] VARCHAR (50) NOT NULL,
    [date]   VARCHAR (50) NOT NULL,
    [photo]  VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbl_news] PRIMARY KEY CLUSTERED ([nid] ASC)
);

CREATE TABLE [dbo].[tbl_popular] (
    [id]     INT          IDENTITY (1, 1) NOT NULL,
    [comp]   VARCHAR (50) NOT NULL,
    [model]  VARCHAR (50) NOT NULL,
    [price]  INT          NOT NULL,
    [fuel]   VARCHAR (50) NOT NULL,
    [photo]  VARCHAR (50) NOT NULL,
    [status] INT          NOT NULL,
    CONSTRAINT [PK_tbl_popular] PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[tbl_testdrive] (
    [testdrive_id] INT          IDENTITY (1, 1) NOT NULL,
    [user_name]    VARCHAR (50) NOT NULL,
    [last_name]    VARCHAR (50) NOT NULL,
    [phoneno]      VARCHAR (10) NULL,
    [compid]       INT          NOT NULL,
    [modelid]      INT          NOT NULL,
    [city]         VARCHAR (50) NOT NULL,
    [date]         VARCHAR (50) NOT NULL,
    [dealerid]     INT          NOT NULL,
    CONSTRAINT [PK_tbl_testdrive] PRIMARY KEY CLUSTERED ([testdrive_id] ASC),
    CONSTRAINT [FK_tbl_testdrive_tbl_comp] FOREIGN KEY ([compid]) REFERENCES [dbo].[tbl_comp] ([compid]),
    CONSTRAINT [FK_tbl_testdrive_tbl_model] FOREIGN KEY ([modelid]) REFERENCES [dbo].[tbl_model] ([modelid])
);


CREATE TABLE [dbo].[tbl_upcoming] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [comp]           VARCHAR (50)  NOT NULL,
    [model]          VARCHAR (50)  NOT NULL,
    [expected_price] INT           NOT NULL,
    [expected_date]  VARCHAR (50)  NOT NULL,
    [photo]          VARCHAR (100) NOT NULL,
    [status]         INT           NOT NULL,
    CONSTRAINT [PK_tbl_upcoming] PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[tbl_user] (
    [userid]   INT          IDENTITY (1, 1) NOT NULL,
    [name]     VARCHAR (50) NOT NULL,
    [lname]    VARCHAR (50) NOT NULL,
    [phoneno]  VARCHAR (10) NOT NULL,
    [city]     VARCHAR (50) NOT NULL,
    [email]    VARCHAR (50) NOT NULL,
    [password] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED ([userid] ASC)
);

CREATE TABLE [dbo].[tbl_version] (
    [versionid]   INT          IDENTITY (1, 1) NOT NULL,
    [modelid]     INT          NOT NULL,
    [versionname] VARCHAR (50) NOT NULL,
    [status]      INT          NOT NULL,
    CONSTRAINT [PK_tbl_version] PRIMARY KEY CLUSTERED ([versionid] ASC),
    CONSTRAINT [FK_tbl_version_tbl_model] FOREIGN KEY ([modelid]) REFERENCES [dbo].[tbl_model] ([modelid])
);

CREATE TABLE [dbo].[tbl_video] (
    [id]     INT          IDENTITY (1, 1) NOT NULL,
    [news]   VARCHAR (50) NOT NULL,
    [video]  VARCHAR (50) NOT NULL,
    [status] INT          NOT NULL,
    CONSTRAINT [PK_tbl_video] PRIMARY KEY CLUSTERED ([id] ASC)
);

