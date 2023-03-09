--
-- create schema
create schema demos;

--
-- drop table demos.contacts;
-- select * from demos.contacts;
create table if not exists demos.contacts (
  contacts_id serial primary key,
  first_name_t varchar(50) null,
  last_name_t varchar(50) null,
  email_t varchar(50) null,
  phone_t varchar(20) null,
  addr1_t varchar(50) null,
  addr2_t varchar(50) null,
  city_t varchar(50) null,
  state_t varchar(50) null,
  zip_code_t varchar(10) null,
  notes_t text null,
  aud_insert_dt date default current_date not null,
  aud_insert_ts timestamp(6) default current_timestamp not null,
  aud_update_ts timestamp(6) null
);

--
-- demo data from https://www.mockaroo.com/
insert into demos.contacts (first_name_t, last_name_t, email_t, phone_t, addr1_t, addr2_t, city_t, state_t, zip_code_t, notes_t) values 
('Anthea', 'Pasmore', 'apasmore0@sbwire.com', '740-266-0127', '78038 Lunder Lane', null, 'Columbus', 'OH', '43240', null)
,('Fayette', 'Gouth', 'fgouth1@xinhuanet.com', '309-769-0318', '14271 Sunfield Parkway', 'Suite 62', 'Bloomington', 'IL', '61709', null)
,('Linea', 'Bengtson', 'lbengtson2@alexa.com', '203-122-4251', '2 Blue Bill Park Avenue', null, 'Waterbury', 'CT', '06726', null)
,('Meir', 'Tesoe', 'mtesoe3@cisco.com', '812-939-7515', '512 Mockingbird Lane', null, 'Evansville', 'IN', '47705', null)
,('Edna', 'De Blasiis', 'edeblasiis4@purevolume.com', '253-322-5739', '9 Toban Point', null, 'Tacoma', 'WA', '98424', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
,('Collie', 'Lingner', 'clingner5@hugedomains.com', '772-423-2885', '5203 Becker Crossing', null, 'Port Saint Lucie', 'FL', '34985', null)
,('Pennie', 'Considine', 'pconsidine6@live.com', '651-905-1401', '8024 Farragut Pass', null, 'Minneapolis', 'MN', '55407', null)
,('Min', 'Gillinghams', 'mgillinghams7@imdb.com', '503-344-1188', '25 Bashford Court', null, 'Portland', 'OR', '97286', null)
,('Euell', 'Spehr', 'espehr8@umn.edu', '302-250-6243', '61 Montana Point', null, 'Wilmington', 'DE', '19886', null)
,('Stanwood', 'Somerton', 'ssomerton9@ustream.tv', '989-419-2765', '069 Dahle Plaza', null, 'Midland', 'MI', '48670', 'Pellentesque ultrices mattis odio.')
,('Shena', 'Isac', 'sisaca@ox.ac.uk', '205-165-3568', '20637 4th Way', null, 'Tuscaloosa', 'AL', '35487', null)
,('Demetri', 'Mansel', 'dmanselb@soundcloud.com', '585-519-6639', '691 Claremont Court', null, 'Rochester', 'NY', '14619', null)
,('Emilie', 'Cruden', 'ecrudenc@statcounter.com', '405-438-7739', '3 Aberg Center', 'PO Box 79024', 'Oklahoma City', 'OK', '73197', null)
,('Tomkin', 'Perdue', 'tperdued@homestead.com', '314-973-8651', '316 Novick Point', null, 'Saint Louis', 'MO', '63158', null)
,('Nanny', 'MacInerney', 'nmacinerneye@time.com', '510-369-7907', '2 Sommers Court', null, 'Sacramento', 'CA', '95823', null)
,('Alicea', 'Sarll', 'asarllf@businessinsider.com', '303-698-5815', '628 Utah Plaza', null, 'Denver', 'CO', '80279', null)
,('Brod', 'Raff', 'braffg@twitter.com', '202-169-0468', '51 Stone Corner Pass', null, 'Washington', 'DC', '20238', null)
,('Larisa', 'Kermath', 'lkermathh@360.cn', '702-391-9232', '72 Wayridge Hill', null, 'Las Vegas', 'NV', '89178', null)
,('Vivien', 'Mouse', 'vmousei@economist.com', '202-297-7638', '6665 Calypso Plaza', 'Room 988', 'Washington', 'DC', '20099', null)
,('Granger', 'Cicchillo', 'gcicchilloj@alibaba.com', '707-466-6025', '65 Arrowood Avenue', null, 'Petaluma', 'CA', '94975', null)
,('Giralda', 'Alleyne', 'galleynek@nasa.gov', '215-107-8882', '6741 Mcbride Junction', null, 'Philadelphia', 'PA', '19125', null)
,('Alexa', 'Ucchino', 'aucchinol@hc360.com', '417-783-2465', '35 Novick Alley', null, 'Springfield', 'MO', '65810', null)
,('Kamila', 'Leynton', 'kleyntonm@cyberchimps.com', '763-142-7334', '0155 Namekagon Drive', null, 'Monticello', 'MN', '55585', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.')
,('Louella', 'O''Scully', 'loscullyn@twitpic.com', '828-438-2558', '1432 Manley Crossing', '10th Floor', 'Asheville', 'NC', '28815', null)
,('Chiquia', 'Brockett', 'cbrocketto@chron.com', '214-176-1015', '24 Norway Maple Court', null, 'Dallas', 'TX', '75387', null)
,('Thurstan', 'Royden', 'troydenp@dmoz.org', '936-386-0772', '354 Morrow Road', null, 'Beaumont', 'TX', '77705', null)
,('Brant', 'Stanner', 'bstannerq@ca.gov', '215-297-8817', '45 Del Mar Plaza', null, 'Philadelphia', 'PA', '19141', null)
,('Georg', 'Longmore', 'glongmorer@uiuc.edu', '920-464-8953', '3834 Sugar Trail', 'PO Box 6203', 'Green Bay', 'WI', '54313', null)
,('Dory', 'Roskruge', 'droskruges@tiny.cc', '713-629-0007', '16 Eggendart Place', null, 'Pasadena', 'TX', '77505', null)
,('Leeanne', 'Novelli', 'lnovellit@cbc.ca', '317-775-5852', '5515 Rigney Hill', null, 'Indianapolis', 'IN', '46207', null)
,('Lita', 'Harmant', 'lharmantu@goodreads.com', '518-554-5836', '49 Marcy Plaza', null, 'Albany', 'NY', '12205', null)
,('Tatiana', 'Dommersen', 'tdommersenv@gov.uk', '213-361-8697', '33 Walton Lane', null, 'Los Angeles', 'CA', '90081', null)
,('Graham', 'Scarce', 'gscarcew@columbia.edu', '915-371-2542', '51 Pine View Hill', null, 'El Paso', 'TX', '79916', null)
,('Koo', 'Mogie', 'kmogiex@bloomberg.com', '713-667-4430', '73953 Shelley Court', '10th Floor', 'Houston', 'TX', '77240', null)
,('Ruthanne', 'Allawy', 'rallawyy@phpbb.com', '260-366-1826', '66 Mesta Terrace', null, 'Fort Wayne', 'IN', '46825', null)
,('Marion', 'Jelleman', 'mjellemanz@wunderground.com', '865-885-8522', '72763 Moland Lane', null, 'Knoxville', 'TN', '37919', null)
,('Devonna', 'Timbridge', 'dtimbridge10@tmall.com', '954-586-1122', '7646 Jay Road', null, 'Fort Lauderdale', 'FL', '33325', null)
,('Evangelin', 'Onthank', 'eonthank11@rediff.com', '312-441-5388', '878 Veith Hill', null, 'Chicago', 'IL', '60674', null)
,('Maria', 'Tenney', 'mtenney12@archive.org', '646-350-2590', '3321 Eastlawn Alley', null, 'New York City', 'NY', '10024', null)
,('Emiline', 'Wind', 'ewind13@dell.com', '913-391-6062', '363 Doe Crossing Circle', null, 'Shawnee Mission', 'KS', '66286', null)
,('Rolph', 'Angood', 'rangood14@guardian.co.uk', '319-452-1474', '43 Tony Terrace', 'Room 862', 'Cedar Rapids', 'IA', '52410', null)
,('Ruby', 'Gardener', 'rgardener15@gravatar.com', '915-454-9948', '212 Old Gate Point', null, 'El Paso', 'TX', '79934', null)
,('Faun', 'Geerling', 'fgeerling16@i2i.jp', '413-219-8267', '64742 Hanover Circle', null, 'Springfield', 'MA', '01152', null)
,('Rudolfo', 'Punchard', 'rpunchard17@eepurl.com', '954-861-3766', '4 Truax Parkway', null, 'Miami', 'FL', '33169', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.')
,('Bernadina', 'Whiteland', 'bwhiteland18@yahoo.com', '202-658-9220', '21044 Bunting Junction', null, 'Washington', 'DC', '20057', null)
,('Janene', 'Brede', 'jbrede19@usa.gov', '347-118-7293', '52 Elmside Place', null, 'Brooklyn', 'NY', '11241', null)
,('Andi', 'Lanfranchi', 'alanfranchi1a@scientificamerican.com', '561-850-5028', '92 Becker Circle', null, 'Lake Worth', 'FL', '33467', null)
,('Julius', 'Tupp', 'jtupp1b@t-online.de', '612-147-6919', '4 Continental Way', null, 'Saint Paul', 'MN', '55114', null)
,('Rivi', 'Dallinder', 'rdallinder1c@hugedomains.com', '216-626-5397', '74 Rieder Place', null, 'Cleveland', 'OH', '44191', null)
,('Perry', 'Lejeune', 'plejeune1d@godaddy.com', '704-259-9289', '2422 Bay Road', 'PO Box 21436', 'Charlotte', 'NC', '28205', null)
,('Ahmad', 'Pudsey', 'apudsey1e@sakura.ne.jp', '212-266-5269', '84 Upham Alley', null, 'New York City', 'NY', '10090', null)
,('Weston', 'Marke', 'wmarke1f@theguardian.com', '775-813-9012', '241 Pawling Park', null, 'Reno', 'NV', '89510', null)
,('Jessee', 'Mugford', 'jmugford1g@youtu.be', '202-591-1124', '2318 Ruskin Way', '7th Floor', 'Washington', 'DC', '20051', null)
,('Victoria', 'Kenyam', 'vkenyam1h@ftc.gov', '813-670-9186', '3 Manley Trail', null, 'Saint Petersburg', 'FL', '33705', null)
,('Garald', 'Alps', 'galps1i@unicef.org', '251-696-8268', '43178 Luster Hill', null, 'Mobile', 'AL', '36628', null)
,('Lin', 'Scad', 'lscad1j@house.gov', '347-741-5597', '5203 Sullivan Alley', null, 'Bronx', 'NY', '10469', null)
,('Thorny', 'Aucock', 'taucock1k@facebook.com', '865-195-7576', '82407 Scoville Junction', null, 'Knoxville', 'TN', '37995', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.')
,('Augustina', 'Janew', 'ajanew1l@sourceforge.net', '216-588-5015', '76996 Cherokee Hill', null, 'Cleveland', 'OH', '44111', null)
,('Brynn', 'Spurret', 'bspurret1m@dailymail.co.uk', '773-583-3983', '43 Bay Avenue', null, 'Chicago', 'IL', '60609', null)
,('Malinde', 'Bramstom', 'mbramstom1n@creativecommons.org', '972-255-5501', '92999 Express Center', null, 'Dallas', 'TX', '75226', null)
,('Conni', 'Ebdin', 'cebdin1o@tiny.cc', '203-913-0268', '2 Lyons Hill', null, 'Stamford', 'CT', '06905', null)
,('Pippo', 'Kubat', 'pkubat1p@joomla.org', '323-118-5323', '59302 Maryland Park', null, 'Los Angeles', 'CA', '90060', null)
,('Fergus', 'Luxen', 'fluxen1q@psu.edu', '571-200-5480', '51 Rusk Road', null, 'Merrifield', 'VA', '22119', null)
,('Sim', 'Elderidge', 'selderidge1r@amazonaws.com', '419-475-5352', '67234 Crest Line Way', null, 'Toledo', 'OH', '43656', null)
,('Guillemette', 'Jachimiak', 'gjachimiak1s@reuters.com', '505-143-7024', '35220 Gerald Street', null, 'Santa Fe', 'NM', '87592', null)
,('Hali', 'Bertlin', 'hbertlin1t@cyberchimps.com', '415-743-5316', '84 Barnett Circle', null, 'San Francisco', 'CA', '94142', null)
,('Juan', 'Cutill', 'jcutill1u@virginia.edu', '321-515-7963', '4 Mallard Point', 'PO Box 31073', 'Palm Bay', 'FL', '32909', null)
,('Bevvy', 'Carrell', 'bcarrell1v@aol.com', '626-723-5263', '33818 Tennyson Place', null, 'Whittier', 'CA', '90605', null)
,('Lotta', 'Cowser', 'lcowser1w@pen.io', '832-197-5591', '105 4th Pass', null, 'Houston', 'TX', '77030', null)
,('Mersey', 'McMurtyr', 'mmcmurtyr1x@devhub.com', '240-978-1931', '61209 Melody Place', null, 'Rockville', 'MD', '20851', null)
,('Craig', 'Minithorpe', 'cminithorpe1y@miibeian.gov.cn', '561-455-5975', '79 Elka Trail', 'Apt 1741', 'West Palm Beach', 'FL', '33421', null)
,('Chaddie', 'Meltetal', 'cmeltetal1z@jigsy.com', '317-370-7844', '5817 Sachs Alley', null, 'Indianapolis', 'IN', '46216', null)
,('Rafaello', 'Smullen', 'rsmullen20@virginia.edu', '773-578-0711', '3025 Maywood Circle', 'Room 212', 'Chicago', 'IL', '60609', null)
,('Alf', 'Stacey', 'astacey21@jiathis.com', '585-278-2569', '19201 Troy Junction', 'Suite 66', 'Rochester', 'NY', '14619', null)
,('Jaimie', 'Tregear', 'jtregear22@earthlink.net', '205-746-3895', '28019 Marcy Park', null, 'Birmingham', 'AL', '35205', null)
,('Tessy', 'Stainland', 'tstainland23@google.ru', '586-438-8346', '38439 Burrows Lane', null, 'Detroit', 'MI', '48224', null)
,('Marlene', 'Norley', 'mnorley24@shareasale.com', '404-930-6949', '866 Sommers Alley', null, 'Duluth', 'GA', '30096', null)
,('Eldin', 'Cridland', 'ecridland25@nyu.edu', '678-711-4973', '90 Amoth Street', null, 'Atlanta', 'GA', '30306', null)
,('Charlot', 'Speir', 'cspeir26@google.pl', '202-788-8744', '2 Longview Junction', null, 'Washington', 'DC', '20436', null)
,('Chaim', 'Davydenko', 'cdavydenko27@chron.com', '859-374-3214', '9528 Green Junction', null, 'Lexington', 'KY', '40586', null)
,('Adan', 'Bentjens', 'abentjens28@blogtalkradio.com', '216-698-4043', '13 Beilfuss Park', null, 'Cleveland', 'OH', '44130', 'Sed accumsan felis. Ut at dolor quis odio consequat varius.')
,('Thorn', 'Iannelli', 'tiannelli29@ca.gov', '412-598-4336', '31966 Troy Avenue', 'Apt 1920', 'Pittsburgh', 'PA', '15220', null)
,('Jelene', 'Battlestone', 'jbattlestone2a@xing.com', '704-874-1802', '0793 Derek Junction', null, 'Charlotte', 'NC', '28299', null)
,('Lodovico', 'Butterley', 'lbutterley2b@so-net.ne.jp', '601-285-8109', '4703 Jenna Way', null, 'Jackson', 'MS', '39216', 'Donec dapibus. Duis at velit eu est congue elementum.')
,('Priscella', 'Dabel', 'pdabel2c@economist.com', '706-696-8246', '75159 Monument Trail', '16th Floor', 'Columbus', 'GA', '31998', null)
,('Vanna', 'Weins', 'vweins2d@goo.gl', '515-100-9489', '2 Bowman Circle', '3rd Floor', 'Des Moines', 'IA', '50347', null)
,('Giacomo', 'Sansum', 'gsansum2e@about.com', '717-630-5733', '431 Fuller Circle', null, 'Harrisburg', 'PA', '17110', null)
,('Phip', 'Mullard', 'pmullard2f@prnewswire.com', '202-948-9569', '1212 Bonner Park', null, 'Washington', 'DC', '20029', null)
,('Mordy', 'Tickle', 'mtickle2g@wufoo.com', '603-749-7403', '0778 International Street', null, 'Portsmouth', 'NH', '03804', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.')
,('Angeli', 'Shilladay', 'ashilladay2h@github.io', '713-980-2975', '50710 Mesta Plaza', 'PO Box 83349', 'Houston', 'TX', '77288', null)
,('Lucio', 'Wasmuth', 'lwasmuth2i@hud.gov', '559-796-3887', '88806 Monument Lane', '14th Floor', 'Modesto', 'CA', '95354', null)
,('Aime', 'Hayes', 'ahayes2j@columbia.edu', '816-857-5672', '6086 4th Center', null, 'Kansas City', 'MO', '64179', null)
,('Brucie', 'Mugridge', 'bmugridge2k@tamu.edu', '417-804-8148', '0 Bartillon Pass', null, 'Springfield', 'MO', '65810', null)
,('Aubrey', 'Ciraldo', 'aciraldo2l@miitbeian.gov.cn', '305-633-9033', '84 Atwood Pass', null, 'Miami', 'FL', '33190', null)
,('Darda', 'Boardman', 'dboardman2m@sitemeter.com', '970-718-6786', '5 Basil Alley', null, 'Fort Collins', 'CO', '80525', null)
,('Betteanne', 'Hildred', 'bhildred2n@issuu.com', '540-904-1374', '6 Montana Terrace', null, 'Roanoke', 'VA', '24020', null)
,('Buiron', 'Romanski', 'bromanski2o@privacy.gov.au', '828-227-3420', '1121 New Castle Drive', null, 'Asheville', 'NC', '28805', null)
,('Doug', 'Backhurst', 'dbackhurst2p@networksolutions.com', '267-710-9339', '55 Muir Avenue', null, 'Levittown', 'PA', '19058', null)
,('Sigmund', 'Trodler', 'strodler2q@sciencedaily.com', '718-409-6994', '304 Tennyson Pass', 'Apt 1253', 'Flushing', 'NY', '11355', null)
,('Tad', 'Kaman', 'tkaman2r@tripod.com', '505-392-1543', '342 Elmside Park', null, 'Santa Fe', 'NM', '87505', null)
,('Jilleen', 'Langfield', 'jlangfield2s@sakura.ne.jp', '754-425-6121', '925 Bay Way', null, 'Fort Lauderdale', 'FL', '33345', null)
,('Corby', 'Pollendine', 'cpollendine2t@howstuffworks.com', '915-755-9384', '4831 Portage Alley', null, 'El Paso', 'TX', '79955', null)
,('Amii', 'Banting', 'abanting2u@prnewswire.com', '404-918-6031', '9910 Del Mar Point', null, 'Lawrenceville', 'GA', '30045', null)
,('Granthem', 'Pritchett', 'gpritchett2v@timesonline.co.uk', '915-518-1194', '6733 Northwestern Park', null, 'El Paso', 'TX', '79911', null)
,('Thedrick', 'Selvester', 'tselvester2w@desdev.cn', '816-987-0184', '347 Shopko Trail', null, 'Kansas City', 'MO', '64136', null)
,('Rochette', 'Seamons', 'rseamons2x@ameblo.jp', '909-529-7700', '857 Dovetail Pass', 'Suite 39', 'San Bernardino', 'CA', '92415', null)
,('Prissie', 'Gouinlock', 'pgouinlock2y@cpanel.net', '713-814-2799', '81569 Independence Lane', null, 'Houston', 'TX', '77245', null)
,('Kyle', 'Ovill', 'kovill2z@eventbrite.com', '212-309-6237', '0165 Quincy Circle', null, 'New York City', 'NY', '10249', null)
,('Hansiain', 'Biaggetti', 'hbiaggetti30@sciencedaily.com', '361-996-6021', '384 Comanche Lane', 'Room 939', 'Corpus Christi', 'TX', '78405', null)
,('Garvey', 'Delamaine', 'gdelamaine31@360.cn', '254-100-0943', '814 Porter Circle', null, 'Waco', 'TX', '76796', null)
,('Guthry', 'Primmer', 'gprimmer32@gravatar.com', '415-298-9377', '737 Oneill Avenue', null, 'San Francisco', 'CA', '94147', null)
,('Rory', 'Alker', 'ralker33@scientificamerican.com', '260-958-6393', '06215 Westport Place', 'PO Box 15616', 'Fort Wayne', 'IN', '46825', null)
,('Carlin', 'Birkett', 'cbirkett34@free.fr', '847-514-3154', '39 Springview Junction', null, 'Evanston', 'IL', '60208', null)
,('Saw', 'Surgison', 'ssurgison35@tinyurl.com', '208-518-9379', '9344 Moulton Road', null, 'Boise', 'ID', '83757', null)
,('Ammamaria', 'Weaving', 'aweaving36@amazon.co.uk', '937-483-0190', '6870 Ronald Regan Circle', 'Apt 34', 'Dayton', 'OH', '45408', null)
,('Constancy', 'Chardin', 'cchardin37@google.de', '918-218-1106', '7 Union Plaza', null, 'Tulsa', 'OK', '74184', null)
,('Maddie', 'Petlyura', 'mpetlyura38@oakley.com', '626-654-1859', '56945 Carpenter Street', null, 'Pasadena', 'CA', '91117', null)
,('Waldon', 'Romans', 'wromans39@hp.com', '412-196-1948', '226 Bayside Crossing', null, 'Pittsburgh', 'PA', '15240', null)
,('Jeremias', 'Copin', 'jcopin3a@virginia.edu', '309-870-4176', '0501 Sunbrook Point', null, 'Peoria', 'IL', '61651', null)
,('Symon', 'Harriot', 'sharriot3b@nydailynews.com', '520-234-5780', '649 Kings Avenue', null, 'Tucson', 'AZ', '85725', null)
,('Flint', 'Willets', 'fwillets3c@redcross.org', '423-801-5849', '57867 Brentwood Park', null, 'Kingsport', 'TN', '37665', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.')
,('Robbin', 'Simper', 'rsimper3d@mysql.com', '317-690-7089', '956 Logan Hill', null, 'Indianapolis', 'IN', '46202', null)
,('Palm', 'Beckmann', 'pbeckmann3e@wikispaces.com', '916-315-9119', '18 Upham Crossing', 'Suite 26', 'Sacramento', 'CA', '94273', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.')
,('Garland', 'Peres', 'gperes3f@nih.gov', '203-479-8800', '46257 Gateway Hill', null, 'New Haven', 'CT', '06533', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.')
,('Pearline', 'Kemmis', 'pkemmis3g@eepurl.com', '716-624-2131', '471 Spenser Park', null, 'Buffalo', 'NY', '14276', null)
,('Oriana', 'Winch', 'owinch3h@t-online.de', '336-563-8130', '9 Barnett Court', null, 'Greensboro', 'NC', '27455', null)
,('Tory', 'Govett', 'tgovett3i@about.com', '603-999-3189', '56 Vernon Point', null, 'Manchester', 'NH', '03105', null)
,('Dyane', 'Rixon', 'drixon3j@unicef.org', '909-729-6716', '25 Mcguire Trail', 'Suite 78', 'Pomona', 'CA', '91797', null)
,('Brunhilda', 'Blackston', 'bblackston3k@gmpg.org', '260-427-8583', '59 Esch Junction', null, 'Fort Wayne', 'IN', '46862', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Leon', 'Urion', 'lurion3l@nature.com', '312-111-8354', '7186 Di Loreto Street', null, 'Aurora', 'IL', '60505', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.')
,('Lila', 'Rutherfoord', 'lrutherfoord3m@purevolume.com', '813-923-6270', '084 Fairview Parkway', null, 'Tampa', 'FL', '33694', null)
,('Selinda', 'Bachnic', 'sbachnic3n@issuu.com', '202-999-9515', '2 Ridgeway Park', null, 'Washington', 'DC', '20599', null)
,('Cymbre', 'Emburey', 'cemburey3o@nba.com', '480-129-3464', '729 Old Shore Crossing', null, 'Scottsdale', 'AZ', '85271', null)
,('Jobina', 'Niblo', 'jniblo3p@bravesites.com', '402-564-1254', '758 Bartelt Alley', null, 'Lincoln', 'NE', '68531', null)
,('Paco', 'Donnachie', 'pdonnachie3q@photobucket.com', '216-214-9497', '81090 Maryland Place', null, 'Cleveland', 'OH', '44118', null)
,('Weylin', 'Bruins', 'wbruins3r@mediafire.com', '434-710-8144', '7 Old Gate Way', null, 'Charlottesville', 'VA', '22908', null)
,('Berty', 'Pinwill', 'bpinwill3s@jiathis.com', '202-636-9959', '39710 Hovde Terrace', null, 'Alexandria', 'VA', '22309', null)
,('Jami', 'Popworth', 'jpopworth3t@meetup.com', '304-985-3920', '84310 Dixon Alley', null, 'Charleston', 'WV', '25321', null)
,('Mareah', 'Vowdon', 'mvowdon3u@tuttocitta.it', '808-349-1480', '10325 Muir Alley', '2nd Floor', 'Honolulu', 'HI', '96840', null)
,('Isidor', 'Lefort', 'ilefort3v@ucoz.com', '202-364-0124', '7 Hintze Trail', 'PO Box 80308', 'Washington', 'DC', '20599', null)
,('Fey', 'Scutter', 'fscutter3w@netscape.com', '860-990-5672', '76 Novick Park', null, 'Hartford', 'CT', '06105', null)
,('Almira', 'Hook', 'ahook3x@purevolume.com', '203-868-4868', '52 Evergreen Place', 'PO Box 26384', 'Waterbury', 'CT', '06705', null)
,('Denny', 'Brodeur', 'dbrodeur3y@oracle.com', '801-560-3259', '3 Dawn Drive', 'Suite 29', 'Salt Lake City', 'UT', '84170', null)
,('Devlin', 'Waiting', 'dwaiting3z@kickstarter.com', '907-978-4135', '7768 Victoria Circle', null, 'Fairbanks', 'AK', '99790', null)
,('Nikki', 'Orred', 'norred40@surveymonkey.com', '603-367-6035', '1493 Susan Parkway', null, 'Portsmouth', 'NH', '00214', null)
,('Gipsy', 'Terbeek', 'gterbeek41@nih.gov', '701-554-9328', '2 Cottonwood Center', null, 'Fargo', 'ND', '58122', null)
,('Dionne', 'Phippard', 'dphippard42@nba.com', '480-740-6186', '38 Dixon Plaza', 'Room 110', 'Phoenix', 'AZ', '85045', null)
,('Esra', 'Letten', 'eletten43@weibo.com', '216-753-4093', '339 Dunning Hill', 'Suite 49', 'Cleveland', 'OH', '44105', null)
,('Leonerd', 'Lorincz', 'llorincz44@uiuc.edu', '623-148-6979', '6000 Packers Road', null, 'Phoenix', 'AZ', '85015', null)
,('Jennica', 'Blasoni', 'jblasoni45@cbslocal.com', '412-678-6236', '83 Thackeray Center', null, 'Pittsburgh', 'PA', '15240', null)
,('Rhody', 'Blezard', 'rblezard46@parallels.com', '561-848-0703', '3434 Eastlawn Place', null, 'Lake Worth', 'FL', '33467', null)
,('Thornton', 'Danilishin', 'tdanilishin47@nbcnews.com', '804-300-5298', '87731 Buell Parkway', null, 'Richmond', 'VA', '23228', null)
,('Tiffany', 'Klimentyonok', 'tklimentyonok48@shareasale.com', '412-367-8134', '15290 Kensington Street', 'Room 1014', 'Pittsburgh', 'PA', '15230', null)
,('Charlene', 'Moulsdale', 'cmoulsdale49@rambler.ru', '843-227-7803', '3480 Village Green Plaza', null, 'Myrtle Beach', 'SC', '29579', null)
,('Charlton', 'Garred', 'cgarred4a@hao123.com', '915-143-5081', '9442 Cherokee Plaza', null, 'El Paso', 'TX', '88525', null)
,('Willa', 'Spratley', 'wspratley4b@aol.com', '920-845-9180', '9 Larry Road', null, 'Milwaukee', 'WI', '53205', null)
,('Dov', 'Wiersma', 'dwiersma4c@youtube.com', '619-723-0584', '90 Pennsylvania Terrace', null, 'San Diego', 'CA', '92165', null)
,('Kaylil', 'Simonsson', 'ksimonsson4d@cargocollective.com', '614-210-0218', '9908 Rigney Place', null, 'Columbus', 'OH', '43215', null)
,('Danya', 'Prall', 'dprall4e@technorati.com', '786-592-7654', '42049 Pennsylvania Junction', '12th Floor', 'Miami', 'FL', '33111', null)
,('Benedick', 'Hankard', 'bhankard4f@example.com', '804-995-5469', '5 Hoffman Parkway', null, 'Richmond', 'VA', '23260', null)
,('Janifer', 'Dutnell', 'jdutnell4g@hugedomains.com', '404-354-8729', '95556 David Court', null, 'Atlanta', 'GA', '30343', null)
,('Ingrid', 'Eastgate', 'ieastgate4h@dyndns.org', '202-567-2434', '96804 Gateway Court', null, 'Washington', 'DC', '20566', null)
,('Sybil', 'Burgyn', 'sburgyn4i@nyu.edu', '573-439-6733', '44286 Thierer Point', null, 'Jefferson City', 'MO', '65105', null)
,('Guntar', 'Buckner', 'gbuckner4j@prnewswire.com', '605-597-4757', '997 Mifflin Junction', null, 'Sioux Falls', 'SD', '57198', null)
,('Julianna', 'Shirt', 'jshirt4k@columbia.edu', '415-980-0785', '677 Washington Center', 'Suite 54', 'San Francisco', 'CA', '94154', null)
,('Even', 'Tonkes', 'etonkes4l@biglobe.ne.jp', '202-292-8445', '34827 Crownhardt Place', null, 'Washington', 'DC', '20238', null)
,('Angil', 'Trickett', 'atrickett4m@goodreads.com', '716-138-9843', '74395 American Ash Crossing', null, 'Buffalo', 'NY', '14205', 'Etiam justo. Etiam pretium iaculis justo.')
,('Penrod', 'Storch', 'pstorch4n@creativecommons.org', '754-147-9369', '155 Westerfield Parkway', null, 'Fort Lauderdale', 'FL', '33355', null)
,('Dinah', 'Chevin', 'dchevin4o@apple.com', '215-694-0755', '14 Mallory Street', null, 'Philadelphia', 'PA', '19196', null)
,('Isabelita', 'Clavey', 'iclavey4p@cisco.com', '781-345-5611', '03 Meadow Valley Trail', null, 'Lynn', 'MA', '01905', null)
,('Enos', 'Abbess', 'eabbess4q@lulu.com', '571-994-9058', '5952 Old Gate Park', null, 'Sterling', 'VA', '20167', null)
,('Pip', 'Balazin', 'pbalazin4r@rambler.ru', '915-187-9666', '142 Sachs Plaza', null, 'El Paso', 'TX', '88579', null)
,('Agnes', 'Ferby', 'aferby4s@prlog.org', '202-219-3214', '66 David Place', null, 'Washington', 'DC', '56944', null)
,('Felice', 'Francklin', 'ffrancklin4t@tamu.edu', '616-306-8968', '784 Hanover Parkway', null, 'Grand Rapids', 'MI', '49544', null)
,('Shelia', 'Domke', 'sdomke4u@telegraph.co.uk', '312-993-0898', '0219 Briar Crest Circle', null, 'Chicago', 'IL', '60614', null)
,('Cammy', 'Hubbard', 'chubbard4v@simplemachines.org', '540-268-9508', '6 Hooker Plaza', null, 'Charlottesville', 'VA', '22903', null)
,('Helyn', 'Story', 'hstory4w@nationalgeographic.com', '713-712-0211', '905 Burning Wood Hill', '6th Floor', 'Houston', 'TX', '77299', null)
,('Niki', 'Habden', 'nhabden4x@rambler.ru', '814-364-6442', '92 Eastlawn Road', 'Suite 20', 'Erie', 'PA', '16550', null)
,('Amitie', 'Jerman', 'ajerman4y@com.com', '703-843-7361', '78 Scott Crossing', null, 'Washington', 'DC', '20041', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.')
,('Mona', 'Hampton', 'mhampton4z@nyu.edu', '404-699-2932', '72 Green Point', null, 'Atlanta', 'GA', '30386', null)
,('Caitlin', 'Hanwell', 'chanwell50@pen.io', '727-194-9043', '1 Summer Ridge Lane', null, 'Saint Petersburg', 'FL', '33742', null)
,('Casey', 'Fawkes', 'cfawkes51@lulu.com', '512-958-6779', '479 New Castle Circle', null, 'Austin', 'TX', '78721', null)
,('Annelise', 'Nesby', 'anesby52@instagram.com', '508-563-2475', '30588 Pond Road', null, 'Waltham', 'MA', '02453', null)
,('Steward', 'Handscomb', 'shandscomb53@etsy.com', '410-285-8809', '03229 Sutteridge Street', null, 'Ridgely', 'MD', '21684', null)
,('Shea', 'Stoile', 'sstoile54@hostgator.com', '702-901-1216', '29 Arrowood Trail', null, 'Las Vegas', 'NV', '89145', null)
,('Gal', 'Meachem', 'gmeachem55@constantcontact.com', '309-747-1520', '4993 Melody Point', null, 'Peoria', 'IL', '61614', null)
,('Hermon', 'Benoi', 'hbenoi56@earthlink.net', '925-734-8962', '0 Washington Terrace', null, 'Concord', 'CA', '94522', null)
,('Gilemette', 'Gasson', 'ggasson57@fotki.com', '203-379-8934', '8981 Sachtjen Parkway', null, 'Danbury', 'CT', '06816', null)
,('Marlene', 'Diss', 'mdiss58@furl.net', '210-848-6368', '394 Longview Hill', 'Room 1987', 'San Antonio', 'TX', '78255', null)
,('Cleon', 'Welbelove', 'cwelbelove59@cbslocal.com', '407-267-4200', '9 Mesta Street', '17th Floor', 'Orlando', 'FL', '32835', null)
,('Grover', 'Faulconer', 'gfaulconer5a@sphinn.com', '915-178-0659', '23 Lawn Point', null, 'El Paso', 'TX', '79977', null)
,('Jayne', 'Chaytor', 'jchaytor5b@csmonitor.com', '360-731-5726', '857 Kinsman Place', null, 'Olympia', 'WA', '98506', null)
,('Eal', 'Whinney', 'ewhinney5c@about.com', '719-794-4794', '0250 Shasta Avenue', 'Apt 1554', 'Colorado Springs', 'CO', '80915', null)
,('Forster', 'Hillaby', 'fhillaby5d@ocn.ne.jp', '903-267-1837', '6 Bunker Hill Plaza', null, 'Tyler', 'TX', '75710', null)
,('Brittni', 'Kleinholz', 'bkleinholz5e@tripadvisor.com', '405-871-0256', '35513 Mitchell Trail', null, 'Oklahoma City', 'OK', '73129', null)
,('Oona', 'Fleetham', 'ofleetham5f@ftc.gov', '717-813-7914', '446 Mandrake Plaza', null, 'Lancaster', 'PA', '17622', null)
,('Benson', 'Arrighi', 'barrighi5g@jiathis.com', '916-800-3175', '95177 Warner Road', null, 'Sacramento', 'CA', '95838', null)
,('Gwennie', 'Ryley', 'gryley5h@phpbb.com', '757-574-3211', '00994 Cottonwood Hill', null, 'Virginia Beach', 'VA', '23454', null)
,('Johnette', 'Count', 'jcount5i@walmart.com', '501-837-6218', '4339 Vermont Parkway', null, 'Little Rock', 'AR', '72222', null)
,('Maure', 'Carlisso', 'mcarlisso5j@bing.com', '630-989-7132', '1913 Grim Avenue', null, 'Aurora', 'IL', '60505', null)
,('Donny', 'Veryard', 'dveryard5k@ifeng.com', '212-840-0275', '4921 Farmco Terrace', null, 'Brooklyn', 'NY', '11247', null)
,('Christan', 'Dannatt', 'cdannatt5l@ibm.com', '843-494-8373', '877 Valley Edge Park', 'Apt 1535', 'Charleston', 'SC', '29403', null)
,('Ruperto', 'Licence', 'rlicence5m@360.cn', '801-787-5594', '4091 Arizona Point', null, 'Ogden', 'UT', '84403', null)
,('Dannye', 'Edinburgh', 'dedinburgh5n@netlog.com', '915-496-5335', '9217 Katie Junction', null, 'El Paso', 'TX', '79940', null)
,('Leta', 'Frizzell', 'lfrizzell5o@cbc.ca', '318-646-2677', '7 Shopko Court', null, 'Shreveport', 'LA', '71166', null)
,('Marylinda', 'Watkinson', 'mwatkinson5p@discuz.net', '502-520-1347', '06 Kedzie Court', null, 'Louisville', 'KY', '40210', null)
,('Charisse', 'Eakins', 'ceakins5q@cbslocal.com', '915-869-4534', '775 Stephen Circle', 'Apt 549', 'El Paso', 'TX', '88514', null)
,('Toma', 'Fantin', 'tfantin5r@latimes.com', '405-654-7292', '958 Anderson Terrace', null, 'Oklahoma City', 'OK', '73104', null)
,('Merry', 'Nassey', 'mnassey5s@tinyurl.com', '337-780-6054', '6551 High Crossing Drive', null, 'Lake Charles', 'LA', '70607', null)
,('Heath', 'Dauncey', 'hdauncey5t@wikispaces.com', '801-588-0285', '49 Monica Junction', null, 'Salt Lake City', 'UT', '84145', null)
,('Lorry', 'Alexandersen', 'lalexandersen5u@technorati.com', '623-523-7888', '6362 Bashford Junction', null, 'Glendale', 'AZ', '85305', null)
,('Gwynne', 'Comfort', 'gcomfort5v@google.com.br', '806-653-4197', '01 Lukken Road', null, 'Amarillo', 'TX', '79176', null)
,('Karlen', 'Bohills', 'kbohills5w@bbb.org', '610-710-6948', '5115 Gateway Lane', null, 'Philadelphia', 'PA', '19151', null)
,('Zollie', 'Blastock', 'zblastock5x@i2i.jp', '208-609-8788', '57 Arkansas Plaza', null, 'Boise', 'ID', '83716', null)
,('Lorrie', 'Crouse', 'lcrouse5y@deviantart.com', '253-363-8635', '4762 Reinke Drive', null, 'Tacoma', 'WA', '98424', null)
,('Tally', 'Courtney', 'tcourtney5z@comcast.net', '703-557-4346', '76 Fairview Point', null, 'Silver Spring', 'MD', '20904', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.')
,('Salim', 'Starkings', 'sstarkings60@elegantthemes.com', '203-522-0989', '68018 2nd Hill', 'Suite 56', 'New Haven', 'CT', '06533', null)
,('Moshe', 'Saturley', 'msaturley61@miitbeian.gov.cn', '302-647-3015', '8544 Pond Point', null, 'Newark', 'DE', '19725', null)
,('Felice', 'Headland', 'fheadland62@g.co', '478-182-1815', '0 Commercial Terrace', 'Apt 80', 'Macon', 'GA', '31205', null)
,('Leif', 'Cornehl', 'lcornehl63@ebay.com', '913-758-1158', '53556 Lawn Terrace', null, 'Shawnee Mission', 'KS', '66286', null)
,('Aksel', 'Brock', 'abrock64@blog.com', '626-753-0800', '1 Nelson Circle', null, 'Whittier', 'CA', '90605', null)
,('Ado', 'Heatly', 'aheatly65@stumbleupon.com', '360-457-1408', '9 Grim Point', null, 'Vancouver', 'WA', '98682', null)
,('Erin', 'Weston', 'eweston66@blogspot.com', '915-282-8493', '989 Cottonwood Parkway', null, 'El Paso', 'TX', '79940', null)
,('Monique', 'Stuer', 'mstuer67@squidoo.com', '941-991-6440', '11557 Scofield Avenue', 'Suite 98', 'Bradenton', 'FL', '34282', null)
,('Gerladina', 'Huett', 'ghuett68@amazonaws.com', '214-495-3367', '25289 Dahle Alley', null, 'Dallas', 'TX', '75358', null)
,('Hazel', 'Britcher', 'hbritcher69@skype.com', '586-420-9539', '14664 Lillian Junction', null, 'Detroit', 'MI', '48206', null)
,('Lawry', 'Whetland', 'lwhetland6a@hibu.com', '562-994-0425', '004 Buena Vista Way', null, 'Whittier', 'CA', '90610', null)
,('Wernher', 'Hultberg', 'whultberg6b@ebay.com', '303-387-8384', '1 Raven Drive', null, 'Boulder', 'CO', '80305', null)
,('Netty', 'Togher', 'ntogher6c@hatena.ne.jp', '937-125-3360', '61970 East Way', 'PO Box 65878', 'Dayton', 'OH', '45426', null)
,('Sharyl', 'Salkeld', 'ssalkeld6d@goo.ne.jp', '303-509-9730', '0 Sycamore Street', null, 'Aurora', 'CO', '80045', null)
,('Lancelot', 'Tallach', 'ltallach6e@dion.ne.jp', '706-654-9150', '043 Fairfield Trail', null, 'Augusta', 'GA', '30919', null)
,('Petey', 'Hengoed', 'phengoed6f@berkeley.edu', '858-153-6823', '1 Gulseth Road', 'Suite 89', 'Santa Clara', 'CA', '95054', null)
,('Livia', 'Moraleda', 'lmoraleda6g@posterous.com', '408-699-4615', '9437 Sheridan Center', null, 'San Jose', 'CA', '95113', null)
,('Dyanna', 'Emeline', 'demeline6h@nsw.gov.au', '860-922-5997', '62 7th Crossing', null, 'Hartford', 'CT', '06105', null)
,('Dallas', 'Greedyer', 'dgreedyer6i@nbcnews.com', '415-638-0621', '52 Magdeline Place', null, 'San Francisco', 'CA', '94177', null)
,('Flss', 'Emmet', 'femmet6j@washington.edu', '412-138-4791', '64 Armistice Way', 'PO Box 25530', 'Pittsburgh', 'PA', '15255', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.')
,('Dianne', 'Camellini', 'dcamellini6k@about.com', '559-597-5752', '9 Canary Center', 'Room 1240', 'Fresno', 'CA', '93778', null)
,('Kassandra', 'Raysdale', 'kraysdale6l@amazon.de', '713-513-8624', '9 Acker Plaza', null, 'Houston', 'TX', '77260', null)
,('Adolpho', 'Gioani', 'agioani6m@myspace.com', '602-308-2914', '8 Almo Court', null, 'Phoenix', 'AZ', '85010', null)
,('Abel', 'Sarle', 'asarle6n@yelp.com', '915-706-1900', '0008 Farragut Terrace', null, 'El Paso', 'TX', '79923', null)
,('Jobi', 'Sexty', 'jsexty6o@jiathis.com', '954-797-5084', '6300 Ramsey Plaza', null, 'Fort Lauderdale', 'FL', '33315', null)
,('Gennie', 'Short', 'gshort6p@google.de', '859-883-0366', '46216 Fallview Hill', null, 'Lexington', 'KY', '40581', null)
,('Vina', 'Topping', 'vtopping6q@omniture.com', '504-813-2135', '112 Arrowood Parkway', null, 'New Orleans', 'LA', '70179', null)
,('Renault', 'Gauthorpp', 'rgauthorpp6r@t.co', '202-812-6035', '996 Service Alley', null, 'Washington', 'DC', '20238', null)
,('Angy', 'Stainson', 'astainson6s@vinaora.com', '804-318-0849', '6112 Sutteridge Road', 'Suite 2', 'Richmond', 'VA', '23208', null)
,('Jillie', 'Verlinde', 'jverlinde6t@rakuten.co.jp', '713-144-8206', '5 Merry Circle', null, 'Houston', 'TX', '77255', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
,('Carny', 'Libri', 'clibri6u@ustream.tv', '863-642-6654', '5604 Meadow Vale Circle', 'Apt 83', 'Lakeland', 'FL', '33805', null)
,('Bess', 'Klaussen', 'bklaussen6v@imdb.com', '214-683-6589', '72 Bowman Way', null, 'Arlington', 'TX', '76011', null)
,('Meyer', 'Chastagnier', 'mchastagnier6w@geocities.com', '205-309-5105', '1432 Graedel Way', 'Room 1868', 'Birmingham', 'AL', '35244', null)
,('Maureen', 'Adie', 'madie6x@youtube.com', '918-972-7041', '99 Village Green Center', null, 'Tulsa', 'OK', '74170', null)
,('Gerek', 'Szymonwicz', 'gszymonwicz6y@people.com.cn', '212-334-3821', '3 Muir Center', null, 'New York City', 'NY', '10203', null)
,('Deirdre', 'Graine', 'dgraine6z@buzzfeed.com', '330-800-1285', '10 Sullivan Court', null, 'Youngstown', 'OH', '44505', null)
,('Kipper', 'Chesterton', 'kchesterton70@slideshare.net', '651-208-6688', '2325 Crownhardt Way', 'Room 1745', 'Saint Paul', 'MN', '55188', null)
,('Marlie', 'Dupoy', 'mdupoy71@live.com', '251-264-2897', '685 Blackbird Place', 'PO Box 2919', 'Mobile', 'AL', '36670', null)
,('Elayne', 'Swinfon', 'eswinfon72@nytimes.com', '202-189-7118', '869 Prentice Parkway', null, 'Washington', 'DC', '20062', null)
,('Robbie', 'Straughan', 'rstraughan73@si.edu', '860-546-4479', '982 Macpherson Hill', null, 'West Hartford', 'CT', '06127', null)
,('Obed', 'Slaughter', 'oslaughter74@over-blog.com', '419-168-0399', '122 Stang Circle', 'Room 246', 'Mansfield', 'OH', '44905', null)
,('Ban', 'Murgatroyd', 'bmurgatroyd75@soundcloud.com', '305-640-7991', '9 Moose Terrace', null, 'Miami', 'FL', '33261', null)
,('Truman', 'Jarrell', 'tjarrell76@free.fr', '480-513-5300', '1 Harper Parkway', 'Suite 88', 'Phoenix', 'AZ', '85025', null)
,('Shanon', 'Keetley', 'skeetley77@xinhuanet.com', '602-106-1700', '1093 Northland Court', null, 'Mesa', 'AZ', '85210', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.')
,('Flint', 'Rosario', 'frosario78@dailymail.co.uk', '325-350-5763', '98988 Eagle Crest Road', null, 'Abilene', 'TX', '79699', null)
,('Irma', 'Brigdale', 'ibrigdale79@archive.org', '713-748-3872', '10200 Dayton Trail', null, 'Pasadena', 'TX', '77505', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.')
,('Leeland', 'Dobrovsky', 'ldobrovsky7a@about.me', '915-235-0389', '6722 Dahle Circle', null, 'El Paso', 'TX', '79923', null)
,('Candace', 'Keasy', 'ckeasy7b@xrea.com', '510-405-1138', '94 Porter Center', null, 'Richmond', 'CA', '94807', null)
,('Hymie', 'Chaulk', 'hchaulk7c@yahoo.co.jp', '505-501-7201', '33 Crownhardt Terrace', null, 'Santa Fe', 'NM', '87592', null)
,('Brant', 'Withams', 'bwithams7d@shinystat.com', '205-414-3195', '48 Cherokee Trail', null, 'Birmingham', 'AL', '35290', null)
,('Becki', 'Gavozzi', 'bgavozzi7e@ucoz.com', '562-850-7874', '484 Pepper Wood Street', null, 'Long Beach', 'CA', '90840', null)
,('Ginnie', 'Allery', 'gallery7f@umich.edu', '727-666-1046', '121 Kedzie Way', null, 'Clearwater', 'FL', '34629', null)
,('Grady', 'Haslehurst', 'ghaslehurst7g@cocolog-nifty.com', '949-686-2716', '47 Warbler Court', null, 'Santa Clara', 'CA', '95054', null)
,('Alley', 'Pomfrey', 'apomfrey7h@people.com.cn', '413-292-6532', '3772 Graedel Circle', null, 'Springfield', 'MA', '01114', null)
,('Francisca', 'Aindriu', 'faindriu7i@nasa.gov', '907-349-9600', '6036 Hansons Crossing', null, 'Juneau', 'AK', '99812', null)
,('Devin', 'Lalonde', 'dlalonde7j@goodreads.com', '210-360-5392', '63183 Westport Crossing', null, 'San Antonio', 'TX', '78235', null)
,('Farris', 'Trenfield', 'ftrenfield7k@tinypic.com', '203-311-3707', '8 Morning Road', null, 'Stamford', 'CT', '06912', null)
,('Rance', 'De Hooge', 'rdehooge7l@slashdot.org', '937-268-6221', '1 Stoughton Plaza', null, 'Dayton', 'OH', '45426', null)
,('Xavier', 'Norville', 'xnorville7m@wunderground.com', '203-254-2595', '94061 Kedzie Hill', null, 'Bridgeport', 'CT', '06673', null)
,('Ario', 'Jacobsen', 'ajacobsen7n@ameblo.jp', '614-797-6620', '0714 Loomis Place', 'PO Box 73566', 'Columbus', 'OH', '43284', null)
,('Harrie', 'Botger', 'hbotger7o@usgs.gov', '615-628-1156', '7054 Norway Maple Alley', null, 'Nashville', 'TN', '37205', null)
,('Lark', 'Wieprecht', 'lwieprecht7p@people.com.cn', '718-955-2149', '650 Welch Terrace', null, 'Bronx', 'NY', '10474', null)
,('Lem', 'Oventon', 'loventon7q@live.com', '862-878-4001', '931 Beilfuss Plaza', null, 'Paterson', 'NJ', '07544', null)
,('Timi', 'Roast', 'troast7r@time.com', '802-441-8491', '748 Amoth Trail', null, 'Montpelier', 'VT', '05609', null)
,('Barbie', 'Mengo', 'bmengo7s@twitpic.com', '561-322-8172', '324 Independence Place', null, 'Lake Worth', 'FL', '33462', null)
,('Marta', 'Wadman', 'mwadman7t@hhs.gov', '408-901-8284', '2 Linden Street', null, 'San Jose', 'CA', '95108', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.')
,('Cordula', 'Covington', 'ccovington7u@vk.com', '405-564-0034', '18781 Erie Place', null, 'Oklahoma City', 'OK', '73114', null)
,('Hobey', 'Robard', 'hrobard7v@chronoengine.com', '951-437-4701', '97449 Hermina Hill', null, 'Corona', 'CA', '92883', null)
,('Melessa', 'Willeman', 'mwilleman7w@nymag.com', '408-418-9173', '7566 Mockingbird Parkway', null, 'San Jose', 'CA', '95138', null)
,('Flossi', 'Beinisch', 'fbeinisch7x@vimeo.com', '203-692-0187', '08 Ohio Avenue', 'Suite 49', 'Norwalk', 'CT', '06859', null)
,('Vlad', 'Fleg', 'vfleg7y@bluehost.com', '215-202-7046', '3 Browning Road', 'Room 948', 'Philadelphia', 'PA', '19160', null)
,('Osborne', 'Gamlen', 'ogamlen7z@utexas.edu', '214-823-9530', '5489 Stuart Circle', null, 'Dallas', 'TX', '75221', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.')
,('Iorgos', 'Pragnell', 'ipragnell80@php.net', '862-388-1105', '51776 Pepper Wood Lane', null, 'Paterson', 'NJ', '07544', null)
,('Jess', 'Willisch', 'jwillisch81@ibm.com', '212-208-0922', '32 Schiller Center', null, 'New York City', 'NY', '10292', null)
,('Tirrell', 'Duffrie', 'tduffrie82@npr.org', '202-802-7399', '336 Scofield Terrace', null, 'Washington', 'DC', '20078', null)
,('Ines', 'Dulin', 'idulin83@canalblog.com', '585-604-0912', '60 Maple Wood Plaza', 'Suite 5', 'Rochester', 'NY', '14619', null)
,('Shell', 'Handforth', 'shandforth84@un.org', '720-922-6585', '88 Burning Wood Alley', null, 'Denver', 'CO', '80249', null)
,('Morse', 'Bradburn', 'mbradburn85@mashable.com', '712-907-9484', '41205 6th Lane', null, 'Omaha', 'NE', '68134', null)
,('Elnar', 'Ensten', 'eensten86@tinyurl.com', '518-452-8193', '0 Badeau Plaza', null, 'Albany', 'NY', '12247', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.')
,('Nat', 'Sumption', 'nsumption87@yelp.com', '832-738-1582', '4 Golf Alley', null, 'Spring', 'TX', '77386', null)
,('Toby', 'Arr', 'tarr88@gmpg.org', '214-668-6234', '444 Schmedeman Center', 'Apt 786', 'Garland', 'TX', '75049', null)
,('Deva', 'Karim', 'dkarim89@reverbnation.com', '505-436-2249', '2778 Ronald Regan Terrace', null, 'Albuquerque', 'NM', '87110', null)
,('Horton', 'Leathart', 'hleathart8a@harvard.edu', '509-854-4059', '6977 Shoshone Road', null, 'Spokane', 'WA', '99205', null)
,('Berti', 'Abrahams', 'babrahams8b@xing.com', '303-290-5468', '8 Dawn Hill', null, 'Aurora', 'CO', '80044', null)
,('Gaile', 'Kohrt', 'gkohrt8c@printfriendly.com', '804-638-0546', '2 Elka Trail', null, 'Richmond', 'VA', '23220', null)
,('Mikol', 'Shovlin', 'mshovlin8d@dot.gov', '213-199-7764', '34 Fieldstone Lane', null, 'Los Angeles', 'CA', '90087', null)
,('Chuck', 'Scamaden', 'cscamaden8e@dropbox.com', '917-407-2282', '23 Northland Terrace', null, 'New York City', 'NY', '10034', null)
,('Ninetta', 'Ridgewell', 'nridgewell8f@imgur.com', '602-495-9605', '140 Rieder Way', null, 'Phoenix', 'AZ', '85030', null)
,('Farrell', 'Duckinfield', 'fduckinfield8g@themeforest.net', '864-350-5733', '7 Center Hill', null, 'Greenville', 'SC', '29605', null)
,('Berry', 'Kinleyside', 'bkinleyside8h@slashdot.org', '678-269-4290', '47 Continental Place', null, 'Atlanta', 'GA', '30328', null)
,('Valery', 'Doog', 'vdoog8i@digg.com', '952-919-7944', '793 Kipling Point', 'Room 1020', 'Young America', 'MN', '55557', null)
,('Freda', 'Sygroves', 'fsygroves8j@yandex.ru', '517-767-7966', '21 Fair Oaks Terrace', null, 'Lansing', 'MI', '48901', null)
,('Frannie', 'Steynor', 'fsteynor8k@imdb.com', '202-100-1560', '40 Vidon Lane', null, 'Washington', 'DC', '20260', null)
,('Lita', 'Mannix', 'lmannix8l@shutterfly.com', '202-725-9015', '6 Susan Drive', 'Room 1207', 'Washington', 'DC', '20299', null)
,('Ciro', 'Domerque', 'cdomerque8m@microsoft.com', '682-831-8794', '30 Sunbrook Pass', null, 'Fort Worth', 'TX', '76198', null)
,('Kassia', 'Martello', 'kmartello8n@bbc.co.uk', '804-992-9089', '47 Nancy Park', null, 'Richmond', 'VA', '23220', null)
,('Gloriana', 'Campanelle', 'gcampanelle8o@bing.com', '703-694-5254', '86 Bluejay Point', null, 'Reston', 'VA', '20195', null)
,('Ramon', 'Blaksland', 'rblaksland8p@t-online.de', '434-172-7223', '0050 Esch Alley', null, 'Charlottesville', 'VA', '22908', null)
,('Dora', 'Feathersby', 'dfeathersby8q@wiley.com', '202-223-9129', '2125 Algoma Junction', null, 'Washington', 'DC', '20337', null)
,('Tobe', 'Bounde', 'tbounde8r@jugem.jp', '801-675-5483', '54345 Arapahoe Avenue', null, 'Salt Lake City', 'UT', '84199', null)
,('Alastair', 'Anmore', 'aanmore8s@usgs.gov', '806-365-5741', '85 Carberry Pass', null, 'Lubbock', 'TX', '79452', null)
,('Leonelle', 'Lelliott', 'llelliott8t@dion.ne.jp', '913-931-5443', '975 Main Point', '7th Floor', 'Kansas City', 'KS', '66160', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.')
,('Michelle', 'Northgraves', 'mnorthgraves8u@goodreads.com', '214-501-5303', '566 Ludington Pass', '18th Floor', 'Dallas', 'TX', '75323', null)
,('Rossy', 'Pierpoint', 'rpierpoint8v@lulu.com', '850-105-9209', '1707 Esker Road', null, 'Pensacola', 'FL', '32575', null)
,('Hamlin', 'Rimes', 'hrimes8w@phoca.cz', '469-637-4252', '3 Waubesa Point', null, 'Dallas', 'TX', '75226', null)
,('Daphene', 'Edmondson', 'dedmondson8x@dedecms.com', '214-758-8804', '8 Mosinee Pass', null, 'Dallas', 'TX', '75251', null)
,('Aldridge', 'Rilston', 'arilston8y@yellowpages.com', '770-796-4150', '6973 Magdeline Way', null, 'Atlanta', 'GA', '31119', null)
,('Christoph', 'Cattle', 'ccattle8z@unc.edu', '313-833-7349', '3212 Canary Drive', null, 'Detroit', 'MI', '48267', null)
,('Eldin', 'Gooderick', 'egooderick90@wordpress.com', '334-335-9445', '72 Alpine Avenue', null, 'Montgomery', 'AL', '36195', null)
,('Selle', 'Dowyer', 'sdowyer91@mashable.com', '512-268-6322', '2 Almo Road', null, 'Austin', 'TX', '78769', null)
,('Carlie', 'Seares', 'cseares92@pcworld.com', '678-818-8830', '34 Surrey Crossing', null, 'Alpharetta', 'GA', '30022', null)
,('Chloris', 'Klagges', 'cklagges93@aol.com', '202-673-0479', '75 Mifflin Point', null, 'Washington', 'DC', '20226', null)
,('Lavina', 'Ausiello', 'lausiello94@constantcontact.com', '513-181-6267', '01878 Carpenter Lane', null, 'Cincinnati', 'OH', '45218', null)
,('Barbette', 'Gready', 'bgready95@plala.or.jp', '512-961-0297', '691 Texas Parkway', 'PO Box 39972', 'Austin', 'TX', '78715', null)
,('Merv', 'Earngy', 'mearngy96@reverbnation.com', '202-595-5645', '05 Florence Drive', null, 'Washington', 'DC', '20591', null)
,('Paco', 'Sumption', 'psumption97@elegantthemes.com', '808-992-0933', '40564 Marcy Trail', null, 'Honolulu', 'HI', '96825', null)
,('Rona', 'Caraher', 'rcaraher98@hubpages.com', '501-255-0368', '79341 Elgar Center', null, 'North Little Rock', 'AR', '72199', null)
,('Aldus', 'Deny', 'adeny99@dagondesign.com', '212-526-9604', '49 Northridge Court', null, 'New York City', 'NY', '10120', null)
,('Larine', 'Batho', 'lbatho9a@1688.com', '256-333-4522', '9 Mcbride Way', null, 'Huntsville', 'AL', '35815', null)
,('Stephenie', 'Samett', 'ssamett9b@walmart.com', '516-378-7442', '6525 Nancy Pass', null, 'Great Neck', 'NY', '11024', null)
,('Jo', 'Schorah', 'jschorah9c@arstechnica.com', '718-922-1834', '97 Twin Pines Junction', 'Room 709', 'Brooklyn', 'NY', '11225', null)
,('Mallissa', 'Piet', 'mpiet9d@51.la', '508-660-1955', '98165 Maryland Avenue', null, 'Worcester', 'MA', '01605', null)
,('Reuven', 'Fullwood', 'rfullwood9e@illinois.edu', '330-798-7992', '94 Melby Way', null, 'Youngstown', 'OH', '44505', null)
,('Doti', 'Pfeuffer', 'dpfeuffer9f@springer.com', '503-227-1177', '91606 Crownhardt Park', null, 'Beaverton', 'OR', '97075', null)
,('Sheila-kathryn', 'Ranshaw', 'sranshaw9g@theglobeandmail.com', '901-801-8300', '6 Hoffman Lane', null, 'Memphis', 'TN', '38143', null)
,('Livvyy', 'Buddington', 'lbuddington9h@ted.com', '912-431-9132', '41378 1st Court', 'PO Box 50523', 'Savannah', 'GA', '31410', null)
,('Tildie', 'Nare', 'tnare9i@livejournal.com', '520-167-6015', '3092 Westend Circle', null, 'Tucson', 'AZ', '85748', null)
,('Moina', 'Cleyburn', 'mcleyburn9j@chronoengine.com', '702-498-4611', '3823 Sauthoff Pass', null, 'Henderson', 'NV', '89074', null)
,('Aidan', 'Belderfield', 'abelderfield9k@europa.eu', '202-409-2722', '4 Muir Drive', null, 'Washington', 'DC', '20244', null)
,('Kippar', 'Filpi', 'kfilpi9l@abc.net.au', '201-917-5852', '5 Kenwood Circle', null, 'Jersey City', 'NJ', '07305', null)
,('Neely', 'Dibble', 'ndibble9m@sakura.ne.jp', '312-309-7359', '362 Longview Parkway', null, 'Chicago', 'IL', '60691', null)
,('Gorden', 'Spur', 'gspur9n@qq.com', '605-966-2336', '28655 Corben Terrace', null, 'Sioux Falls', 'SD', '57105', null)
,('Elfrieda', 'Ithell', 'eithell9o@storify.com', '318-576-0751', '12840 Shelley Drive', '12th Floor', 'Monroe', 'LA', '71208', null)
,('Malinde', 'Vasilov', 'mvasilov9p@paginegialle.it', '208-903-0966', '389 Mandrake Way', 'Room 267', 'Boise', 'ID', '83722', 'In sagittis dui vel nisl. Duis ac nibh.')
,('Carlee', 'Schimmang', 'cschimmang9q@nature.com', '404-498-5173', '562 Melody Parkway', null, 'Atlanta', 'GA', '31136', null)
,('Libbey', 'Henryson', 'lhenryson9r@bloglines.com', '951-935-6501', '39386 Ruskin Center', 'Suite 29', 'Corona', 'CA', '92878', null)
,('Jerri', 'Wintle', 'jwintle9s@geocities.jp', '857-643-8724', '72204 Judy Center', null, 'Newton', 'MA', '02458', null)
,('Mellie', 'Errey', 'merrey9t@pen.io', '202-657-9066', '282 Merrick Circle', null, 'Washington', 'DC', '20244', null)
,('Adrianna', 'Worthing', 'aworthing9u@squidoo.com', '502-428-3514', '5620 Rockefeller Drive', null, 'Louisville', 'KY', '40298', null)
,('Ariel', 'Stearn', 'astearn9v@digg.com', '317-180-6984', '7 Crownhardt Point', null, 'Indianapolis', 'IN', '46221', null)
,('Willy', 'Andriolli', 'wandriolli9w@elpais.com', '860-626-4748', '8 Sunfield Lane', null, 'West Hartford', 'CT', '06127', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.')
,('Timothy', 'Betty', 'tbetty9x@usa.gov', '513-939-5827', '7 Bartelt Point', null, 'Cincinnati', 'OH', '45203', null)
,('Martina', 'Yurin', 'myurin9y@vimeo.com', '847-158-9182', '0 Bluejay Trail', null, 'Chicago', 'IL', '60630', null)
,('Raquela', 'Slane', 'rslane9z@xinhuanet.com', '253-820-5046', '2 Summit Parkway', 'Room 116', 'Seattle', 'WA', '98104', null)
,('Vickie', 'Gosland', 'vgoslanda0@etsy.com', '202-207-9059', '334 Manufacturers Place', null, 'Washington', 'DC', '20380', null)
,('Rhys', 'Redwood', 'rredwooda1@soup.io', '805-592-2074', '5973 Old Gate Pass', 'Suite 83', 'San Mateo', 'CA', '94405', null)
,('Padget', 'Spurge', 'pspurgea2@arizona.edu', '559-662-9238', '36 Meadow Vale Point', null, 'Visalia', 'CA', '93291', null)
,('Tate', 'Wards', 'twardsa3@goo.ne.jp', '801-383-7625', '14 Lillian Alley', null, 'Ogden', 'UT', '84409', null)
,('Regan', 'Dunkerly', 'rdunkerlya4@sina.com.cn', '719-643-7904', '782 Messerschmidt Alley', null, 'Pueblo', 'CO', '81015', null)
,('Felic', 'Coite', 'fcoitea5@fda.gov', '215-507-4560', '0 Judy Street', null, 'Philadelphia', 'PA', '19109', null)
,('Miles', 'Chiechio', 'mchiechioa6@state.gov', '415-328-8952', '8 Carioca Parkway', '14th Floor', 'San Francisco', 'CA', '94142', null)
,('Pearla', 'Fathers', 'pfathersa7@washingtonpost.com', '901-471-9037', '7807 2nd Way', null, 'Memphis', 'TN', '38126', null)
,('Kali', 'Howroyd', 'khowroyda8@webeden.co.uk', '417-536-3294', '8 Golf View Center', null, 'Springfield', 'MO', '65810', null)
,('Melamie', 'Garmon', 'mgarmona9@nationalgeographic.com', '323-680-9184', '96 Randy Road', 'Suite 73', 'Van Nuys', 'CA', '91411', null)
,('Mina', 'Kilshall', 'mkilshallaa@washingtonpost.com', '864-105-6791', '5 Oak Valley Alley', null, 'Greenville', 'SC', '29610', null)
,('Giacobo', 'Frantz', 'gfrantzab@huffingtonpost.com', '830-818-4660', '48857 Maywood Street', null, 'San Antonio', 'TX', '78230', null)
,('Evey', 'Ritmeier', 'eritmeierac@opensource.org', '360-756-1239', '2 Donald Pass', null, 'Seattle', 'WA', '98158', null)
,('Enriqueta', 'Vasilchenko', 'evasilchenkoad@yellowpages.com', '480-884-0024', '998 Lillian Circle', null, 'Phoenix', 'AZ', '85005', null)
,('Chaunce', 'Ghelardoni', 'cghelardoniae@ovh.net', '805-258-1935', '222 Southridge Trail', null, 'San Luis Obispo', 'CA', '93407', null)
,('Leonore', 'Lucock', 'llucockaf@themeforest.net', '260-984-0175', '929 Daystar Lane', null, 'Fort Wayne', 'IN', '46852', null)
,('Allina', 'Gajewski', 'agajewskiag@archive.org', '757-170-1598', '3620 Bashford Circle', null, 'Richmond', 'VA', '23225', null)
,('Francklyn', 'Bahlmann', 'fbahlmannah@usa.gov', '503-272-1255', '84 Rieder Hill', 'Apt 457', 'Portland', 'OR', '97296', null)
,('Giana', 'Tydd', 'gtyddai@twitter.com', '520-837-6621', '39572 Cascade Park', null, 'Tucson', 'AZ', '85737', null)
,('Barbabas', 'Oylett', 'boylettaj@umich.edu', '626-213-3460', '1234 Commercial Pass', null, 'Corona', 'CA', '92883', null)
,('Shanon', 'Nornasell', 'snornasellak@amazon.de', '646-383-3012', '039 Bashford Hill', null, 'New York City', 'NY', '10175', null)
,('Barbara-anne', 'Amsden', 'bamsdenal@yale.edu', '217-939-9048', '242 Butterfield Street', null, 'Springfield', 'IL', '62776', null)
,('Madeleine', 'Hothersall', 'mhothersallam@redcross.org', '813-717-5713', '1 Emmet Trail', null, 'Clearwater', 'FL', '33758', null)
,('Reginald', 'Van Oort', 'rvanoortan@de.vu', '814-473-7634', '5 Arapahoe Pass', null, 'Erie', 'PA', '16522', null)
,('Korey', 'Shallow', 'kshallowao@stumbleupon.com', '412-128-1527', '3 Sunnyside Circle', null, 'Pittsburgh', 'PA', '15215', null)
,('Herbert', 'Jeune', 'hjeuneap@gizmodo.com', '317-823-3612', '1 Bay Center', null, 'Indianapolis', 'IN', '46266', null)
,('Vyky', 'Quakley', 'vquakleyaq@google.com', '360-800-6725', '81095 Fair Oaks Parkway', null, 'Vancouver', 'WA', '98664', null)
,('Kellsie', 'Pirot', 'kpirotar@chronoengine.com', '304-627-2248', '438 Killdeer Plaza', null, 'Charleston', 'WV', '25305', null)
,('Silvia', 'Bloxam', 'sbloxamas@parallels.com', '-714-3884', '29405 Corben Road', null, 'Pittsburgh', 'PA', '15266', null)
,('Inessa', 'Costelloe', 'icostelloeat@npr.org', '775-135-7552', '2 Clove Pass', null, 'Reno', 'NV', '89505', null)
,('Gwynne', 'Maultby', 'gmaultbyau@nytimes.com', '919-574-6222', '147 Eggendart Alley', null, 'Raleigh', 'NC', '27626', null)
,('Emmet', 'Rosenwasser', 'erosenwasserav@yolasite.com', '801-929-9076', '03999 Hayes Park', null, 'Salt Lake City', 'UT', '84152', null)
,('Veradis', 'Yvon', 'vyvonaw@example.com', '901-527-3521', '8481 Utah Street', null, 'Memphis', 'TN', '38126', null)
,('Remus', 'Lemme', 'rlemmeax@mapy.cz', '801-583-3067', '7 Helena Trail', null, 'Salt Lake City', 'UT', '84145', null)
,('Scarface', 'Edmed', 'sedmeday@adobe.com', '941-155-3128', '2459 Derek Junction', null, 'Port Charlotte', 'FL', '33954', null)
,('Cleveland', 'Kahn', 'ckahnaz@squidoo.com', '210-374-5542', '45 Heath Circle', null, 'San Antonio', 'TX', '78291', null)
,('Ivy', 'Lutzmann', 'ilutzmannb0@wufoo.com', '209-668-2790', '69519 Nevada Lane', null, 'Visalia', 'CA', '93291', null)
,('Cullan', 'Gerok', 'cgerokb1@wunderground.com', '352-995-7961', '30 Schurz Court', '7th Floor', 'Ocala', 'FL', '34479', null)
,('Wynn', 'Knapp', 'wknappb2@omniture.com', '206-766-5075', '95 Sundown Place', null, 'Seattle', 'WA', '98195', null)
,('Jerrie', 'Bwye', 'jbwyeb3@ucoz.ru', '206-815-9632', '3531 Badeau Way', null, 'Bellevue', 'WA', '98008', null)
,('Emmit', 'Latliff', 'elatliffb4@ustream.tv', '916-483-1778', '3 Susan Trail', null, 'Sacramento', 'CA', '94257', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
,('Antoinette', 'Verden', 'averdenb5@scientificamerican.com', '512-550-4844', '4103 Muir Avenue', null, 'Austin', 'TX', '78744', null)
,('Dulcine', 'Wignall', 'dwignallb6@intel.com', '310-172-2001', '58736 Butternut Hill', null, 'Los Angeles', 'CA', '90015', null)
,('Shawn', 'MacGinlay', 'smacginlayb7@arstechnica.com', '406-923-9367', '073 Meadow Ridge Street', null, 'Missoula', 'MT', '59806', null)
,('Johnny', 'Aizikovitz', 'jaizikovitzb8@shareasale.com', '626-502-2832', '53834 Prairie Rose Hill', null, 'Pasadena', 'CA', '91131', null)
,('Florenza', 'Dysart', 'fdysartb9@google.de', '862-124-3400', '8 Graedel Plaza', null, 'Paterson', 'NJ', '07505', null)
,('Wittie', 'Wakelin', 'wwakelinba@reuters.com', '915-238-4947', '048 Schurz Avenue', null, 'El Paso', 'TX', '88535', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.')
,('Missie', 'Pirson', 'mpirsonbb@berkeley.edu', '480-893-0407', '942 Spaight Court', 'PO Box 31124', 'Phoenix', 'AZ', '85045', null)
,('Nikkie', 'Parzizek', 'nparzizekbc@is.gd', '651-721-1364', '459 Sullivan Parkway', null, 'Saint Paul', 'MN', '55172', null)
,('Bay', 'Testin', 'btestinbd@bloglines.com', '334-379-1625', '3 Old Shore Crossing', null, 'Montgomery', 'AL', '36114', null)
,('Berkley', 'Bilbee', 'bbilbeebe@cargocollective.com', '314-296-5439', '5 Portage Avenue', '9th Floor', 'Saint Louis', 'MO', '63104', null)
,('Barbara', 'Freathy', 'bfreathybf@intel.com', '503-816-9774', '30 Upham Pass', null, 'Portland', 'OR', '97296', null)
,('Marabel', 'Bronot', 'mbronotbg@purevolume.com', '209-493-3324', '99779 Sage Way', '7th Floor', 'Stockton', 'CA', '95205', null)
,('Errick', 'Brinkworth', 'ebrinkworthbh@ftc.gov', '803-225-3291', '704 Carberry Crossing', null, 'Columbia', 'SC', '29208', null)
,('Aarika', 'Janovsky', 'ajanovskybi@tiny.cc', '719-382-3476', '5 Starling Street', null, 'Pueblo', 'CO', '81005', null)
,('Josh', 'Brigham', 'jbrighambj@hibu.com', '754-766-6265', '19768 Menomonie Parkway', null, 'Pompano Beach', 'FL', '33075', null)
,('Randi', 'Hissie', 'rhissiebk@salon.com', '505-168-5238', '0696 Golden Leaf Point', null, 'Albuquerque', 'NM', '87115', null)
,('Baxie', 'Burgum', 'bburgumbl@cbc.ca', '816-163-0544', '498 Myrtle Crossing', 'Apt 814', 'Kansas City', 'MO', '64109', null)
,('Phaidra', 'Clineck', 'pclineckbm@people.com.cn', '805-371-5486', '24 Florence Lane', 'Suite 13', 'San Mateo', 'CA', '94405', null)
,('Hanna', 'Lordon', 'hlordonbn@auda.org.au', '518-898-4417', '99221 Warrior Hill', null, 'Albany', 'NY', '12262', null)
,('Bryce', 'Muldownie', 'bmuldowniebo@twitter.com', '404-480-2528', '1 Schlimgen Road', 'Suite 94', 'Atlanta', 'GA', '30375', null)
,('Bettina', 'Glassopp', 'bglassoppbp@ucla.edu', '808-805-3663', '8856 Mifflin Park', null, 'Honolulu', 'HI', '96805', null)
,('Merola', 'Boult', 'mboultbq@biglobe.ne.jp', '616-162-9938', '83 Bonner Terrace', null, 'Grand Rapids', 'MI', '49510', null)
,('Rea', 'Lindegard', 'rlindegardbr@mediafire.com', '304-891-5708', '86 Hudson Trail', null, 'Huntington', 'WV', '25721', null)
,('Herbert', 'Biaggetti', 'hbiaggettibs@vk.com', '434-760-4472', '225 Eagan Way', null, 'Lynchburg', 'VA', '24515', null)
,('Dulcea', 'Grog', 'dgrogbt@blogspot.com', '615-463-0170', '0 Namekagon Avenue', null, 'Nashville', 'TN', '37250', null)
,('Melessa', 'Jacks', 'mjacksbu@globo.com', '505-647-3083', '1 Emmet Terrace', null, 'Las Cruces', 'NM', '88006', null)
,('Erinn', 'MacCrosson', 'emaccrossonbv@dailymotion.com', '404-353-5778', '9490 Park Meadow Lane', null, 'Atlanta', 'GA', '31165', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.')
,('Zenia', 'Hassent', 'zhassentbw@php.net', '717-375-8537', '0438 Delaware Lane', 'Apt 1209', 'Harrisburg', 'PA', '17126', null)
,('Abbe', 'Armsby', 'aarmsbybx@newsvine.com', '316-245-6007', '9 Armistice Drive', null, 'Wichita', 'KS', '67220', null)
,('Neilla', 'Cumo', 'ncumoby@behance.net', '704-812-7520', '29 Eliot Junction', 'PO Box 15021', 'Charlotte', 'NC', '28256', null)
,('Morgan', 'Edworthie', 'medworthiebz@globo.com', '410-712-7472', '15505 Center Plaza', null, 'Baltimore', 'MD', '21216', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.')
,('Dennie', 'Gavigan', 'dgaviganc0@angelfire.com', '719-447-5286', '0018 Luster Trail', null, 'Colorado Springs', 'CO', '80925', null)
,('Martin', 'Christene', 'mchristenec1@gravatar.com', '646-306-6457', '3817 Mosinee Pass', null, 'New York City', 'NY', '10099', null)
,('Armstrong', 'Turneaux', 'aturneauxc2@hatena.ne.jp', '408-445-0980', '477 Roxbury Way', '20th Floor', 'San Jose', 'CA', '95133', null)
,('Quentin', 'Robbe', 'qrobbec3@vkontakte.ru', '212-858-1825', '7750 Summerview Way', null, 'New York City', 'NY', '10125', null)
,('Annice', 'Walkington', 'awalkingtonc4@webmd.com', '602-248-4380', '8121 Mcguire Trail', '7th Floor', 'Phoenix', 'AZ', '85072', null)
,('Celesta', 'Searson', 'csearsonc5@usatoday.com', '352-343-9181', '934 West Point', 'Suite 18', 'Gainesville', 'FL', '32610', null)
,('Melba', 'Hedderly', 'mhedderlyc6@yelp.com', '312-581-3795', '26 Moland Pass', null, 'Chicago', 'IL', '60697', null)
,('Joni', 'Wagg', 'jwaggc7@qq.com', '312-223-3768', '25 Holy Cross Way', null, 'Chicago', 'IL', '60669', null)
,('Allyn', 'Bramall', 'abramallc8@ifeng.com', '512-201-2461', '12 Roth Center', 'Apt 390', 'Austin', 'TX', '78789', null)
,('Clarie', 'Leebeter', 'cleebeterc9@ifeng.com', '239-558-0531', '59715 Morningstar Center', null, 'Fort Myers', 'FL', '33994', null)
,('Corly', 'Gettone', 'cgettoneca@blinklist.com', '706-635-4464', '58932 Oriole Junction', null, 'Augusta', 'GA', '30911', null)
,('Lauri', 'Pevreal', 'lpevrealcb@homestead.com', '504-537-5598', '708 Grover Street', null, 'New Orleans', 'LA', '70187', null)
,('Corena', 'Radcliffe', 'cradcliffecc@cocolog-nifty.com', '713-943-0218', '77 Northfield Alley', null, 'Houston', 'TX', '77250', null)
,('Lanny', 'Sulman', 'lsulmancd@infoseek.co.jp', '810-770-9057', '488 Ilene Way', null, 'Flint', 'MI', '48505', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.')
,('Rycca', 'Doornbos', 'rdoornbosce@mozilla.org', '916-735-9581', '8118 Goodland Point', null, 'Sacramento', 'CA', '95828', null)
,('Boy', 'Cahey', 'bcaheycf@seesaa.net', '951-788-9358', '403 Carberry Park', 'PO Box 56861', 'Riverside', 'CA', '92513', null)
,('Osborn', 'Bonifazio', 'obonifaziocg@eventbrite.com', '814-946-0592', '6983 Fremont Junction', null, 'Erie', 'PA', '16510', null)
,('Lefty', 'Podmore', 'lpodmorech@webmd.com', '860-322-6317', '8 Darwin Park', null, 'Hartford', 'CT', '06105', null)
,('Earlie', 'Reihill', 'ereihillci@indiatimes.com', '813-800-8325', '0 Raven Drive', null, 'Zephyrhills', 'FL', '33543', null)
,('Richmond', 'Kenningley', 'rkenningleycj@acquirethisname.com', '202-629-1730', '309 Evergreen Alley', null, 'Washington', 'DC', '20299', null)
,('Daphene', 'O'' Timony', 'dotimonyck@webnode.com', '661-512-2272', '9408 Del Sol Park', 'Room 1065', 'Bakersfield', 'CA', '93311', null)
,('Davey', 'Kordova', 'dkordovacl@abc.net.au', '352-898-8962', '268 Esch Alley', null, 'Gainesville', 'FL', '32605', null)
,('Neysa', 'Sylvester', 'nsylvestercm@tripod.com', '310-899-0519', '80 Pine View Crossing', null, 'Santa Monica', 'CA', '90410', null)
,('Easter', 'Corgenvin', 'ecorgenvincn@sciencedaily.com', '757-821-6271', '115 Mesta Avenue', '5th Floor', 'Virginia Beach', 'VA', '23459', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.')
,('Birgitta', 'De Bernardi', 'bdebernardico@is.gd', '419-458-0667', '8511 Morning Plaza', null, 'Toledo', 'OH', '43610', null)
,('Ernie', 'Tegler', 'eteglercp@ifeng.com', '202-306-5460', '171 Northridge Plaza', '7th Floor', 'Washington', 'DC', '20051', null)
,('Dav', 'Tabart', 'dtabartcq@amazon.com', '303-781-8024', '1452 Onsgard Lane', null, 'Denver', 'CO', '80270', null)
,('Eldon', 'Soro', 'esorocr@instagram.com', '760-795-5680', '04978 Buell Park', null, 'Carlsbad', 'CA', '92013', null)
,('Helli', 'Feavyour', 'hfeavyourcs@ucla.edu', '775-976-1825', '55640 Memorial Pass', null, 'Reno', 'NV', '89519', null)
,('Starlin', 'Le Fevre', 'slefevrect@google.de', '253-110-5891', '43337 Warrior Avenue', null, 'Olympia', 'WA', '98516', null)
,('Michelle', 'Duddridge', 'mduddridgecu@omniture.com', '303-268-9963', '6 Sugar Plaza', null, 'Aurora', 'CO', '80044', null)
,('Emlyn', 'Venton', 'eventoncv@cbslocal.com', '412-884-8654', '31 Almo Center', null, 'Mc Keesport', 'PA', '15134', null)
,('Lin', 'Everal', 'leveralcw@pcworld.com', '916-764-7090', '4151 Prentice Trail', 'Room 1170', 'Sacramento', 'CA', '94237', null)
,('Seward', 'Bottelstone', 'sbottelstonecx@npr.org', '757-219-0600', '2 Gina Drive', '2nd Floor', 'Portsmouth', 'VA', '23705', null)
,('Arliene', 'Sybry', 'asybrycy@bbb.org', '225-881-8777', '4 Portage Terrace', 'PO Box 83316', 'Baton Rouge', 'LA', '70820', null)
,('Ogdan', 'Larrie', 'olarriecz@netlog.com', '608-131-3373', '24762 Monument Alley', null, 'Madison', 'WI', '53710', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
,('Pandora', 'Garett', 'pgarettd0@posterous.com', '757-301-9760', '1822 Dottie Circle', 'PO Box 41794', 'Norfolk', 'VA', '23504', null)
,('Aeriela', 'Boumphrey', 'aboumphreyd1@blinklist.com', '505-395-1373', '323 Kinsman Center', 'Room 465', 'Albuquerque', 'NM', '87195', null)
,('Sheilah', 'Lawden', 'slawdend2@creativecommons.org', '626-924-8346', '7181 Northfield Place', null, 'Alhambra', 'CA', '91841', null)
,('Emilee', 'Calven', 'ecalvend3@geocities.jp', '602-749-4761', '888 Arizona Pass', null, 'Phoenix', 'AZ', '85045', null)
,('Ernesto', 'Rainey', 'eraineyd4@mozilla.com', '570-954-8421', '28366 Dorton Park', null, 'Wilkes Barre', 'PA', '18763', null)
,('Tobit', 'Nell', 'tnelld5@symantec.com', '901-903-2685', '2513 Carey Hill', null, 'Memphis', 'TN', '38188', null)
,('Elva', 'Giacoppo', 'egiacoppod6@cnn.com', '864-489-5053', '3108 Holy Cross Center', null, 'Spartanburg', 'SC', '29305', null)
,('Benetta', 'Dieton', 'bdietond7@studiopress.com', '202-973-0861', '4135 Iowa Center', null, 'Washington', 'DC', '20442', null)
,('Griz', 'Skaife d''Ingerthorpe', 'gskaifedingerthorped8@google.pl', '760-168-2373', '3 Moland Circle', null, 'Orange', 'CA', '92668', null)
,('Kingsley', 'Eaglen', 'keaglend9@networkadvertising.org', '202-361-7208', '25 Sachs Park', 'Suite 81', 'Washington', 'DC', '20397', null)
,('Zoe', 'Dennett', 'zdennettda@google.es', '337-129-9282', '0 Canary Junction', null, 'Lafayette', 'LA', '70593', null)
,('Martainn', 'Vayro', 'mvayrodb@economist.com', '805-480-4728', '2 Springview Alley', null, 'Oxnard', 'CA', '93034', null)
,('Kellen', 'Tighe', 'ktighedc@sina.com.cn', '330-764-1047', '7227 Farmco Way', null, 'Youngstown', 'OH', '44505', null)
,('Joann', 'Halwill', 'jhalwilldd@state.gov', '703-345-8622', '804 Mallard Trail', null, 'Arlington', 'VA', '22205', null)
,('Onida', 'Etheridge', 'oetheridgede@qq.com', '402-958-5882', '9479 Green Ridge Drive', null, 'Omaha', 'NE', '68144', null)
,('Jerry', 'Gath', 'jgathdf@europa.eu', '412-417-1889', '38 Dovetail Court', null, 'Pittsburgh', 'PA', '15240', null)
,('Alissa', 'Kinkead', 'akinkeaddg@census.gov', '202-873-0258', '216 Little Fleur Avenue', null, 'Washington', 'DC', '20508', null)
,('Kristel', 'Bellew', 'kbellewdh@goo.gl', '412-721-0432', '271 Prentice Drive', null, 'Pittsburgh', 'PA', '15205', null)
,('Andrey', 'Hearsum', 'ahearsumdi@virginia.edu', '480-397-5280', '13668 Coolidge Plaza', null, 'Mesa', 'AZ', '85205', null)
,('Noel', 'Shacklady', 'nshackladydj@cbslocal.com', '415-260-2244', '7003 Veith Plaza', null, 'San Francisco', 'CA', '94177', null)
,('Xylina', 'Luter', 'xluterdk@wikispaces.com', '831-321-9027', '969 Morningstar Center', null, 'Salinas', 'CA', '93907', null)
,('Dianna', 'Gantlett', 'dgantlettdl@live.com', '941-675-3603', '2 Mifflin Point', null, 'Sarasota', 'FL', '34238', null)
,('Nichols', 'Whatman', 'nwhatmandm@mapquest.com', '336-488-5419', '2 Marcy Crossing', null, 'Winston Salem', 'NC', '27116', null)
,('Valera', 'Sinclair', 'vsinclairdn@example.com', '916-984-3680', '83 Maryland Drive', null, 'Sacramento', 'CA', '94257', null)
,('Marijn', 'Mattielli', 'mmattiellido@slashdot.org', '205-925-9979', '1418 International Plaza', null, 'Birmingham', 'AL', '35295', null)
,('Welsh', 'Moline', 'wmolinedp@soundcloud.com', '808-352-2935', '38 Pond Circle', null, 'Honolulu', 'HI', '96835', null)
,('Norah', 'Sammes', 'nsammesdq@w3.org', '610-186-6488', '2 Dennis Drive', '13th Floor', 'Reading', 'PA', '19610', null)
,('Christiana', 'Saladin', 'csaladindr@deviantart.com', '478-961-1494', '92 Sunbrook Court', null, 'Macon', 'GA', '31296', null)
,('Rickey', 'Croad', 'rcroadds@artisteer.com', '817-437-4519', '96929 Kenwood Lane', null, 'Arlington', 'TX', '76016', null)
,('Jeannine', 'Kagan', 'jkagandt@last.fm', '256-275-6320', '0 Eggendart Road', null, 'Huntsville', 'AL', '35895', null)
,('Howie', 'Hastler', 'hhastlerdu@tmall.com', '619-171-9587', '529 Forster Junction', null, 'Chula Vista', 'CA', '91913', null)
,('Jess', 'Dumphrey', 'jdumphreydv@cisco.com', '585-513-8567', '0 Declaration Alley', null, 'Rochester', 'NY', '14683', null)
,('Cozmo', 'Bythell', 'cbythelldw@cdc.gov', '323-494-6707', '899 Starling Court', null, 'Los Angeles', 'CA', '90035', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.')
,('Bengt', 'Selvey', 'bselveydx@npr.org', '508-822-2762', '41080 Erie Lane', 'Room 1994', 'New Bedford', 'MA', '02745', null)
,('Marisa', 'Aimer', 'maimerdy@reference.com', '772-128-3522', '9 Sycamore Court', 'PO Box 59809', 'Vero Beach', 'FL', '32964', null)
,('Barnabas', 'Bloodworth', 'bbloodworthdz@nbcnews.com', '760-262-8947', '0 Cascade Court', null, 'Carlsbad', 'CA', '92013', null)
,('Estrellita', 'Swapp', 'eswappe0@geocities.com', '617-444-4248', '2 Cherokee Plaza', 'PO Box 18273', 'Boston', 'MA', '02208', null)
,('Felicle', 'Gripton', 'fgriptone1@usnews.com', '952-607-8692', '8 Monterey Junction', null, 'Maple Plain', 'MN', '55579', null)
,('Adria', 'Bonds', 'abondse2@storify.com', '971-442-5454', '42262 Mifflin Way', null, 'Salem', 'OR', '97312', null)
,('Aldric', 'Woodwing', 'awoodwinge3@mayoclinic.com', '203-792-4885', '040 4th Point', null, 'Stamford', 'CT', '06922', null)
,('Hedwiga', 'Fludgate', 'hfludgatee4@pen.io', '954-679-3538', '88 Sullivan Junction', 'PO Box 5644', 'Miami', 'FL', '33169', null)
,('Rudiger', 'Miroy', 'rmiroye5@marriott.com', '404-697-4679', '269 Sunfield Plaza', null, 'Atlanta', 'GA', '30358', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.')
,('Padgett', 'O''Corrin', 'pocorrine6@huffingtonpost.com', '504-405-6011', '48 Roxbury Place', null, 'New Orleans', 'LA', '70124', null)
,('Bartolomeo', 'Dobrovolny', 'bdobrovolnye7@blogs.com', '937-133-8204', '6916 Dawn Parkway', null, 'Dayton', 'OH', '45432', null)
,('Sholom', 'Gunthorpe', 'sgunthorpee8@disqus.com', '619-754-1806', '9 Hazelcrest Drive', null, 'San Diego', 'CA', '92153', null)
,('Jessie', 'Korneichik', 'jkorneichike9@nymag.com', '425-266-7453', '6 Goodland Crossing', 'Room 357', 'Seattle', 'WA', '98158', null)
,('Deeyn', 'Vannuccinii', 'dvannucciniiea@wordpress.com', '704-458-4280', '8 Shasta Road', null, 'Charlotte', 'NC', '28230', null)
,('Worden', 'Wallhead', 'wwallheadeb@cnet.com', '904-935-6944', '929 Lawn Street', null, 'Jacksonville', 'FL', '32259', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.')
,('Almire', 'Nutbean', 'anutbeanec@yellowpages.com', '801-342-4332', '55 Norway Maple Way', null, 'Salt Lake City', 'UT', '84170', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.')
,('Burk', 'Goldsbrough', 'bgoldsbroughed@cbsnews.com', '503-149-2745', '58842 Kennedy Way', null, 'Salem', 'OR', '97306', null)
,('Rufe', 'Gehrts', 'rgehrtsee@ning.com', '404-587-2419', '5353 Carioca Trail', null, 'Atlanta', 'GA', '30358', 'Nulla facilisi.')
,('Scarface', 'Hasty', 'shastyef@lulu.com', '601-509-3518', '60987 Corben Plaza', null, 'Meridian', 'MS', '39305', null)
,('Ray', 'Hof', 'rhofeg@xrea.com', '505-487-4162', '4587 American Pass', null, 'Albuquerque', 'NM', '87121', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.')
,('Bruno', 'McLean', 'bmcleaneh@shareasale.com', '305-553-6838', '5 Elmside Pass', null, 'Miami Beach', 'FL', '33141', null)
,('Sauncho', 'Jakolevitch', 'sjakolevitchei@dagondesign.com', '860-487-3277', '23 Mccormick Pass', null, 'Hartford', 'CT', '06120', null)
,('Maury', 'Slocumb', 'mslocumbej@hexun.com', '541-571-7519', '332 Sommers Terrace', null, 'Eugene', 'OR', '97405', null)
,('Vern', 'Lardier', 'vlardierek@redcross.org', '605-204-0298', '7 Cody Center', null, 'Sioux Falls', 'SD', '57193', null)
,('Diego', 'Domanski', 'ddomanskiel@japanpost.jp', '616-280-8885', '7511 Oriole Crossing', null, 'Grand Rapids', 'MI', '49544', null)
,('Sofie', 'Smithin', 'ssmithinem@histats.com', '254-618-7019', '66 Barnett Park', 'Suite 78', 'Waco', 'TX', '76705', null)
,('Jaimie', 'Clavering', 'jclaveringen@businesswire.com', '480-950-9766', '47487 Superior Place', null, 'Phoenix', 'AZ', '85020', null)
,('Vanna', 'Pessler', 'vpesslereo@pen.io', '775-893-5057', '19126 Mosinee Alley', 'Apt 1640', 'Reno', 'NV', '89519', null)
,('Clayson', 'Hindmoor', 'chindmoorep@gnu.org', '718-485-8817', '273 Upham Parkway', null, 'New York City', 'NY', '10270', null)
,('Mayer', 'Butterworth', 'mbutterwortheq@loc.gov', '574-206-9951', '61 Manley Terrace', null, 'South Bend', 'IN', '46699', null)
,('Smith', 'Mathewes', 'smatheweser@behance.net', '910-146-9192', '48 Gale Alley', null, 'Fayetteville', 'NC', '28314', null)
,('Killian', 'Blanpein', 'kblanpeines@networksolutions.com', '623-116-9000', '115 Daystar Center', null, 'Phoenix', 'AZ', '85035', null)
,('Barty', 'Manuele', 'bmanueleet@ox.ac.uk', '901-906-2002', '252 Sheridan Pass', null, 'Memphis', 'TN', '38161', null)
,('Wenona', 'Nettleship', 'wnettleshipeu@blogtalkradio.com', '202-828-9665', '7 Westport Park', null, 'Washington', 'DC', '20215', 'Proin risus.')
,('Johny', 'Loughan', 'jloughanev@abc.net.au', '910-799-9731', '98 Packers Court', null, 'Fayetteville', 'NC', '28305', null)
,('Ferd', 'Sole', 'fsoleew@weebly.com', '504-508-8067', '276 Vahlen Lane', null, 'New Orleans', 'LA', '70129', null)
,('Devonna', 'Meechan', 'dmeechanex@freewebs.com', '318-849-8693', '7846 Toban Parkway', 'Room 628', 'Shreveport', 'LA', '71130', 'Mauris lacinia sapien quis libero.')
,('Bartlett', 'Combes', 'bcombesey@admin.ch', '432-118-6350', '7 Scoville Lane', null, 'Midland', 'TX', '79705', null)
,('Alena', 'Bakeup', 'abakeupez@angelfire.com', '757-434-7574', '7137 Towne Trail', null, 'Portsmouth', 'VA', '23705', null)
,('Franciskus', 'MacKonochie', 'fmackonochief0@surveymonkey.com', '571-250-2159', '3 Summer Ridge Crossing', null, 'Falls Church', 'VA', '22047', null)
,('Kendricks', 'Marciek', 'kmarciekf1@wordpress.com', '913-854-9531', '70 Crest Line Drive', null, 'Shawnee Mission', 'KS', '66210', null)
,('Sheff', 'Harsnep', 'sharsnepf2@behance.net', '954-800-4733', '03544 Tony Junction', null, 'Fort Lauderdale', 'FL', '33330', null)
,('Osbourne', 'Danson', 'odansonf3@tripadvisor.com', '803-921-7832', '7 North Place', null, 'Aiken', 'SC', '29805', null)
,('Susy', 'Gillatt', 'sgillattf4@answers.com', '412-664-9161', '504 Roth Pass', null, 'Pittsburgh', 'PA', '15279', null)
,('Emily', 'Kynson', 'ekynsonf5@tripod.com', '234-686-0231', '538 Becker Parkway', null, 'Canton', 'OH', '44720', null)
,('Verney', 'Brimicombe', 'vbrimicombef6@storify.com', '609-787-4350', '76260 Kipling Parkway', null, 'Trenton', 'NJ', '08619', null)
,('Bram', 'Videneev', 'bvideneevf7@moonfruit.com', '303-762-1651', '50 Shelley Pass', 'PO Box 29426', 'Boulder', 'CO', '80328', null)
,('Mada', 'Warmington', 'mwarmingtonf8@ocn.ne.jp', '225-205-9653', '641 Ridge Oak Drive', null, 'Baton Rouge', 'LA', '70805', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.')
,('Letitia', 'Paget', 'lpagetf9@msu.edu', '402-754-6370', '2713 Golden Leaf Crossing', null, 'Omaha', 'NE', '68105', null)
,('Benetta', 'Blaver', 'bblaverfa@reference.com', '702-323-4199', '3 American Ash Court', null, 'Las Vegas', 'NV', '89150', null)
,('Bea', 'Thurstan', 'bthurstanfb@google.de', '972-959-0611', '629 Barby Lane', null, 'Mesquite', 'TX', '75185', null)
,('Jacquelin', 'Gurery', 'jgureryfc@51.la', '907-649-9585', '0 North Point', null, 'Anchorage', 'AK', '99512', null)
,('Joyce', 'Dewar', 'jdewarfd@about.me', '317-108-8986', '6 Oak Valley Park', '9th Floor', 'Indianapolis', 'IN', '46221', null)
,('Maynord', 'Fosher', 'mfosherfe@hhs.gov', '321-820-0427', '72 Hollow Ridge Drive', 'Apt 596', 'Orlando', 'FL', '32819', null)
,('Lanni', 'McGiff', 'lmcgiffff@un.org', '434-410-3968', '4 Blue Bill Park Court', null, 'Charlottesville', 'VA', '22908', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.')
,('Tiebold', 'Pye', 'tpyefg@dagondesign.com', '614-476-8052', '9103 Glendale Lane', null, 'Columbus', 'OH', '43284', null)
,('Basile', 'Woollaston', 'bwoollastonfh@netvibes.com', '314-625-8974', '015 Fisk Junction', null, 'Saint Louis', 'MO', '63167', null)
,('Christean', 'Ferneley', 'cferneleyfi@epa.gov', '515-515-1919', '0 Kingsford Avenue', null, 'Des Moines', 'IA', '50320', null)
,('Christiana', 'Quelch', 'cquelchfj@jigsy.com', '812-514-1248', '4 Susan Pass', null, 'Bloomington', 'IN', '47405', 'Morbi a ipsum. Integer a nibh. In quis justo.')
,('Hilary', 'Barehead', 'hbareheadfk@pcworld.com', '214-796-4553', '3 Esch Circle', null, 'Irving', 'TX', '75062', null)
,('Dee dee', 'Adnet', 'dadnetfl@scribd.com', '323-714-6608', '6 Declaration Alley', 'Apt 1051', 'North Hollywood', 'CA', '91606', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.')
,('Agata', 'Beiderbeck', 'abeiderbeckfm@hatena.ne.jp', '212-257-5225', '1 Summerview Pass', null, 'New York City', 'NY', '10034', null)
,('Alvira', 'Elt', 'aeltfn@spotify.com', '202-464-9922', '775 4th Street', '3rd Floor', 'Washington', 'DC', '20530', null)
,('Davin', 'enzley', 'denzleyfo@gov.uk', '404-499-7006', '5991 Sullivan Plaza', null, 'Atlanta', 'GA', '30328', null)
,('Gordon', 'McCurt', 'gmccurtfp@pinterest.com', '602-598-4917', '306 Beilfuss Lane', null, 'Mesa', 'AZ', '85215', null)
,('Arabele', 'Juleff', 'ajulefffq@ox.ac.uk', '801-228-5715', '2 Farwell Point', null, 'Salt Lake City', 'UT', '84115', null)
,('Corny', 'Shrubsall', 'cshrubsallfr@imageshack.us', '317-788-6363', '31829 Ryan Avenue', null, 'Indianapolis', 'IN', '46266', null)
,('Zacharia', 'Derrington', 'zderringtonfs@bluehost.com', '770-514-4382', '047 Springview Crossing', 'PO Box 96425', 'Gainesville', 'GA', '30506', null)
,('Rock', 'Townshend', 'rtownshendft@dagondesign.com', '212-192-0971', '8323 Arapahoe Way', null, 'New York City', 'NY', '10131', null)
,('Maximilianus', 'Holsey', 'mholseyfu@berkeley.edu', '507-194-2176', '4 Marcy Pass', null, 'Rochester', 'MN', '55905', null)
,('Alford', 'Issacson', 'aissacsonfv@dion.ne.jp', '850-488-9796', '96199 Sachs Plaza', null, 'Tallahassee', 'FL', '32309', null)
,('Gibb', 'Iltchev', 'giltchevfw@va.gov', '360-236-4741', '25 La Follette Hill', null, 'Vancouver', 'WA', '98664', null)
,('Ingamar', 'Belchambers', 'ibelchambersfx@gravatar.com', '234-890-7002', '87 Warrior Plaza', null, 'Akron', 'OH', '44393', null)
,('Deedee', 'Goff', 'dgofffy@vk.com', '518-834-0265', '91519 Continental Crossing', 'Room 592', 'Albany', 'NY', '12242', null)
,('Mercedes', 'Coates', 'mcoatesfz@vimeo.com', '704-678-1802', '4056 2nd Park', null, 'Charlotte', 'NC', '28278', null)
,('Rora', 'Audritt', 'raudrittg0@nydailynews.com', '574-678-1618', '7 Nancy Way', null, 'South Bend', 'IN', '46620', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.')
,('Nessa', 'Jedrasik', 'njedrasikg1@myspace.com', '210-855-4354', '66 Kedzie Way', null, 'San Antonio', 'TX', '78296', null)
,('Marchall', 'Mathewes', 'mmathewesg2@is.gd', '850-921-6072', '3421 Ridgeview Place', null, 'Pensacola', 'FL', '32590', null)
,('Janka', 'Kitchin', 'jkitching3@linkedin.com', '770-904-3512', '5 Roth Road', null, 'Atlanta', 'GA', '30328', null)
,('Suzi', 'Clell', 'sclellg4@creativecommons.org', '203-744-1398', '2784 Fairview Way', null, 'New Haven', 'CT', '06520', null)
,('Marven', 'Hance', 'mhanceg5@aol.com', '701-133-4653', '52312 Di Loreto Lane', null, 'Fargo', 'ND', '58122', null)
,('Tarah', 'Souttar', 'tsouttarg6@ezinearticles.com', '504-868-4909', '026 Stephen Way', null, 'New Orleans', 'LA', '70183', null)
,('Jemmy', 'Ormrod', 'jormrodg7@jugem.jp', '513-146-0051', '84888 Redwing Drive', null, 'Cincinnati', 'OH', '45271', 'Nulla justo.')
,('Georgeanna', 'Rowston', 'growstong8@boston.com', '814-373-2594', '742 Village Road', null, 'Erie', 'PA', '16505', null)
,('Den', 'Norledge', 'dnorledgeg9@omniture.com', '803-874-9347', '163 Valley Edge Crossing', 'Suite 32', 'Columbia', 'SC', '29240', null)
,('Arlinda', 'Hinkes', 'ahinkesga@chron.com', '310-155-7008', '547 Declaration Circle', null, 'Torrance', 'CA', '90505', null)
,('Emilio', 'Crosgrove', 'ecrosgrovegb@fda.gov', '831-915-7572', '4 Hanson Drive', null, 'Santa Cruz', 'CA', '95064', null)
,('Hanan', 'Corsor', 'hcorsorgc@google.co.jp', '209-926-1133', '0164 Glendale Parkway', null, 'Stockton', 'CA', '95219', null)
,('Martynne', 'Neaves', 'mneavesgd@whitehouse.gov', '402-349-0741', '3 Mifflin Place', null, 'Omaha', 'NE', '68117', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.')
,('Garth', 'Brotheridge', 'gbrotheridgege@github.io', '561-473-5476', '4186 Duke Center', null, 'West Palm Beach', 'FL', '33405', null)
,('Wye', 'Cubitt', 'wcubittgf@discuz.net', '775-170-3347', '02044 Beilfuss Pass', 'Suite 35', 'Reno', 'NV', '89519', null)
,('Natalya', 'Dacke', 'ndackegg@rakuten.co.jp', '914-681-1539', '12 Crowley Junction', 'PO Box 11203', 'Bronx', 'NY', '10464', 'Aliquam erat volutpat. In congue. Etiam justo.')
,('Kaiser', 'Hatliffe', 'khatliffegh@themeforest.net', '414-673-1480', '91364 Welch Drive', null, 'Milwaukee', 'WI', '53234', null)
,('Christy', 'Kilduff', 'ckilduffgi@miitbeian.gov.cn', '312-263-8043', '2112 Lillian Pass', 'Suite 93', 'Chicago', 'IL', '60691', null)
,('Freddy', 'Kale', 'fkalegj@google.co.uk', '302-973-3237', '9 Kedzie Road', 'Suite 82', 'Newark', 'DE', '19714', null)
,('Kareem', 'Elvin', 'kelvingk@washingtonpost.com', '315-151-8314', '29 Commercial Way', 'PO Box 69173', 'Syracuse', 'NY', '13251', null)
,('Annaliese', 'Wych', 'awychgl@theglobeandmail.com', '314-496-6135', '95135 Summerview Terrace', null, 'Saint Louis', 'MO', '63169', null)
,('Anselma', 'Readwood', 'areadwoodgm@vk.com', '765-601-3379', '01 Huxley Road', null, 'Muncie', 'IN', '47306', null)
,('Luke', 'Semerad', 'lsemeradgn@quantcast.com', '504-531-9096', '857 Welch Lane', null, 'New Orleans', 'LA', '70187', null)
,('Phaidra', 'Balogun', 'pbalogungo@stumbleupon.com', '865-359-1518', '04 Westerfield Crossing', null, 'Knoxville', 'TN', '37924', null)
,('Grady', 'Winkell', 'gwinkellgp@bing.com', '717-471-8421', '32 Buhler Parkway', null, 'Lancaster', 'PA', '17605', null)
,('Dinah', 'Klicher', 'dklichergq@ox.ac.uk', '786-835-3762', '10244 Hoard Lane', null, 'Miami', 'FL', '33158', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.')
,('Trueman', 'Spurdon', 'tspurdongr@whitehouse.gov', '240-194-9171', '93211 Trailsway Road', null, 'Silver Spring', 'MD', '20910', null)
,('Antonietta', 'Infantino', 'ainfantinogs@smugmug.com', '215-329-8117', '10 Cody Drive', null, 'Philadelphia', 'PA', '19109', null)
,('Imojean', 'Danshin', 'idanshingt@cnet.com', '215-338-1103', '3470 Dapin Court', null, 'Philadelphia', 'PA', '19196', null)
,('Lilla', 'McCauley', 'lmccauleygu@adobe.com', '212-128-3478', '950 Lillian Parkway', null, 'New York City', 'NY', '10292', null)
,('Albert', 'Hannabus', 'ahannabusgv@princeton.edu', '336-477-3048', '1 Goodland Lane', null, 'High Point', 'NC', '27264', null)
,('Claudina', 'Burnsyde', 'cburnsydegw@narod.ru', '708-586-5026', '79742 West Way', null, 'Chicago', 'IL', '60604', null)
,('Phil', 'Liggons', 'pliggonsgx@java.com', '503-622-8352', '84014 Hauk Alley', null, 'Portland', 'OR', '97221', null)
,('Sosanna', 'McAless', 'smcalessgy@yahoo.co.jp', '412-423-3260', '542 Fulton Lane', null, 'Pittsburgh', 'PA', '15220', null)
,('Hayyim', 'Keightley', 'hkeightleygz@addthis.com', '718-566-7783', '15824 Portage Trail', null, 'Bronx', 'NY', '10469', null)
,('Betti', 'Rigg', 'briggh0@storify.com', '562-866-1334', '00519 Florence Plaza', null, 'Los Angeles', 'CA', '90045', null)
,('Maryl', 'Dorrington', 'mdorringtonh1@acquirethisname.com', '646-201-2132', '2 Melrose Avenue', 'Apt 835', 'New York City', 'NY', '10099', null)
,('Elyssa', 'Nancekivell', 'enancekivellh2@archive.org', '267-624-5848', '594 Columbus Plaza', null, 'Philadelphia', 'PA', '19146', null)
,('Myranda', 'Bortolutti', 'mbortoluttih3@bbb.org', '903-574-6680', '05 Warbler Trail', null, 'Longview', 'TX', '75605', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.')
,('Alano', 'Jeannequin', 'ajeannequinh4@paginegialle.it', '303-558-5350', '61751 Drewry Avenue', null, 'Littleton', 'CO', '80161', null)
,('Ashlee', 'Kittle', 'akittleh5@tuttocitta.it', '614-197-9673', '87415 Mesta Crossing', null, 'Columbus', 'OH', '43215', null)
,('Randolf', 'Stiffell', 'rstiffellh6@newsvine.com', '484-274-3666', '6799 Darwin Crossing', null, 'Reading', 'PA', '19605', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.')
,('Brittney', 'Kunert', 'bkunerth7@unc.edu', '410-645-4218', '2673 Barnett Park', null, 'Baltimore', 'MD', '21281', null)
,('Fairleigh', 'Marielle', 'fmarielleh8@hugedomains.com', '443-237-5087', '954 Sloan Avenue', null, 'Baltimore', 'MD', '21211', null)
,('Prent', 'Parradye', 'pparradyeh9@howstuffworks.com', '804-393-1983', '102 Derek Point', 'PO Box 68628', 'Richmond', 'VA', '23220', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.')
,('Clarissa', 'Brennenstuhl', 'cbrennenstuhlha@mysql.com', '406-746-9176', '97 Hooker Way', null, 'Billings', 'MT', '59112', null)
,('Chilton', 'Seamons', 'cseamonshb@ucla.edu', '606-705-0270', '2133 Glacier Hill Terrace', 'Apt 41', 'London', 'KY', '40745', null)
,('Donella', 'Le Brun', 'dlebrunhc@statcounter.com', '937-512-7032', '76 Commercial Road', null, 'Dayton', 'OH', '45470', null)
,('Pat', 'McCathy', 'pmccathyhd@google.co.jp', '215-619-7843', '70 Crescent Oaks Trail', null, 'Philadelphia', 'PA', '19131', null)
,('Margareta', 'Moles', 'mmoleshe@intel.com', '425-950-9684', '4 Debra Place', null, 'Everett', 'WA', '98206', null)
,('Lindsy', 'Couves', 'lcouveshf@ox.ac.uk', '406-176-5087', '0 Dakota Road', 'Room 1402', 'Bozeman', 'MT', '59771', null)
,('Ernesto', 'Keeltagh', 'ekeeltaghhg@sfgate.com', '810-572-9368', '5 Bartelt Way', null, 'Flint', 'MI', '48550', null)
,('Carlynne', 'Ovens', 'covenshh@rediff.com', '210-105-1677', '1676 Eggendart Lane', null, 'San Antonio', 'TX', '78291', null)
,('Karyn', 'Robers', 'krobershi@cnbc.com', '240-548-4120', '5 Fremont Place', null, 'Bowie', 'MD', '20719', null)
,('Sterne', 'Grindell', 'sgrindellhj@merriam-webster.com', '408-571-1724', '3 Mitchell Point', null, 'San Jose', 'CA', '95133', null)
,('Rina', 'Morman', 'rmormanhk@oracle.com', '206-844-2995', '630 Porter Way', null, 'Seattle', 'WA', '98175', null)
,('Chadwick', 'Merida', 'cmeridahl@weibo.com', '239-684-9488', '67005 High Crossing Crossing', null, 'Fort Myers', 'FL', '33994', null)
,('Cristionna', 'Brabon', 'cbrabonhm@squidoo.com', '228-524-0138', '9018 Brickson Park Park', null, 'Biloxi', 'MS', '39534', null)
,('Dare', 'Baudacci', 'dbaudaccihn@zimbio.com', '213-623-2923', '68835 Mandrake Place', null, 'Los Angeles', 'CA', '90189', null)
,('Chantalle', 'Eynon', 'ceynonho@sfgate.com', '510-484-7427', '0287 Sauthoff Avenue', null, 'Berkeley', 'CA', '94705', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.')
,('Lurline', 'Ilchenko', 'lilchenkohp@earthlink.net', '757-646-3947', '8 Esch Trail', null, 'Suffolk', 'VA', '23436', null)
,('Christophorus', 'Tomasoni', 'ctomasonihq@ucla.edu', '520-929-9276', '62 Tennessee Road', null, 'Tucson', 'AZ', '85715', null)
,('Jerrine', 'Stenner', 'jstennerhr@wiley.com', '317-291-6454', '4639 Mandrake Trail', null, 'Indianapolis', 'IN', '46239', null)
,('Dominic', 'Foskett', 'dfosketths@com.com', '804-932-5832', '4 Anniversary Lane', '10th Floor', 'Richmond', 'VA', '23220', null)
,('Lion', 'Pinkie', 'lpinkieht@dot.gov', '480-790-5811', '70 Clemons Hill', null, 'Phoenix', 'AZ', '85040', null)
,('Archibaldo', 'Powdrell', 'apowdrellhu@wikimedia.org', '718-347-7485', '11 Hanson Street', null, 'New York City', 'NY', '10004', null)
,('Lucine', 'Sydney', 'lsydneyhv@purevolume.com', '540-169-3243', '13242 New Castle Trail', null, 'Roanoke', 'VA', '24024', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.')
,('Edd', 'Lidgard', 'elidgardhw@usatoday.com', '303-244-7062', '9760 David Court', null, 'Littleton', 'CO', '80126', null)
,('Saul', 'Gossling', 'sgosslinghx@ebay.com', '419-194-8531', '949 Thompson Way', null, 'Toledo', 'OH', '43656', null)
,('Hilliary', 'Spata', 'hspatahy@marketwatch.com', '863-263-3090', '60380 Westerfield Avenue', null, 'Lakeland', 'FL', '33805', null)
,('Gib', 'Babalola', 'gbabalolahz@bizjournals.com', '305-779-9579', '5383 Jay Terrace', 'Apt 1456', 'Miami', 'FL', '33180', null)
,('Courtney', 'Eaglen', 'ceagleni0@dot.gov', '727-283-8528', '45 Aberg Street', null, 'Clearwater', 'FL', '33763', null)
,('Seumas', 'Pickthall', 'spickthalli1@unesco.org', '414-920-4483', '00868 Cottonwood Center', 'Apt 1389', 'Milwaukee', 'WI', '53225', null)
,('Lindsay', 'Jubb', 'ljubbi2@arizona.edu', '202-157-8591', '284 Portage Trail', null, 'Washington', 'DC', '20520', null)
,('Rollin', 'Ricardet', 'rricardeti3@yelp.com', '408-637-3112', '53 5th Circle', null, 'San Jose', 'CA', '95123', null)
,('Teddy', 'Tisun', 'ttisuni4@mapquest.com', '585-111-2188', '781 Jana Terrace', null, 'Rochester', 'NY', '14683', null)
,('Haley', 'Barnaclough', 'hbarnacloughi5@mediafire.com', '573-506-3488', '38 Towne Point', null, 'Columbia', 'MO', '65218', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.')
,('Holly', 'Capewell', 'hcapewelli6@delicious.com', '213-317-1851', '53665 Service Circle', null, 'Van Nuys', 'CA', '91499', null)
,('Angela', 'Jantet', 'ajanteti7@themeforest.net', '915-507-7763', '5 Marquette Street', null, 'El Paso', 'TX', '79950', null)
,('Enos', 'Follan', 'efollani8@cbc.ca', '231-723-4070', '7535 Trailsway Pass', null, 'Muskegon', 'MI', '49444', null)
,('Sibbie', 'Scotting', 'sscottingi9@is.gd', '956-888-0252', '86747 Trailsway Parkway', 'Suite 45', 'Laredo', 'TX', '78044', null)
,('Arlette', 'Berge', 'abergeia@skyrock.com', '408-177-7291', '23977 Corben Circle', null, 'San Jose', 'CA', '95173', null)
,('Marta', 'Ashenhurst', 'mashenhurstib@issuu.com', '812-323-4130', '62 Fisk Park', null, 'Terre Haute', 'IN', '47805', null)
,('Iver', 'Pipkin', 'ipipkinic@taobao.com', '212-415-7774', '84011 Corscot Center', null, 'New York City', 'NY', '10203', null)
,('Sol', 'Thurby', 'sthurbyid@creativecommons.org', '501-414-3057', '9 Dixon Park', null, 'North Little Rock', 'AR', '72199', null)
,('Ab', 'Monini', 'amoniniie@biblegateway.com', '202-277-7725', '5 Debra Way', null, 'Washington', 'DC', '20016', null)
,('Toby', 'Cowdry', 'tcowdryif@wunderground.com', '917-865-3073', '1009 Stuart Crossing', null, 'New York City', 'NY', '10155', null)
,('Valentijn', 'Rutter', 'vrutterig@fotki.com', '216-889-8978', '85 Shopko Point', null, 'Cleveland', 'OH', '44111', null)
,('Somerset', 'Mockett', 'smockettih@mayoclinic.com', '713-440-3873', '0316 Victoria Lane', null, 'Houston', 'TX', '77218', null)
,('Stefanie', 'Manuaud', 'smanuaudii@springer.com', '217-469-2222', '9253 Washington Park', 'PO Box 63285', 'Springfield', 'IL', '62705', null)
,('Alon', 'Giraudel', 'agiraudelij@live.com', '901-223-1556', '093 Buhler Hill', 'Apt 1903', 'Memphis', 'TN', '38188', null)
,('Elisa', 'Kerner', 'ekernerik@bloglovin.com', '989-194-3480', '082 High Crossing Park', 'Suite 6', 'Saginaw', 'MI', '48604', null)
,('Cordell', 'Dolden', 'cdoldenil@abc.net.au', '610-849-0797', '2 Hansons Lane', 'Room 1707', 'Reading', 'PA', '19610', null)
,('Kirsteni', 'Tarbett', 'ktarbettim@google.co.uk', '609-119-9517', '10 Rigney Lane', null, 'Trenton', 'NJ', '08695', null)
,('Willem', 'Yukhov', 'wyukhovin@360.cn', '202-965-1267', '9247 Crowley Plaza', 'Room 1602', 'Washington', 'DC', '20337', null)
,('Kynthia', 'Darwood', 'kdarwoodio@github.io', '205-401-6485', '75591 Union Plaza', 'Apt 230', 'Birmingham', 'AL', '35242', null)
,('Morly', 'Slimme', 'mslimmeip@yellowbook.com', '203-250-1475', '2394 Lake View Avenue', 'PO Box 49346', 'New Haven', 'CT', '06538', null)
,('Kinsley', 'Langelay', 'klangelayiq@nhs.uk', '210-116-3709', '68274 John Wall Terrace', null, 'San Antonio', 'TX', '78291', null)
,('Andriette', 'Delap', 'adelapir@whitehouse.gov', '210-259-0103', '49800 Sundown Terrace', null, 'San Antonio', 'TX', '78260', null)
,('Casey', 'Edison', 'cedisonis@tmall.com', '303-710-5363', '554 Mosinee Center', null, 'Denver', 'CO', '80262', null)
,('Rainer', 'Sasser', 'rsasserit@odnoklassniki.ru', '712-140-3254', '9 Schmedeman Point', null, 'Sioux City', 'IA', '51105', null)
,('Emily', 'Dudgeon', 'edudgeoniu@comcast.net', '517-111-5858', '231 Holmberg Street', null, 'Lansing', 'MI', '48912', null)
,('Nertie', 'Goodchild', 'ngoodchildiv@smugmug.com', '513-282-5467', '53317 Briar Crest Drive', null, 'Cincinnati', 'OH', '45264', null)
,('Eliza', 'Inde', 'eindeiw@amazonaws.com', '419-160-3982', '4 La Follette Road', null, 'Toledo', 'OH', '43605', null)
,('Staci', 'Glenfield', 'sglenfieldix@si.edu', '913-351-9329', '8 Raven Center', 'Apt 1595', 'Kansas City', 'KS', '66105', null)
,('Levi', 'Nayer', 'lnayeriy@cnbc.com', '337-945-6571', '625 Mayer Lane', null, 'Lafayette', 'LA', '70593', null)
,('Ichabod', 'Tomasutti', 'itomasuttiiz@nba.com', '314-429-0280', '6336 Crownhardt Alley', null, 'Saint Louis', 'MO', '63110', null)
,('Kissiah', 'Sommerton', 'ksommertonj0@ftc.gov', '803-777-9276', '5 Carioca Center', null, 'Columbia', 'SC', '29220', null)
,('Tracey', 'Kilbane', 'tkilbanej1@abc.net.au', '713-456-4873', '3881 Farragut Hill', null, 'Houston', 'TX', '77288', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.')
,('Tresa', 'Stanluck', 'tstanluckj2@diigo.com', '901-715-5318', '6 Grim Point', null, 'Memphis', 'TN', '38181', null)
,('Kassi', 'Stoakes', 'kstoakesj3@trellian.com', '301-840-7769', '214 Sutherland Way', null, 'Baltimore', 'MD', '21203', null)
,('Iver', 'Giorgi', 'igiorgij4@si.edu', '330-788-2181', '554 Roxbury Point', null, 'Canton', 'OH', '44760', null)
,('Nerita', 'Denis', 'ndenisj5@prnewswire.com', '312-832-4656', '52 Blue Bill Park Circle', null, 'Chicago', 'IL', '60669', null)
,('Cathie', 'Boanas', 'cboanasj6@tmall.com', '412-946-4929', '297 Main Avenue', null, 'Pittsburgh', 'PA', '15255', null)
,('Robyn', 'Brychan', 'rbrychanj7@squidoo.com', '765-852-9335', '81741 Carpenter Way', null, 'Crawfordsville', 'IN', '47937', null)
,('Juli', 'Hunton', 'jhuntonj8@hugedomains.com', '916-913-2686', '71 Bobwhite Trail', null, 'Sacramento', 'CA', '95818', null)
,('Leigh', 'Lamont', 'llamontj9@patch.com', '323-378-8606', '903 Schiller Avenue', null, 'Long Beach', 'CA', '90805', null)
,('Halie', 'Weatherhill', 'hweatherhillja@usda.gov', '415-756-3590', '17588 Becker Avenue', null, 'San Francisco', 'CA', '94121', null)
,('Caro', 'Giamelli', 'cgiamellijb@bloglovin.com', '816-883-3216', '47808 Blaine Terrace', null, 'Kansas City', 'MO', '64125', null)
,('Brana', 'Bouchier', 'bbouchierjc@meetup.com', '540-316-8164', '554 Barnett Crossing', null, 'Roanoke', 'VA', '24009', null)
,('Carson', 'Devita', 'cdevitajd@craigslist.org', '505-524-0475', '773 Tennyson Parkway', null, 'Albuquerque', 'NM', '87105', null)
,('Guthry', 'Schurcke', 'gschurckeje@marketwatch.com', '609-583-7436', '7 Golf View Junction', '16th Floor', 'Trenton', 'NJ', '08608', null)
,('Dominica', 'Quarmby', 'dquarmbyjf@cam.ac.uk', '312-746-2963', '7 Continental Plaza', null, 'Chicago', 'IL', '60697', null)
,('Nonah', 'Bruun', 'nbruunjg@deliciousdays.com', '239-441-9679', '19848 Katie Crossing', null, 'Cape Coral', 'FL', '33915', null)
,('Coriss', 'Terbruggen', 'cterbruggenjh@behance.net', '440-172-1670', '48565 Judy Alley', null, 'Cleveland', 'OH', '44130', null)
,('Heida', 'Haster', 'hhasterji@boston.com', '610-522-9081', '9 Hudson Point', null, 'Philadelphia', 'PA', '19109', null)
,('Morganne', 'Tambling', 'mtamblingjj@cmu.edu', '202-726-8253', '9970 Cherokee Avenue', null, 'Alexandria', 'VA', '22309', null)
,('Prince', 'Ferre', 'pferrejk@abc.net.au', '202-653-8377', '145 Eastwood Junction', 'Suite 32', 'Washington', 'DC', '20535', null)
,('Raul', 'Struss', 'rstrussjl@oracle.com', '956-874-1915', '10148 Lerdahl Hill', null, 'Laredo', 'TX', '78044', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.')
,('Marlo', 'Prickett', 'mprickettjm@addtoany.com', '614-484-2221', '697 Katie Avenue', null, 'Columbus', 'OH', '43204', null)
,('Sarena', 'Hillum', 'shillumjn@nba.com', '941-381-3516', '9 Shopko Junction', null, 'Sarasota', 'FL', '34238', null)
,('Bale', 'Skellern', 'bskellernjo@wikispaces.com', '520-190-0836', '1352 Briar Crest Court', null, 'Tucson', 'AZ', '85715', null)
,('Adan', 'O''Hoey', 'aohoeyjp@goo.ne.jp', '813-725-4733', '627 Welch Place', 'PO Box 36421', 'Tampa', 'FL', '33694', null)
,('Aloysius', 'Bloyes', 'abloyesjq@trellian.com', '505-341-0412', '5 Haas Parkway', null, 'Albuquerque', 'NM', '87180', null)
,('Staffard', 'Zealy', 'szealyjr@geocities.com', '602-890-5324', '0 Nancy Center', null, 'Glendale', 'AZ', '85305', null)
,('Lonee', 'Harsnep', 'lharsnepjs@ask.com', '215-181-7230', '16 Bartillon Avenue', null, 'Philadelphia', 'PA', '19141', null)
,('Garland', 'Allsep', 'gallsepjt@economist.com', '303-656-5945', '1 Buhler Terrace', null, 'Denver', 'CO', '80249', null)
,('Clare', 'Mannock', 'cmannockju@kickstarter.com', '925-559-5789', '67 Crownhardt Center', null, 'Concord', 'CA', '94522', null)
,('Bethany', 'Beckson', 'bbecksonjv@skype.com', '281-212-3115', '6443 Nova Place', null, 'Houston', 'TX', '77050', null)
,('Shantee', 'Stolting', 'sstoltingjw@quantcast.com', '602-433-5029', '91524 Hayes Drive', null, 'Phoenix', 'AZ', '85083', null)
,('Jodie', 'Reckhouse', 'jreckhousejx@google.nl', '757-128-9671', '54830 Bartillon Park', 'Suite 39', 'Virginia Beach', 'VA', '23471', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.')
,('Cacilie', 'Swinfen', 'cswinfenjy@samsung.com', '336-982-8206', '05076 Namekagon Place', null, 'Winston Salem', 'NC', '27150', null)
,('Katerine', 'Hallums', 'khallumsjz@sina.com.cn', '267-370-0999', '8588 Red Cloud Alley', null, 'Levittown', 'PA', '19058', null)
,('Lyman', 'Trevethan', 'ltrevethank0@gizmodo.com', '202-981-3499', '9547 Marcy Parkway', null, 'Washington', 'DC', '56944', null)
,('Almeria', 'Earley', 'aearleyk1@army.mil', '832-241-7020', '5603 American Ash Terrace', null, 'Houston', 'TX', '77266', null)
,('Sunny', 'Hulkes', 'shulkesk2@macromedia.com', '574-702-0966', '6 West Circle', null, 'South Bend', 'IN', '46620', null)
,('Bernette', 'Arni', 'barnik3@npr.org', '916-159-9047', '239 Garrison Circle', null, 'Sacramento', 'CA', '95823', null)
,('Ralf', 'Manass', 'rmanassk4@samsung.com', '573-621-3146', '82 Mayer Junction', null, 'Columbia', 'MO', '65211', null)
,('Jessika', 'Stuke', 'jstukek5@telegraph.co.uk', '786-608-2953', '63 Lakewood Avenue', null, 'Miami', 'FL', '33196', null)
,('Starlene', 'Bote', 'sbotek6@ucsd.edu', '602-424-5072', '176 Magdeline Terrace', 'Room 99', 'Phoenix', 'AZ', '85005', null)
,('Ruben', 'Mc Caughan', 'rmccaughank7@mapquest.com', '386-342-5701', '05 Starling Pass', null, 'Daytona Beach', 'FL', '32118', null)
,('Eimile', 'Marris', 'emarrisk8@oaic.gov.au', '214-330-0858', '387 Farragut Junction', 'PO Box 23460', 'Dallas', 'TX', '75367', null)
,('Valida', 'Crampsy', 'vcrampsyk9@utexas.edu', '850-100-7970', '23 Kings Circle', null, 'Pensacola', 'FL', '32575', null)
,('Lamond', 'Gatecliff', 'lgatecliffka@wisc.edu', '619-801-7714', '4 Dottie Park', null, 'San Diego', 'CA', '92132', null)
,('Gabriell', 'Spradbrow', 'gspradbrowkb@amazon.de', '562-134-9666', '20 Oak Valley Center', null, 'Huntington Beach', 'CA', '92648', null)
,('Bidget', 'Beiderbeck', 'bbeiderbeckkc@printfriendly.com', '501-736-0302', '9241 Stone Corner Crossing', null, 'Little Rock', 'AR', '72209', null)
,('Rosamund', 'Hullyer', 'rhullyerkd@dell.com', '315-165-7347', '9 Hermina Center', null, 'Syracuse', 'NY', '13251', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')
,('Hillary', 'Seneschal', 'hseneschalke@topsy.com', '312-280-0271', '503 Amoth Circle', null, 'Chicago', 'IL', '60681', null)
,('Albie', 'Ragsdale', 'aragsdalekf@howstuffworks.com', '816-950-8224', '238 Carioca Parkway', '3rd Floor', 'Kansas City', 'MO', '64193', null)
,('Gerda', 'Vasler', 'gvaslerkg@is.gd', '619-435-1166', '99 Miller Center', null, 'San Diego', 'CA', '92153', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.')
,('Whit', 'Pidcock', 'wpidcockkh@skype.com', '717-884-9610', '9 Ohio Parkway', null, 'Harrisburg', 'PA', '17140', null)
,('Bourke', 'Pemberton', 'bpembertonki@unicef.org', '865-921-6689', '3 Canary Pass', null, 'Knoxville', 'TN', '37931', null)
,('Loralee', 'Allans', 'lallanskj@i2i.jp', '801-567-4271', '3 Crescent Oaks Court', '5th Floor', 'Salt Lake City', 'UT', '84152', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.')
,('Romy', 'Poltun', 'rpoltunkk@hugedomains.com', '323-734-3372', '37680 Declaration Drive', null, 'Inglewood', 'CA', '90305', null)
,('Kellen', 'de Mendoza', 'kdemendozakl@xrea.com', '404-620-7786', '68011 Johnson Street', null, 'Atlanta', 'GA', '30392', null)
,('Alva', 'Dikelin', 'adikelinkm@sohu.com', '951-959-5938', '2973 Sherman Point', null, 'Corona', 'CA', '92878', null)
,('Ilaire', 'Toffler', 'itofflerkn@t-online.de', '202-463-6690', '1 Banding Place', null, 'Washington', 'DC', '20046', null)
,('Gregor', 'de Clercq', 'gdeclercqko@jigsy.com', '251-777-6720', '4 Hanson Court', null, 'Mobile', 'AL', '36605', null)
,('Lauren', 'Challender', 'lchallenderkp@hp.com', '405-905-0929', '71485 Washington Center', null, 'Oklahoma City', 'OK', '73147', null)
,('Billy', 'Stickels', 'bstickelskq@godaddy.com', '770-992-0509', '085 Meadow Valley Terrace', null, 'Atlanta', 'GA', '30328', null)
,('Scot', 'Siveter', 'ssiveterkr@sina.com.cn', '816-517-4295', '082 Stephen Terrace', null, 'Kansas City', 'MO', '64136', null)
,('Karlotte', 'Vidgeon', 'kvidgeonks@friendfeed.com', '765-557-3892', '062 Reinke Point', null, 'Lafayette', 'IN', '47905', null)
,('Whittaker', 'Tribe', 'wtribekt@pagesperso-orange.fr', '518-993-3529', '1497 Sunnyside Road', null, 'Albany', 'NY', '12205', null)
,('Paco', 'Royds', 'proydsku@acquirethisname.com', '336-454-3563', '68 Miller Terrace', null, 'Greensboro', 'NC', '27409', null)
,('Carie', 'Rodell', 'crodellkv@wikipedia.org', '901-755-1713', '84 Sachtjen Court', null, 'Memphis', 'TN', '38126', null)
,('Natty', 'Goldson', 'ngoldsonkw@chicagotribune.com', '309-342-4779', '7 Hansons Alley', null, 'Peoria', 'IL', '61605', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.')
,('Annabela', 'Shevlane', 'ashevlanekx@paginegialle.it', '601-956-1846', '5367 Fuller Place', 'PO Box 67016', 'Meridian', 'MS', '39305', null)
,('Luella', 'Sweed', 'lsweedky@narod.ru', '303-748-4334', '34 Nancy Plaza', 'PO Box 17984', 'Denver', 'CO', '80291', null)
,('Pattie', 'Michal', 'pmichalkz@disqus.com', '702-837-7503', '64 Iowa Road', null, 'Henderson', 'NV', '89012', null)
,('Stephannie', 'Briddock', 'sbriddockl0@oracle.com', '979-965-3441', '086 Independence Avenue', 'Room 534', 'Bryan', 'TX', '77806', null)
,('Anica', 'Le Lievre', 'alelievrel1@delicious.com', '512-168-7808', '6843 Larry Street', null, 'Austin', 'TX', '78769', null)
,('Ambros', 'Leckenby', 'aleckenbyl2@sina.com.cn', '202-301-8551', '53972 Clarendon Lane', null, 'Washington', 'DC', '20299', null)
,('Alexander', 'Mullender', 'amullenderl3@cisco.com', '626-104-0870', '45129 Maryland Plaza', null, 'Alhambra', 'CA', '91841', null)
,('Cristobal', 'Hadkins', 'chadkinsl4@illinois.edu', '812-696-1848', '30694 Reinke Terrace', null, 'Evansville', 'IN', '47747', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.')
,('Tricia', 'Halliburton', 'thalliburtonl5@technorati.com', '719-433-8901', '3 Scott Way', null, 'Colorado Springs', 'CO', '80935', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.')
,('Claiborne', 'Micka', 'cmickal6@google.es', '210-493-3771', '9 Hanson Drive', null, 'San Antonio', 'TX', '78260', null)
,('Lotty', 'Pettinger', 'lpettingerl7@cloudflare.com', '214-671-1553', '6050 John Wall Avenue', null, 'Dallas', 'TX', '75277', null)
,('Baxy', 'Varfalameev', 'bvarfalameevl8@indiatimes.com', '571-788-5904', '4 Bartillon Place', null, 'Vienna', 'VA', '22184', null)
,('Halie', 'Claussen', 'hclaussenl9@blogs.com', '801-257-8490', '216 Daystar Lane', null, 'Salt Lake City', 'UT', '84170', null)
,('Jilleen', 'Rens', 'jrensla@soup.io', '256-240-9928', '26731 Esch Court', null, 'Huntsville', 'AL', '35895', null)
,('Liza', 'Hellicar', 'lhellicarlb@marriott.com', '432-744-7773', '4073 Gulseth Avenue', 'PO Box 42988', 'Odessa', 'TX', '79764', null)
,('Bent', 'Stroband', 'bstrobandlc@zimbio.com', '810-693-6641', '4 Hayes Road', null, 'Warren', 'MI', '48092', null)
,('Derk', 'MacCosty', 'dmaccostyld@soup.io', '570-942-9484', '1895 Del Mar Street', null, 'Wilkes Barre', 'PA', '18763', null)
,('Merissa', 'Dack', 'mdackle@oracle.com', '336-263-0667', '3808 Bonner Avenue', 'Suite 92', 'Winston Salem', 'NC', '27116', null)
,('Halsey', 'Teenan', 'hteenanlf@usda.gov', '816-588-6899', '3883 Eastwood Point', null, 'Kansas City', 'MO', '64136', 'Suspendisse potenti. In eleifend quam a odio.')
,('Inglebert', 'Cominotti', 'icominottilg@twitpic.com', '814-118-8991', '9 Sherman Point', null, 'Erie', 'PA', '16550', null)
,('Delano', 'Diben', 'ddibenlh@ted.com', '704-821-3472', '73 Hagan Hill', null, 'Charlotte', 'NC', '28210', null)
,('Linda', 'Turban', 'lturbanli@dailymotion.com', '954-738-8259', '34 Glacier Hill Road', null, 'Hollywood', 'FL', '33023', null)
,('Marcelia', 'Muzzi', 'mmuzzilj@answers.com', '443-796-8877', '3297 Kim Road', null, 'Baltimore', 'MD', '21239', null)
,('Luce', 'Walas', 'lwalaslk@kickstarter.com', '248-575-9370', '96 Myrtle Pass', null, 'Farmington', 'MI', '48335', null)
,('Lothaire', 'Eatttok', 'leatttokll@nps.gov', '813-494-7716', '072 Harper Terrace', null, 'Tampa', 'FL', '33680', null)
,('Ardith', 'Wedmore.', 'awedmorelm@amazon.co.uk', '972-341-0294', '1730 Delaware Place', null, 'Denton', 'TX', '76210', null)
,('Phebe', 'Grange', 'pgrangeln@gnu.org', '419-373-6932', '23 Pawling Avenue', null, 'Toledo', 'OH', '43656', null)
,('Elisabetta', 'Sorrell', 'esorrelllo@omniture.com', '404-874-1281', '2 Del Sol Drive', 'PO Box 18449', 'Atlanta', 'GA', '30316', null)
,('Vaughn', 'Kinset', 'vkinsetlp@canalblog.com', '941-688-3740', '744 Lawn Trail', null, 'Sarasota', 'FL', '34276', null)
,('Rochelle', 'Samweyes', 'rsamweyeslq@ed.gov', '802-283-9796', '2566 Oak Park', null, 'Montpelier', 'VT', '05609', null)
,('Karalee', 'Durram', 'kdurramlr@cnet.com', '305-582-3599', '18 Laurel Junction', 'Apt 1399', 'Miami', 'FL', '33175', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.')
,('Meade', 'Grennan', 'mgrennanls@lycos.com', '515-598-4862', '79 Summit Hill', null, 'Des Moines', 'IA', '50981', null)
,('Abner', 'Helgass', 'ahelgasslt@berkeley.edu', '337-123-3964', '65 Maryland Place', null, 'Lafayette', 'LA', '70593', null)
,('Moe', 'Kiebes', 'mkiebeslu@desdev.cn', '408-119-7500', '038 Little Fleur Pass', 'PO Box 68001', 'San Jose', 'CA', '95160', null)
,('Merrel', 'Print', 'mprintlv@themeforest.net', '516-153-1106', '16172 Lindbergh Avenue', null, 'Jamaica', 'NY', '11407', null)
,('Rossy', 'Walbrook', 'rwalbrooklw@blinklist.com', '619-932-6996', '723 Milwaukee Trail', null, 'San Diego', 'CA', '92186', null)
,('Emmet', 'Haine', 'ehainelx@time.com', '410-780-9144', '402 Red Cloud Park', null, 'Baltimore', 'MD', '21203', null)
,('Tallie', 'Hampstead', 'thampsteadly@ustream.tv', '212-523-1582', '9 Novick Terrace', null, 'New York City', 'NY', '10150', null)
,('Jeremiah', 'Pharrow', 'jpharrowlz@diigo.com', '203-467-3721', '82 Coolidge Pass', '20th Floor', 'Danbury', 'CT', '06816', null)
,('Augustine', 'Jina', 'ajinam0@yolasite.com', '202-693-0547', '72 Towne Avenue', null, 'Washington', 'DC', '20078', null)
,('Pennie', 'Grgic', 'pgrgicm1@ftc.gov', '352-723-7675', '68 Anthes Place', null, 'Ocala', 'FL', '34479', null)
,('Bradley', 'Dinsmore', 'bdinsmorem2@archive.org', '806-260-3667', '2966 Iowa Lane', null, 'Amarillo', 'TX', '79159', null)
,('Lincoln', 'Duggleby', 'ldugglebym3@cafepress.com', '814-792-0635', '0 Dakota Road', null, 'Erie', 'PA', '16550', null)
,('Dodi', 'Enrique', 'denriquem4@rediff.com', '210-933-1056', '4 Lien Street', null, 'San Antonio', 'TX', '78296', null)
,('Alexander', 'Benoix', 'abenoixm5@usda.gov', '352-174-4135', '46 Cherokee Drive', 'PO Box 84552', 'Ocala', 'FL', '34479', null)
,('Trude', 'MacAlpin', 'tmacalpinm6@umn.edu', '706-922-6547', '3587 Kropf Street', null, 'Augusta', 'GA', '30905', null)
,('Candi', 'Deluze', 'cdeluzem7@cloudflare.com', '904-544-6479', '0526 Mariners Cove Parkway', null, 'Jacksonville', 'FL', '32230', null)
,('Maje', 'Killock', 'mkillockm8@pinterest.com', '734-636-0596', '67 Luster Park', null, 'Ann Arbor', 'MI', '48107', null)
,('Crawford', 'Franzke', 'cfranzkem9@bloglovin.com', '814-515-4070', '2 Hovde Drive', null, 'Erie', 'PA', '16505', null)
,('Sylvester', 'Lorkin', 'slorkinma@nytimes.com', '205-228-4836', '552 Duke Street', null, 'Birmingham', 'AL', '35236', null)
,('Fidelio', 'Wildbore', 'fwildboremb@globo.com', '330-688-1036', '238 Eliot Park', null, 'Akron', 'OH', '44329', null)
,('Gris', 'Gomme', 'ggommemc@indiatimes.com', '678-326-2723', '9 Mendota Terrace', '15th Floor', 'Lawrenceville', 'GA', '30245', null)
,('Mufinella', 'Kennett', 'mkennettmd@va.gov', '210-226-5774', '039 Corry Trail', null, 'San Antonio', 'TX', '78215', null)
,('Deana', 'Tetford', 'dtetfordme@qq.com', '218-986-7644', '0 Old Shore Way', null, 'Minneapolis', 'MN', '55423', null)
,('Raymond', 'Brunelleschi', 'rbrunelleschimf@twitter.com', '570-811-8968', '27905 Onsgard Center', null, 'Scranton', 'PA', '18514', null)
,('Preston', 'Tilburn', 'ptilburnmg@amazonaws.com', '303-793-9326', '740 Bayside Lane', null, 'Denver', 'CO', '80291', null)
,('Indira', 'Wincer', 'iwincermh@vk.com', '202-710-6930', '9 Grayhawk Place', 'Room 584', 'Washington', 'DC', '20099', null)
,('Lynnet', 'Swanger', 'lswangermi@is.gd', '515-573-4508', '5 Lillian Road', null, 'Des Moines', 'IA', '50305', null)
,('Sholom', 'Filipson', 'sfilipsonmj@t-online.de', '202-834-2895', '7050 Monument Crossing', 'PO Box 89467', 'Washington', 'DC', '20508', null)
,('Augustine', 'Beauchamp', 'abeauchampmk@mozilla.com', '915-128-8276', '8513 Forest Lane', null, 'El Paso', 'TX', '88525', null)
,('Elfreda', 'Woodyer', 'ewoodyerml@npr.org', '910-686-5327', '581 Manitowish Crossing', null, 'Wilmington', 'NC', '28405', null)
,('Deana', 'Cyseley', 'dcyseleymm@ebay.co.uk', '571-217-1416', '40508 Lake View Street', 'PO Box 16855', 'Arlington', 'VA', '22225', null)
,('Jarrett', 'Dykins', 'jdykinsmn@lulu.com', '614-916-6510', '2244 La Follette Avenue', null, 'Columbus', 'OH', '43204', null)
,('Grier', 'Kewley', 'gkewleymo@typepad.com', '626-241-3308', '44 Mallory Park', null, 'Pasadena', 'CA', '91125', null)
,('Prince', 'Meaddowcroft', 'pmeaddowcroftmp@hostgator.com', '504-684-1677', '647 Spenser Road', 'PO Box 4464', 'New Orleans', 'LA', '70183', null)
,('Roseann', 'McMenamie', 'rmcmenamiemq@dell.com', '641-417-0265', '1216 Springview Trail', 'Room 1529', 'Des Moines', 'IA', '50315', null)
,('Garik', 'Blasl', 'gblaslmr@slideshare.net', '701-312-5900', '9724 Transport Park', null, 'Fargo', 'ND', '58106', null)
,('Jeane', 'Tellett', 'jtellettms@cnet.com', '303-384-8727', '197 Pierstorff Avenue', null, 'Denver', 'CO', '80204', null)
,('Tomkin', 'Beardwood', 'tbeardwoodmt@rambler.ru', '719-445-6663', '4139 Carpenter Junction', null, 'Colorado Springs', 'CO', '80930', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.')
,('Paulie', 'Trafford', 'ptraffordmu@ow.ly', '850-915-3292', '38162 Anderson Crossing', null, 'Pensacola', 'FL', '32595', null)
,('Nanon', 'Ferenczi', 'nferenczimv@odnoklassniki.ru', '361-750-9939', '4655 Holmberg Point', null, 'Corpus Christi', 'TX', '78405', null)
,('Elijah', 'Filipczynski', 'efilipczynskimw@cnet.com', '561-130-4091', '2 Vermont Junction', null, 'Lake Worth', 'FL', '33462', null)
,('Lauraine', 'Ferrone', 'lferronemx@naver.com', '770-935-0263', '26 Gina Terrace', null, 'Marietta', 'GA', '30061', null)
,('Nealson', 'Jozsef', 'njozsefmy@chronoengine.com', '815-931-6457', '434 Orin Trail', null, 'Rockford', 'IL', '61105', null)
,('Natty', 'Matic', 'nmaticmz@live.com', '267-209-9268', '23 West Terrace', null, 'Philadelphia', 'PA', '19109', null)
,('Kip', 'Gretton', 'kgrettonn0@rediff.com', '208-183-1846', '4 Truax Plaza', null, 'Boise', 'ID', '83757', null)
,('Glynis', 'Trout', 'gtroutn1@wix.com', '907-785-8110', '6 Burrows Pass', null, 'Anchorage', 'AK', '99522', null)
,('Indira', 'Cassie', 'icassien2@phpbb.com', '425-613-5795', '343 Basil Place', null, 'Seattle', 'WA', '98133', null)
,('Felic', 'Yanin', 'fyaninn3@army.mil', '972-483-7262', '5492 Hovde Plaza', null, 'Dallas', 'TX', '75216', null)
,('Brigit', 'Hardiman', 'bhardimann4@xrea.com', '805-887-6048', '67 Dexter Trail', null, 'San Mateo', 'CA', '94405', null)
,('Bernardo', 'MacGuffie', 'bmacguffien5@huffingtonpost.com', '954-828-2076', '4 Fairview Terrace', '9th Floor', 'Fort Lauderdale', 'FL', '33305', null)
,('Fabian', 'Swancott', 'fswancottn6@newsvine.com', '754-453-2158', '2 Buell Hill', null, 'Pompano Beach', 'FL', '33064', null)
,('Milly', 'Patifield', 'mpatifieldn7@csmonitor.com', '801-363-3943', '9 Grasskamp Circle', null, 'Salt Lake City', 'UT', '84135', null)
,('Brit', 'Crossthwaite', 'bcrossthwaiten8@adobe.com', '713-408-8617', '69285 Kenwood Way', 'PO Box 36680', 'Houston', 'TX', '77070', null)
,('Dill', 'Caddies', 'dcaddiesn9@foxnews.com', '817-677-6587', '6548 Duke Lane', null, 'Fort Worth', 'TX', '76121', null)
,('Jules', 'Veltmann', 'jveltmannna@shinystat.com', '215-580-9895', '6520 Truax Crossing', null, 'Philadelphia', 'PA', '19172', null)
,('Ayn', 'Woosnam', 'awoosnamnb@woothemes.com', '706-149-4500', '87 West Road', null, 'Augusta', 'GA', '30919', 'Phasellus sit amet erat.')
,('Josephine', 'Gwalter', 'jgwalternc@people.com.cn', '213-934-9117', '2861 Green Ridge Lane', null, 'Los Angeles', 'CA', '90055', null)
,('Jere', 'Crusham', 'jcrushamnd@prweb.com', '281-985-6638', '0279 Emmet Road', null, 'Houston', 'TX', '77040', null)
,('Abby', 'Hehnke', 'ahehnkene@examiner.com', '203-919-8698', '0788 Lotheville Junction', 'PO Box 40402', 'Norwalk', 'CT', '06859', null)
,('Chadwick', 'Larrington', 'clarringtonnf@redcross.org', '608-476-1292', '45 Grayhawk Junction', null, 'Madison', 'WI', '53785', null)
,('Leonora', 'McGonigal', 'lmcgonigalng@whitehouse.gov', '513-183-0382', '353 Rowland Place', null, 'Cincinnati', 'OH', '45254', null)
,('Barnabe', 'Juszkiewicz', 'bjuszkiewicznh@example.com', '202-416-2864', '0 Fordem Point', null, 'Washington', 'DC', '20036', null)
,('Miof mela', 'Petrowsky', 'mpetrowskyni@archive.org', '804-344-6753', '683 Shelley Way', null, 'Hampton', 'VA', '23663', null)
,('Jeffrey', 'Thain', 'jthainnj@netvibes.com', '312-956-9008', '77 Lighthouse Bay Court', null, 'Chicago', 'IL', '60691', null)
,('Nathanael', 'Jovic', 'njovicnk@google.com.au', '919-145-2136', '117 Miller Court', null, 'Durham', 'NC', '27717', null)
,('Eldin', 'Cortes', 'ecortesnl@ocn.ne.jp', '704-404-1619', '098 Clarendon Hill', null, 'Charlotte', 'NC', '28284', null)
,('Dame', 'Whittock', 'dwhittocknm@cbsnews.com', '850-769-3006', '5160 Nova Terrace', null, 'Pensacola', 'FL', '32520', null)
,('Abraham', 'Quinell', 'aquinellnn@skyrock.com', '240-882-9984', '70940 Westport Point', '13th Floor', 'Frederick', 'MD', '21705', null)
,('Rebeca', 'Isoldi', 'risoldino@about.me', '713-400-2139', '46 Corry Street', 'Room 1371', 'Houston', 'TX', '77212', null)
,('Tamera', 'Worshall', 'tworshallnp@seattletimes.com', '414-117-6874', '36 Mosinee Hill', null, 'Milwaukee', 'WI', '53263', null)
,('Cherin', 'Blackham', 'cblackhamnq@exblog.jp', '334-895-5528', '54 Michigan Street', null, 'Birmingham', 'AL', '35210', null)
,('Liva', 'Spiaggia', 'lspiaggianr@issuu.com', '402-571-8766', '74 Division Place', null, 'Lincoln', 'NE', '68524', null)
,('Poul', 'Celier', 'pcelierns@sciencedaily.com', '646-998-6804', '304 Atwood Junction', 'Suite 88', 'New York City', 'NY', '10034', null)
,('Minnaminnie', 'Hadley', 'mhadleynt@irs.gov', '843-202-4039', '359 Del Sol Pass', null, 'Charleston', 'SC', '29403', null)
,('Carmelina', 'Swalwell', 'cswalwellnu@google.pl', '615-676-8293', '2534 Cody Place', 'Apt 1750', 'Murfreesboro', 'TN', '37131', null)
,('Terza', 'Tilson', 'ttilsonnv@istockphoto.com', '361-264-9019', '36529 Farwell Terrace', null, 'Corpus Christi', 'TX', '78475', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Cymbre', 'Harget', 'chargetnw@weebly.com', '562-686-4182', '9739 Hanover Court', null, 'Long Beach', 'CA', '90847', null)
,('Thoma', 'Rowlett', 'trowlettnx@alibaba.com', '812-787-0859', '31190 Fisk Lane', null, 'Terre Haute', 'IN', '47812', null)
,('Loraine', 'Fiske', 'lfiskeny@latimes.com', '414-355-3399', '49462 Aberg Trail', null, 'Milwaukee', 'WI', '53220', null)
,('Maryrose', 'Demageard', 'mdemageardnz@harvard.edu', '720-979-6489', '4 Dunning Junction', null, 'Boulder', 'CO', '80305', null)
,('Roddy', 'Yukhnevich', 'ryukhnevicho0@simplemachines.org', '602-452-6993', '8 Waywood Pass', null, 'Phoenix', 'AZ', '85010', null)
,('Udale', 'Pleaden', 'upleadeno1@unesco.org', '718-474-8681', '68642 Namekagon Center', null, 'Bronx', 'NY', '10454', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.')
,('Lina', 'Ciottoi', 'lciottoio2@cam.ac.uk', '307-450-8717', '2 Northland Center', null, 'Cheyenne', 'WY', '82007', null)
,('Barnard', 'Ivashnyov', 'bivashnyovo3@ucoz.ru', '716-703-8956', '76 Nelson Lane', null, 'Buffalo', 'NY', '14233', null)
,('Salvidor', 'Boyle', 'sboyleo4@eepurl.com', '813-723-1314', '11146 Novick Hill', null, 'Tampa', 'FL', '33686', null)
,('Lonnie', 'Barthot', 'lbarthoto5@tinypic.com', '208-408-6910', '642 Magdeline Parkway', null, 'Boise', 'ID', '83711', null)
,('Broddie', 'Canto', 'bcantoo6@ocn.ne.jp', '202-665-7455', '0572 Claremont Trail', null, 'Washington', 'DC', '20520', null)
,('Verile', 'Morgan', 'vmorgano7@smugmug.com', '260-283-2091', '84958 Cascade Avenue', null, 'Fort Wayne', 'IN', '46867', null)
,('Spike', 'Pantecost', 'spantecosto8@samsung.com', '209-911-7580', '4828 Comanche Circle', null, 'Visalia', 'CA', '93291', null)
,('Eustace', 'Tomicki', 'etomickio9@utexas.edu', '915-764-7816', '0842 Longview Pass', 'Suite 11', 'El Paso', 'TX', '79950', null)
,('Hobard', 'Trouncer', 'htrounceroa@photobucket.com', '713-586-4465', '9 Oxford Park', null, 'Humble', 'TX', '77346', null)
,('Corby', 'Mayberry', 'cmayberryob@latimes.com', '619-428-3967', '089 8th Park', null, 'San Diego', 'CA', '92137', null)
,('Toinette', 'Bussons', 'tbussonsoc@biblegateway.com', '718-495-2069', '6 Granby Court', null, 'Bronx', 'NY', '10469', null)
,('Maura', 'Tollett', 'mtollettod@google.es', '260-431-1471', '59 Vermont Street', null, 'Fort Wayne', 'IN', '46867', null)
,('Felicdad', 'Doxsey', 'fdoxseyoe@myspace.com', '801-703-4611', '6616 Shasta Court', null, 'Sandy', 'UT', '84093', null)
,('Evyn', 'Boyde', 'eboydeof@clickbank.net', '503-980-6575', '70 Florence Court', 'Suite 97', 'Portland', 'OR', '97206', 'Integer ac leo. Pellentesque ultrices mattis odio.')
,('Archibold', 'Maurice', 'amauriceog@altervista.org', '682-359-2531', '0 Del Sol Place', null, 'Fort Worth', 'TX', '76115', null)
,('Kara', 'Garry', 'kgarryoh@webeden.co.uk', '913-354-4691', '1 Stang Trail', null, 'Kansas City', 'KS', '66105', null)
,('Donnajean', 'Hare', 'dhareoi@washington.edu', '704-940-1251', '4479 Reindahl Court', null, 'Gastonia', 'NC', '28055', null)
,('Lief', 'Conaghan', 'lconaghanoj@shutterfly.com', '559-288-4525', '351 Corry Alley', null, 'Fresno', 'CA', '93773', null)
,('Wallie', 'Plumbe', 'wplumbeok@cbsnews.com', '304-790-1681', '9 David Road', null, 'Charleston', 'WV', '25356', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.')
,('Lishe', 'Cheson', 'lchesonol@cafepress.com', '772-946-7635', '27 Bunting Drive', 'Room 412', 'West Palm Beach', 'FL', '33405', null)
,('Quinlan', 'Rozenzweig', 'qrozenzweigom@weibo.com', '901-935-6446', '9 Merrick Drive', null, 'Memphis', 'TN', '38150', null)
,('Ellynn', 'Espinoza', 'eespinozaon@china.com.cn', '516-398-8824', '67283 Green Ridge Point', null, 'New Hyde Park', 'NY', '11044', null)
,('Lilith', 'Scutt', 'lscuttoo@bandcamp.com', '214-200-1649', '6 Thierer Center', 'Room 543', 'Dallas', 'TX', '75241', null)
,('Colet', 'Wohler', 'cwohlerop@flickr.com', '319-713-4789', '4481 Everett Court', null, 'Iowa City', 'IA', '52245', null)
,('Lexis', 'Cliburn', 'lcliburnoq@mozilla.com', '513-390-4988', '79 Texas Hill', null, 'Cincinnati', 'OH', '45213', null)
,('Melisandra', 'Lownsbrough', 'mlownsbroughor@dailymotion.com', '434-477-5923', '1377 Corben Circle', null, 'Lynchburg', 'VA', '24503', null)
,('Brion', 'Sailor', 'bsailoros@so-net.ne.jp', '518-980-9945', '1 American Point', null, 'Albany', 'NY', '12262', null)
,('Irita', 'Petyt', 'ipetytot@house.gov', '352-591-8923', '7784 Kinsman Junction', 'Suite 50', 'Gainesville', 'FL', '32610', null)
,('Arabela', 'Sustins', 'asustinsou@github.com', '469-514-6725', '60 Lien Street', null, 'Dallas', 'TX', '75210', null)
,('Camile', 'Dugan', 'cduganov@state.gov', '234-323-6007', '730 Meadow Ridge Center', null, 'Canton', 'OH', '44760', null)
,('Alma', 'Boydon', 'aboydonow@prlog.org', '913-235-5843', '91523 Russell Circle', null, 'Shawnee Mission', 'KS', '66205', null)
,('Nessa', 'Nolleth', 'nnollethox@yahoo.co.jp', '478-652-0220', '6 Brickson Park Lane', null, 'Macon', 'GA', '31217', null)
,('Fleming', 'Aneley', 'faneleyoy@auda.org.au', '914-804-6911', '730 Springview Avenue', null, 'Mount Vernon', 'NY', '10557', null)
,('Iolande', 'Snow', 'isnowoz@cbsnews.com', '918-110-8531', '65 Bay Park', null, 'Tulsa', 'OK', '74149', null)
,('Kristin', 'Knight', 'kknightp0@ibm.com', '913-301-3454', '52 Grim Plaza', null, 'Shawnee Mission', 'KS', '66276', null)
,('Fredek', 'Trippett', 'ftrippettp1@cafepress.com', '636-291-9162', '8 Bunker Hill Avenue', 'Apt 387', 'Saint Louis', 'MO', '63126', null)
,('Ginnifer', 'Goldthorpe', 'ggoldthorpep2@163.com', '239-312-3366', '51088 Superior Alley', null, 'Fort Myers', 'FL', '33994', null)
,('Jyoti', 'Soaper', 'jsoaperp3@discovery.com', '513-381-3506', '9871 Scott Junction', 'Suite 14', 'Cincinnati', 'OH', '45208', null)
,('Tyne', 'Adanez', 'tadanezp4@dedecms.com', '915-255-0701', '574 Farragut Crossing', null, 'El Paso', 'TX', '88563', null)
,('Georgy', 'Upcraft', 'gupcraftp5@biblegateway.com', '602-401-4976', '291 Hanover Court', 'PO Box 99302', 'Phoenix', 'AZ', '85067', null)
,('Heath', 'Tumility', 'htumilityp6@dell.com', '770-280-1029', '6 Redwing Center', null, 'Atlanta', 'GA', '30328', null)
,('Chandler', 'Paul', 'cpaulp7@yellowpages.com', '504-460-9331', '28 Oak Valley Crossing', null, 'Metairie', 'LA', '70033', null)
,('Matty', 'Ifill', 'mifillp8@psu.edu', '508-545-7053', '57 Monterey Drive', null, 'Boston', 'MA', '02114', null)
,('Margot', 'Mahy', 'mmahyp9@buzzfeed.com', '202-467-8461', '3 Pierstorff Court', null, 'Washington', 'DC', '20088', null)
,('Mariska', 'Dolan', 'mdolanpa@salon.com', '504-405-6463', '30489 Logan Drive', 'Room 563', 'New Orleans', 'LA', '70174', null)
,('Seline', 'Goulborne', 'sgoulbornepb@google.com.au', '512-752-9948', '2355 Thompson Park', 'PO Box 50955', 'Austin', 'TX', '78715', null)
,('Daisi', 'Baulch', 'dbaulchpc@amazonaws.com', '814-640-2961', '42 Havey Plaza', null, 'Erie', 'PA', '16565', null)
,('Mechelle', 'Mcsarry', 'mmcsarrypd@cafepress.com', '901-429-6912', '97 Kings Road', null, 'Memphis', 'TN', '38168', null)
,('Rollo', 'Lind', 'rlindpe@google.com', '806-963-2927', '4805 Alpine Junction', 'Room 1057', 'Amarillo', 'TX', '79176', null)
,('Rudie', 'Jenkerson', 'rjenkersonpf@reddit.com', '337-816-7673', '4 Declaration Point', null, 'Lake Charles', 'LA', '70616', null)
,('Vergil', 'Baskett', 'vbaskettpg@cargocollective.com', '920-246-3190', '13 Haas Hill', null, 'Green Bay', 'WI', '54305', null)
,('Dorella', 'Eatttok', 'deatttokph@dagondesign.com', '409-913-9148', '955 Lighthouse Bay Street', null, 'Beaumont', 'TX', '77705', null)
,('Bellanca', 'Braine', 'bbrainepi@fda.gov', '312-987-3801', '17344 Prairie Rose Junction', null, 'Chicago', 'IL', '60686', null)
,('Trix', 'Bibby', 'tbibbypj@indiegogo.com', '309-772-8285', '03189 Ridgeway Court', null, 'Peoria', 'IL', '61640', null)
,('Persis', 'Daouse', 'pdaousepk@patch.com', '772-346-0672', '8 Glacier Hill Trail', null, 'Vero Beach', 'FL', '32964', null)
,('Merilyn', 'Hardage', 'mhardagepl@wp.com', '407-599-0563', '2 New Castle Alley', null, 'Orlando', 'FL', '32854', null)
,('Eben', 'Coveney', 'ecoveneypm@va.gov', '719-229-4166', '3988 Vermont Parkway', null, 'Colorado Springs', 'CO', '80920', null)
,('Megan', 'Dyshart', 'mdyshartpn@alibaba.com', '727-596-8673', '6 Pleasure Lane', null, 'Saint Petersburg', 'FL', '33742', null)
,('Minne', 'Ewols', 'mewolspo@360.cn', '907-724-9742', '70028 Stephen Terrace', null, 'Juneau', 'AK', '99812', null)
,('Lorraine', 'Audsley', 'laudsleypp@squidoo.com', '865-389-8469', '08 Kedzie Hill', null, 'Knoxville', 'TN', '37939', null)
,('Giulietta', 'Village', 'gvillagepq@wikia.com', '763-994-0034', '41376 Service Lane', '2nd Floor', 'Saint Paul', 'MN', '55115', null)
,('Francene', 'Beautyman', 'fbeautymanpr@unesco.org', '616-385-2379', '77835 Hollow Ridge Street', null, 'Grand Rapids', 'MI', '49560', null)
,('Merle', 'Puig', 'mpuigps@newyorker.com', '202-510-8067', '47 Northfield Plaza', null, 'Washington', 'DC', '20530', null)
,('Persis', 'Pollock', 'ppollockpt@tiny.cc', '570-935-3191', '570 Ronald Regan Street', 'Suite 28', 'Wilkes Barre', 'PA', '18706', null)
,('Harvey', 'Lindenblatt', 'hlindenblattpu@drupal.org', '336-618-5571', '94 Kingsford Point', 'Apt 1719', 'Winston Salem', 'NC', '27150', null)
,('Homerus', 'Beckenham', 'hbeckenhampv@stumbleupon.com', '214-623-1150', '72 Hansons Way', null, 'Dallas', 'TX', '75323', null)
,('Allard', 'Vain', 'avainpw@nbcnews.com', '714-644-2514', '0592 Kingsford Crossing', null, 'Fullerton', 'CA', '92835', null)
,('Sydelle', 'Daugherty', 'sdaughertypx@is.gd', '720-529-7422', '90 Mitchell Circle', null, 'Denver', 'CO', '80249', null)
,('Milton', 'Cator', 'mcatorpy@unc.edu', '765-634-5232', '10449 Fallview Street', null, 'Indianapolis', 'IN', '46202', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.')
,('Lauren', 'Loakes', 'lloakespz@squarespace.com', '336-226-6823', '7 Holmberg Plaza', '17th Floor', 'Greensboro', 'NC', '27404', null)
,('Ford', 'Manson', 'fmansonq0@google.cn', '561-183-2486', '292 Glendale Crossing', null, 'Boynton Beach', 'FL', '33436', null)
,('Micheil', 'Licciardo', 'mlicciardoq1@dedecms.com', '410-515-7081', '6 Farwell Crossing', null, 'Baltimore', 'MD', '21265', null)
,('Hurlee', 'Springell', 'hspringellq2@howstuffworks.com', '212-139-8321', '78 Coolidge Parkway', '15th Floor', 'New York City', 'NY', '10170', null)
,('Brandyn', 'Housecraft', 'bhousecraftq3@intel.com', '409-832-2211', '68 Fulton Crossing', null, 'Galveston', 'TX', '77554', null)
,('Elaina', 'Summersett', 'esummersettq4@cpanel.net', '617-717-3045', '879 Ludington Point', null, 'Boston', 'MA', '02124', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.')
,('Rance', 'Fitchew', 'rfitchewq5@nba.com', '318-520-1436', '30 Forest Run Pass', null, 'Monroe', 'LA', '71208', null)
,('Quent', 'Robe', 'qrobeq6@ow.ly', '617-961-9451', '8803 Jay Road', null, 'Boston', 'MA', '02298', null)
,('Toma', 'Koppe', 'tkoppeq7@digg.com', '406-284-1220', '622 Brown Road', 'Suite 91', 'Bozeman', 'MT', '59771', null)
,('Lynelle', 'Huggard', 'lhuggardq8@geocities.jp', '260-209-6254', '351 Westend Parkway', null, 'Fort Wayne', 'IN', '46825', null)
,('Eva', 'Kiehl', 'ekiehlq9@infoseek.co.jp', '303-168-9207', '7 Goodland Court', null, 'Denver', 'CO', '80262', null)
,('Alden', 'Mebes', 'amebesqa@toplist.cz', '402-228-1781', '3 Lawn Alley', null, 'Omaha', 'NE', '68110', null)
,('Ced', 'Friedank', 'cfriedankqb@wikispaces.com', '302-788-5468', '4 Nelson Junction', null, 'Newark', 'DE', '19725', null)
,('Chen', 'Redemile', 'credemileqc@harvard.edu', '915-269-9867', '13960 Commercial Center', null, 'El Paso', 'TX', '79955', null)
,('Leta', 'Selbie', 'lselbieqd@liveinternet.ru', '310-781-4543', '170 Messerschmidt Park', null, 'Garden Grove', 'CA', '92844', null)
,('Bernardina', 'Delatour', 'bdelatourqe@bbb.org', '901-136-8657', '09175 Farwell Alley', null, 'Memphis', 'TN', '38188', null)
,('Roxana', 'Lorait', 'rloraitqf@blogspot.com', '951-439-4096', '708 Cherokee Trail', 'Room 194', 'Riverside', 'CA', '92513', null)
,('Leshia', 'Verdy', 'lverdyqg@fc2.com', '281-519-6235', '31 Lakewood Gardens Point', null, 'Spring', 'TX', '77388', null)
,('Gar', 'Gladbach', 'ggladbachqh@exblog.jp', '202-536-4514', '2095 Stang Street', null, 'Washington', 'DC', '20409', null)
,('Micheal', 'Djorvic', 'mdjorvicqi@wisc.edu', '904-978-0357', '1 Commercial Point', '2nd Floor', 'Saint Augustine', 'FL', '32092', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.')
,('Lucy', 'Rings', 'lringsqj@quantcast.com', '949-646-7009', '194 Merry Center', null, 'Newport Beach', 'CA', '92662', null)
,('Ola', 'Cossam', 'ocossamqk@vimeo.com', '216-336-4924', '1 Corscot Crossing', '13th Floor', 'Cleveland', 'OH', '44191', null)
,('Gawain', 'Hemshall', 'ghemshallql@usatoday.com', '305-512-0217', '51 Bunting Court', null, 'Miami', 'FL', '33180', null)
,('Grant', 'Kruger', 'gkrugerqm@noaa.gov', '423-405-4621', '2167 Hanover Terrace', 'PO Box 35926', 'Johnson City', 'TN', '37605', 'In hac habitasse platea dictumst.')
,('Madelle', 'Chastel', 'mchastelqn@odnoklassniki.ru', '260-149-6219', '27020 Eastlawn Pass', null, 'Fort Wayne', 'IN', '46805', null)
,('Rozanne', 'Pegden', 'rpegdenqo@scribd.com', '510-871-1405', '573 Norway Maple Way', null, 'Berkeley', 'CA', '94705', null)
,('Bianca', 'Harragin', 'bharraginqp@java.com', '305-562-6230', '1 Farragut Way', null, 'Miami', 'FL', '33190', null)
,('Arabela', 'Pales', 'apalesqq@livejournal.com', '915-848-1593', '986 Delladonna Plaza', null, 'El Paso', 'TX', '88558', null)
,('Jennie', 'Cudd', 'jcuddqr@weebly.com', '210-216-3409', '6 Gulseth Way', 'Suite 87', 'San Antonio', 'TX', '78291', null)
,('Calida', 'Farres', 'cfarresqs@nature.com', '908-160-3664', '82 Union Hill', null, 'Elizabeth', 'NJ', '07208', null)
,('Barbette', 'Carbin', 'bcarbinqt@live.com', '571-337-9998', '956 Scott Point', null, 'Arlington', 'VA', '22225', null)
,('Llywellyn', 'Oldfield-Cherry', 'loldfieldcherryqu@ebay.com', '608-466-6896', '240 Sutherland Lane', null, 'Madison', 'WI', '53779', null)
,('Mattheus', 'Letten', 'mlettenqv@symantec.com', '626-560-7821', '3 Northwestern Avenue', 'Suite 5', 'Pasadena', 'CA', '91186', null)
,('Aloisia', 'Jans', 'ajansqw@prnewswire.com', '209-305-2069', '891 Bartelt Point', null, 'Stockton', 'CA', '95210', null)
,('Vilma', 'Chatten', 'vchattenqx@sciencedaily.com', '408-298-1009', '12048 Tomscot Center', null, 'San Jose', 'CA', '95108', null)
,('Doretta', 'Jemmison', 'djemmisonqy@latimes.com', '202-653-2088', '76 Hooker Trail', null, 'Washington', 'DC', '20210', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.')
,('Lazaro', 'Elphey', 'lelpheyqz@angelfire.com', '718-527-4437', '336 Delladonna Point', 'Apt 1814', 'Brooklyn', 'NY', '11205', null)
,('Catharine', 'Wonfar', 'cwonfarr0@usnews.com', '636-145-2121', '52 Florence Junction', '9th Floor', 'Saint Louis', 'MO', '63126', null)
,('Timmie', 'De la Harpe', 'tdelaharper1@tumblr.com', '915-234-6884', '1 Reindahl Junction', null, 'El Paso', 'TX', '88546', null)
,('Robbie', 'Middlehurst', 'rmiddlehurstr2@squarespace.com', '916-963-3673', '30385 Scofield Trail', null, 'Sacramento', 'CA', '94237', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.')
,('Amery', 'Toseland', 'atoselandr3@usatoday.com', '267-181-2560', '95710 Continental Crossing', null, 'Philadelphia', 'PA', '19136', null)
,('Odo', 'Brant', 'obrantr4@fotki.com', '303-573-6834', '316 Kedzie Drive', null, 'Denver', 'CO', '80235', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.')
,('Andromache', 'Garken', 'agarkenr5@loc.gov', '304-636-5004', '391 Cherokee Point', null, 'Morgantown', 'WV', '26505', null)
,('Amandi', 'Jacklings', 'ajacklingsr6@pbs.org', '754-573-6535', '68133 Bunker Hill Court', null, 'Fort Lauderdale', 'FL', '33336', null)
,('Trudey', 'Postins', 'tpostinsr7@istockphoto.com', '314-212-0132', '7 Tennessee Junction', null, 'Saint Louis', 'MO', '63180', null)
,('Brittni', 'Ashbrook', 'bashbrookr8@quantcast.com', '918-556-7633', '3 Green Ridge Pass', '20th Floor', 'Tulsa', 'OK', '74156', null)
,('Arte', 'Sargison', 'asargisonr9@friendfeed.com', '513-258-1442', '0 Rusk Court', 'Suite 84', 'Cincinnati', 'OH', '45203', null)
,('Debbie', 'Dufall', 'ddufallra@dmoz.org', '608-178-7438', '281 Eastlawn Point', null, 'Madison', 'WI', '53726', null)
,('Elyn', 'Gonet', 'egonetrb@discovery.com', '801-227-7674', '3 Brickson Park Court', 'PO Box 62062', 'Sandy', 'UT', '84093', null)
,('Aggy', 'Boyde', 'aboyderc@arizona.edu', '830-395-6266', '02 Northwestern Street', 'Apt 1423', 'San Antonio', 'TX', '78260', null)
,('Byram', 'Wadeling', 'bwadelingrd@prlog.org', '850-684-5687', '33578 Mayer Crossing', null, 'Pensacola', 'FL', '32520', null)
,('Damara', 'Hayter', 'dhayterre@list-manage.com', '202-320-7673', '390 Karstens Way', null, 'Washington', 'DC', '20566', null)
,('Daron', 'Milson', 'dmilsonrf@ezinearticles.com', '504-405-8903', '8 Mayfield Street', 'Apt 583', 'New Orleans', 'LA', '70129', null)
,('Tiebout', 'Blose', 'tbloserg@google.com.br', '251-431-7056', '3 Eastwood Pass', 'Room 956', 'Mobile', 'AL', '36689', null)
,('Bail', 'Dugget', 'bduggetrh@g.co', '785-221-3936', '7695 Del Sol Center', null, 'Topeka', 'KS', '66699', null)
,('Xenia', 'Kinzett', 'xkinzettri@shutterfly.com', '818-996-5901', '06301 Nevada Circle', null, 'Glendale', 'CA', '91205', null)
,('Ammamaria', 'Arlow', 'aarlowrj@mozilla.org', '214-217-1446', '4449 Bartillon Point', null, 'Dallas', 'TX', '75210', null)
,('Ogden', 'Duesbury', 'oduesburyrk@gnu.org', '571-286-7980', '03707 Drewry Parkway', 'PO Box 36168', 'Arlington', 'VA', '22217', null)
,('Gan', 'Kimbrey', 'gkimbreyrl@vistaprint.com', '703-281-5079', '4227 Talisman Avenue', null, 'Washington', 'DC', '20041', null)
,('Gideon', 'Feye', 'gfeyerm@newyorker.com', '337-797-3728', '0549 Monument Circle', null, 'Lafayette', 'LA', '70505', null)
,('Arluene', 'Jimpson', 'ajimpsonrn@usa.gov', '718-718-8080', '852 Jenifer Point', null, 'Brooklyn', 'NY', '11220', null)
,('Clayborne', 'Holtham', 'cholthamro@statcounter.com', '714-107-6443', '513 Pine View Crossing', null, 'Irvine', 'CA', '92710', null)
,('Seth', 'Portch', 'sportchrp@walmart.com', '810-310-9750', '40340 Lukken Crossing', null, 'Flint', 'MI', '48555', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.')
,('Fleming', 'Fursland', 'ffurslandrq@home.pl', '319-922-6843', '6 Spaight Pass', null, 'Iowa City', 'IA', '52245', null)
,('Rania', 'Orbine', 'rorbinerr@360.cn', '614-457-3658', '7119 Di Loreto Road', null, 'Columbus', 'OH', '43268', null)
;

-- 
-- select * from demos.sales;
-- drop table demos.sales;
create table if not exists demos.sales (
  id serial primary key,
  month_dt date not null,
  location_t varchar(20) null,
  sales_n numeric(13,2) null,
  cogs_n numeric(13,2) null,
  aud_insert_dt date default current_date not null,
  aud_insert_ts timestamp(6) default current_timestamp not null,
  aud_update_ts timestamp(6) null
);

WbImport
    -type=text
    -mode=insert
    -delimiter=,
    -file="/home/user/datasets/mock_data.csv"
    -header=true
    -stringDates=true
    -dateFormat=yyyy-[0]M-[0]d
    -trimValues=true
    -emptyStringIsNull=true
    -schema=demos
    -table=sales
    -filecolumns=month_dt,location_t,sales_n,cogs_n
;

--
insert into demos.sales (month_dt,location_t,sales_n,cogs_n) 
VALUES
  (DATE '2000-01-01','North',849.00,1.00),
  (DATE '2000-01-01','East',315.00,44.00),
  (DATE '2000-01-01','South',585.00,17.00),
  (DATE '2000-01-01','West',793.00,18.00),
  (DATE '2000-02-01','North',251.00,16.00),
  (DATE '2000-02-01','East',972.00,36.00),
  (DATE '2000-02-01','South',605.00,8.00),
  (DATE '2000-02-01','West',890.00,28.00),
  (DATE '2000-03-01','North',58.00,36.00),
  (DATE '2000-03-01','East',935.00,37.00),
  (DATE '2000-03-01','South',44.00,24.00),
  (DATE '2000-03-01','West',13.00,13.00),
  (DATE '2000-04-01','North',630.00,30.00),
  (DATE '2000-04-01','East',295.00,4.00),
  (DATE '2000-04-01','South',365.00,41.00),
  (DATE '2000-04-01','West',450.00,6.00),
  (DATE '2000-05-01','North',423.00,1.00),
  (DATE '2000-05-01','East',185.00,42.00),
  (DATE '2000-05-01','South',456.00,12.00),
  (DATE '2000-05-01','West',328.00,31.00),
  (DATE '2000-06-01','North',345.00,12.00),
  (DATE '2000-06-01','East',517.00,15.00),
  (DATE '2000-06-01','South',470.00,48.00),
  (DATE '2000-06-01','West',628.00,12.00),
  (DATE '2000-07-01','North',900.00,29.00),
  (DATE '2000-07-01','East',380.00,40.00),
  (DATE '2000-07-01','South',521.00,49.00),
  (DATE '2000-07-01','West',672.00,34.00),
  (DATE '2000-08-01','North',483.00,1.00),
  (DATE '2000-08-01','East',564.00,5.00),
  (DATE '2000-08-01','South',551.00,42.00),
  (DATE '2000-08-01','West',662.00,20.00),
  (DATE '2000-09-01','North',729.00,48.00),
  (DATE '2000-09-01','East',719.00,40.00),
  (DATE '2000-09-01','South',610.00,45.00),
  (DATE '2000-09-01','West',382.00,42.00),
  (DATE '2000-10-01','North',24.00,25.00),
  (DATE '2000-10-01','East',358.00,1.00),
  (DATE '2000-10-01','South',11.00,9.00),
  (DATE '2000-10-01','West',14.00,48.00),
  (DATE '2000-11-01','North',177.00,15.00),
  (DATE '2000-11-01','East',874.00,23.00),
  (DATE '2000-11-01','South',888.00,8.00),
  (DATE '2000-11-01','West',24.00,17.00),
  (DATE '2000-12-01','North',202.00,27.00),
  (DATE '2000-12-01','East',112.00,15.00),
  (DATE '2000-12-01','South',551.00,29.00),
  (DATE '2000-12-01','West',123.00,31.00),
  (DATE '2001-01-01','North',453.00,16.00),
  (DATE '2001-01-01','East',321.00,33.00),
  (DATE '2001-01-01','South',597.00,37.00),
  (DATE '2001-01-01','West',253.00,18.00),
  (DATE '2001-02-01','North',479.00,49.00),
  (DATE '2001-02-01','East',451.00,36.00),
  (DATE '2001-02-01','South',321.00,21.00),
  (DATE '2001-02-01','West',398.00,27.00),
  (DATE '2001-03-01','North',596.00,5.00),
  (DATE '2001-03-01','East',276.00,49.00),
  (DATE '2001-03-01','South',335.00,16.00),
  (DATE '2001-03-01','West',57.00,39.00),
  (DATE '2001-04-01','North',268.00,6.00),
  (DATE '2001-04-01','East',68.00,36.00),
  (DATE '2001-04-01','South',455.00,31.00),
  (DATE '2001-04-01','West',532.00,49.00),
  (DATE '2001-05-01','North',103.00,9.00),
  (DATE '2001-05-01','East',933.00,24.00),
  (DATE '2001-05-01','South',31.00,11.00),
  (DATE '2001-05-01','West',349.00,35.00),
  (DATE '2001-06-01','North',318.00,25.00),
  (DATE '2001-06-01','East',144.00,27.00),
  (DATE '2001-06-01','South',353.00,30.00),
  (DATE '2001-06-01','West',542.00,19.00),
  (DATE '2001-07-01','North',772.00,41.00),
  (DATE '2001-07-01','East',209.00,1.00),
  (DATE '2001-07-01','South',277.00,40.00),
  (DATE '2001-07-01','West',293.00,34.00),
  (DATE '2001-08-01','North',69.00,11.00),
  (DATE '2001-08-01','East',716.00,50.00),
  (DATE '2001-08-01','South',469.00,12.00),
  (DATE '2001-08-01','West',799.00,46.00),
  (DATE '2001-09-01','North',623.00,11.00),
  (DATE '2001-09-01','East',271.00,23.00),
  (DATE '2001-09-01','South',270.00,39.00),
  (DATE '2001-09-01','West',258.00,11.00),
  (DATE '2001-10-01','North',563.00,24.00),
  (DATE '2001-10-01','East',206.00,23.00),
  (DATE '2001-10-01','South',257.00,3.00),
  (DATE '2001-10-01','West',371.00,31.00),
  (DATE '2001-11-01','North',266.00,23.00),
  (DATE '2001-11-01','East',886.00,25.00),
  (DATE '2001-11-01','South',626.00,19.00),
  (DATE '2001-11-01','West',517.00,11.00),
  (DATE '2001-12-01','North',648.00,39.00),
  (DATE '2001-12-01','East',957.00,29.00),
  (DATE '2001-12-01','South',620.00,16.00),
  (DATE '2001-12-01','West',58.00,17.00),
  (DATE '2002-01-01','North',207.00,23.00),
  (DATE '2002-01-01','East',71.00,10.00),
  (DATE '2002-01-01','South',275.00,21.00),
  (DATE '2002-01-01','West',157.00,38.00),
  (DATE '2002-02-01','North',793.00,13.00),
  (DATE '2002-02-01','East',586.00,33.00),
  (DATE '2002-02-01','South',747.00,33.00),
  (DATE '2002-02-01','West',593.00,4.00),
  (DATE '2002-03-01','North',923.00,17.00),
  (DATE '2002-03-01','East',626.00,27.00),
  (DATE '2002-03-01','South',612.00,46.00),
  (DATE '2002-03-01','West',464.00,13.00),
  (DATE '2002-04-01','North',864.00,25.00),
  (DATE '2002-04-01','East',654.00,2.00),
  (DATE '2002-04-01','South',880.00,35.00),
  (DATE '2002-04-01','West',500.00,21.00),
  (DATE '2002-05-01','North',915.00,37.00),
  (DATE '2002-05-01','East',291.00,49.00),
  (DATE '2002-05-01','South',660.00,23.00),
  (DATE '2002-05-01','West',364.00,10.00),
  (DATE '2002-06-01','North',247.00,14.00),
  (DATE '2002-06-01','East',754.00,16.00),
  (DATE '2002-06-01','South',224.00,32.00),
  (DATE '2002-06-01','West',21.00,24.00),
  (DATE '2002-07-01','North',863.00,31.00),
  (DATE '2002-07-01','East',898.00,11.00),
  (DATE '2002-07-01','South',190.00,22.00),
  (DATE '2002-07-01','West',687.00,20.00),
  (DATE '2002-08-01','North',914.00,50.00),
  (DATE '2002-08-01','East',510.00,23.00),
  (DATE '2002-08-01','South',123.00,27.00),
  (DATE '2002-08-01','West',628.00,34.00),
  (DATE '2002-09-01','North',875.00,43.00),
  (DATE '2002-09-01','East',953.00,12.00),
  (DATE '2002-09-01','South',606.00,25.00),
  (DATE '2002-09-01','West',788.00,37.00),
  (DATE '2002-10-01','North',850.00,4.00),
  (DATE '2002-10-01','East',402.00,22.00),
  (DATE '2002-10-01','South',800.00,21.00),
  (DATE '2002-10-01','West',905.00,32.00),
  (DATE '2002-11-01','North',934.00,16.00),
  (DATE '2002-11-01','East',623.00,19.00),
  (DATE '2002-11-01','South',480.00,47.00),
  (DATE '2002-11-01','West',484.00,19.00),
  (DATE '2002-12-01','North',298.00,37.00),
  (DATE '2002-12-01','East',764.00,46.00),
  (DATE '2002-12-01','South',908.00,48.00),
  (DATE '2002-12-01','West',159.00,22.00),
  (DATE '2003-01-01','North',915.00,44.00),
  (DATE '2003-01-01','East',227.00,14.00),
  (DATE '2003-01-01','South',696.00,25.00),
  (DATE '2003-01-01','West',859.00,28.00),
  (DATE '2003-02-01','North',805.00,23.00),
  (DATE '2003-02-01','East',541.00,27.00),
  (DATE '2003-02-01','South',53.00,24.00),
  (DATE '2003-02-01','West',134.00,4.00),
  (DATE '2003-03-01','North',59.00,36.00),
  (DATE '2003-03-01','East',398.00,38.00),
  (DATE '2003-03-01','South',554.00,2.00),
  (DATE '2003-03-01','West',661.00,3.00),
  (DATE '2003-04-01','North',328.00,47.00),
  (DATE '2003-04-01','East',817.00,7.00),
  (DATE '2003-04-01','South',584.00,22.00),
  (DATE '2003-04-01','West',756.00,6.00),
  (DATE '2003-05-01','North',429.00,2.00),
  (DATE '2003-05-01','East',287.00,35.00),
  (DATE '2003-05-01','South',688.00,26.00),
  (DATE '2003-05-01','West',381.00,25.00),
  (DATE '2003-06-01','North',277.00,24.00),
  (DATE '2003-06-01','East',369.00,37.00),
  (DATE '2003-06-01','South',977.00,2.00),
  (DATE '2003-06-01','West',844.00,17.00),
  (DATE '2003-07-01','North',88.00,15.00),
  (DATE '2003-07-01','East',420.00,32.00),
  (DATE '2003-07-01','South',395.00,27.00),
  (DATE '2003-07-01','West',516.00,35.00),
  (DATE '2003-08-01','North',836.00,2.00),
  (DATE '2003-08-01','East',760.00,10.00),
  (DATE '2003-08-01','South',759.00,43.00),
  (DATE '2003-08-01','West',50.00,9.00),
  (DATE '2003-09-01','North',473.00,10.00),
  (DATE '2003-09-01','East',67.00,48.00),
  (DATE '2003-09-01','South',814.00,20.00),
  (DATE '2003-09-01','West',419.00,3.00),
  (DATE '2003-10-01','North',490.00,13.00),
  (DATE '2003-10-01','East',458.00,17.00),
  (DATE '2003-10-01','South',430.00,27.00),
  (DATE '2003-10-01','West',421.00,12.00),
  (DATE '2003-11-01','North',166.00,20.00),
  (DATE '2003-11-01','East',908.00,29.00),
  (DATE '2003-11-01','South',691.00,34.00),
  (DATE '2003-11-01','West',122.00,9.00),
  (DATE '2003-12-01','North',886.00,23.00),
  (DATE '2003-12-01','East',958.00,4.00),
  (DATE '2003-12-01','South',358.00,3.00),
  (DATE '2003-12-01','West',606.00,27.00),
  (DATE '2004-01-01','North',450.00,39.00),
  (DATE '2004-01-01','East',161.00,1.00),
  (DATE '2004-01-01','South',621.00,7.00),
  (DATE '2004-01-01','West',265.00,5.00),
  (DATE '2004-02-01','North',760.00,3.00),
  (DATE '2004-02-01','East',323.00,42.00),
  (DATE '2004-02-01','South',816.00,30.00),
  (DATE '2004-02-01','West',880.00,23.00),
  (DATE '2004-03-01','North',448.00,24.00),
  (DATE '2004-03-01','East',498.00,29.00),
  (DATE '2004-03-01','South',69.00,8.00),
  (DATE '2004-03-01','West',501.00,14.00),
  (DATE '2004-04-01','North',584.00,38.00),
  (DATE '2004-04-01','East',688.00,35.00),
  (DATE '2004-04-01','South',116.00,33.00),
  (DATE '2004-04-01','West',746.00,15.00),
  (DATE '2004-05-01','North',619.00,32.00),
  (DATE '2004-05-01','East',26.00,25.00),
  (DATE '2004-05-01','South',908.00,28.00),
  (DATE '2004-05-01','West',528.00,28.00),
  (DATE '2004-06-01','North',396.00,28.00),
  (DATE '2004-06-01','East',249.00,21.00),
  (DATE '2004-06-01','South',291.00,47.00),
  (DATE '2004-06-01','West',183.00,37.00),
  (DATE '2004-07-01','North',132.00,7.00),
  (DATE '2004-07-01','East',512.00,40.00),
  (DATE '2004-07-01','South',986.00,44.00),
  (DATE '2004-07-01','West',528.00,9.00),
  (DATE '2004-08-01','North',829.00,50.00),
  (DATE '2004-08-01','East',86.00,49.00),
  (DATE '2004-08-01','South',747.00,29.00),
  (DATE '2004-08-01','West',793.00,5.00),
  (DATE '2004-09-01','North',856.00,8.00),
  (DATE '2004-09-01','East',100.00,34.00),
  (DATE '2004-09-01','South',930.00,38.00),
  (DATE '2004-09-01','West',61.00,45.00),
  (DATE '2004-10-01','North',413.00,13.00),
  (DATE '2004-10-01','East',66.00,23.00),
  (DATE '2004-10-01','South',78.00,15.00),
  (DATE '2004-10-01','West',865.00,7.00),
  (DATE '2004-11-01','North',763.00,47.00),
  (DATE '2004-11-01','East',601.00,34.00),
  (DATE '2004-11-01','South',805.00,32.00),
  (DATE '2004-11-01','West',759.00,34.00),
  (DATE '2004-12-01','North',116.00,8.00),
  (DATE '2004-12-01','East',532.00,26.00),
  (DATE '2004-12-01','South',140.00,46.00),
  (DATE '2004-12-01','West',281.00,40.00),
  (DATE '2005-01-01','North',453.00,24.00),
  (DATE '2005-01-01','East',204.00,12.00),
  (DATE '2005-01-01','South',788.00,7.00),
  (DATE '2005-01-01','West',524.00,3.00),
  (DATE '2005-02-01','North',423.00,46.00),
  (DATE '2005-02-01','East',581.00,28.00),
  (DATE '2005-02-01','South',751.00,22.00),
  (DATE '2005-02-01','West',894.00,15.00),
  (DATE '2005-03-01','North',938.00,48.00),
  (DATE '2005-03-01','East',803.00,36.00),
  (DATE '2005-03-01','South',673.00,15.00),
  (DATE '2005-03-01','West',645.00,31.00),
  (DATE '2005-04-01','North',138.00,29.00),
  (DATE '2005-04-01','East',621.00,10.00),
  (DATE '2005-04-01','South',637.00,33.00),
  (DATE '2005-04-01','West',113.00,39.00),
  (DATE '2005-05-01','North',659.00,27.00),
  (DATE '2005-05-01','East',213.00,12.00),
  (DATE '2005-05-01','South',280.00,2.00),
  (DATE '2005-05-01','West',505.00,48.00),
  (DATE '2005-06-01','North',946.00,7.00),
  (DATE '2005-06-01','East',152.00,39.00),
  (DATE '2005-06-01','South',909.00,25.00),
  (DATE '2005-06-01','West',952.00,10.00),
  (DATE '2005-07-01','North',503.00,47.00),
  (DATE '2005-07-01','East',135.00,26.00),
  (DATE '2005-07-01','South',380.00,7.00),
  (DATE '2005-07-01','West',121.00,13.00),
  (DATE '2005-08-01','North',179.00,23.00),
  (DATE '2005-08-01','East',163.00,49.00),
  (DATE '2005-08-01','South',340.00,28.00),
  (DATE '2005-08-01','West',74.00,38.00),
  (DATE '2005-09-01','North',535.00,12.00),
  (DATE '2005-09-01','East',240.00,38.00),
  (DATE '2005-09-01','South',403.00,34.00),
  (DATE '2005-09-01','West',994.00,33.00),
  (DATE '2005-10-01','North',12.00,2.00),
  (DATE '2005-10-01','East',440.00,48.00),
  (DATE '2005-10-01','South',570.00,2.00),
  (DATE '2005-10-01','West',730.00,43.00),
  (DATE '2005-11-01','North',924.00,15.00),
  (DATE '2005-11-01','East',66.00,41.00),
  (DATE '2005-11-01','South',193.00,9.00),
  (DATE '2005-11-01','West',750.00,50.00),
  (DATE '2005-12-01','North',522.00,2.00),
  (DATE '2005-12-01','East',110.00,31.00),
  (DATE '2005-12-01','South',306.00,39.00),
  (DATE '2005-12-01','West',360.00,33.00),
  (DATE '2006-01-01','North',446.00,21.00),
  (DATE '2006-01-01','East',14.00,50.00),
  (DATE '2006-01-01','South',953.00,7.00),
  (DATE '2006-01-01','West',351.00,36.00),
  (DATE '2006-02-01','North',141.00,12.00),
  (DATE '2006-02-01','East',249.00,45.00),
  (DATE '2006-02-01','South',278.00,26.00),
  (DATE '2006-02-01','West',281.00,22.00),
  (DATE '2006-03-01','North',445.00,35.00),
  (DATE '2006-03-01','East',598.00,9.00),
  (DATE '2006-03-01','South',251.00,42.00),
  (DATE '2006-03-01','West',896.00,34.00),
  (DATE '2006-04-01','North',949.00,30.00),
  (DATE '2006-04-01','East',246.00,24.00),
  (DATE '2006-04-01','South',162.00,15.00),
  (DATE '2006-04-01','West',581.00,49.00),
  (DATE '2006-05-01','North',775.00,21.00),
  (DATE '2006-05-01','East',548.00,24.00),
  (DATE '2006-05-01','South',948.00,12.00),
  (DATE '2006-05-01','West',980.00,2.00),
  (DATE '2006-06-01','North',165.00,37.00),
  (DATE '2006-06-01','East',294.00,8.00),
  (DATE '2006-06-01','South',667.00,38.00),
  (DATE '2006-06-01','West',26.00,2.00),
  (DATE '2006-07-01','North',136.00,25.00),
  (DATE '2006-07-01','East',187.00,5.00),
  (DATE '2006-07-01','South',844.00,44.00),
  (DATE '2006-07-01','West',432.00,45.00),
  (DATE '2006-08-01','North',658.00,8.00),
  (DATE '2006-08-01','East',434.00,46.00),
  (DATE '2006-08-01','South',568.00,19.00),
  (DATE '2006-08-01','West',91.00,22.00),
  (DATE '2006-09-01','North',212.00,42.00),
  (DATE '2006-09-01','East',976.00,31.00),
  (DATE '2006-09-01','South',302.00,10.00),
  (DATE '2006-09-01','West',528.00,6.00),
  (DATE '2006-10-01','North',23.00,5.00),
  (DATE '2006-10-01','East',864.00,34.00),
  (DATE '2006-10-01','South',944.00,4.00),
  (DATE '2006-10-01','West',724.00,6.00),
  (DATE '2006-11-01','North',323.00,15.00),
  (DATE '2006-11-01','East',75.00,11.00),
  (DATE '2006-11-01','South',157.00,19.00),
  (DATE '2006-11-01','West',256.00,43.00),
  (DATE '2006-12-01','North',821.00,6.00),
  (DATE '2006-12-01','East',849.00,35.00),
  (DATE '2006-12-01','South',157.00,48.00),
  (DATE '2006-12-01','West',48.00,44.00),
  (DATE '2007-01-01','North',528.00,37.00),
  (DATE '2007-01-01','East',630.00,14.00),
  (DATE '2007-01-01','South',378.00,21.00),
  (DATE '2007-01-01','West',583.00,44.00),
  (DATE '2007-02-01','North',213.00,43.00),
  (DATE '2007-02-01','East',488.00,4.00),
  (DATE '2007-02-01','South',934.00,17.00),
  (DATE '2007-02-01','West',523.00,35.00),
  (DATE '2007-03-01','North',70.00,32.00),
  (DATE '2007-03-01','East',534.00,37.00),
  (DATE '2007-03-01','South',896.00,49.00),
  (DATE '2007-03-01','West',442.00,11.00),
  (DATE '2007-04-01','North',12.00,33.00),
  (DATE '2007-04-01','East',941.00,28.00),
  (DATE '2007-04-01','South',616.00,39.00),
  (DATE '2007-04-01','West',583.00,22.00),
  (DATE '2007-05-01','North',681.00,28.00),
  (DATE '2007-05-01','East',835.00,13.00),
  (DATE '2007-05-01','South',634.00,47.00),
  (DATE '2007-05-01','West',827.00,1.00),
  (DATE '2007-06-01','North',234.00,17.00),
  (DATE '2007-06-01','East',717.00,8.00),
  (DATE '2007-06-01','South',638.00,48.00),
  (DATE '2007-06-01','West',843.00,39.00),
  (DATE '2007-07-01','North',253.00,12.00),
  (DATE '2007-07-01','East',408.00,10.00),
  (DATE '2007-07-01','South',373.00,17.00),
  (DATE '2007-07-01','West',970.00,11.00),
  (DATE '2007-08-01','North',141.00,15.00),
  (DATE '2007-08-01','East',626.00,39.00),
  (DATE '2007-08-01','South',364.00,30.00),
  (DATE '2007-08-01','West',807.00,12.00),
  (DATE '2007-09-01','North',683.00,24.00),
  (DATE '2007-09-01','East',364.00,18.00),
  (DATE '2007-09-01','South',140.00,20.00),
  (DATE '2007-09-01','West',292.00,32.00),
  (DATE '2007-10-01','North',796.00,43.00),
  (DATE '2007-10-01','East',425.00,18.00),
  (DATE '2007-10-01','South',81.00,21.00),
  (DATE '2007-10-01','West',434.00,2.00),
  (DATE '2007-11-01','North',987.00,16.00),
  (DATE '2007-11-01','East',36.00,24.00),
  (DATE '2007-11-01','South',642.00,3.00),
  (DATE '2007-11-01','West',411.00,23.00),
  (DATE '2007-12-01','North',439.00,19.00),
  (DATE '2007-12-01','East',721.00,27.00),
  (DATE '2007-12-01','South',476.00,26.00),
  (DATE '2007-12-01','West',640.00,35.00),
  (DATE '2008-01-01','North',394.00,31.00),
  (DATE '2008-01-01','East',457.00,28.00),
  (DATE '2008-01-01','South',578.00,4.00),
  (DATE '2008-01-01','West',404.00,43.00),
  (DATE '2008-02-01','North',299.00,32.00),
  (DATE '2008-02-01','East',113.00,50.00),
  (DATE '2008-02-01','South',456.00,33.00),
  (DATE '2008-02-01','West',61.00,1.00),
  (DATE '2008-03-01','North',631.00,40.00),
  (DATE '2008-03-01','East',707.00,43.00),
  (DATE '2008-03-01','South',195.00,41.00),
  (DATE '2008-03-01','West',1000.00,36.00),
  (DATE '2008-04-01','North',62.00,3.00),
  (DATE '2008-04-01','East',863.00,5.00),
  (DATE '2008-04-01','South',705.00,1.00),
  (DATE '2008-04-01','West',439.00,44.00),
  (DATE '2008-05-01','North',228.00,14.00),
  (DATE '2008-05-01','East',795.00,16.00),
  (DATE '2008-05-01','South',201.00,13.00),
  (DATE '2008-05-01','West',451.00,46.00),
  (DATE '2008-06-01','North',650.00,49.00),
  (DATE '2008-06-01','East',957.00,19.00),
  (DATE '2008-06-01','South',674.00,20.00),
  (DATE '2008-06-01','West',772.00,35.00),
  (DATE '2008-07-01','North',146.00,46.00),
  (DATE '2008-07-01','East',401.00,27.00),
  (DATE '2008-07-01','South',822.00,24.00),
  (DATE '2008-07-01','West',739.00,16.00),
  (DATE '2008-08-01','North',611.00,29.00),
  (DATE '2008-08-01','East',334.00,16.00),
  (DATE '2008-08-01','South',237.00,32.00),
  (DATE '2008-08-01','West',102.00,34.00),
  (DATE '2008-09-01','North',919.00,44.00),
  (DATE '2008-09-01','East',303.00,38.00),
  (DATE '2008-09-01','South',847.00,48.00),
  (DATE '2008-09-01','West',469.00,9.00),
  (DATE '2008-10-01','North',844.00,42.00),
  (DATE '2008-10-01','East',953.00,50.00),
  (DATE '2008-10-01','South',862.00,38.00),
  (DATE '2008-10-01','West',37.00,34.00),
  (DATE '2008-11-01','North',839.00,4.00),
  (DATE '2008-11-01','East',453.00,16.00),
  (DATE '2008-11-01','South',314.00,16.00),
  (DATE '2008-11-01','West',446.00,12.00),
  (DATE '2008-12-01','North',706.00,15.00),
  (DATE '2008-12-01','East',467.00,11.00),
  (DATE '2008-12-01','South',224.00,34.00),
  (DATE '2008-12-01','West',196.00,45.00),
  (DATE '2009-01-01','North',36.00,8.00),
  (DATE '2009-01-01','East',830.00,11.00),
  (DATE '2009-01-01','South',601.00,8.00),
  (DATE '2009-01-01','West',615.00,21.00),
  (DATE '2009-02-01','North',816.00,36.00),
  (DATE '2009-02-01','East',607.00,50.00),
  (DATE '2009-02-01','South',126.00,16.00),
  (DATE '2009-02-01','West',654.00,48.00),
  (DATE '2009-03-01','North',83.00,19.00),
  (DATE '2009-03-01','East',641.00,17.00),
  (DATE '2009-03-01','South',343.00,8.00),
  (DATE '2009-03-01','West',805.00,32.00),
  (DATE '2009-04-01','North',573.00,21.00),
  (DATE '2009-04-01','East',814.00,1.00),
  (DATE '2009-04-01','South',172.00,38.00),
  (DATE '2009-04-01','West',486.00,17.00),
  (DATE '2009-05-01','North',480.00,43.00),
  (DATE '2009-05-01','East',763.00,43.00),
  (DATE '2009-05-01','South',49.00,22.00),
  (DATE '2009-05-01','West',382.00,2.00),
  (DATE '2009-06-01','North',940.00,2.00),
  (DATE '2009-06-01','East',959.00,21.00),
  (DATE '2009-06-01','South',989.00,21.00),
  (DATE '2009-06-01','West',755.00,1.00),
  (DATE '2009-07-01','North',255.00,38.00),
  (DATE '2009-07-01','East',191.00,13.00),
  (DATE '2009-07-01','South',610.00,48.00),
  (DATE '2009-07-01','West',108.00,27.00),
  (DATE '2009-08-01','North',69.00,41.00),
  (DATE '2009-08-01','East',121.00,18.00),
  (DATE '2009-08-01','South',722.00,6.00),
  (DATE '2009-08-01','West',883.00,10.00),
  (DATE '2009-09-01','North',395.00,6.00),
  (DATE '2009-09-01','East',863.00,13.00),
  (DATE '2009-09-01','South',664.00,1.00),
  (DATE '2009-09-01','West',727.00,44.00),
  (DATE '2009-10-01','North',777.00,12.00),
  (DATE '2009-10-01','East',394.00,10.00),
  (DATE '2009-10-01','South',104.00,17.00),
  (DATE '2009-10-01','West',831.00,14.00),
  (DATE '2009-11-01','North',478.00,19.00),
  (DATE '2009-11-01','East',989.00,2.00),
  (DATE '2009-11-01','South',23.00,11.00),
  (DATE '2009-11-01','West',676.00,37.00),
  (DATE '2009-12-01','North',234.00,40.00),
  (DATE '2009-12-01','East',687.00,50.00),
  (DATE '2009-12-01','South',995.00,47.00),
  (DATE '2009-12-01','West',85.00,38.00),
  (DATE '2010-01-01','North',87.00,5.00),
  (DATE '2010-01-01','East',386.00,43.00),
  (DATE '2010-01-01','South',768.00,27.00),
  (DATE '2010-01-01','West',634.00,50.00),
  (DATE '2010-02-01','North',933.00,21.00),
  (DATE '2010-02-01','East',413.00,21.00),
  (DATE '2010-02-01','South',355.00,40.00),
  (DATE '2010-02-01','West',621.00,27.00),
  (DATE '2010-03-01','North',585.00,37.00),
  (DATE '2010-03-01','East',704.00,49.00),
  (DATE '2010-03-01','South',401.00,30.00),
  (DATE '2010-03-01','West',829.00,19.00),
  (DATE '2010-04-01','North',201.00,9.00),
  (DATE '2010-04-01','East',158.00,47.00),
  (DATE '2010-04-01','South',309.00,11.00),
  (DATE '2010-04-01','West',748.00,10.00),
  (DATE '2010-05-01','North',447.00,39.00),
  (DATE '2010-05-01','East',91.00,31.00),
  (DATE '2010-05-01','South',689.00,30.00),
  (DATE '2010-05-01','West',752.00,14.00),
  (DATE '2010-06-01','North',947.00,36.00),
  (DATE '2010-06-01','East',338.00,32.00),
  (DATE '2010-06-01','South',494.00,41.00),
  (DATE '2010-06-01','West',931.00,40.00),
  (DATE '2010-07-01','North',944.00,38.00),
  (DATE '2010-07-01','East',225.00,44.00),
  (DATE '2010-07-01','South',886.00,16.00),
  (DATE '2010-07-01','West',690.00,8.00),
  (DATE '2010-08-01','North',166.00,33.00),
  (DATE '2010-08-01','East',784.00,3.00),
  (DATE '2010-08-01','South',103.00,37.00),
  (DATE '2010-08-01','West',695.00,39.00),
  (DATE '2010-09-01','North',455.00,31.00),
  (DATE '2010-09-01','East',269.00,28.00),
  (DATE '2010-09-01','South',990.00,1.00),
  (DATE '2010-09-01','West',694.00,27.00),
  (DATE '2010-10-01','North',249.00,9.00),
  (DATE '2010-10-01','East',440.00,22.00),
  (DATE '2010-10-01','South',934.00,34.00),
  (DATE '2010-10-01','West',910.00,10.00),
  (DATE '2010-11-01','North',392.00,14.00),
  (DATE '2010-11-01','East',937.00,34.00),
  (DATE '2010-11-01','South',473.00,33.00),
  (DATE '2010-11-01','West',714.00,34.00),
  (DATE '2010-12-01','North',460.00,7.00),
  (DATE '2010-12-01','East',144.00,48.00),
  (DATE '2010-12-01','South',875.00,50.00),
  (DATE '2010-12-01','West',265.00,26.00),
  (DATE '2011-01-01','North',213.00,13.00),
  (DATE '2011-01-01','East',399.00,43.00),
  (DATE '2011-01-01','South',234.00,36.00),
  (DATE '2011-01-01','West',610.00,12.00),
  (DATE '2011-02-01','North',821.00,39.00),
  (DATE '2011-02-01','East',327.00,45.00),
  (DATE '2011-02-01','South',527.00,31.00),
  (DATE '2011-02-01','West',981.00,48.00),
  (DATE '2011-03-01','North',568.00,48.00),
  (DATE '2011-03-01','East',921.00,37.00),
  (DATE '2011-03-01','South',930.00,17.00),
  (DATE '2011-03-01','West',381.00,49.00),
  (DATE '2011-04-01','North',690.00,34.00),
  (DATE '2011-04-01','East',794.00,11.00),
  (DATE '2011-04-01','South',662.00,6.00),
  (DATE '2011-04-01','West',172.00,26.00),
  (DATE '2011-05-01','North',235.00,32.00),
  (DATE '2011-05-01','East',258.00,40.00),
  (DATE '2011-05-01','South',924.00,36.00),
  (DATE '2011-05-01','West',382.00,19.00),
  (DATE '2011-06-01','North',769.00,48.00),
  (DATE '2011-06-01','East',591.00,24.00),
  (DATE '2011-06-01','South',643.00,22.00),
  (DATE '2011-06-01','West',293.00,37.00),
  (DATE '2011-07-01','North',805.00,15.00),
  (DATE '2011-07-01','East',861.00,32.00),
  (DATE '2011-07-01','South',445.00,26.00),
  (DATE '2011-07-01','West',497.00,11.00),
  (DATE '2011-08-01','North',114.00,18.00),
  (DATE '2011-08-01','East',850.00,30.00),
  (DATE '2011-08-01','South',444.00,25.00),
  (DATE '2011-08-01','West',839.00,26.00),
  (DATE '2011-09-01','North',168.00,20.00),
  (DATE '2011-09-01','East',572.00,31.00),
  (DATE '2011-09-01','South',546.00,21.00),
  (DATE '2011-09-01','West',672.00,38.00),
  (DATE '2011-10-01','North',678.00,8.00),
  (DATE '2011-10-01','East',650.00,23.00),
  (DATE '2011-10-01','South',827.00,28.00),
  (DATE '2011-10-01','West',87.00,39.00),
  (DATE '2011-11-01','North',727.00,7.00),
  (DATE '2011-11-01','East',423.00,25.00),
  (DATE '2011-11-01','South',954.00,45.00),
  (DATE '2011-11-01','West',924.00,22.00),
  (DATE '2011-12-01','North',739.00,33.00),
  (DATE '2011-12-01','East',133.00,15.00),
  (DATE '2011-12-01','South',156.00,9.00),
  (DATE '2011-12-01','West',928.00,49.00),
  (DATE '2012-01-01','North',627.00,11.00),
  (DATE '2012-01-01','East',358.00,25.00),
  (DATE '2012-01-01','South',188.00,27.00),
  (DATE '2012-01-01','West',931.00,41.00),
  (DATE '2012-02-01','North',547.00,8.00),
  (DATE '2012-02-01','East',119.00,25.00),
  (DATE '2012-02-01','South',409.00,4.00),
  (DATE '2012-02-01','West',804.00,40.00),
  (DATE '2012-03-01','North',396.00,14.00),
  (DATE '2012-03-01','East',592.00,14.00),
  (DATE '2012-03-01','South',475.00,29.00),
  (DATE '2012-03-01','West',520.00,11.00),
  (DATE '2012-04-01','North',388.00,33.00),
  (DATE '2012-04-01','East',367.00,1.00),
  (DATE '2012-04-01','South',618.00,2.00),
  (DATE '2012-04-01','West',450.00,40.00),
  (DATE '2012-05-01','North',477.00,1.00),
  (DATE '2012-05-01','East',252.00,36.00),
  (DATE '2012-05-01','South',49.00,46.00),
  (DATE '2012-05-01','West',368.00,28.00),
  (DATE '2012-06-01','North',594.00,7.00),
  (DATE '2012-06-01','East',641.00,12.00),
  (DATE '2012-06-01','South',52.00,42.00),
  (DATE '2012-06-01','West',263.00,25.00),
  (DATE '2012-07-01','North',571.00,28.00),
  (DATE '2012-07-01','East',337.00,5.00),
  (DATE '2012-07-01','South',286.00,14.00),
  (DATE '2012-07-01','West',904.00,46.00),
  (DATE '2012-08-01','North',131.00,33.00),
  (DATE '2012-08-01','East',231.00,4.00),
  (DATE '2012-08-01','South',729.00,35.00),
  (DATE '2012-08-01','West',579.00,48.00),
  (DATE '2012-09-01','North',816.00,21.00),
  (DATE '2012-09-01','East',158.00,18.00),
  (DATE '2012-09-01','South',229.00,38.00),
  (DATE '2012-09-01','West',752.00,20.00),
  (DATE '2012-10-01','North',884.00,44.00),
  (DATE '2012-10-01','East',260.00,23.00),
  (DATE '2012-10-01','South',745.00,46.00),
  (DATE '2012-10-01','West',876.00,49.00),
  (DATE '2012-11-01','North',518.00,3.00),
  (DATE '2012-11-01','East',578.00,5.00),
  (DATE '2012-11-01','South',153.00,7.00),
  (DATE '2012-11-01','West',951.00,9.00),
  (DATE '2012-12-01','North',519.00,9.00),
  (DATE '2012-12-01','East',480.00,7.00),
  (DATE '2012-12-01','South',419.00,41.00),
  (DATE '2012-12-01','West',695.00,9.00),
  (DATE '2013-01-01','North',285.00,2.00),
  (DATE '2013-01-01','East',561.00,37.00),
  (DATE '2013-01-01','South',671.00,13.00),
  (DATE '2013-01-01','West',306.00,19.00),
  (DATE '2013-02-01','North',293.00,21.00),
  (DATE '2013-02-01','East',151.00,42.00),
  (DATE '2013-02-01','South',322.00,31.00),
  (DATE '2013-02-01','West',31.00,41.00),
  (DATE '2013-03-01','North',662.00,15.00),
  (DATE '2013-03-01','East',491.00,37.00),
  (DATE '2013-03-01','South',280.00,33.00),
  (DATE '2013-03-01','West',266.00,40.00),
  (DATE '2013-04-01','North',287.00,21.00),
  (DATE '2013-04-01','East',124.00,24.00),
  (DATE '2013-04-01','South',552.00,4.00),
  (DATE '2013-04-01','West',202.00,30.00),
  (DATE '2013-05-01','North',575.00,48.00),
  (DATE '2013-05-01','East',712.00,49.00),
  (DATE '2013-05-01','South',255.00,2.00),
  (DATE '2013-05-01','West',473.00,7.00),
  (DATE '2013-06-01','North',302.00,38.00),
  (DATE '2013-06-01','East',721.00,26.00),
  (DATE '2013-06-01','South',46.00,11.00),
  (DATE '2013-06-01','West',293.00,44.00),
  (DATE '2013-07-01','North',686.00,14.00),
  (DATE '2013-07-01','East',994.00,39.00),
  (DATE '2013-07-01','South',527.00,47.00),
  (DATE '2013-07-01','West',415.00,11.00),
  (DATE '2013-08-01','North',837.00,11.00),
  (DATE '2013-08-01','East',563.00,1.00),
  (DATE '2013-08-01','South',355.00,44.00),
  (DATE '2013-08-01','West',482.00,50.00),
  (DATE '2013-09-01','North',816.00,1.00),
  (DATE '2013-09-01','East',656.00,3.00),
  (DATE '2013-09-01','South',286.00,19.00),
  (DATE '2013-09-01','West',310.00,8.00),
  (DATE '2013-10-01','North',648.00,4.00),
  (DATE '2013-10-01','East',547.00,50.00),
  (DATE '2013-10-01','South',899.00,33.00),
  (DATE '2013-10-01','West',337.00,48.00),
  (DATE '2013-11-01','North',821.00,17.00),
  (DATE '2013-11-01','East',877.00,18.00),
  (DATE '2013-11-01','South',381.00,27.00),
  (DATE '2013-11-01','West',542.00,1.00),
  (DATE '2013-12-01','North',326.00,42.00),
  (DATE '2013-12-01','East',94.00,14.00),
  (DATE '2013-12-01','South',495.00,30.00),
  (DATE '2013-12-01','West',295.00,22.00),
  (DATE '2014-01-01','North',742.00,24.00),
  (DATE '2014-01-01','East',30.00,39.00),
  (DATE '2014-01-01','South',283.00,36.00),
  (DATE '2014-01-01','West',423.00,43.00),
  (DATE '2014-02-01','North',556.00,46.00),
  (DATE '2014-02-01','East',54.00,33.00),
  (DATE '2014-02-01','South',587.00,12.00),
  (DATE '2014-02-01','West',627.00,48.00),
  (DATE '2014-03-01','North',495.00,6.00),
  (DATE '2014-03-01','East',314.00,47.00),
  (DATE '2014-03-01','South',457.00,30.00),
  (DATE '2014-03-01','West',192.00,46.00),
  (DATE '2014-04-01','North',603.00,25.00),
  (DATE '2014-04-01','East',621.00,3.00),
  (DATE '2014-04-01','South',467.00,32.00),
  (DATE '2014-04-01','West',242.00,9.00),
  (DATE '2014-05-01','North',201.00,41.00),
  (DATE '2014-05-01','East',891.00,6.00),
  (DATE '2014-05-01','South',477.00,49.00),
  (DATE '2014-05-01','West',445.00,9.00),
  (DATE '2014-06-01','North',256.00,30.00),
  (DATE '2014-06-01','East',284.00,32.00),
  (DATE '2014-06-01','South',133.00,3.00),
  (DATE '2014-06-01','West',802.00,21.00),
  (DATE '2014-07-01','North',932.00,47.00),
  (DATE '2014-07-01','East',199.00,27.00),
  (DATE '2014-07-01','South',843.00,34.00),
  (DATE '2014-07-01','West',94.00,42.00),
  (DATE '2014-08-01','North',102.00,43.00),
  (DATE '2014-08-01','East',851.00,16.00),
  (DATE '2014-08-01','South',937.00,38.00),
  (DATE '2014-08-01','West',306.00,33.00),
  (DATE '2014-09-01','North',371.00,46.00),
  (DATE '2014-09-01','East',724.00,6.00),
  (DATE '2014-09-01','South',186.00,27.00),
  (DATE '2014-09-01','West',609.00,40.00),
  (DATE '2014-10-01','North',683.00,27.00),
  (DATE '2014-10-01','East',41.00,41.00),
  (DATE '2014-10-01','South',254.00,35.00),
  (DATE '2014-10-01','West',82.00,23.00),
  (DATE '2014-11-01','North',555.00,42.00),
  (DATE '2014-11-01','East',177.00,36.00),
  (DATE '2014-11-01','South',639.00,27.00),
  (DATE '2014-11-01','West',284.00,29.00),
  (DATE '2014-12-01','North',719.00,11.00),
  (DATE '2014-12-01','East',495.00,27.00),
  (DATE '2014-12-01','South',299.00,15.00),
  (DATE '2014-12-01','West',313.00,21.00),
  (DATE '2015-01-01','North',545.00,39.00),
  (DATE '2015-01-01','East',404.00,39.00),
  (DATE '2015-01-01','South',384.00,5.00),
  (DATE '2015-01-01','West',250.00,30.00),
  (DATE '2015-02-01','North',877.00,44.00),
  (DATE '2015-02-01','East',762.00,17.00),
  (DATE '2015-02-01','South',731.00,3.00),
  (DATE '2015-02-01','West',255.00,41.00),
  (DATE '2015-03-01','North',565.00,12.00),
  (DATE '2015-03-01','East',712.00,38.00),
  (DATE '2015-03-01','South',603.00,40.00),
  (DATE '2015-03-01','West',712.00,4.00),
  (DATE '2015-04-01','North',595.00,42.00),
  (DATE '2015-04-01','East',415.00,10.00),
  (DATE '2015-04-01','South',467.00,49.00),
  (DATE '2015-04-01','West',209.00,5.00),
  (DATE '2015-05-01','North',620.00,49.00),
  (DATE '2015-05-01','East',263.00,38.00),
  (DATE '2015-05-01','South',28.00,5.00),
  (DATE '2015-05-01','West',183.00,30.00),
  (DATE '2015-06-01','North',352.00,44.00),
  (DATE '2015-06-01','East',825.00,8.00),
  (DATE '2015-06-01','South',627.00,19.00),
  (DATE '2015-06-01','West',435.00,43.00),
  (DATE '2015-07-01','North',835.00,47.00),
  (DATE '2015-07-01','East',424.00,37.00),
  (DATE '2015-07-01','South',911.00,34.00),
  (DATE '2015-07-01','West',72.00,40.00),
  (DATE '2015-08-01','North',827.00,22.00),
  (DATE '2015-08-01','East',870.00,19.00),
  (DATE '2015-08-01','South',432.00,35.00),
  (DATE '2015-08-01','West',677.00,21.00),
  (DATE '2015-09-01','North',674.00,12.00),
  (DATE '2015-09-01','East',654.00,36.00),
  (DATE '2015-09-01','South',440.00,48.00),
  (DATE '2015-09-01','West',153.00,22.00),
  (DATE '2015-10-01','North',847.00,14.00),
  (DATE '2015-10-01','East',415.00,43.00),
  (DATE '2015-10-01','South',117.00,9.00),
  (DATE '2015-10-01','West',379.00,36.00),
  (DATE '2015-11-01','North',446.00,26.00),
  (DATE '2015-11-01','East',779.00,22.00),
  (DATE '2015-11-01','South',523.00,34.00),
  (DATE '2015-11-01','West',816.00,23.00),
  (DATE '2015-12-01','North',139.00,38.00),
  (DATE '2015-12-01','East',360.00,5.00),
  (DATE '2015-12-01','South',88.00,9.00),
  (DATE '2015-12-01','West',433.00,50.00),
  (DATE '2016-01-01','North',829.00,28.00),
  (DATE '2016-01-01','East',747.00,21.00),
  (DATE '2016-01-01','South',460.00,23.00),
  (DATE '2016-01-01','West',464.00,12.00),
  (DATE '2016-02-01','North',620.00,8.00),
  (DATE '2016-02-01','East',637.00,13.00),
  (DATE '2016-02-01','South',259.00,31.00),
  (DATE '2016-02-01','West',356.00,22.00),
  (DATE '2016-03-01','North',437.00,44.00),
  (DATE '2016-03-01','East',353.00,34.00),
  (DATE '2016-03-01','South',213.00,30.00),
  (DATE '2016-03-01','West',447.00,39.00),
  (DATE '2016-04-01','North',942.00,47.00),
  (DATE '2016-04-01','East',470.00,42.00),
  (DATE '2016-04-01','South',306.00,13.00),
  (DATE '2016-04-01','West',570.00,10.00),
  (DATE '2016-05-01','North',574.00,10.00),
  (DATE '2016-05-01','East',438.00,39.00),
  (DATE '2016-05-01','South',55.00,15.00),
  (DATE '2016-05-01','West',633.00,45.00),
  (DATE '2016-06-01','North',627.00,8.00),
  (DATE '2016-06-01','East',371.00,23.00),
  (DATE '2016-06-01','South',912.00,25.00),
  (DATE '2016-06-01','West',448.00,41.00),
  (DATE '2016-07-01','North',533.00,29.00),
  (DATE '2016-07-01','East',777.00,31.00),
  (DATE '2016-07-01','South',820.00,5.00),
  (DATE '2016-07-01','West',661.00,48.00),
  (DATE '2016-08-01','North',686.00,49.00),
  (DATE '2016-08-01','East',930.00,15.00),
  (DATE '2016-08-01','South',659.00,25.00),
  (DATE '2016-08-01','West',108.00,39.00),
  (DATE '2016-09-01','North',790.00,31.00),
  (DATE '2016-09-01','East',229.00,1.00),
  (DATE '2016-09-01','South',633.00,43.00),
  (DATE '2016-09-01','West',870.00,38.00),
  (DATE '2016-10-01','North',141.00,38.00),
  (DATE '2016-10-01','East',455.00,21.00),
  (DATE '2016-10-01','South',37.00,29.00),
  (DATE '2016-10-01','West',172.00,2.00),
  (DATE '2016-11-01','North',936.00,38.00),
  (DATE '2016-11-01','East',801.00,37.00),
  (DATE '2016-11-01','South',714.00,37.00),
  (DATE '2016-11-01','West',966.00,31.00),
  (DATE '2016-12-01','North',853.00,43.00),
  (DATE '2016-12-01','East',258.00,39.00),
  (DATE '2016-12-01','South',920.00,48.00),
  (DATE '2016-12-01','West',190.00,30.00),
  (DATE '2017-01-01','North',561.00,6.00),
  (DATE '2017-01-01','East',997.00,1.00),
  (DATE '2017-01-01','South',893.00,22.00),
  (DATE '2017-01-01','West',491.00,3.00),
  (DATE '2017-02-01','North',530.00,17.00),
  (DATE '2017-02-01','East',216.00,14.00),
  (DATE '2017-02-01','South',523.00,40.00),
  (DATE '2017-02-01','West',597.00,28.00),
  (DATE '2017-03-01','North',73.00,16.00),
  (DATE '2017-03-01','East',433.00,27.00),
  (DATE '2017-03-01','South',454.00,43.00),
  (DATE '2017-03-01','West',727.00,5.00),
  (DATE '2017-04-01','North',255.00,9.00),
  (DATE '2017-04-01','East',56.00,40.00),
  (DATE '2017-04-01','South',750.00,13.00),
  (DATE '2017-04-01','West',595.00,41.00),
  (DATE '2017-05-01','North',485.00,48.00),
  (DATE '2017-05-01','East',948.00,11.00),
  (DATE '2017-05-01','South',377.00,14.00),
  (DATE '2017-05-01','West',14.00,42.00),
  (DATE '2017-06-01','North',814.00,14.00),
  (DATE '2017-06-01','East',451.00,34.00),
  (DATE '2017-06-01','South',757.00,9.00),
  (DATE '2017-06-01','West',366.00,35.00),
  (DATE '2017-07-01','North',477.00,47.00),
  (DATE '2017-07-01','East',346.00,15.00),
  (DATE '2017-07-01','South',522.00,3.00),
  (DATE '2017-07-01','West',97.00,27.00),
  (DATE '2017-08-01','North',399.00,8.00),
  (DATE '2017-08-01','East',141.00,37.00),
  (DATE '2017-08-01','South',425.00,35.00),
  (DATE '2017-08-01','West',99.00,41.00),
  (DATE '2017-09-01','North',528.00,26.00),
  (DATE '2017-09-01','East',296.00,21.00),
  (DATE '2017-09-01','South',772.00,6.00),
  (DATE '2017-09-01','West',197.00,22.00),
  (DATE '2017-10-01','North',212.00,3.00),
  (DATE '2017-10-01','East',703.00,30.00),
  (DATE '2017-10-01','South',782.00,22.00),
  (DATE '2017-10-01','West',404.00,47.00),
  (DATE '2017-11-01','North',295.00,19.00),
  (DATE '2017-11-01','East',159.00,37.00),
  (DATE '2017-11-01','South',41.00,28.00),
  (DATE '2017-11-01','West',885.00,46.00),
  (DATE '2017-12-01','North',639.00,44.00),
  (DATE '2017-12-01','East',117.00,6.00),
  (DATE '2017-12-01','South',771.00,4.00),
  (DATE '2017-12-01','West',839.00,23.00),
  (DATE '2018-01-01','North',342.00,27.00),
  (DATE '2018-01-01','East',348.00,39.00),
  (DATE '2018-01-01','South',864.00,13.00),
  (DATE '2018-01-01','West',814.00,32.00),
  (DATE '2018-02-01','North',359.00,29.00),
  (DATE '2018-02-01','East',381.00,22.00),
  (DATE '2018-02-01','South',348.00,33.00),
  (DATE '2018-02-01','West',84.00,6.00),
  (DATE '2018-03-01','North',13.00,48.00),
  (DATE '2018-03-01','East',296.00,41.00),
  (DATE '2018-03-01','South',46.00,48.00),
  (DATE '2018-03-01','West',723.00,29.00),
  (DATE '2018-04-01','North',446.00,39.00),
  (DATE '2018-04-01','East',210.00,23.00),
  (DATE '2018-04-01','South',892.00,42.00),
  (DATE '2018-04-01','West',597.00,5.00),
  (DATE '2018-05-01','North',828.00,32.00),
  (DATE '2018-05-01','East',286.00,45.00),
  (DATE '2018-05-01','South',757.00,48.00),
  (DATE '2018-05-01','West',941.00,7.00),
  (DATE '2018-06-01','North',675.00,22.00),
  (DATE '2018-06-01','East',168.00,36.00),
  (DATE '2018-06-01','South',837.00,29.00),
  (DATE '2018-06-01','West',167.00,18.00),
  (DATE '2018-07-01','North',463.00,29.00),
  (DATE '2018-07-01','East',669.00,13.00),
  (DATE '2018-07-01','South',709.00,31.00),
  (DATE '2018-07-01','West',153.00,27.00),
  (DATE '2018-08-01','North',546.00,4.00),
  (DATE '2018-08-01','East',406.00,23.00),
  (DATE '2018-08-01','South',890.00,18.00),
  (DATE '2018-08-01','West',297.00,46.00),
  (DATE '2018-09-01','North',695.00,13.00),
  (DATE '2018-09-01','East',343.00,38.00),
  (DATE '2018-09-01','South',253.00,44.00),
  (DATE '2018-09-01','West',367.00,44.00),
  (DATE '2018-10-01','North',565.00,42.00),
  (DATE '2018-10-01','East',272.00,12.00),
  (DATE '2018-10-01','South',777.00,3.00),
  (DATE '2018-10-01','West',966.00,47.00),
  (DATE '2018-11-01','North',447.00,8.00),
  (DATE '2018-11-01','East',515.00,29.00),
  (DATE '2018-11-01','South',326.00,28.00),
  (DATE '2018-11-01','West',760.00,11.00),
  (DATE '2018-12-01','North',956.00,10.00),
  (DATE '2018-12-01','East',763.00,21.00),
  (DATE '2018-12-01','South',800.00,41.00),
  (DATE '2018-12-01','West',102.00,11.00),
  (DATE '2019-01-01','North',398.00,2.00),
  (DATE '2019-01-01','East',717.00,19.00),
  (DATE '2019-01-01','South',317.00,22.00),
  (DATE '2019-01-01','West',35.00,1.00),
  (DATE '2019-02-01','North',24.00,50.00),
  (DATE '2019-02-01','East',923.00,13.00),
  (DATE '2019-02-01','South',380.00,37.00),
  (DATE '2019-02-01','West',889.00,39.00),
  (DATE '2019-03-01','North',460.00,27.00),
  (DATE '2019-03-01','East',672.00,50.00),
  (DATE '2019-03-01','South',571.00,29.00),
  (DATE '2019-03-01','West',38.00,11.00),
  (DATE '2019-04-01','North',939.00,22.00),
  (DATE '2019-04-01','East',558.00,7.00),
  (DATE '2019-04-01','South',225.00,14.00),
  (DATE '2019-04-01','West',579.00,38.00),
  (DATE '2019-05-01','North',84.00,50.00),
  (DATE '2019-05-01','East',165.00,45.00),
  (DATE '2019-05-01','South',618.00,21.00),
  (DATE '2019-05-01','West',703.00,29.00),
  (DATE '2019-06-01','North',907.00,36.00),
  (DATE '2019-06-01','East',768.00,32.00),
  (DATE '2019-06-01','South',488.00,48.00),
  (DATE '2019-06-01','West',38.00,39.00),
  (DATE '2019-07-01','North',365.00,1.00),
  (DATE '2019-07-01','East',83.00,2.00),
  (DATE '2019-07-01','South',944.00,14.00),
  (DATE '2019-07-01','West',227.00,36.00),
  (DATE '2019-08-01','North',663.00,3.00),
  (DATE '2019-08-01','East',501.00,41.00),
  (DATE '2019-08-01','South',856.00,15.00),
  (DATE '2019-08-01','West',783.00,28.00),
  (DATE '2019-09-01','North',847.00,13.00),
  (DATE '2019-09-01','East',476.00,44.00),
  (DATE '2019-09-01','South',746.00,4.00),
  (DATE '2019-09-01','West',453.00,12.00),
  (DATE '2019-10-01','North',79.00,34.00),
  (DATE '2019-10-01','East',448.00,21.00),
  (DATE '2019-10-01','South',562.00,48.00),
  (DATE '2019-10-01','West',632.00,36.00),
  (DATE '2019-11-01','North',402.00,34.00),
  (DATE '2019-11-01','East',716.00,4.00),
  (DATE '2019-11-01','South',750.00,35.00),
  (DATE '2019-11-01','West',200.00,6.00),
  (DATE '2019-12-01','North',92.00,4.00),
  (DATE '2019-12-01','East',927.00,35.00),
  (DATE '2019-12-01','South',385.00,41.00),
  (DATE '2019-12-01','West',768.00,23.00),
  (DATE '2020-01-01','North',462.00,40.00),
  (DATE '2020-01-01','East',179.00,31.00),
  (DATE '2020-01-01','South',376.00,45.00),
  (DATE '2020-01-01','West',44.00,32.00),
  (DATE '2020-02-01','North',438.00,45.00),
  (DATE '2020-02-01','East',822.00,28.00),
  (DATE '2020-02-01','South',72.00,23.00),
  (DATE '2020-02-01','West',48.00,35.00),
  (DATE '2020-03-01','North',543.00,33.00),
  (DATE '2020-03-01','East',136.00,15.00),
  (DATE '2020-03-01','South',825.00,49.00),
  (DATE '2020-03-01','West',782.00,36.00),
  (DATE '2020-04-01','North',309.00,2.00),
  (DATE '2020-04-01','East',840.00,17.00),
  (DATE '2020-04-01','South',177.00,1.00),
  (DATE '2020-04-01','West',662.00,1.00),
  (DATE '2020-05-01','North',217.00,47.00),
  (DATE '2020-05-01','East',703.00,29.00),
  (DATE '2020-05-01','South',134.00,41.00),
  (DATE '2020-05-01','West',736.00,18.00),
  (DATE '2020-06-01','North',661.00,29.00),
  (DATE '2020-06-01','East',98.00,16.00),
  (DATE '2020-06-01','South',222.00,18.00),
  (DATE '2020-06-01','West',891.00,10.00),
  (DATE '2020-07-01','North',530.00,47.00),
  (DATE '2020-07-01','East',501.00,22.00),
  (DATE '2020-07-01','South',189.00,45.00),
  (DATE '2020-07-01','West',710.00,42.00),
  (DATE '2020-08-01','North',101.00,33.00),
  (DATE '2020-08-01','East',714.00,4.00),
  (DATE '2020-08-01','South',134.00,19.00),
  (DATE '2020-08-01','West',548.00,1.00),
  (DATE '2020-09-01','North',644.00,30.00),
  (DATE '2020-09-01','East',812.00,11.00),
  (DATE '2020-09-01','South',737.00,41.00),
  (DATE '2020-09-01','West',389.00,34.00),
  (DATE '2020-10-01','North',95.00,47.00),
  (DATE '2020-10-01','East',67.00,34.00),
  (DATE '2020-10-01','South',783.00,9.00),
  (DATE '2020-10-01','West',954.00,49.00);
