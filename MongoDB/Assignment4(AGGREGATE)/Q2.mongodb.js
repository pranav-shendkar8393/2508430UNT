/* 2. write a query to increase marks by 10 of all subjects
for students studing in electronics dept
[
  {
    _id: ObjectId('68c4c0470b450d1324ce5f47'),
    name: 'Arti',
    dept: 'CS',
    marks: [ 67, 90, 78, 93, 47 ],
    fees: 12000,
    course: 'Engineering',
    gender: 'f',
    scholarship: 8000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f48'),
    name: 'Pooja',
    dept: 'IT',
    marks: [ 77, 80, 63, 70, 47 ],
    fees: 7000,
    course: 'Bsc',
    gender: 'f',
    scholarship: 18000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f49'),
    name: 'Prasad',
    dept: 'electronics',
    marks: [ 76, 64, 102, 51, 99 ],
    fees: 10000,
    course: 'Bcom',
    scholarship: 20000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f4a'),
    name: 'Amit',
    dept: 'electronics',
    marks: [ 76, 64, 102, 51, 59 ],
    fees: 12000,
    course: 'Engineering',
    scholarship: 20000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f4b'),
    name: 'Seeta',
    dept: 'electronics',
    marks: [ 70, 84, 72, 41, 89 ],
    fees: 12000,
    course: 'Engineering',
    scholarship: 20000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f4c'),
    name: 'Geeta',
    dept: 'electronics',
    marks: [ 70, 44, 62, 61, 79 ],
    fees: 12000,
    course: 'Btech',
    scholarship: 20000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f4d'),
    name: 'King',
    dept: 'electronics',
    marks: [ 66, 74, 82, 81, 69 ],
    fees: 12000,
    course: 'Engineering',
    scholarship: 20000
  },
  {
    _id: ObjectId('68c4c0470b450d1324ce5f4e'),
    name: 'Martin',
    dept: 'electronics',
    marks: [ 86, 54, 82, 61, 79 ],
    fees: 12000,
    course: 'Engineering',
    scholarship: 20000
  }
]
*/

db.student.updateMany(
    {dept:"electronics"},
    {$inc:{"marks.$[]":10}}
)