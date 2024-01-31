-- Insertion des données dans la base de données

-- Utilisation de la base de données
USE SketchOnlineDatabase;

-- Insertion des données dans la table Club

-- Club dans la région 1 - Département 1
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (701, 'Les Créatifs Pinceaux', '123 Rue Principale', '0123456789', 20, 'Angers', 'Maine-et-Loire', 'Pays de la Loire');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (702, 'L Atelier des Arts Visuels', '456 Avenue Centrale', '0987654321', 20, 'Saumur', 'Maine-et-Loire', 'Pays de la Loire');

-- Club dans la région 1 - Département 2
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (703, 'Traits d Expression', '789 Rue Principale', '0123456789', 20, 'Nantes', 'Loire Atlantique', 'Pays de la Loire');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (704, 'Art Éphémère', '012 Avenue Centrale', '0987654321', 20, 'Saint-Nazaire', 'Loire Atlantique', 'Pays de la Loire');

-- Club dans la région 2 - Département 3
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (705, 'Les Formes de l Âme', '345 Rue Principale', '0123456789', 20, 'Tours', 'Indre-et-Loire', 'Centre Val-de-Loire');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (706, 'Graphismes Infinis', '678 Avenue Centrale', '0987654321', 20, 'Amboise', 'Indre-et-Loire', 'Centre Val-de-Loire');

-- Club dans la région 2 - Département 4
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (707, 'Les Artisans du Crayon', '901 Rue Principale', '0123456789', 20, 'Blois', 'Loir-et-Cher', 'Centre Val-de-Loire');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (708, 'Esprit Créatif', '234 Avenue Centrale', '0987654321', 20, 'Vineuil', 'Loir-et-Cher', 'Centre Val-de-Loire');

-- Club dans la région 3 - Département 5
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (709, 'Le Cercle Créatif', '567 Rue Principale', '0123456789', 20, 'Nice', 'Alpes Maritimes', 'Provence Alpes Côtes d\'Azur');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (710, 'Couleurs et Contours', '890 Avenue Centrale', '0987654321', 20, 'Cannes', 'Alpes Maritimes', 'Provence Alpes Côtes d\'Azur');

-- Club dans la région 3 - Département 6
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (711, 'Coups de Crayon', '123 Rue Principale', '0123456789', 20, 'Toulon', 'Var', 'Provence Alpes Côtes d\'Azur');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (712, 'Au Fil du Crayon', '456 Avenue Centrale', '0987654321', 20, 'Saint-Tropez', 'Var', 'Provence Alpes Côtes d\'Azur');

-- Club dans la région 4 - Département 7
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (713, 'L Art en Mouvement', '789 Rue Principale', '0123456789', 20, 'Bayonne', 'Pyrénées-Atlantique', 'Nouvelle-Aquitaine');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (714, 'Les Artistes en Herbe', '012 Avenue Centrale', '0987654321', 20, 'Espelette', 'Pyrénées-Atlantique', 'Nouvelle-Aquitaine');

-- Club dans la région 4 - Département 8
INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (715, 'L Énergie du Pinceau', '345 Rue Principale', '0123456789', 20, 'La Rochelle', 'Charente-Maritime', 'Nouvelle-Aquitaine');

INSERT INTO Club (numClub, nomClub, adresse, numTelephone, nombreAdherants, ville, departement, region)
VALUES (716, 'L Art du Détail', '678 Avenue Centrale', '0987654321', 20, 'Fouras', 'Charente-Maritime', 'Nouvelle-Aquitaine');


-- Insertion des données dans la table Utilisateurs


-- Utilisateur dans le club 701

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Galena", "K elly","faucibus.morbi@protonmail.com","704-6702 Nulla Ave",701,"GalenaK","Clb1",""),
  ("Hayfa", " Frye","eget.metus.eu@protonmail.com","265-2225 Ipsum Rd.",701,"HayfaF","Clb1",""),
  ("Hyacinth", " Hewitt","suspendisse.sed.dolor@protonmail.com","793-3039 Scelerisque, Rd.",701,"HyacinthH","Clb1",""),
  ("Melodie", " Owen","sit.amet.consectetuer@protonmail.com","8674 Aenean St.",701,"MelodieO","Clb1",""),
  ("Rhonda", " Bowman","lorem@gmail.com","386-246 Nunc Avenue",701,"RhondaB","Clb1",""),
  ("Patrick", " Manning","est@gmail.com","Ap #898-1411 Diam. Av.",701,"PatrickM","Clb1",""),
  ("Joy", " Rice","dapibus@protonmail.com","795-4163 Adipiscing Street",701,"JoyR","Clb1",""),
  ("Glenna", " Harrison","enim.non.nisi@gmail.com","5240 Eu Avenue",701,"GlennaH","Clb1",""),
  ("Maggie", " Burke","semper.tellus@gmail.com","Ap #231-9026 Sit St.",701,"MaggieB","Clb1",""),
  ("Kimberley", " Downs","quis.diam@gmail.com","138-9041 Sociis Av.",701,"KimberleyD","Clb1","");

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Tanya", " York","lectus@protonmail.com","626-3155 Aliquam St.",701,"TanyaY","Clb1",""),
  ("Travis", " Workman","leo.morbi@protonmail.com","Ap #541-4589 Imperdiet Avenue",701,"TravisW","Clb1",""),
  ("Deirdre", " Wells","eros.nec@gmail.com","822-9013 Risus Road",701,"DeirdreW","Clb1",""),
  ("Wyatt", " Grimes","sed.consequat@yahoo.com","Ap #483-2329 Gravida Av.",701,"WyattG","Clb1",""),
  ("Steel", " England","nam.consequat@yahoo.com","3296 Malesuada Street",701,"SteelE","Clb1",""),
  ("Declan", " Stark","ipsum.donec@gmail.com","Ap #855-1605 Bibendum St.",701,"DeclanS","Clb1",""),
  ("Ulric", " Poole","duis.sit.amet@gmail.com","P.O. Box 814, 8634 Pede, Ave",701,"UlricP","Clb1",""),
  ("Hayes", " Blackburn","orci.adipiscing.non@yahoo.com","993-5248 Non Road",701,"HayesB","Clb1",""),
  ("Graiden", " Moran","fusce.mi@gmail.com","Ap #982-4319 A, Av.",701,"GraidenM","Clb1",""),
  ("Megan", " Larson","integer.urna.vivamus@protonmail.com","676-3474 Blandit Avenue",701,"MeganL","Clb1","");


-- Utilisateur dans le club 702

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Tamara", " Hogan","lacus.quisque@gmail.com","6525 Ipsum. Road",702,"TamaraH","Clb2",""),
  ("Wanda", " Stafford","mauris.aliquam@protonmail.com","P.O. Box 916, 5504 Nunc Avenue",702,"WandaS","Clb2",""),
  ("Kimberley", " Riddle","sed.dictum@gmail.com","P.O. Box 647, 2885 Nec Rd.",702,"KimberleyR","Clb2",""),
  ("Gil", " Mckinney","aenean.eget@gmail.com","P.O. Box 646, 7839 Nulla. Rd.",702,"GilM","Clb2",""),
  ("Lynn", " Ferrell","mauris@yahoo.com","970-5995 Ut Road",702,"LynnF","Clb2",""),
  ("Raja", " Rutledge","orci@protonmail.com","Ap #128-5977 Lobortis Road",702,"RajaR","Clb2",""),
  ("Cara", " Mckay","primis.in@gmail.com","6513 Facilisi. Road",702,"CaraM","Clb2",""),
  ("Brent", " Best","vel.nisl@yahoo.com","P.O. Box 142, 8714 Proin Av.",702,"BrentB","Clb2",""),
  ("Shafira", " Johnson","imperdiet.dictum@protonmail.com","Ap #714-8913 Non, Rd.",702,"ShafiraJ","Clb2",""),
  ("Remedios", " Ingram","molestie.orci.tincidunt@yahoo.com","P.O. Box 357, 616 Ante Ave",702,"RemediosI","Clb2","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Cheryl", " Skinner","metus.sit.amet@gmail.com","830-9415 Nullam St.",702,"CheryS","Clb2",""),
  ("Madonna", " Mathews","interdum.feugiat@yahoo.com","367-5372 Commodo Avenue",702,"MadonnaM","Clb2",""),
  ("Leonard", " Fleming","risus.in@gmail.com","P.O. Box 449, 2720 Nec Road",702,"LeonardF","Clb2",""),
  ("Paul", " Solomon","quisque@yahoo.com","Ap #180-2170 In, St.",702,"PaulS","Clb2",""),
  ("Leilani", " Rodriquez","arcu@protonmail.com","Ap #156-7839 Semper Rd.",702,"LeilaniR","Clb2",""),
  ("Walter", " Alvarado","pharetra@gmail.com","Ap #748-3805 Risus. Road",702,"WalterA","Clb2",""),
  ("Kyle", " Villarreal","proin@protonmail.com","973-7981 A Road",702,"KyleV","Clb2",""),
  ("Wanda", " Barlow","neque.pellentesque@gmail.com","9186 Augue. Street",702,"WandaB","Clb2",""),
  ("Audra", " West","adipiscing@protonmail.com","601-2438 Ultricies Av.",702,"AudraW","Clb2",""),
  ("Colette", " Lee","curabitur.sed@gmail.com","133-9332 Consectetuer Road",702,"ColetteL","Clb2","");

-- Utilisateur dans le club 703

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Anastasia", " Cooper","quis.diam@protonmail.com","777-1410 Elit, Rd.",703,"AnastasiaC","Clb3",""),
  ("Serena", " Wilkins","non@yahoo.com","Ap #468-3575 Ut Rd.",703,"SerenaW","Clb3",""),
  ("Dale", " Yang","orci@protonmail.com","Ap #858-2219 Luctus, Av.",703,"DaleY","Clb3",""),
  ("Amena", " Haynes","neque@protonmail.com","Ap #532-3152 Vitae Street",703,"AmenaH","Clb3",""),
  ("Davis", " Maynard","lorem.tristique.aliquet@gmail.com","Ap #449-4863 Arcu. Rd.",703,"DavisM","Clb3",""),
  ("Tanner", " Oliver","aliquet.phasellus@yahoo.com","959-5144 Natoque Rd.",703,"TannerO","Clb3",""),
  ("Patrick", " Allen","eu.erat.semper@yahoo.com","957-8483 Amet Road",703,"PatrickA","Clb3",""),
  ("Rae", " Harrington","leo@gmail.com","288 At, St.",703,"RaeH","Clb3",""),
  ("Vanna", " Riddle","sociis.natoque.penatibus@protonmail.com","Ap #763-5762 Vivamus Rd.",703,"VannaR","Clb3",""),
  ("Angela", " Nguyen","donec.egestas@yahoo.com","Ap #747-4631 Nec Av.",703,"AngelaN","Clb3","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("William", " Mcdaniel","et.rutrum@gmail.com","Ap #390-6973 Sociis Road",703,"WilliamM","Clb3",""),
  ("Vernon", " Humphrey","nascetur.ridiculus.mus@gmail.com","1554 Ipsum Rd.",703,"VernonH","Clb3",""),
  ("Amity", " Robertson","sed.eget@yahoo.com","Ap #302-644 Eleifend Av.",703,"AmityR","Clb3",""),
  ("Kennedy", " Vasquez","non.quam@protonmail.com","Ap #364-7328 Mattis St.",703,"KennedyV","Clb3",""),
  ("Dominic", " Knight","at@yahoo.com","328-6685 Malesuada Avenue",703,"DominicK","Clb3",""),
  ("Hamish", " Valenzuela","nullam.velit.dui@protonmail.com","Ap #614-3872 Donec Avenue",703,"HamishV","Clb3",""),
  ("Gannon", " Carter","ornare@yahoo.com","Ap #449-9619 Leo. Avenue",703,"GannonC","Clb3",""),
  ("Madonna", " Tyson","augue.malesuada@protonmail.com","194-520 Et St.",703,"MadonnaT","Clb3",""),
  ("Minerva", " Hawkins","vestibulum.ante@protonmail.com","971-2419 Risus St.",703,"MinervaH","Clb3",""),
  ("Julian", " Beach","risus.donec@gmail.com","855-9172 Nonummy. St.",703,"JulianB","Clb3","");

-- Utilisateur dans le club 704


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Griffin", " Becker","cubilia@gmail.com","777-1718 Nulla. Ave",704,"GriffinB","Clb4",""),
  ("Morgan", " Barry","scelerisque.sed@protonmail.com","Ap #415-7652 Phasellus Av.",704,"MorganB","Clb4",""),
  ("Jordan", " Rodgers","mollis@protonmail.com","P.O. Box 809, 1461 Eu, Rd.",704,"JordanR","Clb4",""),
  ("Cameron", " Haley","quisque.imperdiet@gmail.com","Ap #995-9966 Auctor, Street",704,"CameronH","Clb4",""),
  ("Dawn", " Berger","malesuada.ut.sem@gmail.com","7666 Donec Ave",704,"DawnB","Clb4",""),
  ("Miriam", " Barry","aenean.egestas@protonmail.com","Ap #753-4793 Varius Rd.",704,"MiriamB","Clb4",""),
  ("Arden", " Alvarez","dapibus@gmail.com","Ap #540-6186 Eu St.",704,"ArdenA","Clb4",""),
  ("Julian", " Cooper","dictum.augue@yahoo.com","705-8042 Placerat, Av.",704,"JUlianC","Clb4",""),
  ("Arden", " Warner","etiam.bibendum@gmail.com","5203 Tempor Av.",704,"ArdenW","Clb4",""),
  ("Forrest", " Fry","nec@gmail.com","Ap #289-8386 Dui St.",704,"ForrestF","Clb4","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Christian", " Dyer","faucibus.lectus@yahoo.com","Ap #439-4928 Aliquam Road",704,"ChristianD","Clb4",""),
  ("Jacqueline", " Fulton","orci@protonmail.com","329-2091 Nunc Av.",704,"JacquelineF","Clb4",""),
  ("Marvin", " Calhoun","aliquam.gravida.mauris@gmail.com","Ap #297-2204 Aliquam Road",704,"MarvinC","Clb4",""),
  ("Chandler", " Woodard","duis.elementum.dui@yahoo.com","Ap #379-7747 In St.",704,"ChandlerW","Clb4",""),
  ("Nehru", " Melendez","quam.a.felis@protonmail.com","9339 Aliquam Street",704,"NehruM","Clb4",""),
  ("Zephr", " Boone","magnis.dis@yahoo.com","265-7088 Sollicitudin St.",704,"Zephr","Clb4",""),
  ("Basil", " Osborne","aliquam.eu.accumsan@gmail.com","P.O. Box 430, 3027 Sed St.",704,"BasilO","Clb4",""),
  ("Keefe", " Walsh","sollicitudin.a@protonmail.com","Ap #604-6407 In, St.",704,"KeefeW","Clb4",""),
  ("Gretchen", " Acevedo","velit@yahoo.com","Ap #351-9632 Nisl Avenue",704,"GretchenA","Clb4",""),
  ("Dexter", " Marquez","leo@yahoo.com","Ap #489-2457 Aliquet Ave",704,"DexterM","Clb4","");

-- Utilisateur dans le club 705

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Elton", " Gibson","donec@gmail.com","Ap #416-1537 Id Ave",705,"EltonG","Clb5",""),
  ("Odysseus", " Burns","bibendum.donec@gmail.com","937-3144 Aliquam St.",705,"OdysseusB","Clb5",""),
  ("Bradley", " Solis","ornare.fusce@protonmail.com","Ap #738-1023 Fusce Av.",705,"BradleyS","Clb5",""),
  ("Forrest", " Herring","amet.ultricies.sem@gmail.com","321-6201 Consectetuer Avenue",705,"ForrestH","Clb5",""),
  ("Blossom", " Landry","non.sapien.molestie@gmail.com","347-6722 Torquent St.",705,"BlossomL","Clb5",""),
  ("Cedric", " Wheeler","gravida.molestie@yahoo.com","942-9824 Eu, Street",705,"CedricW","Clb5",""),
  ("Roanna", " Kelley","donec@yahoo.com","Ap #249-9665 Purus, St.",705,"RoannaK","Clb5",""),
  ("Ryan", " Kennedy","nec@gmail.com","Ap #843-3097 Suspendisse Ave",705,"RyanK","Clb5",""),
  ("Aiko", " Wilkins","orci.consectetuer@gmail.com","733-7798 Adipiscing Av.",705,"AikoW","Clb5",""),
  ("Jenna", " Irwin","dui.quis.accumsan@yahoo.com","292-3412 Ut Rd.",705,"JennaI","Clb5","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Dahlia", " Rosa","lorem.ac.risus@protonmail.com","P.O. Box 353, 6019 Aliquet. St.",705,"DahliaR","Clb5",""),
  ("Germaine", " Blevins","feugiat@gmail.com","1390 Tristique St.",705,"GermaineB","Clb5",""),
  ("Elijah", " Bush","dolor.quisque.tincidunt@gmail.com","388-1580 Ac Street",705,"ElijahB","Clb5",""),
  ("Brynne", " Daniels","et@yahoo.com","Ap #915-7380 A, Av.",705,"BrynneD","Clb5",""),
  ("Iona", " Duran","tempus.eu.ligula@protonmail.com","689-4680 Luctus Street",705,"IonaD","Clb5",""),
  ("Addison", " Wilkins","dolor.donec@yahoo.com","Ap #923-4043 Aliquam Rd.",705,"AddisonW","Clb5",""),
  ("Dora", " Leblanc","facilisis.vitae@gmail.com","P.O. Box 539, 1572 Ut St.",705,"DoraL","Clb5",""),
  ("Charlotte", " Curry","vel.arcu@protonmail.com","Ap #686-4608 Risus Ave",705,"CharlotteC","Clb5",""),
  ("Thomas", " Sargent","lectus.pede@yahoo.com","Ap #167-3852 Aliquam Av.",705,"ThomasS","Clb5",""),
  ("Tanner", " Perry","augue.eu@gmail.com","939-577 Orci Road",705,"TannerP","Clb5","");

-- Utilisateur dans le club 706

INSERT INTO Utilisateurs (prénom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Karly", " Conley","donec.egestas@yahoo.com","Ap #668-4978 Vestibulum Road",706,"KarlyC","Clb6",""),
  ("Damian", " Hogan","commodo.tincidunt@protonmail.com","Ap #334-5375 Neque Ave",706,"DamianH","Clb6",""),
  ("Ramona", " Green","dolor.quam.elementum@yahoo.com","P.O. Box 216, 5338 Fermentum Avenue",706,"RamonaG","Clb6",""),
  ("Paul", " Gomez","fermentum.risus.at@gmail.com","443-4919 Urna Av.",706,"PaulG","Clb6",""),
  ("Honorato", " Morris","interdum.libero@yahoo.com","P.O. Box 127, 674 Sapien Ave",706,"HonoratoM","Clb6",""),
  ("Emerson", " Boone","imperdiet.ornare.in@gmail.com","Ap #753-5081 Lectus. Rd.",706,"EmersonB","Clb6",""),
  ("Reed", " Campbell","molestie.arcu@protonmail.com","Ap #515-1506 Id Rd.",706,"ReedC","Clb6",""),
  ("Cairo", " Meyers","pede@gmail.com","P.O. Box 806, 4264 Ac St.",706,"CairoM","Clb6",""),
  ("John", " Dejesus","lobortis.ultrices@protonmail.com","Ap #505-8920 Venenatis St.",706,"JohnD","Clb6",""),
  ("Portia", " Carney","natoque.penatibus.et@gmail.com","6083 Arcu. Street",706,"PortiaC","Clb6","");


INSERT INTO Utilisateurs (prénom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Linus", " Stuart","non@yahoo.com","P.O. Box 825, 2430 Ac Rd.",706,"LinusS","Clb6",""),
  ("Ronan", " West","a.feugiat.tellus@gmail.com","4084 Ac St.",706,"RonanW","Clb6",""),
  ("Cameron", " Herring","dictum.eu.eleifend@yahoo.com","796-3196 Vitae, Street",706,"CameronH","Clb6",""),
  ("Nero", " Larsen","mi@yahoo.com","415-8569 Auctor, St.",706,"NeroL","Clb6",""),
  ("Serena", " Gamble","tellus.suspendisse@yahoo.com","2634 Suspendisse Av.",706,"SerenaG","Clb6",""),
  ("Mannix", " Sosa","pede.praesent@yahoo.com","674-7035 Euismod St.",706,"MannixS","Clb6",""),
  ("Aristotle", " Mack","nunc.ac.sem@yahoo.com","Ap #780-125 Vestibulum Street",706,"AristotleM","Clb6",""),
  ("Lev", " Espinoza","curabitur.vel@yahoo.com","4914 Eget Road",706,"LevE","Clb6",""),
  ("Galvin", " Roth","erat@yahoo.com","196-2358 Elit Av.",706,"GalvinR","Clb6",""),
  ("Risa", " Clemons","in.sodales.elit@gmail.com","P.O. Box 113, 3978 Conubia Av.",706,"RisaC","Clb6","");

-- Utilisateur dans le club 707

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Vladimir", " Espinoza","libero.proin@gmail.com","Ap #357-3708 A, Av.",707,"VladimirE","Clb7",""),
  ("Hamish", " Frederick","adipiscing.non.luctus@protonmail.com","Ap #695-4806 Sit St.",707,"HamishF","Clb7",""),
  ("Quinlan", " Franklin","eu.erat@protonmail.com","Ap #538-9761 Faucibus Ave",707,"QuinlanF","Clb7",""),
  ("Alexander", " Mclaughlin","purus@yahoo.com","Ap #555-8050 Ullamcorper Street",707,"AlexanderM","Clb7",""),
  ("Amery", " James","non.bibendum.sed@protonmail.com","Ap #432-8162 Morbi Avenue",707,"AmeryJ","Clb7",""),
  ("Xanthus", " Jacobs","sem.semper@yahoo.com","Ap #167-3629 Ipsum. Avenue",707,"XanthusJ","Clb7",""),
  ("Beck", " Webster","aliquam@yahoo.com","4543 Vitae St.",707,"BeckW","Clb7",""),
  ("Dacey", " Sosa","nam.interdum@gmail.com","Ap #417-235 Dolor St.",707,"DaceyS","Clb7",""),
  ("Uriah", " Adams","lorem@yahoo.com","Ap #511-8852 Mattis Rd.",707,"UriahA","Clb7",""),
  ("Blythe", " Huff","eu.lacus@protonmail.com","7262 Massa Rd.",707,"BlytheH","Clb7","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Marvin", " Workman","fusce@protonmail.com","Ap #859-9168 Gravida Rd.",707,"MarvinW","Clb7",""),
  ("Chelsea", " Moss","eu.nulla@yahoo.com","3962 Lacinia Ave",707,"ChelseaM","Clb7",""),
  ("Brock", " Macdonald","gravida.praesent@protonmail.com","189-3030 Est. St.",707,"BrockM","Clb7",""),
  ("Matthew", " William","ut.erat@gmail.com","690-1787 Ac Rd.",707,"MatthewW","Clb7",""),
  ("Shelly", " Black","aliquam.nec@protonmail.com","6543 Nunc. Road",707,"ShellyB","Clb7",""),
  ("Pearl", " Contreras","malesuada.vel@gmail.com","Ap #532-8560 Mauris. Street",707,"PearlC","Clb7",""),
  ("Nora", " Douglas","accumsan.sed@yahoo.com","825-6660 Magna Rd.",707,"NoraD","Clb7",""),
  ("Cathleen", " York","pede.praesent@yahoo.com","627-6409 Ridiculus St.",707,"CathleenY","Clb7",""),
  ("Carlos", " Buck","lacus@yahoo.com","Ap #459-9824 Ut Street",707,"CarlosB","Clb7",""),
  ("Dora", " Callahan","varius.orci.in@yahoo.com","P.O. Box 326, 2446 Mi Avenue",707,"DoraC","Clb7","");

-- Utilisateur dans le club 708

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Jack", " Hodge","eu@protonmail.com","901-5303 Aliquet St.",708,"JackH","Clb8",""),
  ("Elizabeth", " Bean","egestas.fusce.aliquet@gmail.com","P.O. Box 516, 7268 Ut, Av.",708,"ElizabethB","Clb8",""),
  ("Hall", " Howard","cum.sociis@yahoo.com","863-6350 Maecenas Road",708,"HallH","Clb8",""),
  ("Giselle", " Cooper","tellus@gmail.com","458-5403 Quis St.",708,"GiselleC","Clb8",""),
  ("Shad", " Mason","interdum.sed@gmail.com","219-5605 Nullam Street",708,"ShadC","Clb8",""),
  ("Addison", " Todd","non@gmail.com","Ap #649-4956 Fusce Avenue",708,"AddisonT","Clb8",""),
  ("Kelsie", " Mccarthy","nec.ante@yahoo.com","Ap #184-5118 Sem Street",708,"KelsieM","Clb8",""),
  ("Quyn", " Harris","feugiat.metus@protonmail.com","986-5326 Donec Street",708,"QuynH","Clb8",""),
  ("Lavinia", " Fox","placerat.augue.sed@gmail.com","142-5344 Nunc, Rd.",708,"LaviniaF","Clb8",""),
  ("Randall", " Ball","dictum.eu@yahoo.com","P.O. Box 622, 4684 Dui Street",708,"RandallB","Clb8","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Julie", " Stein","massa.suspendisse@protonmail.com","Ap #268-7324 Ornare, Rd.",708,"JulieS","Clb8",""),
  ("Garth", " Pickett","elit.pharetra@gmail.com","9312 Mi Rd.",708,"GarthP","Clb8",""),
  ("Tallulah", " Collier","mauris.erat@gmail.com","701-4458 Montes, Road",708,"Tallulah","Clb8",""),
  ("Lionel", " Maldonado","ullamcorper@yahoo.com","P.O. Box 395, 7902 Sed, Ave",708,"LionelM","Clb8",""),
  ("Brandon", " Ford","sem@yahoo.com","P.O. Box 592, 7572 Suspendisse Av.",708,"BrandonF","Clb8",""),
  ("Lenore", " Casey","pellentesque.tincidunt@protonmail.com","1719 Nulla. Av.",708,"LenoreC","Clb8",""),
  ("Abra", " Gilbert","mi.felis@yahoo.com","761-3558 Lacus. Av.",708,"AbraG","Clb8",""),
  ("Athena", " Snow","purus.sapien@protonmail.com","1243 Aliquam Rd.",708,"AthenaS","Clb8",""),
  ("Clayton", " Durham","magna@gmail.com","P.O. Box 768, 7166 Nec Rd.",708,"ClaytonD","Clb8",""),
  ("Griffin", " Ayers","sed.molestie@yahoo.com","533-2126 Pellentesque St.",708,"GriffinA","Clb8","");

-- Utilisateur dans le club 709


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Rama", " Lang","accumsan.laoreet.ipsum@yahoo.com","P.O. Box 139, 1061 Suspendisse St.",709,"RamaL","Clb9",""),
  ("Ayanna", " Henderson","morbi.accumsan@yahoo.com","Ap #362-8131 Ac St.",709,"AyannaH","Clb9",""),
  ("Ainsley", " Chen","aenean.eget@yahoo.com","Ap #215-5035 Purus Avenue",709,"AinsleyC","Clb9",""),
  ("Carla", " Arnold","dolor.quam.elementum@yahoo.com","P.O. Box 727, 4594 Nunc, Street",709,"CarlaA","Clb9",""),
  ("Myles", " Ramirez","dui@yahoo.com","2353 Elit, Street",709,"MylesR","Clb9",""),
  ("Barry", " Ballard","elit.pellentesque@gmail.com","568-706 Lorem, St.",709,"BarryB","Clb9",""),
  ("Sebastian", " Mcintosh","tristique.pharetra@yahoo.com","844-3643 Cum Rd.",709,"SebastianM","Clb9",""),
  ("Aquila", " Mejia","neque.sed@protonmail.com","1982 Nunc Ave",709,"AquilaM","Clb9",""),
  ("Scarlet", " Haynes","nunc.risus@yahoo.com","292 Lacinia St.",709,"ScarletH","Clb9",""),
  ("Vera", " Puckett","lorem.eu.metus@protonmail.com","Ap #733-9786 Nullam St.",709,"VeraP","Clb9","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Oprah", " Owens","consectetuer.adipiscing@protonmail.com","Ap #511-9198 Orci Road",709,"OprahO","Clb9",""),
  ("Graham", " Cash","eget@protonmail.com","268-9433 Sit Av.",709,"GrahamC","Clb9",""),
  ("Devin", " Wallace","a.scelerisque@protonmail.com","Ap #284-4569 Euismod Avenue",709,"DevinW","Clb9",""),
  ("Jerome", " Sandoval","nibh@gmail.com","Ap #988-4247 Eu Road",709,"JeromeS","Clb9",""),
  ("Jane", " Manning","elementum.sem@protonmail.com","Ap #600-4995 In Rd.",709,"JaneM","Clb9",""),
  ("Christian", " Nale","elementum.at@gmail.com","3595 Arcu Av.",709,"ChristianN","Clb9",""),
  ("Mark", " Dixon","lectus.justo.eu@gmail.com","Ap #944-7825 Fringilla St.",709,"MarkD","Clb9",""),
  ("Donovan", " Patterson","nisi.aenean.eget@protonmail.com","Ap #670-8534 Interdum Ave",709,"DonovanP","Clb9",""),
  ("Inga", " Riggs","arcu.curabitur@gmail.com","P.O. Box 596, 6112 Parturient Rd.",709,"IngaR","Clb9",""),
  ("Liberty", " Mays","massa.vestibulum@gmail.com","7659 Ac Avenue",709,"LibertyM","Clb9","");

-- Utilisateur dans le club 710

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Gray", " Gill","vitae.aliquet@yahoo.com","910-362 Morbi Rd.",710,"GrayG","Clb10",""),
  ("Simone", " Duncan","id@gmail.com","615-159 Est, Road",710,"SimoneD","Clb10",""),
  ("Tamekah", " Raymond","ut@yahoo.com","Ap #598-7789 Aliquam Av.",710,"TamekahR","Clb10",""),
  ("Gail", " Fischer","orci.quis@yahoo.com","162-7251 Vivamus Rd.",710,"GailF","Clb10",""),
  ("Desiree", " Ferrell","leo.cras.vehicula@protonmail.com","Ap #583-6344 Orci. Street",710,"DesireeF","Clb10",""),
  ("Quyn", " Conway","sed.pharetra@gmail.com","P.O. Box 526, 8926 Donec Road",710,"QuynC","Clb10",""),
  ("Brody", " Owen","ultricies.sem@yahoo.com","488-8734 Risus. Rd.",710,"BrodyO","Clb10",""),
  ("Brendan", " Mack","nec.euismod@yahoo.com","3076 Suspendisse Street",710,"BrendanM","Clb10",""),
  ("Leo", " Franco","litora.torquent.per@protonmail.com","Ap #565-8346 Facilisis St.",710,"LeoF","Clb10",""),
  ("Arsenio", " Kent","aliquam.gravida@protonmail.com","P.O. Box 268, 7208 Erat St.",710,"ArsenioK","Clb10","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Ira", " Griffin","orci.ut.semper@yahoo.com","Ap #916-1265 Massa. Road",710,"IraG","Clb10",""),
  ("Acton", " French","phasellus.libero@yahoo.com","741-9648 Imperdiet Street",710,"ActonF","Clb10",""),
  ("Xandra", " Fitzgerald","morbi.tristique.senectus@yahoo.com","Ap #987-3034 Eu St.",710,"XandraF","Clb10",""),
  ("Ross", " Burns","tempus.scelerisque@yahoo.com","Ap #370-8545 Tristique Road",710,"RossB","Clb10",""),
  ("Raja", " Mathews","a@gmail.com","P.O. Box 196, 2794 Ut Avenue",710,"RajaM","Clb10",""),
  ("Rhoda", " Lang","dapibus.quam@yahoo.com","179-7192 Egestas. St.",710,"RhodaL","Clb10",""),
  ("Zahir", " Ramirez","in.tincidunt.congue@protonmail.com","566-2831 Facilisis, Av.",710,"ZahirR","Clb10",""),
  ("Ella", " Stanley","aliquet.libero@protonmail.com","7170 Lorem Street",710,"EllaS","Clb10",""),
  ("Blythe", " Barton","orci.quis.lectus@yahoo.com","Ap #265-3322 Mauris. St.",710,"BlytheB","Clb10",""),
  ("Brody", " Mayer","dis.parturient.montes@gmail.com","185-7951 Amet Avenue",710,"BrodyM","Clb10","");

-- Utilisateur dans le club 711

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Denton", " Pacheco","in.aliquet@gmail.com","Ap #197-6017 Diam St.",711,"DentonP","Clb11",""),
  ("Evan", " Brown","adipiscing.elit@yahoo.com","318-6817 Risus. Av.",711,"EvanB","Clb11",""),
  ("Cara", " French","commodo.auctor@protonmail.com","2674 Magna Rd.",711,"CaraF","Clb11",""),
  ("Karina", " Dominguez","in.felis.nulla@gmail.com","P.O. Box 736, 5943 Mauris. Rd.",711,"KarinaD","Clb11",""),
  ("Susan", " Daniels","donec.tincidunt@protonmail.com","Ap #229-577 Faucibus Street",711,"SusanD","Clb11",""),
  ("Martena", " Butler","purus.in@yahoo.com","685-5639 Phasellus St.",711,"MartenaB","Clb11",""),
  ("Rhonda", " Mckinney","ultricies@yahoo.com","Ap #789-7765 Placerat St.",711,"RhondaM","Clb11",""),
  ("Cyrus", " Diaz","ipsum@protonmail.com","P.O. Box 573, 7765 Sodales. Street",711,"CyrusD","Clb11",""),
  ("Arsenio", " Gordon","penatibus.et.magnis@gmail.com","4355 Posuere Street",711,"ArsenioG","Clb11",""),
  ("Timon", " Jimenez","leo.vivamus@protonmail.com","399-2888 Mi Rd.",711,"TimonJ","Clb11","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Darius", " Norman","sed.et@yahoo.com","Ap #788-2349 Parturient St.",711,"DariusN","Clb11",""),
  ("Noah", " Velazquez","vestibulum.ut@gmail.com","Ap #917-6471 Purus. Road",711,"NoahV","Clb11",""),
  ("Herrod", " Kramer","a.dui.cras@gmail.com","Ap #339-6080 Nibh Rd.",711,"HerrodK","Clb11",""),
  ("Xenos", " Rios","dolor.quam.elementum@gmail.com","Ap #794-3499 Natoque Street",711,"XenosR","Clb11",""),
  ("Penelope", " Peterson","sed.consequat@yahoo.com","Ap #681-7999 Urna Rd.",711,"PenelopeP","Clb11",""),
  ("Miranda", " Tran","arcu.vestibulum.ut@yahoo.com","Ap #494-7793 Imperdiet St.",711,"MirandaT","Clb11",""),
  ("Bert", " Leon","dolor@protonmail.com","Ap #975-6391 Duis Street",711,"BertL","Clb11",""),
  ("Hall", " Trevino","ac.ipsum.phasellus@gmail.com","202-417 Nam Street",711,"HallT","Clb11",""),
  ("Anthony", " Peterson","vulputate.ullamcorper.magna@yahoo.com","980-7139 Gravida Avenue",711,"AnthonyP","Clb11",""),
  ("Uriel", " Stephenson","nunc@yahoo.com","Ap #573-4199 Feugiat. Avenue",711,"UrielS","Clb11","");

-- Utilisateur dans le club 712

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Amos", " Peters","nec@yahoo.com","6250 Non, Avenue",712,"AmosP","Clb12",""),
  ("Wallace", " Whitney","quisque.nonummy@protonmail.com","Ap #289-2993 Mauris Avenue",712,"WallaceW","Clb12",""),
  ("Quail", " Pruitt","nostra.per@gmail.com","5777 Arcu. Rd.",712,"QuailP","Clb12",""),
  ("Lila", " Dickerson","molestie.arcu.sed@yahoo.com","231-6128 Duis Avenue",712,"LilaD","Clb12",""),
  ("Hector", " Thomas","etiam.laoreet@yahoo.com","8813 Metus. Av.",712,"HectorT","Clb12",""),
  ("Shoshana", " Schneider","venenatis@yahoo.com","P.O. Box 547, 9780 Elit. St.",712,"ShoshanaS","Clb12",""),
  ("Yetta", " Sharp","habitant.morbi@protonmail.com","Ap #986-4222 Sit St.",712,"YettaS","Clb12",""),
  ("Martina", " Fitzpatrick","fusce.aliquet.magna@yahoo.com","P.O. Box 574, 6005 Lorem, Street",712,"MartinaF","Clb12",""),
  ("Sage", " Pittman","pellentesque.eget.dictum@gmail.com","244-2559 Suscipit St.",712,"SageP","Clb12",""),
  ("Jessica", " Lara","orci.luctus@gmail.com","5187 Augue Street",712,"JessicaL","Clb12","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Jeremy", " Hood","euismod@gmail.com","P.O. Box 722, 5322 Arcu Ave",712,"JeremyH","Clb12",""),
  ("Perry", " Warren","quisque.porttitor.eros@gmail.com","Ap #253-5831 Et Av.",712,"PerryW","Clb12",""),
  ("Devin", " Dudley","montes@gmail.com","P.O. Box 514, 3627 Lacinia St.",712,"DevinD","Clb12",""),
  ("Erasmus", " Dyer","diam.dictum@protonmail.com","825-6041 Mi Street",712,"ErasmusD","Clb12",""),
  ("Yvonne", " Wall","nostra.per@gmail.com","Ap #973-2726 Dolor, Rd.",712,"YvonneW","Clb12",""),
  ("Maryam", " Lowe","tristique.ac.eleifend@protonmail.com","Ap #769-6965 Hendrerit Road",712,"MaryamL","Clb12",""),
  ("Shelby", " Meyer","velit.quisque@yahoo.com","770-8373 Ultrices St.",712,"ShelbyM","Clb12",""),
  ("Wing", " Welch","mi@gmail.com","P.O. Box 175, 7726 Elit Av.",712,"WingW","Clb12",""),
  ("Hammett", " Bailey","vestibulum.accumsan.neque@protonmail.com","659-2673 Magnis Street",712,"HammetB","Clb12",""),
  ("Rebekah", " Prince","consequat.purus@yahoo.com","671-9389 Sit St.",712,"RebekahP","Clb12","");

-- Utilisateur dans le club 713

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("April", " Huff","felis@gmail.com","Ap #975-5386 Lacus Road",713,"AprilH","Clb13",""),
  ("Chandler", " Schroeder","fringilla@protonmail.com","426 Mollis St.",713,"ChandlerS","Clb13",""),
  ("Beatrice", "Solis","eget.venenatis@protonmail.com","179-2976 Id St.",713,"BeatriceS","Clb13",""),
  ("Lee", " Duke","eleifend@gmail.com","P.O. Box 359, 4703 Sapien. St.",713,"LeeD","Clb13",""),
  ("Zahir", " Hester","aliquet.libero@gmail.com","Ap #320-794 Egestas, St.",713,"ZahirH","Clb13",""),
  ("Imelda", " Vaughn","fermentum.risus@protonmail.com","5330 Eros. Ave",713,"ImeldaV","Clb13",""),
  ("Ivan", " Sellers","arcu.eu.odio@yahoo.com","Ap #171-6203 Arcu. Av.",713,"IvanS","Clb13",""),
  ("Christine", " Foster","proin.eget@gmail.com","Ap #680-4689 Gravida Av.",713,"ChristineF","Clb13",""),
  ("Jarrod ", "Palmer","integer.id@yahoo.com","2017 Cras Rd.",713,"JarrodP","Clb13",""),
  ("Yuri", " Price","amet.metus.aliquam@protonmail.com","389-8663 Dapibus Rd.",713,"YuriP","Clb13","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Chelsea", " Neal","metus.aenean@protonmail.com","Ap #278-2869 Eu Av.",713,"ChelseaN","Clb13",""),
  ("Imani", " Dorsey","mi.enim@protonmail.com","P.O. Box 593, 3732 Penatibus Av.",713,"ImaniD","Clb13",""),
  ("Baker", " Hardy","gravida.praesent@protonmail.com","592-5140 Dis Road",713,"BakerH","Clb13",""),
  ("Kasimir", " Mcleod","vitae.dolor@gmail.com","Ap #195-4689 Sit Road",713,"KasimirM","Clb13",""),
  ("Hunter", " Bernard","vel.est@gmail.com","Ap #893-5391 Morbi Avenue",713,"HunterB","Clb13",""),
  ("Cynthia", " Crosby","metus.vitae@protonmail.com","Ap #746-2359 Facilisis, St.",713,"CynthiaC","Clb13",""),
  ("Lester", " Wheeler","gravida.praesent@yahoo.com","Ap #337-9984 Metus. St.",713,"LesterW","Clb13",""),
  ("Xanthus", " Conrad","auctor.quis@protonmail.com","P.O. Box 632, 9522 Nisl St.",713,"XanthusC","Clb13",""),
  ("Thane", " Sargent","tristique.neque@yahoo.com","167-9902 Dolor. St.",713,"ThaneS","Clb13",""),
  ("Teegan", " Price","tempor@yahoo.com","Ap #572-2244 Accumsan Road",713,"TeeganP","Clb13","");

-- Utilisateur dans le club 714

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Tyrone", " Sellers","pellentesque.massa.lobortis@protonmail.com","Ap #895-4592 Ante, Street",714,"TyroneS","Clb14",""),
  ("Benjamin", " Combs","purus.mauris.a@gmail.com","985-2185 Proin Ave",714,"BenjaminC","Clb14",""),
  ("Griffith", " Andrews","parturient.montes.nascetur@yahoo.com","3460 Quisque St.",714,"GriffithA","Clb14",""),
  ("Kadeem", " Joyce","sed@yahoo.com","144-4117 Curae Rd.",714,"KadeemJ","Clb14",""),
  ("Laith", " Mckay","praesent.interdum.ligula@yahoo.com","851-8903 Pede Rd.",714,"LaithM","Clb14",""),
  ("Salvador", " Robertson","nunc.id@gmail.com","Ap #120-9622 Mi St.",714,"SalvadorR","Clb14",""),
  ("Macy", " Rosa","ipsum.primis@protonmail.com","254-473 Augue. St.",714,"MacyR","Clb14",""),
  ("Basia", " Harris","feugiat.placerat.velit@gmail.com","365-3002 Pede Rd.",714,"BasiaH","Clb14",""),
  ("Risa", " Franklin","ipsum.phasellus@yahoo.com","213-3232 Dolor Street",714,"RisaF","Clb14",""),
  ("Thor", " Buckley","neque.pellentesque.massa@protonmail.com","162-1432 Tempor, St.",714,"ThorB","Clb14","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Emerson", " Hardin","consectetuer@yahoo.com","549-6482 Eu Rd.",714,"EmersonH","Clb14",""),
  ("Nicholas", " Summers","lacinia@yahoo.com","Ap #645-215 Aptent St.",714,"NicholasS","Clb14",""),
  ("Uriah", " Foreman","vel@yahoo.com","269-999 Luctus Av.",714,"UriahF","Clb14",""),
  ("Kane", " Wilkerson","suscipit.est@gmail.com","Ap #230-4423 Eu Av.",714,"KaneW","Clb14",""),
  ("Craig", " Salazar","dolor@protonmail.com","Ap #628-7141 Risus Street",714,"CraigS","Clb14",""),
  ("Victor", " Tyler","tincidunt@protonmail.com","572-5147 Lacus, Rd.",714,"VictorT","Clb14",""),
  ("Meredith", " Fleming","nunc.mauris@yahoo.com","P.O. Box 952, 8437 A Rd.",714,"MeredithF","Clb14",""),
  ("Vivien", " Everett","proin.vel@protonmail.com","Ap #595-6401 Justo. Ave",714,"VivienE","Clb14",""),
  ("Griffin", " Vincent","vel.mauris.integer@yahoo.com","P.O. Box 586, 655 Gravida. St.",714,"GriffinV","Clb14",""),
  ("Zahir", " Faulkner","auctor.velit@protonmail.com","522-7021 Ipsum Rd.",714,"ZahirF","Clb14","");

-- Utilisateur dans le club 715

INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Sade", " Reed","maecenas.libero.est@yahoo.com","9229 Laoreet, Street",715,"SadeR","Clb15",""),
  ("Phoebe", " Anthony","sem.molestie.sodales@protonmail.com","Ap #460-7093 Ut, Rd.",715,"PhoebeA","Clb15",""),
  ("Olympia", " Arnold","egestas.fusce@gmail.com","1577 Molestie Ave",715,"OlympiaA","Clb15",""),
  ("Amanda", " Douglas","nec.enim.nunc@yahoo.com","Ap #811-4040 Integer St.",715,"AmandaD","Clb15",""),
  ("Katelyn", " Buckner","semper.nam.tempor@yahoo.com","9402 Sed St.",715,"KatelynB","Clb15",""),
  ("Lamar", " Becker","augue.eu@protonmail.com","994-4908 Elit, St.",715,"LamarB","Clb15",""),
  ("Cara", " Gowan","vulputate.posuere.vulputate@protonmail.com","629-2407 Vestibulum Av.",715,"CaraG","Clb15",""),
  ("Mercedes", " Maldonado","dictum.eu@gmail.com","496-8579 Mus. Ave",715,"MercedesM","Clb15",""),
  ("Garth", " Yang","lobortis.augue.scelerisque@protonmail.com","792-7640 Egestas. Road",715,"GarthY","Clb15",""),
  ("Elizabeth", " Marks","tempor.est@gmail.com","Ap #997-3646 Vel St.",715,"ElizabethM","Clb15","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Brooke", " Burgess","sagittis.nullam@gmail.com","4578 Sit Rd.",715,"BrookeB","Clb15",""),
  ("Forrest", " Mouse","adipiscing@yahoo.com","Ap #635-2940 Amet Ave",715,"ForrestM","Clb15",""),
  ("Azalia", " Leon","metus.sit@yahoo.com","P.O. Box 875, 3298 Varius. St.",715,"AzaliaL","Clb15",""),
  ("Echo", " Jordan","eros.proin.ultrices@gmail.com","Ap #145-8669 Lectus St.",715,"EchoJ","Clb15",""),
  ("Quinn", " Hancock","ipsum.cursus@gmail.com","655-4230 Fringilla St.",715,"QuinnH","Clb15",""),
  ("Jack", " Patel","velit@gmail.com","P.O. Box 785, 3666 Leo, Ave",715,"JackP","Clb15",""),
  ("Rinah", " Drake","integer.urna@yahoo.com","2165 Netus Av.",715,"RinahD","Clb15",""),
  ("Melodie", " Baker","amet.risus@yahoo.com","Ap #413-9793 Viverra. St.",715,"MelodieB","Clb15",""),
  ("Micah", " Roberson","sapien.molestie@protonmail.com","Ap #741-6078 Ridiculus Ave",715,"MicahR","Clb15",""),
  ("Alexander", " Miller","pharetra.quisque@yahoo.com","P.O. Box 264, 9132 Donec St.",715,"AlexanderM","Clb15","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Lucius", " Rollins","ac.risus@yahoo.com","Ap #769-6256 Laoreet Ave",716,"LuciusR","Clb16",""),
  ("Caldwell", " Chavez","a@protonmail.com","P.O. Box 761, 5641 Justo Rd.",716,"CaldwellC","Clb16",""),
  ("Cruz", " Gutierrez","elit.erat@protonmail.com","2631 Sodales Rd.",716,"CruzG","Clb16",""),
  ("Charde", " Stokes","velit.in@gmail.com","Ap #883-9477 Vivamus St.",716,"ChardeS","Clb16",""),
  ("Shelley", " Vega","diam.luctus.lobortis@gmail.com","Ap #107-3707 Adipiscing Road",716,"ShelleyV","Clb16",""),
  ("Uriel", " Ewing","aliquet.diam@yahoo.com","Ap #771-4460 Vehicula Street",716,"UrielE","Clb16",""),
  ("Ryan", " Phillips","nulla.magna.malesuada@gmail.com","P.O. Box 460, 3459 Et Av.",716,"RyanP","Clb16",""),
  ("Lacy", " Hahn","mauris.non@protonmail.com","Ap #648-4221 Ut St.",716,"LacyH","Clb16",""),
  ("Breanna", " Holcomb","amet.risus@yahoo.com","556-4468 Amet, Street",716,"BreannaH","Clb16",""),
  ("Jamalia", " Hunter","tempus.lorem@yahoo.com","P.O. Box 948, 6254 Faucibus St.",716,"JamaliaH","Clb16","");


INSERT INTO Utilisateurs (prenom,nom,email,adresse,numClub,login,password,photo)
VALUES
  ("Colton", " Goodman","auctor.nunc.nulla@yahoo.com","Ap #350-8855 Non, St.",716,"ColtonG","Clb16",""),
  ("Wade", " Spears","per@gmail.com","Ap #289-4412 Nunc, Ave",716,"WadeS","Clb16",""),
  ("Hedda", " Keller","fusce@protonmail.com","449-6223 Sit Rd.",716,"HeddaK","Clb16",""),
  ("Aidan", " Moss","dolor.vitae@protonmail.com","P.O. Box 889, 765 Malesuada Rd.",716,"AidanM","Clb16",""),
  ("Oleg", " Wong","libero.morbi@protonmail.com","Ap #181-8262 Neque Rd.",716,"OlegW","Clb16",""),
  ("Alfreda", "Joseph","neque.pellentesque@gmail.com","8203 Vitae Ave",716,"AlfredaJ","Clb16",""),
  ("Uta", " Blackburn","id.libero@yahoo.com","774-7997 Hendrerit Ave",716,"UtaB","Clb16",""),
  ("Ishmael", " Blanchard","penatibus.et@yahoo.com","Ap #519-6620 Tortor Rd.",716,"Ishmael","Clb16",""),
  ("Elliott", " Sawyer","orci@protonmail.com","606-661 A, Rd.",716,"ElliottS","Clb16",""),
  ("Nora", " Santiago","ligula.consectetuer.rhoncus@protonmail.com","P.O. Box 142, 7452 Nibh Avenue",716,"NoraS","Clb16","");

-- Insertion de la table des concours

INSERT INTO Concours (numConcours, numPres, titre, theme, affiche, dateDebut, dateFin, etat) VALUES
(401, 2, 'Dessin Contest 1', 'Paysages', 'Affiche 1', '2022-01-01', '2022-01-15', 'évalué'),(402, 22, 'Dessin Contest 2', 'Animaux', 'Affiche 2', '2022-02-01', '2022-02-15', 'évalué'),
(403, 42, 'Dessin Contest 3', 'Fantasy', 'Affiche 3', '2022-03-01', '2022-03-15', 'évalué'),
(404, 62, 'Dessin Contest 4', 'Portraits', 'Affiche 4', '2022-04-01', '2022-04-15', 'évalué'), 
(405, 82, 'Dessin Contest 5', 'Voyages', 'Affiche 5', '2023-01-01', '2023-01-15', 'évalué'),
(406, 102, 'Dessin Contest 6', 'Science Fiction', 'Affiche 6', '2023-02-01', '2023-02-15', 'évalué'),
(407, 122, 'Dessin Contest 7', 'Nature Morte', 'Affiche 7', '2023-03-01', '2023-03-15', 'évalué'),
(408, 142, 'Dessin Contest 8', 'Célébrités', 'Affiche 8', '2023-04-01', '2023-04-15', 'évalué'),
(409, 162, 'Dessin Contest 9', 'Art Abstrait', 'Affiche 9', '2024-05-01', '2024-05-15', 'pas commencé');

 -- Insertion de la table des Directeurs

INSERT INTO Directeur (numDirecteur, dateDebut)
VALUES
(1, '2004-02-13'),
(21, '2001-09-08'),
(41, '2007-05-22'),
(61, '2015-11-30'),
(81, '2003-07-17'),
(101, '2010-03-05'),
(121, '2009-10-19'),
(141, '2018-12-14'),
(161, '2005-04-02'), 
(181, '2012-08-11'),
(201, '2017-01-26'),
(221, '2008-06-07'),
(241, '2013-09-23'),
(261, '2002-05-10'),
(281, '2016-11-01'),
(301, '2019-03-15');

-- Insertion de la table d'association des concours et des directeurs : Dirige
INSERT INTO Dirige (numDirecteur, numClub) 
VALUES
(1, 701),
(21,702),
(41,703),
(61,704),
(81,705),
(101,706),
(121,707),
(141,708),
(161,709), 
(181,710),
(201,711),
(221,712),
(241,713),
(261,714),
(281,715),
(301,716);

-- Insertion de la table des presidents
INSERT INTO President (numPres, prime)
VALUES
(2,200),
(22,150),
(42,110),
(62,160),
(82,120),
(102,190),
(122,155),
(142,130),
(162,165);

-- Insertion de la table des  competiteurs


INSERT INTO Competiteur (numCompetiteur, datePremiereParticipation)
VALUES
(3,'2011-09-05'),
(4,'2003-03-14'),
(5,'2007-11-22'),
(6,'2015-07-09'),
(7,'2009-02-18'),
(8,'2006-06-03'),
(23,'2002-08-30'),
(24,'2018-04-12'),
(25,'2010-12-07'),
(26,'2016-10-25'),
(27,'2013-01-19'),
(28,'2005-09-14'),
(43,'2017-03-02'),
(44,'2008-05-11'),
(45,'2004-07-28'),
(46,'2019-12-21'),
(47,'2001-10-15'),
(48,'2014-04-06'),
(63,'2000-11-24'),
(64,'2018-09-09'),
(65,'2012-01-04'),
(66,'2013-06-26'),
(67,'2007-03-08'),
(68,'2015-02-17'),
(83,'2009-08-13'),
(84,'2004-07-01'),
(85,'2010-04-22'),
(86,'2001-12-19'),
(87,'2016-10-28'),
(88,'2005-05-03'),
(103,'2013-11-14'),
(104,'2019-09-09'),
(105,'2002-06-25'),
(106,'2008-12-08'),
(107,'2014-03-05'),
(108,'2017-01-30'),
(123,'2011-08-12'),
(124,'2000-07-19'),
(125,'2018-04-02'),
(126,'2015-10-10'),
(127,'2007-11-21'),
(128,'2013-06-04'),
(143,'2006-02-18'),
(144,'2001-09-26'),
(145,'2009-05-13'),
(146,'2010-12-08'),
(147,'2012-03-01'),
(148,'2014-07-09'),
(163,'2004-10-27'),
(164,'2016-04-15'),
(165,'2008-09-03'),
(166,'2015-06-21'),
(167,'2003-11-06'),
(168,'2011-08-30'),
(183,'2002-12-16'),
(184,'2019-05-08'),
(185,'2007-10-04'),
(186,'2014-02-23'),
(187,'2016-07-11'),
(188,'2005-01-19'),
(203,'2012-09-26'),
(204,'2010-04-14'),
(205,'2001-03-20'),
(206,'2013-08-05'),
(207,'2004-12-09'),
(208,'2017-07-28'),
(223,'2009-11-15'),
(224,'2006-01-02'),
(225,'2018-05-17'),
(226,'2014-10-01'),
(227,'2008-06-22'),
(228,'2011-03-13'),
(243,'2000-09-06'),
(244,'2015-04-24'),
(245,'2003-11-10'),
(246,'2012-02-27'),
(247,'2007-08-18'),
(248,'2014-06-01'),
(263,'2008-12-19'),
(264,'2019-10-08'),
(265,'2002-05-04'),
(266,'2017-01-11'),
(267,'2010-07-26'),
(268,'2005-04-09'),
(283,'2013-09-15'),
(284,'2001-11-23'),
(285,'2016-06-07'),
(286,'2018-02-03'),
(287,'2009-10-20'),
(288,'2015-03-28'),
(303,'2004-07-14'),
(304,'2012-12-02'),
(305,'2006-01-17'),
(306,'2019-08-06'),
(307,'2011-04-21'),
(308,'2000-11-10');

-- Insertion de la table d'association des concours et des competiteurs : ParticipeCompetiteur

INSERT INTO ParticipeComp (numCompetiteur,numConcours)
VALUES
(3,401),
(4,401),
(5,401),
(6,401),
(7,401),
(8,401),
(23,401),
(24,401),
(25,401),
(26,401),
(27,401),
(28,401),
(43,401),
(44,401),
(45,401),
(46,401),
(47,401),
(48,401),
(63,401),
(64,401),
(65,401),
(66,401),
(67,401),
(68,401),
(83,401),
(84,401),
(85,401),
(86,401),
(87,401),
(88,401),
(103,401),
(104,401),
(105,401),
(106,401),
(107,401),
(108,401),
(123,401),
(124,401),
(125,401),
(126,401),
(127,401),
(128,401),
(143,401),
(144,401),
(145,401),
(146,401),
(147,401),
(148,401);




INSERT INTO ParticipeComp(numCompetiteur,numConcours)
VALUES
(163,402),
(164,402),
(165,402),
(166,402),
(167,402),
(168,402),
(183,402),
(184,402),
(185,402),
(186,402),
(187,402),
(188,402),
(203,402),
(204,402),
(205,402),
(206,402),
(207,402),
(208,402),
(223,402),
(224,402),
(225,402),
(226,402),
(227,402),
(228,402),
(243,402),
(244,402),
(245,402),
(246,402),
(247,402),
(248,402),
(263,402),
(264,402),
(265,402),
(266,402),
(267,402),
(268,402),
(283,402),
(284,402),
(285,402),
(286,402),
(287,402),
(288,402),
(303,402),
(304,402),
(305,402),
(306,402),
(307,402),
(308,402);


INSERT INTO ParticipeComp (numCompetiteur,numConcours)
VALUES
(3,403),
(4,403),
(5,403),
(6,403),
(7,403),
(8,403),
(23,403),
(24,403),
(25,403),
(26,403),
(27,403),
(28,403),
(43,403),
(44,403),
(45,403),
(46,403),
(47,403),
(48,403),
(63,403),
(64,403),
(65,403),
(66,403),
(67,403),
(68,403),
(83,403),
(84,403),
(85,403),
(86,403),
(87,403),
(88,403),
(103,403),
(104,403),
(105,403),
(106,403),
(107,403),
(108,403),
(123,403),
(124,403),
(125,403),
(126,403),
(127,403),
(128,403),
(143,403),
(144,403),
(145,403),
(146,403),
(147,403),
(148,403);


INSERT INTO ParticipeComp(numCompetiteur,numConcours)
VALUES
(163,404),
(164,404),
(165,404),
(166,404),
(167,404),
(168,404),
(183,404),
(184,404),
(185,404),
(186,404),
(187,404),
(188,404),
(203,404),
(204,404),
(205,404),
(206,404),
(207,404),
(208,404),
(223,404),
(224,404),
(225,404),
(226,404),
(227,404),
(228,404),
(243,404),
(244,404),
(245,404),
(246,404),
(247,404),
(248,404),
(263,404),
(264,404),
(265,404),
(266,404),
(267,404),
(268,404),
(283,404),
(284,404),
(285,404),
(286,404),
(287,404),
(288,404),
(303,404),
(304,404),
(305,404),
(306,404),
(307,404),
(308,404);


INSERT INTO ParticipeComp (numCompetiteur,numConcours)
VALUES
(3,405),
(4,405),
(5,405),
(6,405),
(7,405),
(8,405),
(23,405),
(24,405),
(25,405),
(26,405),
(27,405),
(28,405),
(43,405),
(44,405),
(45,405),
(46,405),
(47,405),
(48,405),
(63,405),
(64,405),
(65,405),
(66,405),
(67,405),
(68,405),
(83,405),
(84,405),
(85,405),
(86,405),
(87,405),
(88,405),
(103,405),
(104,405),
(105,405),
(106,405),
(107,405),
(108,405),
(123,405),
(124,405),
(125,405),
(126,405),
(127,405),
(128,405),
(143,405),
(144,405),
(145,405),
(146,405),
(147,405),
(148,405);


INSERT INTO ParticipeComp(numCompetiteur,numConcours)
VALUES
(163,406),
(164,406),
(165,406),
(166,406),
(167,406),
(168,406),
(183,406),
(184,406),
(185,406),
(186,406),
(187,406),
(188,406),
(203,406),
(204,406),
(205,406),
(206,406),
(207,406),
(208,406),
(223,406),
(224,406),
(225,406),
(226,406),
(227,406),
(228,406),
(243,406),
(244,406),
(245,406),
(246,406),
(247,406),
(248,406),
(263,406),
(264,406),
(265,406),
(266,406),
(267,406),
(268,406),
(283,406),
(284,406),
(285,406),
(286,406),
(287,406),
(288,406),
(303,406),
(304,406),
(305,406),
(306,406),
(307,406),
(308,406);
INSERT INTO ParticipeComp (numCompetiteur,numConcours)
VALUES
(3,407),
(4,407),
(5,407),
(6,407),
(7,407),
(8,407),
(23,407),
(24,407),
(25,407),
(26,407),
(27,407),
(28,407),
(43,407),
(44,407),
(45,407),
(46,407),
(47,407),
(48,407),
(63,407),
(64,407),
(65,407),
(66,407),
(67,407),
(68,407),
(83,407),
(84,407),
(85,407),
(86,407),
(87,407),
(88,407),
(103,407),
(104,407),
(105,407),
(106,407),
(107,407),
(108,407),
(123,407),
(124,407),
(125,407),
(126,407),
(127,407),
(128,407),
(143,407),
(144,407),
(145,407),
(146,407),
(147,407),
(148,407);


INSERT INTO ParticipeComp(numCompetiteur,numConcours)
VALUES
(163,408),
(164,408),
(165,408),
(166,408),
(167,408),
(168,408),
(183,408),
(184,408),
(185,408),
(186,408),
(187,408),
(188,408),
(203,408),
(204,408),
(205,408),
(206,408),
(207,408),
(208,408),
(223,408),
(224,408),
(225,408),
(226,408),
(227,408),
(228,408),
(243,408),
(244,408),
(245,408),
(246,408),
(247,408),
(248,408),
(263,408),
(264,408),
(265,408),
(266,408),
(267,408),
(268,408),
(283,408),
(284,408),
(285,408),
(286,408),
(287,408),
(288,408),
(303,408),
(304,408),
(305,408),
(306,408),
(307,408),
(308,408);
INSERT INTO ParticipeComp (numCompetiteur,numConcours)
VALUES
(3,409),
(4,409),
(5,409),
(6,409),
(7,409),
(8,409),
(23,409),
(24,409),
(25,409),
(26,409),
(27,409),
(28,409),
(43,409),
(44,409),
(45,409),
(46,409),
(47,409),
(48,409),
(63,409),
(64,409),
(65,409),
(66,409),
(67,409),
(68,409),
(83,409),
(84,409),
(85,409),
(86,409),
(87,409),
(88,409),
(103,409),
(104,409),
(105,409),
(106,409),
(107,409),
(108,409),
(123,409),
(124,409),
(125,409),
(126,409),
(127,409),
(128,409),
(143,409),
(144,409),
(145,409),
(146,409),
(147,409),
(148,409);

-- Insertion de la table des Evaluateurs

INSERT INTO Evaluateur (numEvaluateur, specialite)
VALUES
(9,"Technique"),
(10,"Artistique"),
(11,"Couleur"),
(29,"Technique"),
(30,"Artistique"),
(31,"Couleur"),
(49,"Technique"),
(50,"Artistique"),
(51,"Couleur"),
(69,"Technique"),
(70,"Artistique"),
(71,"Couleur"),
(89,"Technique"),
(90,"Artistique"),
(91,"Couleur"),
(109,"Technique"),
(110,"Artistique"),
(111,"Couleur"),
(129,"Technique"),
(130,"Artistique"),
(131,"Couleur"),
(149,"Technique"),
(150,"Artistique"),
(151,"Couleur"),
(169,"Technique"),
(170,"Artistique"),
(171,"Couleur"),
(189,"Technique"),
(190,"Artistique"),
(191,"Couleur"),
(209,"Technique"),
(210,"Artistique"),
(211,"Couleur"),
(229,"Technique"),
(230,"Artistique"),
(231,"Couleur"),
(249,"Technique"),
(250,"Artistique"),
(251,"Couleur"),
(269,"Technique"),
(270,"Artistique"),
(271,"Couleur"),
(289,"Technique"),
(290,"Artistique"),
(291,"Couleur"),
(309,"Technique"),
(310,"Artistique"),
(311,"Couleur");

-- Insertion de la table d'association dess jurys

INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(9,401),
(10,401),
(11,401),
(29,401),
(30,401),
(31,401),
(49,401),
(50,401),
(51,401),
(69,401),
(70,401),
(71,401),
(89,401),
(90,401),
(91,401),
(109,401),
(110,401),
(111,401),
(129,401),
(130,401),
(131,401),
(149,401),
(150,401),
(151,401);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(169,402),
(170,402),
(171,402),
(189,402),
(190,402),
(191,402),
(209,402),
(210,402),
(211,402),
(229,402),
(230,402),
(231,402),
(249,402),
(250,402),
(251,402),
(269,402),
(270,402),
(271,402),
(289,402),
(290,402),
(291,402),
(309,402),
(310,402),
(311,402);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(9,403),
(10,403),
(11,403),
(29,403),
(30,403),
(31,403),
(49,403),
(50,403),
(51,403),
(69,403),
(70,403),
(71,403),
(89,403),
(90,403),
(91,403),
(109,403),
(110,403),
(111,403),
(129,403),
(130,403),
(131,403),
(149,403),
(150,403),
(151,403);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(169,404),
(170,404),
(171,404),
(189,404),
(190,404),
(191,404),
(209,404),
(210,404),
(211,404),
(229,404),
(230,404),
(231,404),
(249,404),
(250,404),
(251,404),
(269,404),
(270,404),
(271,404),
(289,404),
(290,404),
(291,404),
(309,404),
(310,404),
(311,404);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(9,405),
(10,405),
(11,405),
(29,405),
(30,405),
(31,405),
(49,405),
(50,405),
(51,405),
(69,405),
(70,405),
(71,405),
(89,405),
(90,405),
(91,405),
(109,405),
(110,405),
(111,405),
(129,405),
(130,405),
(131,405),
(149,405),
(150,405),
(151,405);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(169,406),
(170,406),
(171,406),
(189,406),
(190,406),
(191,406),
(209,406),
(210,406),
(211,406),
(229,406),
(230,406),
(231,406),
(249,406),
(250,406),
(251,406),
(269,406),
(270,406),
(271,406),
(289,406),
(290,406),
(291,406),
(309,406),
(310,406),
(311,406);




INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(9,407),
(10,407),
(11,407),
(29,407),
(30,407),
(31,407),
(49,407),
(50,407),
(51,407),
(69,407),
(70,407),
(71,407),
(89,407),
(90,407),
(91,407),
(109,407),
(110,407),
(111,407),
(129,407),
(130,407),
(131,407),
(149,407),
(150,407),
(151,407);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(169,408),
(170,408),
(171,408),
(189,408),
(190,408),
(191,408),
(209,408),
(210,408),
(211,408),
(229,408),
(230,408),
(231,408),
(249,408),
(250,408),
(251,408),
(269,408),
(270,408),
(271,408),
(289,408),
(290,408),
(291,408),
(309,408),
(310,408),
(311,408);


INSERT INTO Jury (numEvaluateur,numConcours)
VALUES
(9,409),
(10,409),
(11,409),
(29,409),
(30,409),
(31,409),
(49,409),
(50,409),
(51,409),
(69,409),
(70,409),
(71,409),
(89,409),
(90,409),
(91,409),
(109,409),
(110,409),
(111,409),
(129,409),
(130,409),
(131,409),
(149,409),
(150,409),
(151,409);

-- Insertion de la table Particiclub

INSERT INTO ParticipeClub (numConcours,numClub)
VALUES
(401,701),
(401,702),
(401,703),
(401,704),
(401,705),
(401,706),
(401,707),
(401,708),


(402,709),
(402,710),
(402,711),
(402,712),
(402,713),
(402,714),
(402,715),
(402,716),


(403,701),
(403,702),
(403,703),
(403,704),
(403,705),
(403,706),
(403,707),
(403,708),


(404,709),
(404,710),
(404,711),
(404,712),
(404,713),
(404,714),
(404,715),
(404,716),


(405,701),
(405,702),
(405,703),
(405,704),
(405,705),
(405,706),
(405,707),
(405,708),


(406,709),
(406,710),
(406,711),
(406,712),
(406,713),
(406,714),
(406,715),
(406,716),


(407,701),
(407,702),
(407,703),
(407,704),
(407,705),
(407,706),
(407,707),
(407,708),


(408,709),
(408,710),
(408,711),
(408,712),
(408,713),
(408,714),
(408,715),
(408,716),


(409,701),
(409,702),
(409,703),
(409,704),
(409,705),
(409,706),
(409,707),
(409,708);

-- Insertion de la table des Dessins

INSERT INTO Dessin (numCompetiteur, numConcours, numEvaluateur, commentaire, classement, dateRemise, leDessin)
VALUES
(3,401,29,'Très beau dessin, les contrastes sont cependant très légers',1,'2022-01-15',''),
(4,401,30,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',2,'2022-01-15',''),
(5,401,31,'Couleurs très variées, et choix de position excellent. Bravo !',3,'2022-01-15',''),
(6,401,49,'Très beau dessin, les contrastes sont cependant très légers',4,'2022-01-15',''),
(7,401,50,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',5,'2022-01-15',''),
(8,401,51,'Couleurs très variées, et choix de position excellent. Bravo !',6,'2022-01-15',''),
(23,401,69,'Très beau dessin, les contrastes sont cependant très légers',7,'2022-01-15',''),
(24,401,70,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',8,'2022-01-15',''),
(25,401,71,'Couleurs très variées, et choix de position excellent. Bravo !',9,'2022-01-15',''),
(26,401,89,'Très beau dessin, les contrastes sont cependant très légers',10,'2022-01-15',''),
(27,401,90,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11,'2022-01-15',''),
(28,401,91,'Couleurs très variées, et choix de position excellent. Bravo !',12,'2022-01-15',''),
(43,401,109,'Très beau dessin, les contrastes sont cependant très légers',13,'2022-01-15',''),
(44,401,110,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',14,'2022-01-15',''),
(45,401,111,'Couleurs très variées, et choix de position excellent. Bravo !',15,'2022-01-15',''),
(46,401,129,'Très beau dessin, les contrastes sont cependant très légers',16,'2022-01-15',''),
(47,401,130,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',17,'2022-01-15',''),
(48,401,131,'Couleurs très variées, et choix de position excellent. Bravo !',18,'2022-01-15',''),
(63,401,149,'Très beau dessin, les contrastes sont cependant très légers',19,'2022-01-15',''),
(64,401,150,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',20,'2022-01-15',''),
(65,401,151,'Couleurs très variées, et choix de position excellent. Bravo !',21,'2022-01-15',''),
(66,401,169,'Très beau dessin, les contrastes sont cependant très légers',22,'2022-01-15',''),
(67,401,170,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',23,'2022-01-15',''),
(68,401,171,'Couleurs très variées, et choix de position excellent. Bravo !',24,'2022-01-15',''),
(83,401,189,'Très beau dessin, les contrastes sont cependant très légers',25,'2022-01-15',''),
(84,401,190,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',26,'2022-01-15',''),
(85,401,191,'Couleurs très variées, et choix de position excellent. Bravo !',27,'2022-01-15',''),
(86,401,209,'Très beau dessin, les contrastes sont cependant très légers',28,'2022-01-15',''),
(87,401,210,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',29,'2022-01-15',''),
(88,401,211,'Couleurs très variées, et choix de position excellent. Bravo !',30,'2022-01-15',''),
(103,401,229,'Très beau dessin, les contrastes sont cependant très légers',31,'2022-01-15',''),
(104,401,230,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',32,'2022-01-15',''),
(105,401,231,'Couleurs très variées, et choix de position excellent. Bravo !',33,'2022-01-15',''),
(106,401,249,'Très beau dessin, les contrastes sont cependant très légers',34,'2022-01-15',''),
(107,401,250,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',35,'2022-01-15',''),
(108,401,251,'Couleurs très variées, et choix de position excellent. Bravo !',36,'2022-01-15',''),
(123,401,269,'Très beau dessin, les contrastes sont cependant très légers',37,'2022-01-15',''),
(124,401,270,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',38,'2022-01-15',''),
(125,401,271,'Couleurs très variées, et choix de position excellent. Bravo !',39,'2022-01-15',''),
(126,401,289,'Très beau dessin, les contrastes sont cependant très légers',40,'2022-01-15',''),
(127,401,290,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',41,'2022-01-15',''),
(128,401,291,'Couleurs très variées, et choix de position excellent. Bravo !',42,'2022-01-15',''),
(143,401,309,'Très beau dessin, les contrastes sont cependant très légers',43,'2022-01-15',''),
(144,401,310,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',44,'2022-01-15',''),
(145,401,311,'Couleurs très variées, et choix de position excellent. Bravo !',45,'2022-01-15',''),
(146,401,9,'Très beau dessin, les contrastes sont cependant très légers',46,'2022-01-15',''),
(147,401,10,'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',47,'2022-01-15',''),
(148,401,11,'Couleurs très variées, et choix de position excellent. Bravo !',48,'2022-01-15','');

INSERT INTO Dessin (numCompetiteur, numConcours, numEvaluateur, commentaire, classement, dateRemise, leDessin)
VALUES
(163, 402, 29, 'Très beau dessin, les contrastes sont cependant très légers', 1, '2022-02-15', ''),
(164, 402, 30, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 2, '2022-02-15', ''),
(165, 402, 31, 'Couleurs très variées, et choix de position excellent. Bravo !', 3, '2022-02-15', ''),
(166, 402, 49, 'Très beau dessin, les contrastes sont cependant très légers', 4, '2022-02-15', ''),
(167, 402, 50, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 5, '2022-02-15', ''),
(168, 402, 51, 'Couleurs très variées, et choix de position excellent. Bravo !', 6, '2022-02-15', ''),
(183, 402, 69, 'Très beau dessin, les contrastes sont cependant très légers', 7, '2022-02-15', ''),
(184, 402, 70, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 8, '2022-02-15', ''),
(185, 402, 71, 'Couleurs très variées, et choix de position excellent. Bravo !', 9, '2022-02-15', ''),
(186, 402, 89, 'Très beau dessin, les contrastes sont cependant très légers', 10, '2022-02-15', ''),
(187, 402, 90, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11, '2022-02-15', ''),
(188, 402, 91, 'Couleurs très variées, et choix de position excellent. Bravo !', 12, '2022-02-15', ''),
(203, 402, 109, 'Très beau dessin, les contrastes sont cependant très légers', 13, '2022-02-15', ''),
(204, 402, 110, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14, '2022-02-15', ''),
(205, 402, 111, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-02-15', ''),
(206, 402, 129, 'Très beau dessin, les contrastes sont cependant très légers', 16, '2022-02-15', ''),
(207, 402, 130, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17, '2022-02-15', ''),
(208, 402, 131, 'Couleurs très variées, et choix de position excellent. Bravo !', 18, '2022-02-15', ''),
(223, 402, 149, 'Très beau dessin, les contrastes sont cependant très légers', 19, '2022-02-15', ''),
(224, 402, 150, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 20, '2022-02-15', ''),
(225, 402, 151, 'Couleurs très variées, et choix de position excellent. Bravo !', 21, '2022-02-15', ''),
(226, 402, 169, 'Très beau dessin, les contrastes sont cependant très légers', 22, '2022-02-15', ''),
(227, 402, 170, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 23, '2022-02-15', ''),
(228, 402, 171, 'Couleurs très variées, et choix de position excellent. Bravo !', 24, '2022-02-15', ''),
(243, 402, 189, 'Très beau dessin, les contrastes sont cependant très légers', 25, '2022-02-15', ''),
(244, 402, 190, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 26, '2022-02-15', ''),
(245, 402, 191, 'Couleurs très variées, et choix de position excellent. Bravo !', 27, '2022-02-15', ''),
(246, 402, 209, 'Très beau dessin, les contrastes sont cependant très légers', 28, '2022-02-15', ''),
(247, 402, 210, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 29, '2022-02-15', ''),
(248, 402, 211, 'Couleurs très variées, et choix de position excellent. Bravo !', 30, '2022-02-15', ''),
(263, 402, 229, 'Très beau dessin, les contrastes sont cependant très légers', 31, '2022-02-15', ''),
(264, 402, 230, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 32, '2022-02-15', ''),
(265, 402, 231, 'Couleurs très variées, et choix de position excellent. Bravo !', 33, '2022-02-15', ''),
(266, 402, 249, 'Très beau dessin, les contrastes sont cependant très légers', 34, '2022-02-15', ''),
(267, 402, 250, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 35, '2022-02-15', ''),
(268, 402, 251, 'Couleurs très variées, et choix de position excellent. Bravo !', 36, '2022-02-15', ''),
(283, 402, 269, 'Très beau dessin, les contrastes sont cependant très légers', 37, '2022-02-15', ''),
(284, 402, 270, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 38, '2022-02-15', ''),
(285, 402, 271, 'Couleurs très variées, et choix de position excellent. Bravo !', 39, '2022-02-15', ''),
(286, 402, 309, 'Très beau dessin, les contrastes sont cependant très légers', 40, '2022-02-15', ''),
(287, 402, 310, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 41, '2022-02-15', ''),
(288, 402, 311, 'Couleurs très variées, et choix de position excellent. Bravo !', 42, '2022-02-15', ''),
(303, 402, 289, 'Très beau dessin, les contrastes sont cependant très légers', 43, '2022-02-15', ''),
(304, 402, 290, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 44, '2022-02-15', ''),
(305, 402, 291, 'Couleurs très variées, et choix de position excellent. Bravo !', 45, '2022-02-15', ''),
(306, 402, 9, 'Très beau dessin, les contrastes sont cependant très légers', 46, '2022-02-15', ''),
(307, 402, 10, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 47, '2022-02-15', ''),
(308, 402, 11, 'Couleurs très variées, et choix de position excellent. Bravo !', 48, '2022-02-15', '');

INSERT INTO Dessin (numCompetiteur, numConcours, numEvaluateur, commentaire, classement, dateRemise, leDessin)
VALUES
(3, 403, 29, 'Très beau dessin, les contrastes sont cependant très légers', 1, '2022-03-15', ''),
(4, 403, 30, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 2, '2022-03-15', ''),
(5, 403, 31, 'Couleurs très variées, et choix de position excellent. Bravo !', 3, '2022-03-15', ''),
(6, 403, 49, 'Très beau dessin, les contrastes sont cependant très légers', 4, '2022-03-15', ''),
(7, 403, 50, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 5, '2022-03-15', ''),
(8, 403, 51, 'Couleurs très variées, et choix de position excellent. Bravo !', 6, '2022-03-15', ''),
(23, 403, 69, 'Très beau dessin, les contrastes sont cependant très légers', 7, '2022-03-15', ''),
(24, 403, 70, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 8, '2022-03-15', ''),
(25, 403, 71, 'Couleurs très variées, et choix de position excellent. Bravo !', 9, '2022-03-15', ''),
(26, 403, 89, 'Très beau dessin, les contrastes sont cependant très légers', 10, '2022-03-15', ''),
(27, 403, 90, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11, '2022-03-15', ''),
(28, 403, 91, 'Couleurs très variées, et choix de position excellent. Bravo !', 12, '2022-03-15', ''),
(43, 403, 109, 'Très beau dessin, les contrastes sont cependant très légers', 13, '2022-03-15', ''),
(44, 403, 110, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14, '2022-03-15', ''),
(45, 403, 111, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-03-15', ''),
(46, 403, 129, 'Très beau dessin, les contrastes sont cependant très légers', 16, '2022-03-15', ''),
(47, 403, 130, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17, '2022-03-15', ''),
(48, 403, 131, 'Couleurs très variées, et choix de position excellent. Bravo !', 18, '2022-03-15', ''),
(63, 403, 149, 'Très beau dessin, les contrastes sont cependant très légers', 19, '2022-03-15', ''),
(64, 403, 150, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 20, '2022-03-15', ''),
(65, 403, 151, 'Couleurs très variées, et choix de position excellent. Bravo !', 21, '2022-03-15', ''),
(66, 403, 169, 'Très beau dessin, les contrastes sont cependant très légers', 22, '2022-03-15', ''),
(67, 403, 170, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 23, '2022-03-15', ''),
(68, 403, 171, 'Couleurs très variées, et choix de position excellent. Bravo !', 24, '2022-03-15', ''),
(83, 403, 189, 'Très beau dessin, les contrastes sont cependant très légers', 25, '2022-03-15', ''),
(84, 403, 190, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 26, '2022-03-15', ''),
(85, 403, 191, 'Couleurs très variées, et choix de position excellent. Bravo !', 27, '2022-03-15', ''),
(86, 403, 209, 'Très beau dessin, les contrastes sont cependant très légers', 28, '2022-03-15', ''),
(87, 403, 210, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 29, '2022-03-15', ''),
(88, 403, 211, 'Couleurs très variées, et choix de position excellent. Bravo !', 30, '2022-03-15', ''),
(103, 403, 229, 'Très beau dessin, les contrastes sont cependant très légers', 31, '2022-03-15', ''),
(104, 403, 230, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 32, '2022-03-15', ''),
(105, 403, 231, 'Couleurs très variées, et choix de position excellent. Bravo !', 33, '2022-03-15', ''),
(106, 403, 249, 'Très beau dessin, les contrastes sont cependant très légers', 34, '2022-03-15', ''),
(107, 403, 250, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 35, '2022-03-15', ''),
(108, 403, 251, 'Couleurs très variées, et choix de position excellent. Bravo !', 36, '2022-03-15', ''),
(123, 403, 269, 'Très beau dessin, les contrastes sont cependant très légers', 37, '2022-03-15', ''),
(124, 403, 270, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 38, '2022-03-15', ''),
(125, 403, 271, 'Couleurs très variées, et choix de position excellent. Bravo !', 39, '2022-03-15', ''),
(126, 403, 309, 'Très beau dessin, les contrastes sont cependant très légers', 40, '2022-03-15', ''),
(127, 403, 310, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 41, '2022-03-15', ''),
(128, 403, 311, 'Couleurs très variées, et choix de position excellent. Bravo !', 42, '2022-03-15', ''),
(143, 403, 289, 'Très beau dessin, les contrastes sont cependant très légers', 43, '2022-03-15', ''),
(144, 403, 290, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 44, '2022-03-15', ''),
(145, 403, 291, 'Couleurs très variées, et choix de position excellent. Bravo !', 45, '2022-03-15', ''),
(146, 403, 9, 'Très beau dessin, les contrastes sont cependant très légers', 46, '2022-03-15', ''),
(147, 403, 10, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 47, '2022-03-15', ''),
(148, 403, 11, 'Couleurs très variées, et choix de position excellent. Bravo !', 48, '2022-03-15', '');


-- Insertion de la table des evaluations

INSERT INTO Evaluation (numDessin, numEvaluateur, dateEvaluation, commentaire, note)
VALUES
(1,29,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',10),
(2,30,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11),
(3,31,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',12),
(4,49,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',13),
(5,50,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',14),
(6,51,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',15),
(7,69,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',16),
(8,70,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',17),
(9,71,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',18),
(10,89,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',10),
(11,90,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11),
(12,91,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',12),
(13,109,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',13),
(14,110,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',14),
(15,111,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',15),
(16,129,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',16),
(17,130,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',17),
(18,131,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',18),
(19,149,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',10),
(20,150,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11),
(21,151,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',12),
(22,169,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',13),
(23,170,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',14),
(24,171,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',15),
(25,189,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',16),
(26,190,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',17),
(27,191,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',18),
(28,209,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',10),
(29,210,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11),
(30,211,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',12),
(31,229,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',13),
(32,230,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',14),
(33,231,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',15),
(34,249,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',16),
(35,250,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',17),
(36,251,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',18),
(37,269,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',10),
(38,270,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11),
(39,401,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',12),
(40,289,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',13),
(41,290,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',14),
(42,291,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',15),
(43,309,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',16),
(44,310,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',17),
(45,311,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',18),
(46,9,'2022-01-15','Très beau dessin, les contrastes sont cependant très légers',10),
(47,10,'2022-01-15','La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !',11),
(48,11,'2022-01-15','Couleurs très variées, et choix de position excellent. Bravo !',12);




INSERT INTO Evaluation (numDessin, numEvaluateur, dateEvaluation, commentaire, note)
VALUES
(49, 29, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 10),
(50, 30, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11),
(51, 31, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 12),
(52, 49, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 13),
(53, 50, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14),
(54, 51, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 15),
(55, 69, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 16),
(56, 70, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17),
(57, 71, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 18),
(58, 89, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 10),
(59, 90, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11),
(60, 91, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 12),
(61, 109, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 13),
(62, 110, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14),
(63, 111, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 15),
(64, 129, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 16),
(65, 130, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17),
(66, 131, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 18),
(67, 149, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 10),
(68, 150, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11),
(69, 151, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 12),
(70, 169, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 13),
(71, 170, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14),
(72, 171, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 15),
(73, 189, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 16),
(74, 190, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17),
(75, 191, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 18),
(76, 209, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 10),
(77, 210, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11),
(78, 211, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 12),
(79, 229, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 13),
(80, 230, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14),
(81, 231, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 15),
(82, 249, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 16),
(83, 250, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17),
(84, 251, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 18),
(85, 269, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 10),
(86, 270, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11),
(87, 271, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 12),
(88, 309, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 13),
(89, 310, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14),
(90, 311, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 15),
(91, 289, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 16),
(92, 290, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17),
(93, 291, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 18),
(94, 9, '2022-02-15', 'Très beau dessin, les contrastes sont cependant très légers', 10),
(95, 10, '2022-02-15', 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11),
(96, 11, '2022-02-15', 'Couleurs très variées, et choix de position excellent. Bravo !', 12);






INSERT INTO Evaluation (numDessin, numEvaluateur, commentaire, note, dateEvaluation)
VALUES
(97, 29, 'Très beau dessin, les contrastes sont cependant très légers', 15, '2022-03-15'),
(98, 30, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 12, '2022-03-15'),
(99, 31, 'Couleurs très variées, et choix de position excellent. Bravo !', 14, '2022-03-15'),
(100, 49, 'Très beau dessin, les contrastes sont cependant très légers', 17, '2022-03-15'),
(101, 50, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 13, '2022-03-15'),
(102, 51, 'Couleurs très variées, et choix de position excellent. Bravo !', 16, '2022-03-15'),
(103, 69, 'Très beau dessin, les contrastes sont cependant très légers', 11, '2022-03-15'),
(104, 70, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 18, '2022-03-15'),
(105, 71, 'Couleurs très variées, et choix de position excellent. Bravo !', 10, '2022-03-15'),
(106, 89, 'Très beau dessin, les contrastes sont cependant très légers', 14, '2022-03-15'),
(107, 90, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 15, '2022-03-15'),
(108, 91, 'Couleurs très variées, et choix de position excellent. Bravo !', 12, '2022-03-15'),
(109, 109, 'Très beau dessin, les contrastes sont cependant très légers', 18, '2022-03-15'),
(110, 110, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 16, '2022-03-15'),
(111, 111, 'Couleurs très variées, et choix de position excellent. Bravo !', 13, '2022-03-15'),
(112, 129, 'Très beau dessin, les contrastes sont cependant très légers', 10, '2022-03-15'),
(113, 130, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17, '2022-03-15'),
(114, 131, 'Couleurs très variées, et choix de position excellent. Bravo !', 14, '2022-03-15'),
(115, 149, 'Très beau dessin, les contrastes sont cependant très légers', 12, '2022-03-15'),
(116, 150, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11, '2022-03-15'),
(117, 151, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-03-15'),
(118, 169, 'Très beau dessin, les contrastes sont cependant très légers', 16, '2022-03-15'),
(119, 170, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 18, '2022-03-15'),
(120, 171, 'Couleurs très variées, et choix de position excellent. Bravo !', 13, '2022-03-15'),
(121, 189, 'Très beau dessin, les contrastes sont cependant très légers', 10, '2022-03-15'),
(122, 190, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 12, '2022-03-15'),
(123, 191, 'Couleurs très variées, et choix de position excellent. Bravo !', 14, '2022-03-15'),
(124, 209, 'Très beau dessin, les contrastes sont cependant très légers', 15, '2022-03-15'),
(125, 210, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17, '2022-03-15'),
(126, 211, 'Couleurs très variées, et choix de position excellent. Bravo !', 16, '2022-03-15'),
(127, 229, 'Très beau dessin, les contrastes sont cependant très légers', 11, '2022-03-15'),
(128, 230, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 13, '2022-03-15'),
(129, 231, 'Couleurs très variées, et choix de position excellent. Bravo !', 10, '2022-03-15'),
(130, 249, 'Très beau dessin, les contrastes sont cependant très légers', 18, '2022-03-15'),
(131, 250, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14, '2022-03-15'),
(132, 251, 'Couleurs très variées, et choix de position excellent. Bravo !', 12, '2022-03-15'),
(133, 269, 'Très beau dessin, les contrastes sont cependant très légers', 15, '2022-03-15'),
(134, 270, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 13, '2022-03-15'),
(135, 271, 'Couleurs très variées, et choix de position excellent. Bravo !', 16, '2022-03-15'),
(136, 309, 'Très beau dessin, les contrastes sont cependant très légers', 17, '2022-03-15'),
(137, 310, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 10, '2022-03-15'),
(138, 311, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-03-15'),
(139, 289, 'Très beau dessin, les contrastes sont cependant très légers', 18, '2022-03-15'),
(140, 290, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14, '2022-03-15'),
(141, 291, 'Couleurs très variées, et choix de position excellent. Bravo !', 13, '2022-03-15'),
(142, 9, 'Très beau dessin, les contrastes sont cependant très légers', 16, '2022-03-15'),
(143, 10, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 12, '2022-03-15'),
(144, 11, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-03-15');




INSERT INTO Evaluation (numDessin, numEvaluateur, commentaire, note, dateEvaluation)
VALUES
(145, 29, 'Très beau dessin, les contrastes sont cependant très légers', 15, '2022-04-15'),
(146, 30, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 12, '2022-04-15'),
(147, 31, 'Couleurs très variées, et choix de position excellent. Bravo !', 14, '2022-04-15'),
(148, 49, 'Très beau dessin, les contrastes sont cependant très légers', 17, '2022-04-15'),
(149, 50, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 13, '2022-04-15'),
(150, 51, 'Couleurs très variées, et choix de position excellent. Bravo !', 16, '2022-04-15'),
(151, 69, 'Très beau dessin, les contrastes sont cependant très légers', 11, '2022-04-15'),
(152, 70, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 18, '2022-04-15'),
(153, 71, 'Couleurs très variées, et choix de position excellent. Bravo !', 10, '2022-04-15'),
(154, 89, 'Très beau dessin, les contrastes sont cependant très légers', 14, '2022-04-15'),
(155, 90, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 15, '2022-04-15'),
(156, 91, 'Couleurs très variées, et choix de position excellent. Bravo !', 12, '2022-04-15'),
(157, 109, 'Très beau dessin, les contrastes sont cependant très légers', 18, '2022-04-15'),
(158, 110, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 16, '2022-04-15'),
(159, 111, 'Couleurs très variées, et choix de position excellent. Bravo !', 13, '2022-04-15'),
(160, 129, 'Très beau dessin, les contrastes sont cependant très légers', 10, '2022-04-15'),
(161, 130, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17, '2022-04-15'),
(162, 131, 'Couleurs très variées, et choix de position excellent. Bravo !', 14, '2022-04-15'),
(163, 149, 'Très beau dessin, les contrastes sont cependant très légers', 12, '2022-04-15'),
(164, 150, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 11, '2022-04-15'),
(165, 151, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-04-15'),
(166, 169, 'Très beau dessin, les contrastes sont cependant très légers', 16, '2022-04-15'),
(167, 170, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 18, '2022-04-15'),
(168, 171, 'Couleurs très variées, et choix de position excellent. Bravo !', 13, '2022-04-15'),
(169, 189, 'Très beau dessin, les contrastes sont cependant très légers', 10, '2022-04-15'),
(170, 190, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 12, '2022-04-15'),
(171, 191, 'Couleurs très variées, et choix de position excellent. Bravo !', 14, '2022-04-15'),
(172, 209, 'Très beau dessin, les contrastes sont cependant très légers', 15, '2022-04-15'),
(173, 210, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 17, '2022-04-15'),
(174, 211, 'Couleurs très variées, et choix de position excellent. Bravo !', 16, '2022-04-15'),
(175, 229, 'Très beau dessin, les contrastes sont cependant très légers', 11, '2022-04-15'),
(176, 230, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 13, '2022-04-15'),
(177, 231, 'Couleurs très variées, et choix de position excellent. Bravo !', 10, '2022-04-15'),
(178, 249, 'Très beau dessin, les contrastes sont cependant très légers', 18, '2022-04-15'),
(179, 250, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14, '2022-04-15'),
(180, 251, 'Couleurs très variées, et choix de position excellent. Bravo !', 12, '2022-04-15'),
(181, 269, 'Très beau dessin, les contrastes sont cependant très légers', 15, '2022-04-15'),
(182, 270, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 13, '2022-04-15'),
(183, 271, 'Couleurs très variées, et choix de position excellent. Bravo !', 16, '2022-04-15'),
(184, 309, 'Très beau dessin, les contrastes sont cependant très légers', 17, '2022-04-15'),
(185, 310, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 10, '2022-04-15'),
(186, 311, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-04-15'),
(187, 9, 'Très beau dessin, les contrastes sont cependant très légers', 18, '2022-04-15'),
(188, 10, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 14, '2022-04-15'),
(189, 11, 'Couleurs très variées, et choix de position excellent. Bravo !', 13, '2022-04-15'),
(190, 189, 'Très beau dessin, les contrastes sont cependant très légers', 16, '2022-04-15'),
(191, 290, 'La liaison entre le fond et le premier plan est bonne, il manque juste de détail. Beau dessin !', 12, '2022-04-15'),
(192, 291, 'Couleurs très variées, et choix de position excellent. Bravo !', 15, '2022-04-15');
