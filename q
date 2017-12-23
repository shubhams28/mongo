use mongo1
switched to db mongo1
> db.createCollection("employee")
{ "ok" : 1 }
> db.employee.insert([
... ... {
... ...
_id: 'emp1',
... ... name:'Ankit',
... ... deptno:1,
... ... pno:67
... ... }
... ... ,
... ... {
... ... _id:'emp2',
... ... name:'Divya'
... ... ,
... ... deptno:2,
... ... pno:32
... ... }
... ... ]
... ... )
2017-10-30T11:27:06.118+0530 E QUERY [thread1] SyntaxError: invalid property id
@(shell):3:0
> db.employee.insert([
... {
... _id:10,
... name:'Ankit',
... deptno:1
... ,pno:67
... },
... {
... _id:20,
... name:'Divya',
... deptno:2,
... pno:108
... }
... ]
... )
BulkWriteResult({
"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 2,
"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]
})
> db.employee.find()
{ "_id" : 10, "name" : "Ankit", "deptno" : 1, "pno" : 67 }
{ "_id" : 20, "name" : "Divya", "deptno" : 2, "pno" : 108 }> db.employee.insert([
... {
... _id:30,
... name:'Max'
... deptno:3
... pno:108
... },
... {
... _id:40,
... name:'Min'
... deptno:3,
... pno:32
... }
... ]
... )
2017-10-30T11:31:43.631+0530 E QUERY [thread1] SyntaxError: missing } after property list
@(shell):5:0
> db.employee.insert([ { _id:30, name:'Max', deptno:3, pno:108 }, { _id:40, name:'Min', deptno:3,
pno:32 } ] )
BulkWriteResult({
"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 2,
"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]
})
> db.employee.find()
{ "_id" : 10, "name" : "Ankit", "deptno" : 1, "pno" : 67 }
{ "_id" : 20, "name" : "Divya", "deptno" : 2, "pno" : 108 }
{ "_id" : 30, "name" : "Max", "deptno" : 3, "pno" : 108 }
{ "_id" : 40, "name" : "Min", "deptno" : 3, "pno" : 32 }
> db.employee.find({"deptno":"3"})
> db.employee.find({"deptno":3})
{ "_id" : 30, "name" : "Max", "deptno" : 3, "pno" : 108 }
{ "_id" : 40, "name" : "Min", "deptno" : 3, "pno" : 32 }
> db.employee.find({"pno":108})
{ "_id" : 20, "name" : "Divya", "deptno" : 2, "pno" : 108 }
{ "_id" : 30, "name" : "Max", "deptno" : 3, "pno" : 108 }
> db.createCollection("part")
{ "ok" : 1 }
> db.part.insert([{_id:1,pname:'snitch',colour:'golden',sno:31,sname:'harry',address:'godrics'},
{_id:2,pname:'elders wand',colour:'brown',sno:8,sname:'voldemort',address:'chamber'},
{_id:3,pname:'phoenix',colour:'grey',sno:29,sname:'dumbledore',address:'hogsmeade'},
{_id:4,pname:'cloak',colour:'transparent',sno:31,sname:'harry',address:'privet drive' }])
BulkWriteResult({
"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 4,"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]
})
> db.part.find()
{ "_id" : 1, "pname" : "snitch", "colour" : "golden", "sno" : 31, "sname" : "harry", "address" :
"godrics" }
{ "_id" : 2, "pname" : "elders wand", "colour" : "brown", "sno" : 8, "sname" : "voldemort",
"address" : "chamber" }
{ "_id" : 3, "pname" : "phoenix", "colour" : "grey", "sno" : 29, "sname" : "dumbledore", "address" :
"hogsmeade" }
{ "_id" : 4, "pname" : "cloak", "colour" : "transparent", "sno" : 31, "sname" : "harry", "address" :
"privet drive" }
> db.part.update({'_id':2},{$set:{'colour':'black'}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.part.find()
{ "_id" : 1, "pname" : "snitch", "colour" : "golden", "sno" : 31, "sname" : "harry", "address" :
"godrics" }
{ "_id" : 2, "pname" : "elders wand", "colour" : "black", "sno" : 8, "sname" : "voldemort", "address"
: "chamber" }
{ "_id" : 3, "pname" : "phoenix", "colour" : "grey", "sno" : 29, "sname" : "dumbledore", "address" :
"hogsmeade" }
{ "_id" : 4, "pname" : "cloak", "colour" : "transparent", "sno" : 31, "sname" : "harry", "address" :
"privet drive" }
> db.part.update({'pname':'snitch'},{$set:{'sname':'harry potter'}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.part.find()
{ "_id" : 1, "pname" : "snitch", "colour" : "golden", "sno" : 31, "sname" : "harry potter", "address" :
"godrics" }
{ "_id" : 2, "pname" : "elders wand", "colour" : "black", "sno" : 8, "sname" : "voldemort", "address"
: "chamber" }
{ "_id" : 3, "pname" : "phoenix", "colour" : "grey", "sno" : 29, "sname" : "dumbledore", "address" :
"hogsmeade" }
{ "_id" : 4, "pname" : "cloak", "colour" : "transparent", "sno" : 31, "sname" : "harry", "address" :
"privet drive" }
> db.part.find({"sno":31}))
2017-10-30T11:59:05.284+0530 E QUERY [thread1] SyntaxError: missing ; before statement
@(shell):1:24
> db.part.find({"sno":31})
{ "_id" : 1, "pname" : "snitch", "colour" : "golden", "sno" : 31, "sname" : "harry potter", "address" :
"godrics" }
{ "_id" : 4, "pname" : "cloak", "colour" : "transparent", "sno" : 31, "sname" : "harry", "address" :
"privet drive" }
> db.createCollection("boat")
{ "ok" : 1 }
> db.boat.insert([{_id:1,bname:'titanic',colour:'white',sname:'jack sparrow',sid:1996,day:'Friday'},
{_id:9,bname:'poseidon',colour:'black',sname:'zeus',sid:1557,day:'Sunday'},{_id:13,bname:'Black
Pearl',colour:'ash gray',sname:'Barbossa',sid:1847,day:'Doomsday'}])
BulkWriteResult({"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 3,
"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]
})
> db.boat.insert([{_id:8,bname:'the flying dutchman',colour:'matt grey',sname:'jack
sparrow',sid:1996,day:'Gloomsday'}])
BulkWriteResult({
"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 1,
"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]
})
> db.part.count({name:'jack sparrow'})
0
> db.part.find({name:'jack sparrow'})
> db.part.count({sname:'jack sparrow'})
0
> db.part.find({sname:'jack sparrow'})
> db.boat.find({sname:'jack sparrow'})
{ "_id" : 1, "bname" : "titanic", "colour" : "white", "sname" : "jack sparrow", "sid" : 1996, "day" :
"Friday" }
{ "_id" : 8, "bname" : "the flying dutchman", "colour" : "matt grey", "sname" : "jack sparrow", "sid"
: 1996, "day" : "Gloomsday" }
> db.boat.count({sname:'jack sparrow'})
2
> db.boat.find({colour:'white'})
{ "_id" : 1, "bname" : "titanic", "colour" : "white", "sname" : "jack sparrow", "sid" : 1996, "day" :
"Friday" }
> db.createCollection("shipment")
{ "ok" : 1 }
>
db.shipment.insert([{_id:1,pname:'pikachu',colour:'yellow',wno:1,wname:'Ash',quantity:3,date:2000
},{_id:7,pname:'meowth',colour:'white',wno:13,wname:'Team Rocket',quantity:2,date:2001},
{_id:15,pname:'onex',colour:'grey',wno:1,wname:'Ash',quantity:2,date:1999}])
BulkWriteResult({
"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 3,
"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]})
> db.shipment.find({ type: 'food' }, { item: 1, qty: 1 } )
> db.shipment.find({wname:'Ash'},{pname:1,colour:1})
{ "_id" : 1, "pname" : "pikachu", "colour" : "yellow" }
{ "_id" : 15, "pname" : "onex", "colour" : "grey" }
> db.contest.aggregate([
... {"$group" : {_id:"$province", count:{$sum:1}}}
... ])
> db.shipment.aggregate([{"$group" : {_id:"$wname", count:{$sum:1}}} ])
{ "_id" : "Team Rocket", "count" : 1 }
{ "_id" : "Ash", "count" : 2 }
> db.createCollection("book")
{ "ok" : 1 }
> db.book.insert([{_id:1,title:'song of ice and fire',author:'RR
Martin',publisher:'Oxford',USN:'1ms15is015',date:'24th April'},{_id:2,title:'eleven
minutes',author:'paulo coelho',publisher:'stanford',USN:'1ms15is032',date:'18th march'},
{_id:3,title:'fifty shades of gray',author:'E.L. James',publisher:'MIT',date:'14th
feb',USN:'1ms15is035'},{_id:4,title:'the alchemist',author:'paulo
coelho',publisher:'MSRIT',USN:'1ms15is025',date:'8th april'}])
BulkWriteResult({
"writeErrors" : [ ],
"writeConcernErrors" : [ ],
"nInserted" : 4,
"nUpserted" : 0,
"nMatched" : 0,
"nModified" : 0,
"nRemoved" : 0,
"upserted" : [ ]
})
> db.book.find({_id:2},{USN:1})
{ "_id" : 2, "USN" : "1ms15is032" }
> db.book.find({author:"paulo coelho"},{USN:1,_id:0})
{ "USN" : "1ms15is032" }
{ "USN" : "1ms15is025" }
>
