/* 1. Create a collection student 
save following documents in it
{name:"Arti", dept:"CS", marks:[67, 90, 78, 93, 47], 
fees:12000, course:"Engineering", gender:"f", scholarship:8000},
{name:"Pooja", dept:"IT", marks:[77, 80, 63, 70, 47], 
fees:7000, course:"Bsc", gender:"f", scholarship:18000},
{name:"Prasad", dept:"electronics", marks:[66, 54, 92, 41, 89], 
fees:10000, course:"Bcom", scholarship:20000}
add 5 more documents having dept as electronics.
*/

db.createCollection("student") 


 db.student.insertMany([
     {name:"Arti", dept:"CS", marks:[67, 90, 78, 93, 47], 
     fees:12000, course:"Engineering", gender:"f", scholarship:8000},
     {name:"Pooja", dept:"IT", marks:[77, 80, 63, 70, 47], 
     fees:7000, course:"Bsc", gender:"f", scholarship:18000},
     {name:"Prasad", dept:"electronics", marks:[66, 54, 92, 41, 89], 
     fees:10000, course:"Bcom", scholarship:20000},
     {name:"Amit", dept:"electronics", marks:[66, 54, 92, 41, 49], 
     fees:12000, course:"Engineering", scholarship:20000},
     {name:"Seeta", dept:"electronics", marks:[60, 74, 62, 31, 79], 
     fees:12000, course:"Engineering", scholarship:20000},
     {name:"Geeta", dept:"electronics", marks:[60, 34, 52, 51, 69], 
     fees:12000, course:"Btech", scholarship:20000},
     {name:"King", dept:"electronics", marks:[56, 64, 72, 71, 59], 
     fees:12000, course:"Engineering", scholarship:20000},
     {name:"Martin", dept:"electronics", marks:[76, 44, 72, 51, 69], 
     fees:12000, course:"Engineering", scholarship:20000}
 ])