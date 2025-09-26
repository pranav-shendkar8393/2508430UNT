/* 4. Delete key rating for movie Kesari
  {
    _id: ObjectId('5ca453ef2952ebdd7ae2a92f'),
    name: 'Kesari',
    actor: [ 'Akshay Kumar', 'Pariniti chopra' ],
    price: 345.00000000000006,
    ticket_no: 270,
    rdate: ISODate('2019-01-23T00:00:00.000Z')
  }


*/

db.movie.updateMany(
    {name:"Kesari"},
    {$unset:{rating:1}}
)
