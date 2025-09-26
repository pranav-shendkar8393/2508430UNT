/* 3.Change rating of movie kesari to 2
  {
    _id: ObjectId('5ca453ef2952ebdd7ae2a92f'),
    name: 'Kesari',
    actor: [ 'Akshay Kumar', 'Pariniti chopra' ],
    rating: 2,
    price: 345.00000000000006,
    ticket_no: 270,
    rdate: ISODate('2019-01-23T00:00:00.000Z')
  }
]

*/

db.movie.updateMany(
    {name:"Kesari"},
    {$set:{rating:2}}
)
