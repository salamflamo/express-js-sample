const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.setHeader('Content-Type','application/json')
  res.end(JSON.stringify(req.headers))
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
