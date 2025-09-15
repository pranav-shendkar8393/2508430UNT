/* 5.Display all movies with rating > 3 and price > 300
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
    _id: ObjectId('5bf6a36f57b2d4cc676c7a95'),
    name: 'Andhadhund',
    price: 400,
    actor: [ 'Ayushman', 'radhika' ],
    rating: 4
  },
  {
    _id: ObjectId('5d6935a3470e2bef2a82cdfa'),
    name: 'mission mangal',
    price: 350,
    actor: [ 'Sonakshi', 'Vidya Balan' ],
    rating: 6
  },
  {
    _id: ObjectId('5aaa3334639395f86922a880'),
    name: 'lagaan',
    actor: [ 'amir', 'angraz' ],
    rating: 6,
    ticket_no: 410,
    price: 350,
    cancellation: {
      date: Timestamp({ t: 1554356003, i: 1 }),
      reason: 'user request'
    },
    lastModified: ISODate('2019-04-04T05:33:23.022Z')
  },
  {
    _id: ObjectId('5ca453ef2952ebdd7ae2a92f'),
    name: 'Kesari',
    actor: [ 'Akshay Kumar', 'Pariniti chopra' ],
    rating: 6,
    price: 350,
    ticket_no: 270,
    rdate: ISODate('2019-01-23T00:00:00.000Z')
  }
]

*/
db.movie.find(
    {rating:{$gt:3}, price:{$gt:300}}
)
