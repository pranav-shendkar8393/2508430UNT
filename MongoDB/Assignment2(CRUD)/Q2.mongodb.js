/* 2.for movie "kahani 2" change rating to 5.
  {
    _id: ObjectId('5aab6da4639395f86922a883'),
    name: 'kahani 2',
    ticket_no: 820,
    actor: [
      'vidya',  'Arjun',
      'Jonny',  'nawaz',
      'prasad', 'Shreyas',
      'Jonny',  'yash'
    ],
    rating: 5,
    price: 242.00000000000006
  }
*/

db.movie.updateMany(
    {name:'kahani 2'},
    {$set:{rating:5}}
)
