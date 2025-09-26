/* 5.Display 5 topmost rated movies and arrange them according to names.
[
  {
    _id: ObjectId('5aaa31a2639395f86922a87e'),
    name: 'kahani',
    actor: [ 'aaaa', 'bbbb', 'karan', 'karri', 'vidya' ],
    ticket_no: 420,
    price: 360,
    ac7tors: [ 'bbbb' ],
    rating: 10,
    lastmodified: ISODate('2019-04-07T11:25:40.634Z')
  },
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
    rating: 7,
    price: 320
  },
  {
    _id: ObjectId('5aaa3334639395f86922a880'),
    name: 'lagaan',
    actor: [ 'amir', 'angraz' ],
    rating: 6,
    ticket_no: 410,
    price: 345.00000000000006,
    cancellation: {
      date: Timestamp({ t: 1554356003, i: 1 }),
      reason: 'user request'
    },
    lastModified: ISODate('2019-04-04T05:33:23.022Z')
  },
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
    price: 343.5000000000001,
    position: [ 2, 2 ]
  },
  {
    _id: ObjectId('5d6935a3470e2bef2a82cdfa'),
    name: 'mission mangal',
    price: 345.00000000000006,
    actor: [ 'Sonakshi', 'Vidya Balan' ],
    rating: 6
  }
]

*/
db.movie.find().sort({rating:-1}, {name:1}).limit(5)
