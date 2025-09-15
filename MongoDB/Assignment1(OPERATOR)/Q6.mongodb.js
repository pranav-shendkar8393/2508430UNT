/* 6.Display All movies with price > 200 and < 400
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
    price: 200
  },
  {
    _id: ObjectId('5aaa31ee639395f86922a87f'),
    name: '3 idiots',
    actor: [ 'Kareena Kapoor', 'amir', 'kareena', 'mahadavan', 'sharman' ],
    rating: 3,
    ticket_no: 150,
    price: 200
  },
  {
    _id: ObjectId('5c865923d82c19b8ed996550'),
    name: 'Dil dhadakane do',
    rating: 3,
    price: 340,
    actor: "['Anil kapoor']"
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
  },
  {
    _id: ObjectId('5ca47e5b2952ebdd7ae2a931'),
    name: 'padmavat',
    rating: 4,
    price: 250,
    ticket_no: 300,
    actor: [
      'Deepika',
      'shahid kapoor',
      'ranveer singh',
      'aditi Rao',
      'aaaaa'
    ],
    cancellation: { date: Timestamp({ t: 1567175239, i: 1 }) }
  },
  {
    _id: ObjectId('5ca47ef82952ebdd7ae2a932'),
    name: 'newton',
    ticket_no: 690,
    actor: [ 'Rajkumar Rao', 'Pankaj Tripathi' ],
    price: 310,
    lastmodified: ISODate('2019-09-28T14:47:49.204Z')
  },
  {
    _id: ObjectId('5d6935a3470e2bef2a82cdfa'),
    name: 'mission mangal',
    price: 350,
    actor: [ 'Sonakshi', 'Vidya Balan' ],
    rating: 6
  },
  {
    _id: ObjectId('5d89e9adfd4adc2f84279f43'),
    name: 'chichore',
    price: 274,
    rating: 4.3,
    actor: [ 'sushant', 'shradha kapoor', 'zzz', 'harshal' ]
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
  { _id: ObjectId('5d8f6eec620d2353221b91dd'), price: 280 },
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
    _id: ObjectId('5d8f51ce065d3e2aa902aa22'),
    name: 'dream girl',
    actor: [ 'ayushman', 'nushrat bharucha' ],
    price: 250,
    rating: null
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
    {price:{$gt:200}, price:{$lt:400}}
)
