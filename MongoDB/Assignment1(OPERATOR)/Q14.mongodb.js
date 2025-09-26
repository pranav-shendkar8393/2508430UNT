/* 14. Display all movies with number of actors = 3
[
  {
    _id: ObjectId('5aaa3334639395f86922a882'),
    name: 'aradhana',
    actor: [ 'amitabh', 'prem', 'rajesh khanna' ],
    rating: 3,
    ticket_no: 550,
    price: 260
  },
  {
    _id: ObjectId('5c8283789eb55675f0272933'),
    name: 'uri',
    rating: 5,
    actor: [ 'vicky kaushal', 'yami', 'Paresh Rawal' ]
  },
  {
    _id: ObjectId('5ca456072952ebdd7ae2a930'),
    name: 'paa',
    actor: [ 'Amitabh', 'vidya balan', 'Abhishek' ],
    rating: 2,
    price: 270,
    ticket_no: 210,
    rdate: ISODate('2019-01-23T00:00:00.000Z'),
    others: { director: 'R Balki', songs: 'Amit trivedi' }
  }
]

*/

db.movie.find(
    {actor:{$size:3}}
)
