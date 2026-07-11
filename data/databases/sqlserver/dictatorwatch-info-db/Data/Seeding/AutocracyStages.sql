-- Seeding data into the AutocracyStages table
INSERT INTO [dbo].[AutocracyStage] ([Title], [Description], [AutocracyOrder])
VALUES 
    ('Expand your power base through nepotism and corruption', 'Surround yourself with loyal kin and trusted allies who will support your agenda. This ensures that those in power are personally invested in maintaining your rule.', 1),
    ('Monopolize the use of force', 'Gain control over the military and police to suppress public dissent and maintain order. Dictators cannot survive for long without disarming the people and buttering up the military.', 2),
    ('Control information', 'Take over media outlets and control the flow of information to shape public perception and eliminate opposition voices. This includes censoring the internet and social media.', 3),
    ('Suppress opposition', 'Use legal and extralegal means to weaken or eliminate political opponents and dissenters. This can involve imprisonment, exile, or even assassination.', 4),
    ('Manipulate elections', 'Rig elections or manipulate electoral processes to ensure your continued hold on power. This can include voter suppression, ballot stuffing, and controlling electoral commissions.', 5),
    ('Appeal to populism and nationalism', 'Use populist rhetoric and nationalist sentiments to rally support and legitimize your rule. This often involves scapegoating minorities or external enemies.', 6),
    ('Create a cult of personality', 'Cultivate an image of yourself as the indispensable leader and savior of the nation. This can involve propaganda, public displays of loyalty, and rewriting history to glorify your achievements.', 7),
    ('Implement emergency measures', 'Use crises or emergencies to justify the expansion of your powers and the suspension of civil liberties. This can include declaring states of emergency or martial law.', 8),
    ('Control the economy', 'Nationalize key industries and control economic resources to reward loyalists and punish opponents. This ensures that economic power is concentrated in the hands of the regime.', 9),
    ('Repress civil society', 'Crack down on non-governmental organizations, independent media, and other elements of civil society that could challenge your authority. This includes restricting freedom of assembly and association.', 10),
    ('Rewrite the constitution', 'Amend or rewrite the constitution to remove term limits and consolidate your power. This can involve manipulating legislative bodies or holding sham referendums.', 11),
    ('Use propaganda', 'Employ propaganda to glorify your achievements and demonize your enemies. This includes controlling education and cultural institutions to promote your ideology.', 12),
    ('Establish surveillance', 'Implement widespread surveillance to monitor and control the population. This can involve secret police, informants, and advanced technology.', 13),
    ('Co-opt the judiciary', 'Ensure that the judiciary is loyal to you and will uphold your decisions. This can involve appointing loyal judges and undermining judicial independence.', 14),
    ('Control education', 'Influence the education system to indoctrinate the youth with your ideology. This ensures that future generations are loyal to the regime.', 15),
    ('Foster external alliances', 'Build alliances with other authoritarian regimes to gain international support and legitimacy. This can involve military, economic, and diplomatic cooperation.', 16),
    ('Maintain a facade of democracy', 'Keep the appearance of democratic institutions while ensuring they are under your control. This can involve holding sham elections and maintaining a puppet parliament.', 17),
    ('Exploit divisions', 'Use ethnic, religious, or social divisions to divide and rule the population. This can involve promoting sectarianism or regionalism.', 18),
    ('Use violence selectively', 'Employ violence strategically to instill fear without provoking widespread rebellion. This can involve targeted assassinations, disappearances, and torture.', 19),
    ('Ensure succession', 'Plan for a loyal successor to maintain your legacy and prevent power struggles after your departure. This can involve grooming a family member or trusted ally.', 20);
GO
