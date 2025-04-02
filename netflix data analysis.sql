SELECT * FROM netflix;

-- Top Movies by Popularity
SELECT Title, Popularity
FROM netflix
ORDER BY Popularity DESC
LIMIT 10;

-- Most Liked Genre (Based on Vote Average)
SELECT genre, Vote_Average
FROM netflix
WHERE Vote_Average = 'popular';

-- Correlation Between Popularity and Vote Average
SELECT Popularity, Vote_Average
FROM netflix;

--  Trend of Movies Over Time
SELECT Release_Date, COUNT(*) AS total_movies
FROM netflix
GROUP BY Release_Date
ORDER BY Release_Date DESC;

-- Highest Rated Movies
SELECT DISTINCT(Title), Vote_Average
FROM netflix
WHERE Vote_Average = 'popular';

-- Average Rating by Genre
SELECT genre, Vote_Average
FROM netflix
WHERE Vote_Average = 'average' OR 'below_avg';

-- Top Movies by Vote Count
SELECT DISTINCT(Title), Vote_Count
FROM netflix
ORDER BY Vote_Count DESC
LIMIT 10;