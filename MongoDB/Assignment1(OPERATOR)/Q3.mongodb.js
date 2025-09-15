/* 3. Display all movies with price 200 or 540 or 400.
[
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
    _id: ObjectId('5bf6a36f57b2d4cc676c7a95'),
    name: 'Andhadhund',
    price: 400,
    actor: [ 'Ayushman', 'radhika' ],
    rating: 4
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
    _id: ObjectId('5aaa31a2639395f86922a87e'),
    name: 'kahani',
    actor: [ 'aaaa', 'bbbb', 'karan', 'karri', 'vidya' ],
    ticket_no: 420,
    price: 200,
    ac7tors: [ 'bbbb' ],
    rating: 8,
    lastmodified: ISODate('2019-04-07T11:25:40.634Z')
  }
]

*/

db.movie.find(
    {price:{$in:[200, 400, 540]}}
)
