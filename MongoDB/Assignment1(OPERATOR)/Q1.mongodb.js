/* 1.Display all movies with rating = 4.
    [
  {
    _id: ObjectId('5bf6a36f57b2d4cc676c7a95'),
    name: 'Andhadhund',
    price: 400,
    actor: [ 'Ayushman', 'radhika' ],
    rating: 4
  },
  {
    _id: ObjectId('5bf6a38c57b2d4cc676c7a96'),
    name: 'Andhadhund',
    price: null,
    actor: [ 'Tabbu' ],
    rating: 4
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
  }
]

*/

db.movie.find(
    {rating:4}
)
