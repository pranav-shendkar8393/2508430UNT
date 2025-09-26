/* 2. Display all movies with amitabh acted in it
    and is at 1st index position in array.
[
  {
    _id: ObjectId('5aaa3334639395f86922a882'),
    name: 'aradhana',
    actor: [ 'amitabh', 'prem', 'rajesh khanna' ],
    rating: 3,
    ticket_no: 550,
    price: 234.60000000000002
  },
  {
    _id: ObjectId('5ca456072952ebdd7ae2a930'),
    name: 'paa',
    actor: [ 'Amitabh', 'vidya balan', 'Abhishek' ],
    rating: 2,
    price: 257,
    ticket_no: 210,
    rdate: ISODate('2019-01-23T00:00:00.000Z'),
    others: { director: 'R Balki', songs: 'Amit trivedi' }
  }
]
*/

db.movie.find(
    {"actor.0":/[Aa]mitabh/}
)
