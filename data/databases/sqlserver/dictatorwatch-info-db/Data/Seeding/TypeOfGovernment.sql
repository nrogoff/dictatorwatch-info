-- Seeding data into the TypeOfGovernment table
INSERT INTO [dbo].[TypeOfGovernment] ([Name], [Description])
VALUES 
    ('Democracy', 'Government by the people through elected representatives'),
    ('Republic', 'State where power rests with elected representatives'),
    ('Constitutional Monarchy', 'Monarch with powers limited by constitution'),
    ('Parliamentary System', 'Executive derives legitimacy from legislature'),
    ('Presidential System', 'President as head of state and government'),
    ('Illiberal Democracy', 'Elections held but civil liberties restricted'),
    ('Electoral Autocracy', 'Elections held but without genuine competition'),
    ('Dominant-Party System', 'Multiple parties exist but one dominates'),
    ('Emergency Government', 'Temporary rule during crisis or martial law'),
    ('Provisional Government', 'Temporary government during transition'),
    ('Military Junta', 'Committee of military leaders ruling temporarily'),
    ('Military Dictatorship', 'Rule by military leaders or junta'),
    ('One-Party State', 'Single political party controls the government'),
    ('Absolute Monarchy', 'Monarch holds supreme autocratic authority'),
    ('Totalitarian', 'State holds total authority over society'),
    ('Authoritarian', 'Strong central power with limited political freedoms'),
    ('Theocracy', 'Government ruled by religious leaders or doctrine'),
    ('Personalist Dictatorship', 'Power concentrated in a single individual'),
    ('Communist State', 'Single-party state based on communist ideology'),
    ('Fascist State', 'Authoritarian ultranationalist government'),
    ('Hybrid Regime', 'Mix of democratic and autocratic elements'),
    ('Failed State', 'Government loses control over territory and legitimacy');
GO
