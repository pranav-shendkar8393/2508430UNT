/* 8. Display all movies with odd rating.
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
  },
  {
    _id: ObjectId('5c865923d82c19b8ed996550'),
    name: 'Dil dhadakane do',
    rating: 3,
    price: 340,
    actor: "['Anil kapoor']"
  }
]

*/

db.movie.find(
    {rating:{$mod:[2, 1]}}
)
