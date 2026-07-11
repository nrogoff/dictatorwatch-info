CREATE TABLE [dbo].[MethodOfPowerLoss] (
    [Id]          INT            NOT NULL IDENTITY(1,1), -- Auto-incrementing primary key
    [Name]        NVARCHAR(100)  NOT NULL,              -- Name of the method of power loss
    [Description] NVARCHAR(255)  NULL,                  -- Optional description of the method of power loss
    [RowVersion] ROWVERSION NOT NULL,                           -- Row version for concurrency control
    PRIMARY KEY CLUSTERED ([Id] ASC)                    -- Primary key on Id
);
