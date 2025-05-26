//use shop
db.member.find({
    $or: [
        {office: "Seoul"},
        {age : 1}
    ]
})

db.member.find({
    $and: [
        {office: "busan"},
        {age : 1}
    ]
})

db.member.find({
    office: {$in: ["busan", "seoul"]}
})

//비교연산자
db.member.find({
    age: { $lt: 10}
})

db.member.find({
    age: { $gte:20, $lte: 30}
})

/*
* $ne
* not equal(같지 않음) 조건
 */
db.member.find({
    office: { $ne: "busan"}
})

db.member.find({
    phone: {$exists:true}
})

db.member.updateMany({
    age: {$gte: 1, $lte: 10}
}, {
    $unset: {phone:""}
})
// $not : 부정연산자(조건을 부정할 때 사용)
db.member.find({
    phone: {$exists:true}
})
/*
*$regex
* 정규표현식 검색
 */
db.member.find({
    //name이 G로 시작하는 멤버
    name: {$regex: /^G/}
})
