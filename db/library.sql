DROP TABLE IF EXISTS library_books;

CREATE TABLE library_books (
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(250) NOT NULL,
    author VARCHAR(250),
    pub_year INT,
    avg_rating FLOAT,
    read_count INT,
    category VARCHAR(100),
    PRIMARY KEY(id)
);

INSERT INTO library_books (title, author, pub_year, avg_rating, read_count, category)
VALUES
    ('The 48 Laws of Power', 'Robert Greene', 1998, 4.03, 52370, 'Self-Help'),
    ('The Power of Your Subconscious Mind', 'Joseph Murphy', 1963, 3.91, 10451, 'Self-Help'),
    ('The Art of Seduction', 'Robert Greene', 2001, 4.01, 6238, 'Psychology'),
    ('The Art of War', 'Sun Tzu', 1900, 4.07, 6057, 'Philosophy'),
    ('Sapiens', 'Yuval Noah Harari', 2011, 4.19, 5988, 'History'),
    ('The Intelligent Investor', 'Benjamin Graham', 1949, 4.12, 4727, 'Business & Finance'),
    ('The Power of Now', 'Eckhart Tolle', 1997, 3.86, 4331, 'Spirituality'),
    ('I''m Glad My Mom Died', 'Jennette McCurdy', 2022, 4.31, 3999, 'Biography & Memoir'),
    ('The Richest Man in Babylon', 'George S. Clason', 1926, 4.19, 3895, 'Business & Finance'),
    ('How to Talk to Anyone', 'Leil Lowndes', 1999, 3.89, 3749, 'Relationships'),
    ('The Secret', 'Rhonda Byrne', 2000, 3.68, 3289, 'Self-Help'),
    ('Meditations', 'Marcus Aurelius', 1626, 4.10, 3067, 'Philosophy'),
    ('A Brief History of Time', 'Stephen Hawking', 1988, 4.15, 2947, 'Science'),
    ('The Diary of a Young Girl', 'Anne Frank', 1944, 4.18, 2766, 'Biography & Memoir'),
    ('Emotional Intelligence', 'Daniel Goleman', 1995, 3.94, 2745, 'Psychology'),
    ('The Courage to Be Disliked', 'Ichirō Kishimi, Fumitake Koga', 2013, 3.70, 2598, 'Psychology'),
    ('The Power of Habit', 'Charles Duhigg', 2012, 4.03, 2533, 'Psychology'),
    ('Mindset', 'Carol S. Dweck', 2006, 3.75, 2530, 'Psychology'),
    ('Kama Sutra', 'Vatsyayana', 1883, 3.81, 2448, 'Relationships'),
    ('Trading in the Zone', 'Mark Douglas', 2001, 4.26, 2338, 'Business & Finance'),
    ('Steve Jobs', 'Walter Isaacson', 2011, 4.18, 2177, 'Biography & Memoir'),
    ('Tuesdays with Morrie', 'Mitch Albom', 1994, 3.84, 2089, 'Biography & Memoir'),
    ('Men Are from Mars, Women Are from Venus', 'John Gray', 1992, 3.82, 2045, 'Relationships'),
    ('A Child Called "It"', 'David J. Pelzer', 1987, 4.57, 1803, 'Biography & Memoir'),
    ('Elon Musk', 'Ashlee Vance', 2013, 4.07, 1692, 'Biography & Memoir'),
    ('Influence', 'Robert B. Cialdini', 1983, 3.95, 1685, 'Psychology'),
    ('Rich Dad, Poor Dad for Teens', 'Robert T. Kiyosaki, Sharon L. Lechter', 2004, 4.00, 1624, 'Business & Finance'),
    ('Autobiography of a Yogi', 'Paramahansa Yogananda', 1946, 4.19, 1560, 'Spirituality'),
    ('As a Man Thinketh', 'James Allen', 1902, 4.68, 1549, 'Self-Help'),
    ('The 4-Hour Workweek', 'Timothy Ferriss', 2006, 3.71, 1430, 'Business & Finance'),
    ('Freakonomics', 'Steven D. Levitt, Stephen J. Dubner', 2005, 3.88, 1414, 'Business & Finance'),
    ('I Know Why the Caged Bird Sings', 'Maya Angelou', 1969, 4.12, 1384, 'Biography & Memoir'),
    ('A Short History of Nearly Everything', 'Bill Bryson', 2003, 4.15, 1357, 'Science'),
    ('Start with Why', 'Simon Sinek', 2009, 4.10, 1290, 'Business & Finance'),
    ('Chemistry', 'Theodore L. Brown et al.', 1977, 4.09, 1268, 'Science'),
    ('Smile', 'Raina Telgemeier', 2010, 4.42, 1214, 'Biography & Memoir');

