/* 4. Display all movies with rating > 3 and price = 540
--Empty Set
*/
db.movie.find(
    {rating:{$gt:3}, price:540}
)
