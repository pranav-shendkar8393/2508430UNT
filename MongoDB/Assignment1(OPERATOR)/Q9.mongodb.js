/* 9.Display all movies in which amitabh has acted.
[
  {
    _id: ObjectId('5aaa3334639395f86922a881'),
    name: 'sholay',
    actor: [
      'Dharamendra',
      'Amitabh',
      'Sachin Pilgaokar',
      'Dharamendra',
      'Dharamendra',
      'Mr. Khote',
      'jaya bacchan',
      'sanjiv kapoor'
    ],
    rating: 6,
    ticket_no: 550,
    price: 350,
    position: [ 2, 2 ]
  },
  {
    _id: ObjectId('5aaa3334639395f86922a882'),
    name: 'aradhana',
    actor: [ 'amitabh', 'prem', 'rajesh khanna' ],
    rating: 3,
    ticket_no: 550,
    price: 260
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
    {actor:/[Aa]mitabh/}
)
