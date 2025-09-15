/* 7.Display count of movies with price not = 200 nor 540 nor 400
14

*/
db.movie.find(
    {price:{$nin:[200, 400, 540]}}
).count()
