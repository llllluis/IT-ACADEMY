SELECT 
  m.title,
  count(mg.genres) as Total_Generos  
FROM SPRINT5.movies m
INNER JOIN movies_genres mg ON mg._id = m._id
group by  m.title
having Total_Generos>10
order by Total_Generos desc;