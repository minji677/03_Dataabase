for (let i = 0; i < 20000; i++) {
    db.numbers.insertOne({ num: i });
}

db.numbers.countDocuments()

db.numbers.find({
    num: { $gte: 20, $lte: 25 }
})

db.numbers.find({
    num: { $gte: 20, $lte: 25 }
}).explain("executionStats")

db.numbers.createIndex({ num: 1 })

db.numbers.getIndexes()

db.numbers.find({
    num: { $gte: 20, $lte: 25 }
}).explain("executionStats")



