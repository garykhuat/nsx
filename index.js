// let pg = require('pg')
// let client = new pg.Client(
//    {
//        user: 'postgres',
//        password: 'postgres',
//        database: 'csv',
//        host: 'localhost',
//        port: 5432
// }
// )

// client.connect()

// client.query('select * from dm_nv', function(err, result) {
//     console.log(result.rows)
// })

// const express = require('express')
// const app = express()
// const port = 3000

// app.get('/', (req, res) => {
//     client.query('select * from dm_nv', function(err, result) {
//         res.send(JSON.stringify(result.rows))
//         client.end()
//     })
// })

// app.listen(port, () => console.log(`Example app listening on port ${port}!`))

const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))