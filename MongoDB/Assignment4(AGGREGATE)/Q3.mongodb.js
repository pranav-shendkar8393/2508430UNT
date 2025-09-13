/* 3. find total fees of electronics dept
[ { _id: 'fees', total_fees: 70000 } ]

*/

db.student.aggregate(
    {$match:{dept:"electronics"}},
    {$group:{
        _id:"fees",
        total_fees:{$sum:"$fees"}
    }}
)