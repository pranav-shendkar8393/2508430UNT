/* 4. find total feemale students
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
  }
]

2

*/

db.student.find(
    {gender:"f"}
).count()