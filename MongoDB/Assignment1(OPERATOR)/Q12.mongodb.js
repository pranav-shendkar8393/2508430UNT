/* 12.Display all movies in which amitabh has acted display only 1st
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
  }
]
*/
db.movie.find(
    {actor:/[Aa]mitabh/}
).limit(1)
