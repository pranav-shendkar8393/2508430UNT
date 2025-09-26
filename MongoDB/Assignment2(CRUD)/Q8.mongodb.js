/* 8.Create a capped collection of size 5 by name dept. store dno, dname, location.
Test this capped collection by adding new documents.
[
  {
    _id: ObjectId('68c78453364c023d6cce5f47'),
    dno: 10,
    dname: 'Accounting',
    location: 'New York'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f48'),
    dno: 20,
    dname: 'Research',
    location: 'Dallas'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f49'),
    dno: 30,
    dname: 'Sales',
    location: 'Chicago'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f4a'),
    dno: 40,
    dname: 'Operations',
    location: 'New York'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f4b'),
    dno: 50,
    dname: 'Development',
    location: 'Sillicon Valley'
  }
]


after another insert (6th)
[
  {
    _id: ObjectId('68c78453364c023d6cce5f48'),
    dno: 20,
    dname: 'Research',
    location: 'Dallas'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f49'),
    dno: 30,
    dname: 'Sales',
    location: 'Chicago'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f4a'),
    dno: 40,
    dname: 'Operations',
    location: 'New York'
  },
  {
    _id: ObjectId('68c78453364c023d6cce5f4b'),
    dno: 50,
    dname: 'Development',
    location: 'Sillicon Valley'
  },
  {
    _id: ObjectId('68c784a6364c023d6cce5f4c'),
    dno: 60,
    dname: 'Marketing',
    location: 'New York'
  }
]


*/

db.createCollection(
    "dept",
    {max:5, size:4096, capped:true}
)

db.dept.insertMany([
    {dno:10, dname:"Accounting", location:"New York"},
    {dno:20, dname:"Research", location:"Dallas"},
    {dno:30, dname:"Sales", location:"Chicago"},
    {dno:40, dname:"Operations", location:"New York"},
    {dno:50, dname:"Development", location:"Sillicon Valley"}
])

db.dept.insertOne(
    {dno:60, dname:"Marketing", location:"New York"}
)
