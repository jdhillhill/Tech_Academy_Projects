CREATE DATABASE db_library 
USE db_library;
CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName CHAR (20),
	BranchAddress VARCHAR (50) NOT NULL 
);

INSERT INTO LIBRARY_BRANCH
	(BranchName, BranchAddress)
	VALUES
	('Sharpstown', '123 SE Main St. Salem, OR 97143'),
	('Denver', '566 N. Top St. Central, OR 97015'),
	('Limon', '785 Birch St. Sharpstown, OR 97213'),
	('Salem', '435 Madison St. Denver, CO 80220'),
	('Central', '899 Main St. Limon, CO 80509')
	;

CREATE TABLE PUBLISHER (
	PublisherNameID CHAR (50) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR (100) NOT NULL,
	Phone VARCHAR (20) NOT NULL
);

INSERT INTO PUBLISHER
	(PublisherNameID, PublisherAddress, Phone)
	VALUES
	('Pidgeon and McGillicuddy', '924 Pleasant Street South El Monte, CA 91733', '(204) 463-9563'),
	('Collard and Barkbunt', '28 Cedarwood Dr. Louisville, KY 40207', '(617) 259-5212'),
	('Dumass and Smartoe', '35 Pinewood Dr. Louisville, KY 40207', '(859) 843-6194'),
	('Rick and Morty', '779 Dunbar Road Findlay, OH 45840', '(916) 922-6059'),
	('Panopticon Limited', '809 San Carlos St. Nanuet, NY 10954', '(208) 585-0703'),
	('Ficundity and Smith', '3 Mill Pond Road Thornton, CO 80241', '(576) 477-8907'),
	('Tetradactyl ', '9474 Henry Smith Street Bel Air, MD 21014', '(956) 741-9077'),
	('Mandelbrot', '14 Fremont Ave. Fort Walton Beach, FL 32547', '(980) 425-1701'),
	('Bookchin and Bukowski', '9624 Hillside Lane Cedar Falls, IA 50613', '(618) 491-2105'),
	('Dunning and Kruger', '52 Saxon Rd. Dracut, MA 01826', '(397) 787-5187'),
	('Overton and Cotard', '9352 Queen Court Jersey City, NJ 07302', '(427) 410-2394')
;

CREATE TABLE BOOKS (
	BookID int PRIMARY KEY NOT NULL IDENTITY (1000,1),
	Title VARCHAR (75) NOT NULL,
	PublisherNameID CHAR (50) FOREIGN KEY REFERENCES PUBLISHER(PublisherNameID)
);

INSERT INTO BOOKS
	(Title, PublisherNameID)
	VALUES
	('Don''t Make Me Think', 'Pidgeon and McGillicuddy'),
	('The Design of Everyday Things', 'Collard and Barkbunt'),
	('The Lost Tribe', 'Dumass and Smartoe'),
	('Universal Principles of Design', 'Rick and Morty'),
	('Lean UX: Designing Great Products with Agile Teams', 'Panopticon Limited'),
	('About Face: The Essentials of Interaction Design', 'Ficundity and Smith'),
	('Sketching User Experiences', 'Tetradactyl '),
	('100 Things Every Designer Needs to Know About People', 'Mandelbrot'),
	('Designing for the Digital Age: How to Create Humans', 'Bookchin and Bukowski'),
	('Web Form Design: Filling in the Blanks', 'Dunning and Kruger'),
	('Information Architecture: For the Web and Beyond', 'Overton and Cotard'),
	('Simple and Usable: Web, Mobile, and Interaction Design', 'Pidgeon and McGillicuddy'),
	('Rocket Surgery Made Easy', 'Collard and Barkbunt'),
	('The User Experience Team of One: A Research and Design Survival Guide', 'Dumass and Smartoe'),
	('Measuring: Analyzing, and Presenting Usability Metrics, 2nd edition', 'Rick and Morty'),
	('Christine', 'Panopticon Limited'),
	('Cujo', 'Ficundity and Smith'),
	('A Project Guide To UX Design', 'Tetradactyl '),
	('Interviewing Users: How to Uncover Compelling Insights', 'Mandelbrot'),
	('The DaVinci Code', 'Bookchin and Bukowski'),
	('Designing Gestural Interfaces: Touchscreens and Interactive Devices', 'Dunning and Kruger'),
	('Designing Intranets: Creating Sites That Work', 'Overton and Cotard'),
	('What Every Intranet Team Should Know', 'Pidgeon and McGillicuddy'),
	('Where Good Ideas Come From', 'Collard and Barkbunt'),
	('Adapting User Experience for Global Projects: Towards a Universal UX', 'Dumass and Smartoe'),
	('Design for Emotion', 'Rick and Morty'),
	('Designing Services with Innovative Methods', 'Panopticon Limited'),
	('Designing Social Interfaces', 'Ficundity and Smith'),
	('Designing the Moment: Web Interface Design Concepts in Action', 'Tetradactyl '),
	('Experience Design: Technology for All the Right Reasons', 'Mandelbrot'),
	('Gamification by Design', 'Bookchin and Bukowski'),
	('Smart Things: Ubiquitous Computing User Experience Design', 'Dunning and Kruger'),
	('Useful, Usable, Desirable: Applying User Experience Design to Your Library', 'Overton and Cotard'),
	('User Experience Innovation: User Centered Design That Works', 'Pidgeon and McGillicuddy'),
	('Designing the Conversation: Techniques for Successful Facilitation', 'Collard and Barkbunt'),
	('Designing for the Social Web', 'Dumass and Smartoe'),
	('Designing the Mobile User Experience', 'Rick and Morty'),
	('Mobile Design and Development: Practical Concepts', 'Panopticon Limited'),
	('The Mobile Frontier: A Guide for Designing Mobile Experiences', 'Ficundity and Smith'),
	('There''s Not an App for That: Mobile User Experience Design for Life', 'Tetradactyl '),
	('Mobile Interaction Design', 'Mandelbrot'),
	('Submit Now: Designing Persuasive Websites', 'Bookchin and Bukowski'),
	('The Paradox of Choice: Why More Is Less', 'Dunning and Kruger'),
	('Buyology: Truth and Lies About Why We Buy', 'Overton and Cotard'),
	('The Noble Approach: Maurice Noble and the Zen of Animation Design', 'Pidgeon and McGillicuddy'),
	('Execute - Acting on Ideas Immediately When Inspired', 'Collard and Barkbunt'),
	('A Pattern Language: Towns, Buildings, Construction', 'Dumass and Smartoe'),
	('Alone Together: Why We Expect More from Technology and Less from Each Other', 'Rick and Morty'),
	('Building the Realtime User Experience', 'Panopticon Limited'),
	('Awareness: Exploring, Experimenting, Experiencing', 'Ficundity and Smith'),
	('Convergence Culture: Where Old and New Media Collide', 'Tetradactyl '),
	('Creative Workshop: 80 Challenges to Sharpen Your Design Skills', 'Mandelbrot'),
	('Design for the Real World: Human Ecology and Social Change', 'Bookchin and Bukowski'),
	('Design Forward: Creative Strategies for Sustainable Change', 'Dunning and Kruger'),
	('Design: The History, Theory and Practice of Product Design', 'Overton and Cotard'),
	('Designing for People', 'Pidgeon and McGillicuddy'),
	('Everything Is Miscellaneous: The Power of the New Digital Disorder', 'Collard and Barkbunt'),
	('Finite and Infinite Games', 'Dumass and Smartoe'),
	('Glut: Mastering Information through the Ages', 'Rick and Morty'),
	('In the Bubble: Designing in a Complex World', 'Panopticon Limited'),
	('Infotopia: How Many Minds Produce Knowledge', 'Ficundity and Smith'),
	('Kluge: The Haphazard Evolution of the Human Mind', 'Tetradactyl '),
	('Metaskills: Five Talents for the Robotic Age', 'Mandelbrot'),
	('Mind Hacks: Tips & Tools for Using Your Brain', 'Bookchin and Bukowski'),
	('Notes on the Synthesis of Form', 'Dunning and Kruger'),
	('Obey the Giant: Life in the Image World', 'Overton and Cotard'),
	('Simplicity', 'Pidgeon and McGillicuddy'),
	('The Art of Game Design: A book of lenses', 'Collard and Barkbunt'),
	('The Creative Habit: Learn It and Use It for Life', 'Dumass and Smartoe'),
	('The Death and Life of Great American Cities', 'Rick and Morty')
	;

CREATE TABLE BOOK_COPIES (
	BookID int FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID int FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	Number_Of_Copies int
);

INSERT INTO BOOK_COPIES
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	('1016',  '5',  '3'),
	('1015',  '5',  '2'),
	('1002',  '1',  '3'),
	('1000',  '1',  '2'),
	('1001',  '2',  '2'),
	('1002',  '3',  '12'),
	('1003',  '4',  '2'),
	('1004',  '5',  '3'),
	('1005',  '1',  '4'),
	('1006',  '2',  '2'),
	('1007',  '3',  '2'),
	('1008',  '4',  '2'),
	('1009',  '5',  '2'),
	('1010',  '1',  '3'),
	('1011',  '2',  '4'),
	('1012',  '3',  '2'),
	('1013',  '4',  '2'),
	('1014',  '5',  '7'),
	('1015',  '1',  '2'),
	('1016',  '2',  '3'),
	('1017',  '3',  '10'),
	('1018',  '4',  '2'),
	('1019',  '5',  '2'),
	('1020',  '1',  '2'),
	('1021',  '2',  '2'),
	('1022',  '3',  '3'),
	('1023',  '4',  '4'),
	('1024',  '5',  '2'),
	('1025',  '1',  '12'),
	('1026',  '2',  '2'),
	('1027',  '3',  '2'),
	('1028',  '4',  '3'),
	('1029',  '5',  '4'),
	('1030',  '1',  '2'),
	('1031',  '2',  '2'),
	('1032',  '3',  '8'),
	('1033',  '4',  '2'),
	('1034',  '5',  '3'),
	('1035',  '1',  '4'),
	('1036',  '2',  '2'),
	('1037',  '3',  '2'),
	('1038',  '4',  '2'),
	('1039',  '5',  '2'),
	('1040',  '1',  '3'),
	('1041',  '2',  '4'),
	('1042',  '3',  '2'),
	('1043',  '4',  '2'),
	('1044',  '5',  '2'),
	('1045',  '1',  '2'),
	('1046',  '2',  '3'),
	('1047',  '3',  '4'),
	('1048',  '4',  '2'),
	('1049',  '5',  '2'),
	('1050',  '1',  '2'),
	('1051',  '2',  '2'),
	('1052',  '3',  '3'),
	('1053',  '4',  '4'),
	('1054',  '5',  '2'),
	('1055',  '1',  '2'),
	('1056',  '2',  '5'),
	('1057',  '3',  '2'),
	('1058',  '4',  '6'),
	('1059',  '5',  '4'),
	('1060',  '1',  '2'),
	('1061',  '2',  '2'),
	('1062',  '3',  '2'),
	('1063',  '4',  '6'),
	('1064',  '5',  '3'),
	('1065',  '1',  '4'),
	('1066',  '2',  '2'),
	('1067',  '3',  '3'),
	('1068',  '4',  '4'),
	('1069',  '5',  '2')
;

CREATE TABLE BOOK_AUTHORS(
	BookID_FN int FOREIGN KEY REFERENCES BOOKS(BookID),
	AuthorName VARCHAR (75) NOT NULL
);

INSERT INTO BOOK_AUTHORS 
	(BookID_FN, AuthorName)
	VALUES
	('1000',  'Steve Krug'),
	('1001',  'Don Norman'),
	('1002',  'Jesse James Garrett'),
	('1003',  'William Lidwell'),
	('1004',  'Jeff Gothelf'),
	('1005',  'Alan Cooper'),
	('1006',  'Bill Buxton'),
	('1007',  'Susan Weinschenk'),
	('1008',  'Kim Goodwin'),
	('1009',  'Luke Wroblewski'),
	('1010',  'Peter Morville'),
	('1011',  'Giles Colborne'),
	('1012',  'Steve Krug'),
	('1013',  'Leah Buley'),
	('1014',  'Thomas Tullis'),
	('1015',  'Stephen King'),
	('1016',  'Stephen King'),
	('1017',  'Russ Unger'),
	('1018',  'Steve Portigal'),
	('1019',  'Dan Brown'),
	('1020',  'Dan Saffer'),
	('1021',  'James Robertson'),
	('1022',  'James Robertson'),
	('1023',  'Steven Johnson'),
	('1024',  'Paul Sherman, Whitney Quesenbery'),
	('1025',  'Trevor Van Gorp'),
	('1026',  'Satu Miettinen, Mikko Koivisto'),
	('1027',  'Christian Crumlish, Erin Malone'),
	('1028',  'Robert Hoekman Jr'),
	('1029',  'Marc Hassenzahl'),
	('1030',  'Gabe Zichermann, Christopher Cunningham'),
	('1031',  'Mike Kuniavsky'),
	('1032',  'Amanda Etches, Aaron Schmidt'),
	('1033',  'Christian Kraft'),
	('1034',  'Russ Unger, Brad Nunnally, Dan Willis'),
	('1035',  'Joshua Porter'),
	('1036',  'Barbara Ballard'),
	('1037',  'Brian Fling'),
	('1038',  'Rachel Hinman'),
	('1039',  'Simon Robinson, Gary Marsden, Matt Jones'),
	('1040',  'Matt Jones, Gary Marsden'),
	('1041',  'Andrew Chak'),
	('1042',  'Barry Schwartz'),
	('1043',  'Martin Lindstrom'),
	('1044',  'Tod Polson'),
	('1045',  'Josh Long, Drew Wilson'),
	('1046',  'Christopher Alexander, Sara Ishikawa'),
	('1047',  'Sherry Turkle'),
	('1048',  'Ted Roden'),
	('1049',  'John O. Stevens'),
	('1050',  'Henry Jenkins'),
	('1051',  'David Sherwin'),
	('1052',  'Victor Papanek'),
	('1053',  'Hartmut Esslinger'),
	('1054',  'Bernhard E. Burdek'),
	('1055',  'Henry Dreyfuss'),
	('1056',  'David Weinberger'),
	('1057',  'James Carse'),
	('1058',  'Alex Wright'),
	('1059',  'John Thackara'),
	('1060',  'Cass R. Sunstein'),
	('1061',  'Gary Marcus'),
	('1062',  'Marty Neumeier'),
	('1063',  'Tom Stafford & Matt Webb'),
	('1064',  'Christopher Alexander'),
	('1065',  'Rick Poynor'),
	('1066',  'Edward de Bono'),
	('1067',  'Jesse Schell'),
	('1068',  'Twyla Tharp, Mark Reiter'),
	('1069',  'Jane Jacobs')
;

CREATE TABLE BORROWER(
	CardNo int PRIMARY KEY NOT NULL IDENTITY (100000,1),
	BorrowerName VARCHAR (75) NOT NULL,
	BorrowerAddress VARCHAR (75) NOT NULL,
	BorrowerPhone VARCHAR (75) NOT NULL
);

INSERT INTO BORROWER
	(BorrowerName,BorrowerAddress,BorrowerPhone)
	VALUES
	('Peter Notreader', '9017 North Drive Palms, FL 34990', '(649) 999-2194'),
	('Zion Branch', '9517 North Country Club Drive Palm City, FL 34990', '(649) 943-2194'),
	('Brennen Lopez', '98 6th Ave. Burnsville, MN 55337', '(921) 394-9402'),
	('Ahmed Rhodes', '483 Market St. Oceanside, NY 11572', '(512) 555-4629'),
	('Jamar Coleman', '94 North Taylor St. Wasilla, AK 99654', '(348) 677-1273'),
	('Bridger Harris', '5 North Pearl Drive Hernando, MS 38632', '(830) 825-0754'),
	('Teagan Lynch', '24 Charles Rd. Fort Mill, SC 29708', '(824) 628-5366'),
	('Carter Alvarado', '31 Mulberry Drive Lexington, NC 27292', '(990) 954-0961'),
	('Odin Pope', '9796 Joy Ridge St. Santa Clara, CA 95050', '(945) 524-7124'),
	('Tyrone Page', '641 Applegate St. Fresh Meadows, NY 11365', '(406) 853-5533'),
	('Jonathon Ritter', '8979 Lincoln Ave. Omaha, NE 68107', '(465) 206-6336'),
	('Kristopher Wilkinson', '929 Summerhouse Ave. Longview, TX 75604', '(961) 876-7083'),
	('Kasen Bentley', '87 E. Ramblewood St. Fresh Meadows, NY 11365', '(896) 702-3952'),
	('Donovan Shea', '415 Fawn Street Hastings, MN 55033', '(796) 566-8072'),
	('Agustin Wolf', '8699 Water St. Cumming, GA 30040', '(379) 961-5840'),
	('Ronin Solis', '810 Edgefield Lane Anchorage, AK 99504', '(605) 259-5390'),
	('Alvin Robbins', '4 Hall Lane Philadelphia, PA 19111', '(821) 227-8538'),
	('Kylan Jimenez', '8410 Fieldstone Road Hopkinsville, KY 42240', '(420) 559-2159'),
	('Izaiah Sexton', '6 Spruce Street Brighton, MA 02135', '(268) 797-5224'),
	('Tyrell Delgado', '490 Manchester Rd. Glenview, IL 60025', '(538) 924-2111'),
	('Antony Fritz', '9545 Longfellow St. Rapid City, SD 57701', '(994) 429-9729'),
	('Omar Preston', '8821 Homestead Dr. Goose Creek, SC 29445', '(894) 777-0039'),
	('Damian Crane', '9744 Thatcher St. Huntington, NY 11743', '(480) 944-0496'),
	('Owen Tucker', '775 Oak Meadow St. Sarasota, FL 34231', '(568) 562-4422'),
	('Branson Villa', '293 Pacific Drive Central Islip, NY 11722', '(342) 714-4403'),
	('Brandon Lester', '217 Del Monte Street Summerville, SC 29483', '(545) 518-4621'),
	('Alessandra Bell', '818 Bald Hill Dr. Wallingford, CT 06492', '(794) 255-2570'),
	('Damaris Mccarty', '52 Union Street Raleigh, NC 27603', '(516) 646-1223'),
	('Marisol Nash', '6 Bank Street Camp Hill, PA 17011', '(910) 974-9302'),
	('Veronica Floyd', '65 Hall Drive East Orange, NJ 07017', '(745) 716-6180'),
	('Zoe Baird', '50 N. Cobblestone Rd. Helotes, TX 78023', '(644) 488-4221'),
	('Maleah Carrillo', '8 Andover Street Powell, TN 37849', '(278) 806-4118'),
	('Yamilet Krause', '703 Forest St. Erlanger, KY 41018', '(462) 686-1981'),
	('Danika Singh', '76 Madison St. Mason City, IA 50401', '(693) 890-6001'),
	('Alexandria Gray', '585 Homewood Drive Neptune, NJ 07753', '(238) 948-5964'),
	('Nicole Barton', '9 East Roehampton St. Longwood, FL 32779', '(491) 352-9560'),
	('Monique Roth', '7111 Smith Store St. Dawsonville, GA 30534', '(772) 640-2055'),
	('Haleigh Clark', '172 E. Fairground Ave. Westerville, OH 43081', '(274) 557-8934'),
	('Melanie Hines', '8006 North Adams Lane Bridgewater, NJ 08807', '(276) 338-2149'),
	('Rihanna Sims', '342 Locust St. Cape Coral, FL 33904', '(450) 340-6609'),
	('Caitlyn Giles', '73 Brook Drive Desoto, TX 75115', '(559) 472-0881'),
	('Jocelynn Randall', '9436 North Mammoth St. Lilburn, GA 30047', '(928) 233-1810'),
	('Alma Duffy', '569 New Drive West Haven, CT 06516', '(464) 932-6382'),
	('Yaretzi Velasquez', '16 Railroad St. Indianapolis, IN 46201', '(511) 956-9892'),
	('Maeve Holder', '53 Trusel Lane Des Plaines, IL 60016', '(489) 658-5613'),
	('Karly David', '8827 N. Woodside Drive Villa Park, IL 60181', '(471) 937-2798'),
	('Lucille Krueger', '8559 Hawthorne Dr. Corpus Christi, TX 78418', '(283) 700-3798'),
	('Elsa Archer', '702 Railroad St. Pomona, CA 91768', '(310) 564-0052'),
	('Shiloh Dickerson', '77 Parker St. North Andover, MA 01845', '(228) 743-4637'),
	('Halle Quinn', '86 Campfire Avenue Rome, NY 13440', '(303) 655-6313'),
	('Roselyn Sharp', '61 Kingston Dr. Trussville, AL 35173', '(365) 721-2564'),
	('Quinn Stephens', '7052 Overlook St. Warren, MI 48089', '(759) 927-8057'),
	('Lila Salazar', '7776 Blue Spring Court Elkhart, IN 46514', '(735) 390-9711'),
	('Jessica Hammond', '51 Oak Dr. Southfield, MI 48076', '(516) 408-8376'),
	('Linda Odom', '432 Prairie Lane Hollis, NY 11423', '(835) 326-6085'),
	('Sylvia Lozano', '429 Primrose Avenue Eastpointe, MI 48021', '(881) 730-5095'),
	('Nina Leon', '9277 Dogwood Ave. Powell, TN 37849', '(398) 566-3235'),
	('Shaniya Velez', '175 Holly St. Salem, MA 01970', '(813) 830-8983'),
	('Milagros Matthews', '7382 High Noon Road Lagrange, GA 30240', '(206) 811-6598'),
	('Rayne Nelson', '746 Arlington Lane Avon Lake, OH 44012', '(974) 961-4652'),
	('Teagan Stanley', '8297 W. Madison Street Manchester Township, NJ 08759', '(681) 315-9861'),
	('Carly Mckay', '886 Oklahoma St. Mcdonough, GA 30252', '(547) 444-9550'),
	('Eden Mcmahon', '7572 53rd Road New Hyde Park, NY 11040', '(534) 631-5872'),
	('Chana Collins', '323 Buckingham St. Odenton, MD 21113', '(662) 304-6801'),
	('Gillian Bond', '90 Old Yukon Lane Pompano Beach, FL 33060', '(759) 652-4650'),
	('Luz Escobar', '753 Rock Maple Street Richmond Hill, NY 11418', '(345) 541-6695'),
	('Kiley Martin', '513 Holly Ave. Port Chester, NY 10573', '(789) 630-1845'),
	('Marianna Contreras', '14 Greenrose Road Glen Allen, VA 23059', '(531) 973-5357'),
	('Livia Richards', '8847 Division Street Louisville, KY 40207', '(785) 297-6212'),
	('Kate Brock', '23 Mayfair Dr. Bakersfield, CA 93306', '(209) 519-2728'),
	('Dana Vaughan', '243 Mechanic St. Westford, MA 01886', '(788) 982-4569')
;

DROP TABLE BOOK_LOANS
CREATE TABLE BOOK_LOANS(
	BookID int FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID int FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	CardNo int FOREIGN KEY REFERENCES BORROWER(CardNo),
	BorrowerPhone VARCHAR (75) NOT NULL,
	DateOut date NULL,
	DateDue date NULL
);

INSERT INTO BOOK_LOANS
	(BookID,BranchID,CardNo,BorrowerPhone,DateOut,DateDue)
	VALUES
	('1000', '1', '100000', '(649) 943-2194', '10/12/2019', '10/26/2019'),
	('1001', '2', '100001', '(921) 394-9402', '10/16/2019', '10/30/2019'),
	('1003', '4', '100003', '(348) 677-1273', '10/14/2019', '10/28/2019'),
	('1004', '5', '100004', '(830) 825-0754', '10/15/2019', '10/29/2019'),
	('1005', '1', '100005', '(824) 628-5366', '10/13/2019', '10/27/2019'),
	('1006', '2', '100006', '(990) 954-0961', '10/17/2019', '10/31/2019'),
	('1008', '4', '100008', '(406) 853-5533', '10/09/2019', '10/23/2019'),
	('1009', '5', '100009', '(465) 206-6336', '10/10/2019', '10/24/2019'),
	('1010', '1', '100010', '(961) 876-7083', '10/13/2019', '10/27/2019'),
	('1011', '1', '100010', '(961) 876-7083', '10/13/2019', '10/27/2019'),
	('1012', '1', '100010', '(961) 876-7083', '10/13/2019', '10/27/2019'),
	('1013', '1', '100010', '(961) 876-7083', '10/13/2019', '10/27/2019'),
	('1014', '1', '100010', '(961) 876-7083', '10/13/2019', '10/27/2019'),
	('1015', '1', '100010', '(961) 876-7083', '10/13/2019', '10/27/2019'),
	('1016', '2', '100016', '(420) 559-2159', '10/12/2019', '10/26/2019'),
	('1017', '3', '100017', '(268) 797-5224', '10/16/2019', '10/30/2019'),
	('1019', '5', '100019', '(994) 429-9729', '10/14/2019', '10/28/2019'),
	('1020', '1', '100020', '(894) 777-0039', '10/15/2019', '10/29/2019'),
	('1021', '2', '100021', '(480) 944-0496', '10/13/2019', '10/27/2019'),
	('1022', '3', '100022', '(568) 562-4422', '10/17/2019', '10/31/2019'),
	('1023', '4', '100023', '(342) 714-4403', '10/09/2019', '10/23/2019'),
	('1024', '5', '100024', '(545) 518-4621', '10/15/2019', '10/29/2019'),
	('1025', '1', '100025', '(794) 255-2570', '10/15/2019', '10/29/2019'),
	('1026', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1027', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1028', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1029', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1030', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1031', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1032', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1033', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1034', '2', '100026', '(516) 646-1223', '10/17/2019', '10/31/2019'),
	('1035', '1', '100035', '(772) 640-2055', '10/12/2019', '10/26/2019'),
	('1036', '2', '100036', '(274) 557-8934', '10/16/2019', '10/30/2019'),
	('1038', '4', '100038', '(450) 340-6609', '10/14/2019', '10/28/2019'),
	('1039', '5', '100039', '(559) 472-0881', '10/15/2019', '10/29/2019'),
	('1040', '1', '100040', '(928) 233-1810', '10/13/2019', '10/27/2019'),
	('1041', '2', '100041', '(464) 932-6382', '10/17/2019', '10/31/2019'),
	('1042', '3', '100042', '(511) 956-9892', '10/09/2019', '10/23/2019'),
	('1043', '4', '100043', '(489) 658-5613', '10/10/2019', '10/24/2019'),
	('1044', '5', '100044', '(471) 937-2798', '10/13/2019', '10/27/2019'),
	('1045', '1', '100045', '(283) 700-3798', '10/12/2019', '10/26/2019'),
	('1046', '2', '100046', '(310) 564-0052', '10/16/2019', '10/30/2019'),
	('1048', '4', '100048', '(303) 655-6313', '10/14/2019', '10/28/2019'),
	('1049', '5', '100049', '(365) 721-2564', '10/15/2019', '10/29/2019'),
	('1050', '1', '100050', '(759) 927-8057', '10/13/2019', '10/27/2019'),
	('1051', '2', '100051', '(735) 390-9711', '10/17/2019', '10/31/2019'),
	('1052', '3', '100052', '(516) 408-8376', '10/09/2019', '10/23/2019'),
	('1053', '4', '100053', '(835) 326-6085', '10/10/2019', '10/24/2019'),
	('1054', '5', '100054', '(881) 730-5095', '10/13/2019', '10/27/2019'),
	('1055', '1', '100055', '(398) 566-3235', '10/15/2019', '10/29/2019'),
	('1056', '2', '100056', '(813) 830-8983', '10/13/2019', '10/27/2019'),
	('1057', '3', '100057', '(206) 811-6598', '10/17/2019', '10/31/2019'),
	('1058', '4', '100058', '(974) 961-4652', '10/09/2019', '10/23/2019'),
	('1059', '5', '100059', '(681) 315-9861', '10/10/2019', '10/24/2019'),
	('1060', '1', '100060', '(547) 444-9550', '10/13/2019', '10/27/2019'),
	('1064', '5', '100064', '(345) 541-6695', '10/13/2019', '10/27/2019'),
	('1065', '1', '100064', '(345) 541-6695', '10/13/2019', '10/27/2019'),
	('1066', '2', '100064', '(345) 541-6695', '10/13/2019', '10/27/2019'),
	('1067', '3', '100064', '(345) 541-6695', '10/13/2019', '10/27/2019'),
	('1068', '4', '100064', '(345) 541-6695', '10/13/2019', '10/27/2019'),
	('1069', '5', '100064', '(345) 541-6695', '10/13/2019', '10/27/2019')
;

--1.) COUNT copies of X-book at X-branch

CREATE PROCEDURE ONE_COUNT_LOST_TRIBE_SHARPSTOWN AS
SELECT LIBRARY_BRANCH.BranchName, BOOKS.Title, BOOK_COPIES.Number_of_Copies 
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
INNER JOIN BOOKS ON BOOK_COPIES.BookID = Books.BookID
WHERE Title = 'The Lost Tribe' AND BranchName = 'Sharpstown'
;

EXEC [dbo].[SEVEN_Stephen_King]

--2.) COUNT copies of Lost Tribe at all branches

CREATE PROCEDURE TWO_COUNT_LOST_TRIBE AS
SELECT LIBRARY_BRANCH.BranchName, BOOKS.Title, BOOK_COPIES.Number_of_Copies 
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
INNER JOIN BOOKS ON BOOK_COPIES.BookID = Books.BookID
WHERE Title = 'The Lost Tribe' 
;

--3.) X Borrowers = 0 Book Loans

CREATE PROCEDURE THREE_BORROWERS_WITH_NO_BOOKS AS
SELECT BORROWER.BorrowerName
FROM BOOK_LOANS
FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
WHERE BOOK_LOANS.CardNo IS NULL
;

--4.) SELECT Address and Book title if Branch = Sharpstown and due date = today. 

CREATE PROCEDURE FOUR_SHARPSTOWN_BOOKS_DUE AS
SELECT LIBRARY_BRANCH.BranchName, BOOKS.Title, BORROWER.BorrowerName, BORROWER.BorrowerAddress 
FROM LIBRARY_BRANCH
INNER JOIN BOOK_LOANS ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
INNER JOIN BOOKS ON BOOKS.BookID = BOOK_LOANS.BookID
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
WHERE BranchName='Sharpstown' AND DateDue = '2019-10-27' 
;

--5.) X Books Due at all Branches  

CREATE PROCEDURE FIVE_BOOKS_DUE_PER_BRANCH AS
SELECT COUNT(BOOK_LOANS.CardNo) AS 'Books_Loaned',LIBRARY_BRANCH.BranchName 
FROM LIBRARY_BRANCH
INNER JOIN BOOK_LOANS ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
GROUP BY BranchName
HAVING COUNT (CardNo) > 0
ORDER BY COUNT(BranchName) DESC
;

--6.) Borrower with >5 Books Due...  

CREATE PROCEDURE SIX_BORROWER_MORE_THAN_FIVE AS
SELECT COUNT(BOOK_LOANS.CardNo) AS 'Copies_Due', BORROWER.BorrowerName, BORROWER.BorrowerAddress 
FROM BOOK_LOANS
INNER JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo
GROUP BY BorrowerName, BorrowerAddress
HAVING COUNT ('CardNo') > 5
; 

--7.) Book Author = Stephen King and Branch = Central  

CREATE PROCEDURE SEVEN_Stephen_King AS
SELECT COUNT(BOOK_COPIES.Number_Of_Copies) AS 'Copies', BOOKS.Title, BOOK_AUTHORS.AuthorName, LIBRARY_BRANCH.BranchName 
FROM BOOK_COPIES
INNER JOIN BOOKS ON BOOK_COPIES.BookID =BOOKS.BookID
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
INNER JOIN BOOK_AUTHORS ON BOOKS.BookID = BOOK_AUTHORS.BookID_FN
WHERE BOOK_AUTHORS.AuthorName = 'Stephen King' AND LIBRARY_BRANCH.BranchName = 'Central'
GROUP BY AuthorName, Title, BranchName
HAVING COUNT (Number_of_Copies) > 0
;

