/* 3.Change price = 400 and increase rating by 2
   for all movies with name kahani in it.
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
    price: 400
  },
    {
    _id: ObjectId('5aaa31a2639395f86922a87e'),
    name: 'kahani',
    actor: [ 'aaaa', 'bbbb', 'karan', 'karri', 'vidya' ],
    ticket_no: 420,
    price: 400,
    ac7tors: [ 'bbbb' ],
    rating: 10,
    lastmodified: ISODate('2019-04-07T11:25:40.634Z')
  }
*/

db.movie.updateMany(
    {name:/kahani/},
    {$set:{price:400}, $inc:{rating:2}}
)
