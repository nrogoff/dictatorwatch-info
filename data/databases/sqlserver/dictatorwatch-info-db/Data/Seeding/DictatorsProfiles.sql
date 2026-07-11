-- Seeding data into the DictatorsProfiles table
-- Note: This script assumes the lookup tables (DictatorStatus, MethodOfPowerLoss, TypeOfGovernment) have been populated first

-- Declare variables to hold lookup IDs
DECLARE @InPowerStatusId INT = (SELECT Id FROM [dbo].[DictatorStatus] WHERE [Name] = 'In Power');
DECLARE @PresidentElectStatusId INT = (SELECT Id FROM [dbo].[DictatorStatus] WHERE [Name] = 'President Elect');
DECLARE @DeposedStatusId INT = (SELECT Id FROM [dbo].[DictatorStatus] WHERE [Name] = 'Deposed');
DECLARE @AuthoritarianGovId INT = (SELECT Id FROM [dbo].[TypeOfGovernment] WHERE [Name] = 'Authoritarian');
DECLARE @TotalitarianGovId INT = (SELECT Id FROM [dbo].[TypeOfGovernment] WHERE [Name] = 'Totalitarian');
DECLARE @OnePartyStateGovId INT = (SELECT Id FROM [dbo].[TypeOfGovernment] WHERE [Name] = 'One-Party State');
DECLARE @AbsoluteMonarchyGovId INT = (SELECT Id FROM [dbo].[TypeOfGovernment] WHERE [Name] = 'Absolute Monarchy');
DECLARE @DemocracyGovId INT = (SELECT Id FROM [dbo].[TypeOfGovernment] WHERE [Name] = 'Democracy');
DECLARE @RevolutionPowerLossId INT = (SELECT Id FROM [dbo].[MethodOfPowerLoss] WHERE [Name] = 'Revolution');

-- Insert Vladimir Putin
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'e1a1c5b4-5d6f-4a3b-9e8e-2d6b5a4e1c5b',
    'Vladimir Putin',
    'VladimirPutin',
    'Russia',
    '2012-05-07',
    NULL,
    @InPowerStatusId,
    NULL,
    @AuthoritarianGovId,
    'United Russia',
    85,
    JSON_QUERY('["Further suppress opposition","Increase control over media"]'),
    'Vladimir Putin is a Russian leader and former KGB officer who has shaped his nation''s political landscape for decades with a mix of strategic maneuvers, military aggression against Russia''s neighbors, and controversial policies.',
    'Leningrad State University (LLB), Leningrad Mining Institute (Kandidat Nauk)',
    JSON_QUERY('["Annexation of Crimea","Intervention in Syria","Invasion of Ukraine"]'),
    JSON_QUERY('["2014 annexation of Crimea","2015 intervention in Syria","2022 invasion of Ukraine"]'),
    'Grooming loyal allies',
    'Leningrad State University (LLB), Leningrad Mining Institute (Kandidat Nauk)',
    'Soviet Union',
    'Russian Orthodox',
    'KGB officer',
    JSON_QUERY('["Judo","Hockey"]'),
    '1952-10-07',
    '$70 billion',
    '$140,000'
);

-- Insert Kim Jong-un
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'f2b2d6e7-6f8a-4b3c-9e8e-3d7b6a5f2b2d',
    'Kim Jong-un',
    'KimJongun',
    'North Korea',
    '2011-12-30',
    NULL,
    @InPowerStatusId,
    NULL,
    @TotalitarianGovId,
    'Korean Workers'' Party',
    95,
    JSON_QUERY('["Increase surveillance","Expand propaganda efforts"]'),
    'Kim Jong-un is a North Korean political official who succeeded his father, Kim Jong Il, as leader of North Korea in 2011. Little of his early life is known, but in 2009 it became clear that he was being groomed as his father''s successor.',
    'Kim Il Sung University, Kim Il Sung Military University',
    JSON_QUERY('["Nuclear weapons program","Economic reforms"]'),
    JSON_QUERY('["2017 nuclear tests","2018 Singapore Summit"]'),
    'Grooming family members',
    'Kim Il Sung University, Kim Il Sung Military University',
    'North Korea',
    'Atheist',
    'None',
    JSON_QUERY('["Basketball","Skiing"]'),
    '1982-01-08',
    '$5 billion',
    '$650,000'
);

-- Insert Xi Jinping
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'g3c3e7f8-7g9b-5c4d-9f8e-4e8c7b6g3c3e',
    'Xi Jinping',
    'XiJinping',
    'China',
    '2012-11-15',
    NULL,
    @InPowerStatusId,
    NULL,
    @OnePartyStateGovId,
    'Chinese Communist Party',
    90,
    JSON_QUERY('["Strengthen control over judiciary","Increase censorship"]'),
    'Xi Jinping is a Chinese politician and government official who has served as the general secretary of the Chinese Communist Party (CCP) since 2012 and as the president of the People''s Republic of China since 2013.',
    'Tsinghua University',
    JSON_QUERY('["Belt and Road Initiative","Anti-corruption campaign"]'),
    JSON_QUERY('["2013 Belt and Road Initiative","2018 constitutional amendment"]'),
    'Grooming loyal allies',
    'Tsinghua University',
    'China',
    'Atheist',
    'None',
    JSON_QUERY('["Reading","Swimming"]'),
    '1953-06-15',
    '$1.5 billion',
    '$22,000'
);

-- Insert Recep Tayyip Erdo?an
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'h4d4f8g9-8h0c-6d5e-9g8e-5f9d8c7h4d4f',
    'Recep Tayyip Erdo?an',
    'RecepTayyipErdogan',
    'Turkey',
    '2014-08-28',
    NULL,
    @InPowerStatusId,
    NULL,
    @AuthoritarianGovId,
    'Justice and Development Party (AKP)',
    80,
    JSON_QUERY('["Further centralize power","Suppress independent media"]'),
    'Recep Tayyip Erdo?an is a Turkish politician who served as prime minister (2003–14) and president (2014– ) of Turkey. In high school Erdo?an became known as a fiery orator in the cause of political Islam.',
    'Marmara University',
    JSON_QUERY('["Economic reforms","Constitutional changes"]'),
    JSON_QUERY('["2016 coup attempt","2017 constitutional referendum"]'),
    'Grooming loyal allies',
    'Marmara University',
    'Turkey',
    'Islam',
    'Consultant',
    JSON_QUERY('["Football","Poetry"]'),
    '1954-02-26',
    '$50 million',
    '$65,000'
);

-- Insert Nicolás Maduro
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'i5e5g9h0-9i1d-7e6f-9h8e-6g0e9d8i5e5g',
    'Nicolás Maduro',
    'NicolasMaduro',
    'Venezuela',
    '2013-04-19',
    NULL,
    @InPowerStatusId,
    NULL,
    @AuthoritarianGovId,
    'United Socialist Party of Venezuela',
    85,
    JSON_QUERY('["Increase military control","Suppress political opposition"]'),
    'Nicolás Maduro is a Venezuelan leader who won the special election held in April 2013 to choose a replacement to serve out the remainder of the term of Venezuelan Pres. Hugo Chávez, who had died in March.',
    'None',
    JSON_QUERY('["Economic reforms","Socialist policies"]'),
    JSON_QUERY('["2018 re-election","2020 economic crisis"]'),
    'Grooming loyal allies',
    'None',
    'Venezuela',
    'Roman Catholic',
    'Bus driver',
    JSON_QUERY('["Music","Baseball"]'),
    '1962-11-23',
    '$2 million',
    '$48,000'
);

-- Insert Bashar al-Assad
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'j6f6h0i1-0j2e-8f7g-9i8e-7h1f0e9j6f6h',
    'Bashar al-Assad',
    'BasharAlAssad',
    'Syria',
    '2000-07-17',
    '2024-12-08',
    @DeposedStatusId,
    @RevolutionPowerLossId,
    @AuthoritarianGovId,
    'Ba?ath Party',
    90,
    JSON_QUERY('["Increase military control","Suppress political opposition"]'),
    'Bashar al-Assad is a Syrian dynast who succeeded his father Hafez al-Assad as president of Syria in 2000 and served until 2024, when he was toppled after 13 years of civil war.',
    'Damascus University (MD)',
    JSON_QUERY('["Economic reforms","Military actions"]'),
    JSON_QUERY('["2011 Syrian civil war","2024 overthrow"]'),
    'None',
    'Damascus University (MD)',
    'Syria',
    'Islam',
    'Ophthalmologist',
    JSON_QUERY('["Horse riding","Photography"]'),
    '1965-09-11',
    '$1.5 billion',
    '$200,000'
);

-- Insert Alexander Lukashenko
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'k7g7i1j2-1k3f-9g8h-9j8e-8i2g1f0k7g7i',
    'Alexander Lukashenko',
    'AlexanderLukashenko',
    'Belarus',
    '1994-07-20',
    NULL,
    @InPowerStatusId,
    NULL,
    @AuthoritarianGovId,
    'Communist Party of Belarus',
    85,
    JSON_QUERY('["Increase control over judiciary","Suppress independent media"]'),
    'Alexander Lukashenko is a Belarusian politician who espoused communist principles and who became president of the country in 1994. His decades-long autocratic rule, which was characterized by suppression of free speech and widespread election fraud, earned him the nickname ''Europe''s last dictator''.',
    'Mogilev State University',
    JSON_QUERY('["Economic reforms","Constitutional changes"]'),
    JSON_QUERY('["2020 protests","2021 constitutional referendum"]'),
    'Grooming loyal allies',
    'Mogilev State University',
    'Belarus',
    'Orthodox Christianity',
    'Director of a state farm',
    JSON_QUERY('["Hockey","Skiing"]'),
    '1954-08-30',
    '$9 billion',
    '$60,000'
);

-- Insert Abdel Fattah el-Sisi
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'l8h8j2k3-2l4g-0h9i-9k8e-9j3h2g1l8h8j',
    'Abdel Fattah el-Sisi',
    'AbdelFattahElSisi',
    'Egypt',
    '2014-06-08',
    NULL,
    @InPowerStatusId,
    NULL,
    @AuthoritarianGovId,
    'Independent',
    80,
    JSON_QUERY('["Increase military control","Suppress political opposition"]'),
    'Abdel Fattah el-Sisi is an Egyptian military officer who became Egypt''s de facto leader in July 2013, after the country''s military removed Pres. Mohammed Morsi from power following mass protests against his rule.',
    'Egyptian Military Academy',
    JSON_QUERY('["Economic reforms","Military actions"]'),
    JSON_QUERY('["2013 coup","2018 re-election"]'),
    'Grooming loyal allies',
    'Egyptian Military Academy',
    'Egypt',
    'Islam',
    'Military officer',
    JSON_QUERY('["Reading","Sports"]'),
    '1954-11-19',
    '$185 million',
    '$70,000'
);

-- Insert Mohammed bin Salman
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'm9i9k3l4-3m5h-1i0j-9l8e-0k4i3h2m9i9k',
    'Mohammed bin Salman',
    'MohammedBinSalman',
    'Saudi Arabia',
    '2017-06-21',
    NULL,
    @InPowerStatusId,
    NULL,
    @AbsoluteMonarchyGovId,
    'None',
    90,
    JSON_QUERY('["Increase control over judiciary","Suppress independent media"]'),
    'Mohammed bin Salman is the de facto ruler of Saudi Arabia, known for his aggressive foreign policy, ambitious economic vision, and controversial social reforms. He formally serves as crown prince and prime minister and is the son of King Salman.',
    'King Saud University',
    JSON_QUERY('["Vision 2030","Economic reforms"]'),
    JSON_QUERY('["2018 Khashoggi assassination","2022 Vision 2030 initiatives"]'),
    'Grooming loyal allies',
    'King Saud University',
    'Saudi Arabia',
    'Islam',
    'Advisor',
    JSON_QUERY('["Hunting","Traveling"]'),
    '1985-08-31',
    '$1.4 trillion',
    '$1 million'
);

-- Insert Daniel Ortega
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'n0j0l4m5-4n6i-2j1k-9m8e-1l5j4i3n0j0l',
    'Daniel Ortega',
    'DanielOrtega',
    'Nicaragua',
    '2007-01-10',
    NULL,
    @InPowerStatusId,
    NULL,
    @AuthoritarianGovId,
    'Sandinista National Liberation Front (FSLN)',
    85,
    JSON_QUERY('["Increase military control","Suppress political opposition"]'),
    'Daniel Ortega is a Nicaraguan guerrilla leader, member of the Sandinista junta that took power in 1979, and the elected president of Nicaragua (1984–90, 2007– ).',
    'None',
    JSON_QUERY('["Economic reforms","Socialist policies"]'),
    JSON_QUERY('["2018 protests","2021 re-election"]'),
    'Grooming loyal allies',
    'None',
    'Nicaragua',
    'Roman Catholic',
    'Guerrilla leader',
    JSON_QUERY('["Reading","Writing"]'),
    '1945-11-11',
    '$50 million',
    '$60,000'
);

-- Insert Donald J. Trump
INSERT INTO [dbo].[DictatorProfile] (
    [Id], [FullName], [SanitizedName], [Country], [DateLastTakenPower], [DateLostPower],
    [CurrentStatusId], [MethodOfPowerLossId], [TypeOfGovernmentId], [PoliticalParty],
    [PercentageOfProgressToFullAutocracy], [Next2StepsToTakeToFullAutocracy],
    [ShortBiography], [HighestAcademicQualification], [KeyPolicies], [NotableEvents],
    [SuccessionPlan], [Education], [CountryOfBirth], [Religion], [LastCivilianJobHeld],
    [KnownHobbies], [DateOfBirth], [EstimatedNetWorth], [OfficialAnnualSalary]
)
VALUES (
    'p2l2n6o7-6p8k-4l3m-9o8e-3n7l6k5p2l2n',
    'Donald J. Trump',
    'DonaldJTrump',
    'United States',
    '2025-01-20',
    NULL,
    @PresidentElectStatusId,
    NULL,
    @DemocracyGovId,
    'Republican Party',
    70,
    JSON_QUERY('["Increase control over judiciary","Suppress independent media"]'),
    'Donald J. Trump is a former businessman and television personality who served as the 45th president of the United States from 2017 to 2021. He is known for his controversial policies and rhetoric.',
    'Bachelor of Science in Economics, with a major in real estate',
    JSON_QUERY('["Tax Cuts and Jobs Act of 2017","Immigration policy","Trade war with China"]'),
    JSON_QUERY('["2016 presidential election","2020 presidential election","2024 presidential election"]'),
    'Grooming loyal allies',
    'Wharton School of the University of Pennsylvania',
    'United States',
    'Presbyterian',
    'Businessman',
    JSON_QUERY('["Golf","Television"]'),
    '1946-06-14',
    '$2.5 billion',
    '$400,000'
);
GO
