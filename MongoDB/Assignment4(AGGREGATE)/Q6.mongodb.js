/* 6. find student paying highest fees
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
  }
]

*/
db.student.aggregate([
    {$sort:{fees:-1}},
    {$limit:1}
])