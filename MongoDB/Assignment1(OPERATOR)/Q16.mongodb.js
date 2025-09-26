/* 16.Display lowest 3 rating movies.
[
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
    _id: ObjectId('5c865923d82c19b8ed996550'),
    name: 'Dil dhadakane do',
    rating: 3,
    price: 340,
    actor: "['Anil kapoor']"
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
db.movie.find(
    {rating:{$ne:null}}
).sort({rating:1}).limit(3)
