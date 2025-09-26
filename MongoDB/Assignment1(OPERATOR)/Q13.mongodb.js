/* 13.Display only 5th, 6th and 7th.
[
  {
    _id: ObjectId('5bf6a38c57b2d4cc676c7a96'),
    name: 'Andhadhund',
    price: null,
    actor: [ 'Tabbu' ],
    rating: 4
  },
  {
    _id: ObjectId('5c8283789eb55675f0272933'),
    name: 'uri',
    rating: 5,
    actor: [ 'vicky kaushal', 'yami', 'Paresh Rawal' ]
  },
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
db.movie.find().limit(3).skip(4)
