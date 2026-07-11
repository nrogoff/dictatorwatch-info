-- Seeding data into the DictatorStatus table
INSERT INTO [dbo].[DictatorStatus] ([Name], [Description])
VALUES 
    ('In Power', 'Currently holding power in their country'),
    ('President Elect', 'Elected but not yet officially in power'),
    ('Exiled', 'Removed from power and living in exile'),
    ('Deposed', 'Removed from power but not necessarily in exile'),
    ('Deceased', 'No longer alive'),
    ('Imprisoned', 'Currently serving a prison sentence'),
    ('Retired', 'Voluntarily stepped down from power');
GO
