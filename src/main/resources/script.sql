USE test;

DROP TABLE IF EXISTS book;

CREATE TABLE book (
	id INT(10) NOT NULL AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	description VARCHAR(255) NOT NULL,
	author VARCHAR(100) NOT NULL,
	isbn VARCHAR(20) NOT NULL,
	printYear INT(4) NOT NULL,
	readAlready BIT(1) NOT NULL DEFAULT 0,
	PRIMARY KEY(id))

ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO book (title, description, author, isbn, printYear) VALUES
	('The Sun also Rises', 'description', 'Ernest Hemingway', '9780857501004', 1926),
	('Martin Eden', 'description', 'Jack London', '9781853260155', 1909),
	('Java-method of program', 'description', 'Blinov', '9780099469698', 2015),
	('Thinking in Java', 'description', 'Bruce Eckel', '9780141198965', 2016),
	('Fahrenheit 451', 'description', 'Ray Bradbury', '9780006546061', 2008),
	('The Little Prince', 'description', 'Antoine de Saint-Exupery', '9780749707231', 1991),
	('Gulliver''s Travels', 'description', 'Jonathan Swift''s', '9780140447927', 2015),
	('The Call of the Wild', 'description', 'Jack London', '9780141321059', 2008),
	('Anna Korenina', 'description', 'Lev Tolstoy', '9780199553976', 1878),
	('Three in a boat, not counting a dog', 'description', 'Gerom Klapka Gerom', '9780006479888', 2009),
	('Abbey of nightmares', 'description', 'Thomas Love Peacock', '9780356503820', 1818),
	('The Pilgrim''s Journey to Heavenly Country', 'description', 'John Benyang', '9780552553209', 1678),
	('Clarissa', 'description', 'Samuel Richardson', '9781444707861', 1748),
	('Sleeping Beauties', 'description', 'Stephen King', '9781473665194', 2011),
	('The Shining', 'description', 'Stephen King', '9780307743657', 2012),
	('The Stand', 'description', 'Stephen King', '9780307743688', 2011),
	('11.22.63', 'description', 'Stephen King', '9781444727333', 2016),
	('Mr Mercedes', 'description', 'Stephen King', '9781444788648', 2015),
	('Finders Keepers', 'description', 'Stephen King', '9781473698956', 2016),
	('The Dead Zone', 'description', 'Stephen King', '9781444708097', 2011),
	('Revival', 'description', 'Stephen King', '9781444789218', '2015'),
	('The Eyes of the Dragon', 'description', 'Stephen King', '9781444723229', 2015),
	('Carrie', 'description', 'Stephen King', '9780307743664', '2011'),
	('The Great Book of Amber', 'description', 'Roger Zelazny', '9780380809066', 2011),
	('Misery', 'description', 'Stephen King', '9781444720716', 2011),
	('The Dry', 'description', 'Jane Harper', '9780349142111', 2017),
	('The Big Sleep and Other Novels', 'description', 'Raymond Chandler', '9780141182612', 2000),
	('The Maltese Falcon', 'description', 'Dashiell Hammett', '9780752865331', 2008),
	('The Black Dahlia', 'description', 'James Ellroy', '9780099537861', 2011),
	('The Long Goodbye', 'description', 'Raymond Chandler', '9780394757681', 1999);
