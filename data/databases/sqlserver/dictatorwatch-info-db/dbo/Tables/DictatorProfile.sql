CREATE TABLE [dbo].[DictatorProfile] (
    [Id]                                  UNIQUEIDENTIFIER NOT NULL,
    [FullName]                            NVARCHAR (100)    NOT NULL,
    [SanitizedName]                       NVARCHAR (100)    NOT NULL,
    [Country]                             NVARCHAR (100)    NULL,
    [DateLastTakenPower]                  DATE             NULL,
    [DateLostPower]                       DATE             NULL,
    [CurrentStatusId]                     INT              NULL, -- Foreign key to DictatorStatus
    [MethodOfPowerLossId]                 INT              NULL, -- Foreign key to MethodOfPowerLoss
    [TypeOfGovernmentId]                  INT              NULL, -- Foreign key to TypeOfGovernment
    [PoliticalParty]                      NVARCHAR (100)    NULL,
    [PercentageOfProgressToFullAutocracy] INT              NULL,
    [Next2StepsToTakeToFullAutocracy]     JSON             NULL,
    [ShortBiography]                      TEXT             NULL,
    [HighestAcademicQualification]        NVARCHAR (100)    NULL,
    [KeyPolicies]                         JSON             NULL,
    [NotableEvents]                       JSON             NULL,
    [SuccessionPlan]                      NVARCHAR (100)    NULL,
    [Education]                           NVARCHAR (100)    NULL,
    [CountryOfBirth]                      NVARCHAR (100)    NULL,
    [Religion]                            NVARCHAR (50)    NULL,
    [LastCivilianJobHeld]                 NVARCHAR (100)    NULL,
    [KnownHobbies]                        JSON             NULL,
    [DateOfBirth]                         DATE             NULL,
    [EstimatedNetWorth]                   NVARCHAR (30)    NULL,
    [OfficialAnnualSalary]                NVARCHAR (30)    NULL,
    [RowVersion]                         ROWVERSION       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT FK_DictatorsProfiles_DictatorStatus FOREIGN KEY ([CurrentStatusId])
        REFERENCES [dbo].[DictatorStatus] ([Id]) ON DELETE SET NULL,
    CONSTRAINT FK_DictatorsProfiles_MethodOfPowerLoss FOREIGN KEY ([MethodOfPowerLossId])
        REFERENCES [dbo].[MethodOfPowerLoss] ([Id]) ON DELETE SET NULL,
    CONSTRAINT FK_DictatorsProfiles_TypeOfGovernment FOREIGN KEY ([TypeOfGovernmentId])
        REFERENCES [dbo].[TypeOfGovernment] ([Id]) ON DELETE SET NULL
);
