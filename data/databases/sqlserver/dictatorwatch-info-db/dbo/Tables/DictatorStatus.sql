CREATE TABLE [dbo].[DictatorStatus] (
    [Id]          INT            NOT NULL IDENTITY(1,1), -- Auto-incrementing primary key
    [Name]        NVARCHAR(100)  NOT NULL,              -- Name of the status
    [Description] NVARCHAR(255)  NULL,                  -- Optional description of the status
    [RowVersion] ROWVERSION NOT NULL,                           -- Row version for concurrency control
    PRIMARY KEY CLUSTERED ([Id] ASC)                    -- Primary key on Id
);
