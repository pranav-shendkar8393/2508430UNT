/* 2. Display all movies with rating = 3 and price = 200
[
  {
    _id: ObjectId('5aaa31ee639395f86922a87f'),
    name: '3 idiots',
    actor: [ 'Kareena Kapoor', 'amir', 'kareena', 'mahadavan', 'sharman' ],
    rating: 3,
    ticket_no: 150,
    price: 200
  }
]

*/

db.movie.find(
    {rating:3, price:200}
)
