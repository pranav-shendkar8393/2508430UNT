/* 11.Display top 5 highest rating movies.
[
  {
    _id: ObjectId('5aaa31a2639395f86922a87e'),
    name: 'kahani',
    actor: [ 'aaaa', 'bbbb', 'karan', 'karri', 'vidya' ],
    ticket_no: 420,
    price: 200,
    ac7tors: [ 'bbbb' ],
    rating: 8,
    lastmodified: ISODate('2019-04-07T11:25:40.634Z')
  },
  {
    _id: ObjectId('5ca453ef2952ebdd7ae2a92f'),
    name: 'Kesari',
    actor: [ 'Akshay Kumar', 'Pariniti chopra' ],
    rating: 6,
    price: 350,
    ticket_no: 270,
    rdate: ISODate('2019-01-23T00:00:00.000Z')
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
    _id: ObjectId('5d6935a3470e2bef2a82cdfa'),
    name: 'mission mangal',
    price: 350,
    actor: [ 'Sonakshi', 'Vidya Balan' ],
    rating: 6
  }
]

*/
db.movie.find().sort({rating:-1}).limit(5)
